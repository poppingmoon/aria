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
class TranslationsJaKs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJaKs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.jaKs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ja-KS>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsJaKs _root = this; // ignore: unused_field

	@override 
	TranslationsJaKs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJaKs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaJaKs aria = _TranslationsAriaJaKs._(_root);
	@override late final _TranslationsMisskeyJaKs misskey = _TranslationsMisskeyJaKs._(_root);
	@override late final _TranslationsMisskeyIOJaKs misskeyIO = _TranslationsMisskeyIOJaKs._(_root);
}

// Path: aria
class _TranslationsAriaJaKs extends TranslationsAriaEnUs {
	_TranslationsAriaJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Ariaってなんや？';
	@override TextSpan acceptFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'からのフォロー申請を許可してええか？'),
	]);
	@override String get accessToken => 'アクセストークン';
	@override String get accessTokenUpdated => 'アクセストークンを更新したで';
	@override String get accountAdded => 'アカウントを追加したで';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Ariaは'),
		miria,
		const TextSpan(text: 'のフォークやで。\nAriaのローカライゼーションは'),
		misskey,
		const TextSpan(text: 'のローカライゼーションファイルを基にしとるで。\n両プロジェクトのコントリビューターの皆様、ほんまにおおきに！'),
	]);
	@override String get addTab => 'タブを追加';
	@override String get alwaysExpandCw => 'CWをいつでも展開する';
	@override String get alwaysExpandLongNote => '長いノートをいつでも展開する';
	@override String get alwaysExpandMediaInSubNote => 'サブノートの中のメディアをいつでも展開する';
	@override String get alwaysShowAllReactions => 'ツッコミを全部いつでも表示するで';
	@override String get alwaysShowTabHeader => 'タブの情報をいつでも表示する';
	@override String get authenticate => '認証';
	@override String get authenticated => '認証してった';
	@override String get avatarSize => 'アイコンのサイズ';
	@override String get background => '背景';
	@override String get buttonTypes => 'ボタンのタイプ';
	@override String get cache => 'キャッシュ';
	@override String get calculating => '計算しとる';
	@override TextSpan cancelFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'へのフォロー申請をキャンセルしてええか？'),
	]);
	@override String get clientInfo => 'クライアント情報';
	@override String get confirmBeforeFollow => 'フォローする前に確認する';
	@override String get confirmBeforePost => '投稿する前に確認する';
	@override String get confirmBeforeReact => 'ツッコミする前に確認する';
	@override String get confirmBeforeRenote => 'リノートする前に確認する';
	@override String get copied => 'クリップボードにコピーしたで';
	@override String get copyName => '名前をコピー';
	@override String get crop => 'クロップ';
	@override String get custom => 'カスタム';
	@override String get defaultReaction => 'デフォルトのリアクション';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'このアカウントのタブが${n}個あるけどほかしとこか？',
		other: 'このアカウントのタブが${n}個あるけどほかしとこか？',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'ファイルが${n}個あるけどほかしてええか？',
		other: 'ファイルが${n}個あるけどほかしてええか？',
	);
	@override String get deleteTabConfirm => 'このタブほかしてええか？';
	@override String get device => 'デバイス';
	@override String get disableDataSaverWhenOnWifi => 'Wi-Fi接続中はデータセーバーを止めとく';
	@override String get disableStreamingTimeline => 'タイムラインをいちいち更新せんようにする';
	@override String get disableSubscribingNotes => 'ツッコミをいちいち更新せんようにする';
	@override String get discardChangesConfirm => '変えんと戻ってええか？';
	@override String get displayOfThumbnail => 'サムネイルの表示';
	@override String get doubleTapToShow => '二度押ししたら見えるで';
	@override String get draw => '手描き';
	@override String get editImage => '画像いじる';
	@override String get emojiPickerAutofocus => '絵文字ピッカーでキーボードを自動で開く';
	@override String get emojiPickerScale => '絵文字ピッカーのでかさ';
	@override String get emojiPickerUseDialog => '絵文字ピッカーをダイアログで表示するで';
	@override String get enableEmojiFadeIn => 'カスタム絵文字のフェードインを有効にするで';
	@override String get enableFederation => '連合ありにするで';
	@override String get enableHapticFeedback => '触覚フィードバックを有効にするで';
	@override String get enablePredictiveBack => '予測型「戻る」アニメーションを有効にするで';
	@override String get enableSpellCheck => 'スペルチェックを有効にするで';
	@override String get endpoint => 'エンドポイント';
	@override String get exitPlayConfirm => 'Playをやめてええか？';
	@override String get expandNote => 'ノートを開くで';
	@override String get extraMentionsWarning => '返信元のノートには入ってへんメンションがあるで';
	@override String get fileNotFound => 'ファイルがあらへん';
	@override String get findServer => 'Misskeyサーバーを探す';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'をフォローしてええか？'),
	]);
	@override String get font => 'フォント';
	@override String get fromDevice => '端末から';
	@override String get guest => 'ゲスト';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Ariaは有志がいろんな言語に訳しとるで。'),
		link,
		const TextSpan(text: 'で翻訳に協力したってやー。'),
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'Ariaのアイコンは'),
		sevenc_nanashi,
		const TextSpan(text: 'によって作成され、'),
		cc_by,
		const TextSpan(text: 'の下で提供されとるで。'),
	]);
	@override String get importCompleted => 'インポートが終わったで';
	@override String get importConfirm => '設定をインポートしてええか？今の設定は上書きされてまうで？';
	@override String get invalidEndpoint => '無効なエンドポイント';
	@override String get invalidEndpointDescription => 'レスポンスの中のエンドポイントがおかしいみたいや。実行したコードがアプリ内に見えてるやつとおんなじか確認してな。';
	@override String get invalidListFormat => 'リストの形式が間違ってるみたいや';
	@override String jumpTo({required Object x}) => '${x}にジャンプ';
	@override String get keepOpen => '開けたまんまにする';
	@override String get keepTimelinePosition => 'タイムラインの位置を覚えとく';
	@override String get lineHeight => '行間';
	@override String get loadFromDrive => 'ドライブから読み込み';
	@override String get loginWithAccessToken => 'アクセストークンでログイン';
	@override String get margin => '余白';
	@override String get media => 'メディア';
	@override String get mediaSaveLocation => 'メディアをとっとくとこ';
	@override String get mentionToRemoteWarning => 'リモートユーザーへのメンションがあるで';
	@override String get mergeReactionsByName => '同じ名前のリアクションをごっちゃにするで';
	@override String get moved => '移したで';
	@override String get muted => 'ミュート中';
	@override String get mutedEmojis => 'ミュートしとる絵文字';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '${n}個のファイル',
		other: '${n}個のファイル',
	);
	@override String get newFollowRequestReceived => '新しいフォロー申請があるで';
	@override String get newNotes => '新しいノート';
	@override String get newNotificationReceived => '新しい通知があるで';
	@override String get newNotifications => '新しい通知';
	@override String get noAccounts => 'アカウントはあらへん';
	@override String get noTabs => 'タブはあらへん';
	@override String get noThemes => 'テーマはあらへん';
	@override String get noteDoubleTapAction => 'ノートを二度押ししたときの動作';
	@override String get noteFooterSize => 'アクションボタンのでかさ';
	@override String get noteLongPressAction => 'ノートを長押ししたときの動作';
	@override String get noteScheduled => 'ノートが予約されたで';
	@override String get noteTapAction => 'ノートをいらったときの動作';
	@override String get notesAfterRenotes => 'リノート直後のノート';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: '人が起きとるで'),
	]);
	@override String get opacity => '不透明度';
	@override String get openAsGuest => 'ゲストとして開くで';
	@override String get openInAnotherAccount => '別のアカウントで開くで';
	@override String get openInBrowser => 'ブラウザで開くで';
	@override String get openInExternalBrowser => '外部ブラウザで開くで';
	@override String get openInInternalBrowser => '内部ブラウザで開くで';
	@override String get openMenu => 'メニューを開くで';
	@override String get openNotificationSettings => '通知の設定を開く';
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		const TextSpan(text: 'ブラウザで'),
		scratchpad,
		const TextSpan(text: 'を開いて、下のコードを入力して走らしてな'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => '二度押ししてきわどいメディアを開くで';
	@override String get owner => 'オーナー';
	@override String get parameters => 'パラメータ';
	@override String get paste => '貼り付け';
	@override TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: '絵文字のリストを貼り付けて一括でピン留めするで。\nMisskey Webでピン留めした絵文字のリストは'),
		url,
		const TextSpan(text: 'からコピーしてや。'),
	]);
	@override String get pasteResponseBelow => '下のとこにレスポンスを貼り付けてな';
	@override String get permissionDeniedErrorDescription => 'この操作をやるための権限がアクセストークンについてへんわ。もっかいログインしてな。';
	@override String get pinToEmojiPicker => '絵文字ピッカーにピン留めしとく';
	@override String get playAudio => '音声を再生';
	@override String get playVideo => '動画を再生';
	@override String get pleaseCopyResponse => '下のレスポンスをコピーしといてや';
	@override String pleaseLoginAs({required Object user}) => '${user}でログインしてや';
	@override String get postConfirm => 'このノートを投稿してええか？';
	@override String get reactionConfirm => 'ツッコミしてええか？';
	@override String get recentlyUsedEmojis => '最近使った絵文字';
	@override TextSpan rejectFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'からのフォロー申請を拒否してええか？'),
	]);
	@override String get renoteConfirm => 'このノートをリノートしてええか？';
	@override String get renoteToChannel => 'チャンネルにリノート';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'がリノートしたで'),
	]);
	@override String get reset => 'リセット';
	@override String get rotate => '回転';
	@override String get saveToDrive => 'ドライブに保存';
	@override String get selectIcon => 'アイコンを選ぶ';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'がセルフリノートしたで'),
	]);
	@override String get sendMessageConfirm => 'このメッセージを送信してええか？';
	@override String get serverUrl => 'サーバーのURL';
	@override String get settingsFileForAria => 'Ariaの設定ファイル';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: 'の設定'),
	]);
	@override String get showAvatarsInNote => 'ノートにユーザーのアイコンを表示するで';
	@override String get showAvatarsInSubNote => 'サブノートにユーザーのアイコンを表示するで';
	@override String get showCaption => 'キャプションを表示';
	@override String get showEmojiInReactionNotification => 'ツッコミの通知で絵文字を表示するで';
	@override String get showEntireImage => '全体を表示するで';
	@override String get showExpandedImage => 'でかくして表示するで';
	@override String get showGapBetweenNotesInTimeline => 'タイムラインのノートを離して表示するで';
	@override String get showImage => '画像を表示';
	@override String get showLikeButtonInNoteFooter => 'ノートのアクションにいいねを追加';
	@override String get showMenuButtonInTabBar => 'タイムラインのタブバーにメニューボタンを追加';
	@override String get showNote => 'ノートを表示';
	@override String get showNoteCreatedAt => 'ノートの作成日時を表示するで';
	@override String get showNoteFooter => 'ノートにアクションボタンを表示するで';
	@override String get showNoteReactionsViewer => 'ノートにツッコミを表示するで';
	@override String get showOnlineStatus => 'オンライン状態を表示するで';
	@override String get showPopupOnNewNote => 'ノートを受信したときにポップアップを表示するで';
	@override String get showQuoteButtonInNoteFooter => 'ノートのアクションに引用を追加';
	@override String get showReactionsCountForEachTypes => '各リアクションのリアクション数を表示する';
	@override String get showRenotesCount => 'ノートのリノート数を表示する';
	@override String get showRepliesCount => 'ノートの返信数を表示する';
	@override String get showSelfRenotes => 'セルフリノートを表示するで';
	@override String get showSmallButtons => 'ボタンを小さく表示するで';
	@override String get showSquaredButtons => 'ボタンを四角形で表示するで';
	@override String get showStackTrace => 'スタックトレース見して';
	@override String get showSubNoteFooter => 'サブノートにアクションボタンを表示するで';
	@override String get showSubNoteReactionsViewer => 'サブノートにツッコミを表示するで';
	@override String get showTabHeaderInOneLine => 'タブの情報を1行で表示する';
	@override String get showTimelineLastViewedAt => 'タイムラインを最後に見た日時を表示するで';
	@override String get showTimelineTabBarAtBottom => 'タイムラインのタブバーを下に表示するで';
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
	@override String get tapToShow => '押したら見えるで';
	@override String get timeMachine => 'タイムマシン';
	@override String get timelinesPageButtons => 'タイムラインページのボタン';
	@override String get unfavorited => 'お気に入りを解除したで';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'のフォローを解除してもええんか？'),
	]);
	@override String get untilDate => 'この日まで';
	@override String get uploaded => 'アップロードしたで';
	@override String get useThisEmoji => 'この絵文字を使う';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'が何か言うとるわ'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: 'のセンシティブなファイルを含む投稿'),
	]);
	@override String get vibration => 'バイブレーション';
	@override String get webBrowser => 'ウェブブラウザ';
}

// Path: misskey
class _TranslationsMisskeyJaKs extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '日本語 (関西弁)';
	@override String get headlineMisskey => 'ノートでつながるネットワーク';
	@override String get introMisskey => 'ようお越し！Misskeyは、オープンソースの分散型マイクロブログサービスやねん。\n「ノート」を作って、いま起こっとることを共有したり、あんたについて皆に発信しよう📡\n「ツッコミ」機能で、皆のノートに素早く反応を追加したりもできるで✌\nほな、新しい世界を探検しよか🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name}は、オープンソースのプラットフォーム<b>Misskey</b>のサーバーのひとつなんやで。';
	@override String monthAndDay({required Object month, required Object day}) => '${month}月 ${day}日';
	@override String get search => '探す';
	@override String get reset => 'リセット';
	@override String get notifications => '通知';
	@override String get username => 'ユーザー名';
	@override String get password => 'パスワード';
	@override String get initialPasswordForSetup => '初期設定開始用パスワード';
	@override String get initialPasswordIsIncorrect => '初期設定開始用のパスワードがちゃうで。';
	@override String get initialPasswordForSetupDescription => 'Miskkeyを自分でインストールしたんやったら、設定ファイルに入れたパスワードを使ってや。\nホスティングサービスを使っとるんやったら、サービスから言われたやつを使うんやで。\n別に何も設定しとらんのやったら、何も入れずに空けといてな。';
	@override String get forgotPassword => 'パスワード忘れたん？';
	@override String get fetchingAsApObject => '今ちと連合に照会しとるで';
	@override String get ok => 'ええで';
	@override String get gotIt => 'ほい';
	@override String get cancel => 'やめる';
	@override String get noThankYou => 'やめとく';
	@override String get enterUsername => 'ユーザー名を入れてや';
	@override String renotedBy({required Object user}) => '${user}がリノートしたで';
	@override String get noNotes => 'ノートはあらへん';
	@override String get noNotifications => '通知はあらへん';
	@override String get instance => 'サーバー';
	@override String get settings => '設定';
	@override String get notificationSettings => '通知の設定';
	@override String get basicSettings => '基本設定';
	@override String get otherSettings => 'ほかの設定';
	@override String get openInWindow => 'ウィンドウで開く';
	@override String get profile => 'プロフィール';
	@override String get timeline => 'タイムライン';
	@override String get noAccountDescription => '自己紹介食ってもた';
	@override String get login => 'ログイン';
	@override String get loggingIn => 'ログインしよるで';
	@override String get logout => 'ログアウト';
	@override String get signup => '新規登録';
	@override String get uploading => 'アップロードしとるで';
	@override String get save => 'とっとく';
	@override String get users => 'ユーザー';
	@override String get addUser => 'ユーザーを追加や';
	@override String get favorite => 'お気に入り';
	@override String get favorites => 'お気に入り';
	@override String get unfavorite => 'やっぱ気に入らん';
	@override String get favorited => 'お気に入りに入れたで。';
	@override String get alreadyFavorited => 'もうお気に入りに入れとるがな。';
	@override String get cantFavorite => 'アカン、お気に入りに入れれんかったわ。';
	@override String get pin => 'ピン留めしとく';
	@override String get unpin => 'ピン留めやめる';
	@override String get copyContent => '内容をコピー';
	@override String get copyLink => 'リンクをコピー';
	@override String get copyRemoteLink => 'リモートのリンクをコピーするで？';
	@override String get copyLinkRenote => 'リノートのリンクをコピーするで？';
	@override String get delete => 'ほかす';
	@override String get deleteAndEdit => 'ほかして直す';
	@override String get deleteAndEditConfirm => 'このノートをほかしてもっかい直す？このノートへのツッコミ、リノート、返信も全部消えるんやけどそれでもええん？';
	@override String get addToList => 'リストに入れたる';
	@override String get addToAntenna => 'アンテナに入れる';
	@override String get sendMessage => 'メッセージを送る';
	@override String get copyRSS => 'RSSをコピー';
	@override String get copyUsername => 'ユーザー名をコピー';
	@override String get copyUserId => 'ユーザーIDをコピー';
	@override String get copyNoteId => 'ノートIDをコピー';
	@override String get copyFileId => 'ファイルIDをコピー';
	@override String get copyFolderId => 'フォルダーIDをコピー';
	@override String get copyProfileUrl => 'プロフィールURLをコピー';
	@override String get searchUser => 'ユーザーを探す';
	@override String get searchThisUsersNotes => 'ユーザーのノートを探す';
	@override String get reply => '返事';
	@override String get loadMore => 'まだまだあるで！';
	@override String get showMore => 'まだまだあるで！';
	@override String get showLess => 'さいなら';
	@override String get youGotNewFollower => 'フォローされたで';
	@override String get receiveFollowRequest => 'フォローリクエストされたで';
	@override String get followRequestAccepted => 'フォローが承認されたで';
	@override String get mention => 'メンション';
	@override String get mentions => 'あんた宛て';
	@override String get directNotes => 'ダイレクト投稿';
	@override String get importAndExport => 'インポートとエクスポート';
	@override String get import => 'インポート';
	@override String get export => 'エクスポート';
	@override String get files => 'ファイル';
	@override String get download => 'ダウンロード';
	@override String driveFileDeleteConfirm({required Object name}) => 'ファイル「${name}」をほかしてええか？このファイルを添付したノートも消えてまうで。';
	@override String unfollowConfirm({required Object name}) => '${name}のフォローを解除してもええんか？';
	@override String cancelFollowRequestConfirm({required Object name}) => '${name}へのフォロー申請をキャンセルしますか？';
	@override String rejectFollowRequestConfirm({required Object name}) => '${name}からのフォロー申請を拒否しますか？';
	@override String get exportRequested => 'エクスポートしてな、って言うたけど、これ多分めっちゃ時間かかるで。エクスポート終わったら「ドライブ」に突っ込んどくで。';
	@override String get importRequested => 'インポートしてな、ってリクエストしたけど、これ多分めっちゃ時間かかるで。';
	@override String get lists => 'リスト';
	@override String get noLists => 'リストなんてあらへんで';
	@override String get note => 'ノート';
	@override String get notes => 'ノート';
	@override String get following => 'フォロー';
	@override String get followers => 'フォロワー';
	@override String get followsYou => 'フォローされとるで';
	@override String get createList => 'リスト作る';
	@override String get manageLists => 'リストの管理';
	@override String get error => 'おかしなったで';
	@override String get somethingHappened => 'なんかあかんわ';
	@override String get retry => 'もっぺんやる？';
	@override String get pageLoadError => 'ページが読み込めんかったわ。';
	@override String get pageLoadErrorDescription => 'これは普通ならネットワークかブラウザキャッシュが悪さしてるんよ。キャッシュをほかすか、もうちょっとだけ待ってくれへん？';
	@override String get serverIsDead => 'サーバーからの応答がないで。もうちょい待ってから試してみてな。';
	@override String get youShouldUpgradeClient => 'このページを表示するには、リロードして新しいバージョンのクライアントを使ってなー。';
	@override String get enterListName => 'リスト名を入れてや';
	@override String get privacy => 'プライバシー';
	@override String get makeFollowManuallyApprove => 'ええって言わなフォローできへんようにする';
	@override String get defaultNoteVisibility => 'もとからの公開範囲';
	@override String get follow => 'フォロー';
	@override String get followRequest => 'フォローを頼む';
	@override String get followRequests => 'フォロー申請';
	@override String get unfollow => 'フォローやめる';
	@override String get followRequestPending => 'フォロー許してくれるん待っとる';
	@override String get enterEmoji => '絵文字を入れてや';
	@override String get renote => 'リノート';
	@override String get unrenote => 'リノートやめる';
	@override String get renoted => 'リノートしたで。';
	@override String renotedToX({required Object name}) => '${name}にリノートしたで';
	@override String get cantRenote => 'この投稿はリノートできへんっぽい。';
	@override String get cantReRenote => 'リノート自体はリノートできへんで。';
	@override String get quote => '引用';
	@override String get inChannelRenote => 'チャンネルの中でリノート';
	@override String get inChannelQuote => 'チャンネル内引用';
	@override String get renoteToChannel => 'チャンネルにリノート';
	@override String get renoteToOtherChannel => '他のチャンネルにリノート';
	@override String get pinnedNote => 'ピン留めされとるノート';
	@override String get pinned => 'ピン留めしとく';
	@override String get you => 'あんた';
	@override String get clickToShow => '押したら見えるで';
	@override String get sensitive => '気いつけて見いや';
	@override String get add => '増やす';
	@override String get reaction => 'ツッコミ';
	@override String get reactions => 'ツッコミ';
	@override String get emojiPicker => '絵文字ピッカー';
	@override String get pinnedEmojisForReactionSettingDescription => 'リアクションしたときにピンで留めてる表示をする絵文字を設定するで';
	@override String get pinnedEmojisSettingDescription => '絵文字打ったときにピン留め表示する絵文字設定できるで';
	@override String get emojiPickerDisplay => 'ピッカーの表示';
	@override String get overwriteFromPinnedEmojisForReaction => 'リアクション設定から上書きする';
	@override String get overwriteFromPinnedEmojis => '全般設定から上書きする';
	@override String get reactionSettingDescription2 => 'ドラッグで並び替え、クリックで削除、＋を押して追加やで。';
	@override String get rememberNoteVisibility => '公開範囲覚えといて';
	@override String get attachCancel => 'のっけるのやめる';
	@override String get deleteFile => 'ファイルをほかす';
	@override String get markAsSensitive => 'ちょっと見せられへんわ';
	@override String get unmarkAsSensitive => '別にええんじゃね？';
	@override String get enterFileName => 'ファイル名を入れてや';
	@override String get mute => 'ミュート';
	@override String get unmute => 'ミュートやめたる';
	@override String get renoteMute => 'リノートは見いひん';
	@override String get renoteUnmute => 'リノートもやっぱ見るわ';
	@override String get block => 'ブロック';
	@override String get unblock => 'ブロックやめたる';
	@override String get suspend => '凍結';
	@override String get unsuspend => '溶かす';
	@override String get blockConfirm => 'ブロックしてもええんか？';
	@override String get unblockConfirm => 'ブロックやめたるってほんまか？';
	@override String get suspendConfirm => '凍結してしもうてええか？';
	@override String get unsuspendConfirm => '溶かしたるけどええか？';
	@override String get selectList => 'リストを選ぶ';
	@override String get editList => 'リストいじる';
	@override String get selectChannel => 'チャンネルを選ぶ';
	@override String get selectAntenna => 'アンテナを選ぶ';
	@override String get editAntenna => 'アンテナいじる';
	@override String get createAntenna => 'アンテナを作る';
	@override String get selectWidget => 'ウィジェットを選ぶ';
	@override String get editWidgets => 'ウィジェットをいじる';
	@override String get editWidgetsExit => 'いじるのをやめる';
	@override String get customEmojis => 'カスタム絵文字';
	@override String get emoji => '絵文字';
	@override String get emojis => '絵文字';
	@override String get emojiName => '絵文字はんの名前';
	@override String get emojiUrl => '絵文字画像URL';
	@override String get addEmoji => '絵文字を追加';
	@override String get settingGuide => 'ええ感じの設定';
	@override String get cacheRemoteFiles => 'リモートのファイルをキャッシュする';
	@override String get cacheRemoteFilesDescription => 'この設定を入れとったら、リモートのファイルを端から端までこのサーバーのキャッシュん中突っ込むようになるで。画像映し出すんがめっちゃ速うなるけど、サーバーの容量をやたらと食うようになるで。リモートの人がどんだけ長くキャッシュを持っとくかはドライブ容量の制限で決めとくで。制限を超えたら古いのから順々に消してって、かわりにリンクになるで。この設定を切ったら、リモートのファイルは最初っからリンクとして扱うことにするけど、画像のサムネ作るのとかみんなのプライバシー守るために、default.ymlのproxyRemoteFilesをtrueにしといたほうがええよ。';
	@override String get youCanCleanRemoteFilesCache => 'ファイル管理にある🗑️ボタンでキャッシュ全部ほかすで。';
	@override String get cacheRemoteSensitiveFiles => 'リモートのきわどいファイルをキャッシュする';
	@override String get cacheRemoteSensitiveFilesDescription => 'この設定を切ると、リモートのきわどいファイルはキャッシュせず直でリンクするようになるで。';
	@override String get flagAsBot => 'Botにするで';
	@override String get flagAsBotDescription => 'もしこのアカウントをプログラム使うて運用するんやったら、このフラグをオンにしてや。オンにすれば、反応がバーッて連鎖せんように開発者が使うたり、Misskeyのシステム上での扱いがBotに合ったもんになるからな。';
	@override String get flagAsCat => '猫や。かわええな。';
	@override String get flagAsCatDescription => '猫になりたいんならこれつけとき。';
	@override String get flagShowTimelineReplies => 'タイムラインにノートへの返信を表示するで';
	@override String get flagShowTimelineRepliesDescription => 'オンにしたら、タイムラインにユーザーのノートの他にもそのユーザーの他のノートへの返信を表示するで。';
	@override String get autoAcceptFollowed => 'フォローしとるユーザーからのフォローリクエストを勝手に許可しとく';
	@override String get addAccount => 'アカウントを追加';
	@override String get reloadAccountsList => 'アカウントリストの情報を更新';
	@override String get loginFailed => 'ログインに失敗してもうた…';
	@override String get showOnRemote => 'リモートで見る';
	@override String get continueOnRemote => 'リモートで続行';
	@override String get chooseServerOnMisskeyHub => 'Misskey Hubからサーバーを選ぶ';
	@override String get specifyServerHost => 'サーバーのドメインを直接指定';
	@override String get inputHostName => 'ドメインを入力してや';
	@override String get general => '全般';
	@override String get wallpaper => '壁紙';
	@override String get setWallpaper => '壁紙を設定';
	@override String get removeWallpaper => '壁紙ほかす';
	@override String searchWith({required Object q}) => '検索: ${q}';
	@override String get youHaveNoLists => 'リストがあらへんで？';
	@override String followConfirm({required Object name}) => '${name}をフォローしてええか？';
	@override String get proxyAccount => 'プロキシアカウント';
	@override String get proxyAccountDescription => 'プロキシアカウントは、代わりにフォローしてくれるアカウントや。例えば、551に豚まんが無いときやったり、ユーザーがリモートユーザーをアカウントに入れたとき、リストに入れられたユーザーが誰からもフォローされてないと寂しいやん。寂しいし、アクティビティも配達されへんから、プロキシアカウントがフォローしてくれるで。ええやつやん…';
	@override String get host => 'ホスト';
	@override String get selectSelf => '自分を選択';
	@override String get selectUser => 'ユーザーを選ぶ';
	@override String get recipient => '宛先';
	@override String get annotation => '注釈';
	@override String get federation => '連合';
	@override String get instances => 'サーバー';
	@override String get registeredAt => '初観測';
	@override String get latestRequestReceivedAt => 'ちょっと前のリクエスト受信';
	@override String get latestStatus => 'ちょっと前のステータス';
	@override String get storageUsage => 'ストレージ使うた量';
	@override String get charts => 'チャート';
	@override String get perHour => '1時間ごと';
	@override String get perDay => '1日ごと';
	@override String get stopActivityDelivery => 'アクティビティの配送をやめる';
	@override String get blockThisInstance => 'このサーバーをブロックすんで';
	@override String get silenceThisInstance => 'サーバーサイレンスすんで？';
	@override String get mediaSilenceThisInstance => 'サーバーをメディアサイレンス';
	@override String get operations => '操作';
	@override String get software => 'ソフトウェア';
	@override String get softwareName => 'ソフトウェア名';
	@override String get version => 'バージョン';
	@override String get metadata => 'メタデータ';
	@override String withNFiles({required Object n}) => '${n}個のファイル';
	@override String get monitor => 'モニター';
	@override String get jobQueue => 'ジョブキュー';
	@override String get cpuAndMemory => 'CPUとメモリ';
	@override String get network => 'ネットワーク';
	@override String get disk => 'ディスク';
	@override String get instanceInfo => 'サーバー情報';
	@override String get statistics => '統計';
	@override String get clearQueue => 'キューをほかす';
	@override String get clearQueueConfirmTitle => 'キューをほかしとこか？';
	@override String get clearQueueConfirmText => '未配達の投稿は配送されんなるで。ふつうこの操作を行う必要は無いんやけどな。';
	@override String get clearCachedFiles => 'キャッシュをほかす';
	@override String get clearCachedFilesConfirm => 'キャッシュされとるリモートファイルを全部ほかしてええか？';
	@override String get blockedInstances => 'ブロックしたサーバー';
	@override String get blockedInstancesDescription => 'ブロックしたいサーバーのホストを改行で区切って設定してな。ブロックされてもうたサーバーとはもう金輪際やり取りできひんくなるで。';
	@override String get silencedInstances => 'サーバーサイレンスされてんねん';
	@override String get silencedInstancesDescription => 'サイレンスしたいサーバーのホストを改行で区切って設定すんで。サイレンスされたサーバーに所属するアカウントはすべて「サイレンス」として扱われ、フォローがすべてリクエストになり、フォロワーでないローカルアカウントにはメンションできなくなんねん。ブロックしたインスタンスには影響せーへんで。';
	@override String get mediaSilencedInstances => 'メディアサイレンスしたサーバー';
	@override String get mediaSilencedInstancesDescription => 'メディアサイレンスしたいサーバーのホストを改行で区切って設定するで。メディアサイレンスされたサーバーに所属するアカウントによるファイルはすべてセンシティブとして扱われてな、カスタム絵文字が使えへんようになるで。ブロックしたインスタンスには影響せえへんで。';
	@override String get federationAllowedHosts => '連合を許すサーバー';
	@override String get federationAllowedHostsDescription => '連合してもいいサーバーのホストを行ごとに区切って設定してや。';
	@override String get muteAndBlock => 'ミュートとブロック';
	@override String get mutedUsers => 'ミュートしとるユーザー';
	@override String get blockedUsers => 'ブロックしとるユーザー';
	@override String get noUsers => 'ユーザーはおらん';
	@override String get editProfile => 'プロフィールをいじる';
	@override String get noteDeleteConfirm => 'このノートをほかしてええか？';
	@override String get pinLimitExceeded => 'これ以上ピン留めできひん';
	@override String get done => 'でけた';
	@override String get processing => '処理しとる';
	@override String get preprocessing => '準備中';
	@override String get preview => 'プレビュー';
	@override String get default_ => 'デフォルト';
	@override String defaultValueIs({required Object value}) => 'デフォルト: ${value}';
	@override String get noCustomEmojis => '絵文字はあらへん';
	@override String get noJobs => 'ジョブはあらへん';
	@override String get federating => '連合しとる';
	@override String get blocked => 'ブロックしとる';
	@override String get suspended => '配信せぇへん';
	@override String get all => 'みんな';
	@override String get subscribing => '購読しとる';
	@override String get publishing => '配信しとる';
	@override String get notResponding => '応答してへんで';
	@override String get instanceFollowing => 'サーバーのフォロー';
	@override String get instanceFollowers => 'サーバーのフォロワー\n';
	@override String get instanceUsers => 'サーバーのユーザー';
	@override String get changePassword => 'パスワードをいじる';
	@override String get security => 'セキュリティ';
	@override String get retypedNotMatch => '入れたやつ合うてへんわ。';
	@override String get currentPassword => '今のパスワード';
	@override String get newPassword => '今度のパスワード';
	@override String get newPasswordRetype => '今度のパスワード(もっぺん入れて)';
	@override String get attachFile => 'ファイルのっける';
	@override String get more => '他のん';
	@override String get featured => 'ハイライト';
	@override String get usernameOrUserId => 'ユーザー名かユーザーID';
	@override String get noSuchUser => 'ユーザーが見つからへんで';
	@override String get lookup => '見てきて';
	@override String get announcements => 'お知らせ';
	@override String get imageUrl => '画像URL';
	@override String get remove => 'ほかす';
	@override String get removed => 'ほかしたで！';
	@override String removeAreYouSure({required Object x}) => '「${x}」はほかしてええか？';
	@override String deleteAreYouSure({required Object x}) => '「${x}」はほかしてええか？';
	@override String get resetAreYouSure => 'リセットしてええん？';
	@override String get areYouSure => 'いいん？';
	@override String get saved => '保存したで！';
	@override String get upload => 'アップロード';
	@override String get keepOriginalUploading => 'オリジナル画像のまんま';
	@override String get keepOriginalUploadingDescription => '画像を上げるときにオリジナル版のまんまにするで。オフにしたら、上げたときにブラウザでWeb公開用の画像を生成するで。 ';
	@override String get fromDrive => 'ドライブから';
	@override String get fromUrl => 'URLから';
	@override String get uploadFromUrl => 'URLアップロード';
	@override String get uploadFromUrlDescription => 'このURLのファイルをアップロードしたいねん';
	@override String get uploadFromUrlRequested => 'アップロードしたい言うといたで';
	@override String get uploadFromUrlMayTakeTime => 'アップロード終わるんにちょい時間かかるかもしれへんわ。';
	@override String uploadNFiles({required Object n}) => '${n}個のファイルをアップロード';
	@override String get explore => 'みつける';
	@override String get messageRead => 'もう読んだ';
	@override String get readAllChatMessages => 'メッセージを全部読んだことにしとく';
	@override String get noMoreHistory => 'これより昔のんはあらへんで';
	@override String get startChat => 'チャットを始めよか';
	@override String nUsersRead({required Object n}) => '${n}人が読んでもうた';
	@override String agreeTo({required Object x0}) => '${x0}に同意したで';
	@override String get agree => 'せやな';
	@override String get agreeBelow => '下記に同意するわ';
	@override String get basicNotesBeforeCreateAccount => 'よう読んどいてや';
	@override String get termsOfService => '使うための決め事';
	@override String get start => '始める';
	@override String get home => 'ホーム';
	@override String get remoteUserCaution => 'リモートユーザーやから、足りひん情報あるかもしれへん。';
	@override String get activity => 'アクティビティ';
	@override String get images => '画像';
	@override String get image => '画像';
	@override String get birthday => '生まれた日';
	@override String yearsOld({required Object age}) => '${age}歳';
	@override String get registeredDate => '始めた日';
	@override String get location => '場所';
	@override String get theme => 'テーマ';
	@override String get themeForLightMode => 'ライトモードではこのテーマ使うて';
	@override String get themeForDarkMode => 'ダークモードではこのテーマ使うて';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get lightThemes => 'デイゲーム';
	@override String get darkThemes => 'ナイトゲーム';
	@override String get syncDeviceDarkMode => 'デバイスのダークモードと一緒にする';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '「${x}」がオンになってるで。同期切って手動でモード切り替える？';
	@override String get drive => 'ドライブ';
	@override String get fileName => 'ファイル名';
	@override String get selectFile => 'ファイル選んでや';
	@override String get selectFiles => 'ファイル選んでや';
	@override String get selectFolder => 'フォルダ選んでや';
	@override String get unselectFolder => 'フォルダーの選択を解除';
	@override String get selectFolders => 'フォルダ選んでや';
	@override String get fileNotSelected => 'ファイルが選択されてへんで';
	@override String get renameFile => 'ファイル名をいらう';
	@override String get folderName => 'フォルダー名';
	@override String get createFolder => 'フォルダー作る';
	@override String get renameFolder => 'フォルダー名を変える';
	@override String get deleteFolder => 'フォルダーをほかす';
	@override String get folder => 'フォルダー';
	@override String get addFile => 'ファイルを追加';
	@override String get showFile => 'ファイル出す';
	@override String get emptyDrive => 'ドライブは空っぽや';
	@override String get emptyFolder => 'このフォルダーは空や';
	@override String get dropHereToUpload => 'ここにファイルをドロップしてアップロード';
	@override String get unableToDelete => '消せんかったわ';
	@override String get inputNewFileName => '今度のファイル名は何にするん？';
	@override String get inputNewDescription => '新しいキャプションを入れてや';
	@override String get inputNewFolderName => '今度のフォルダ名は何にするん？';
	@override String get circularReferenceFolder => '移動先のフォルダーは、移動するフォルダーのサブフォルダーや。';
	@override String get hasChildFilesOrFolders => 'このフォルダは空っぽちゃうから消されへん';
	@override String get copyUrl => 'URLをコピー';
	@override String get rename => '名前を変えるで';
	@override String get avatar => 'アイコン';
	@override String get banner => 'バナー';
	@override String get displayOfSensitiveMedia => 'きわどいやつの表示';
	@override String get whenServerDisconnected => 'サーバーとの接続が失くなってしもうたとき';
	@override String get disconnectedFromServer => 'サーバーが機嫌悪いねん';
	@override String get reload => 'リロード';
	@override String get doNothing => '何もせんとく';
	@override String get reloadConfirm => 'リロードしてええか？';
	@override String get watch => 'ウォッチ';
	@override String get unwatch => 'ウォッチやめる';
	@override String get accept => 'ええで';
	@override String get reject => 'あかん';
	@override String get normal => 'ええ感じ';
	@override String get instanceName => 'サーバー名';
	@override String get instanceDescription => 'サーバーの紹介';
	@override String get maintainerName => '管理者はんの名前';
	@override String get maintainerEmail => '管理者はんのメールアドレス';
	@override String get tosUrl => '使うための決め事のURL';
	@override String get thisYear => '今年';
	@override String get thisMonth => '今月';
	@override String get today => '今日';
	@override String dayX({required Object day}) => '${day}日';
	@override String monthX({required Object month}) => '${month}月';
	@override String yearX({required Object year}) => '${year}年';
	@override String get pages => 'ページ';
	@override String get integration => '連携';
	@override String get connectService => 'つなげるで';
	@override String get disconnectService => '切るで';
	@override String get enableLocalTimeline => 'ローカルタイムラインを使えるようにするわ';
	@override String get enableGlobalTimeline => 'グローバルタイムラインを使えるようにするわ';
	@override String get disablingTimelinesInfo => 'ここらへんのタイムラインを使えんようにしてしもても、管理者とモデレーターは使えるままになってるで、そうやなかったら不便やからな。';
	@override String get registration => '登録';
	@override String get invite => '来てや';
	@override String get driveCapacityPerLocalAccount => 'ローカルユーザーはんひとりあたりのドライブ容量';
	@override String get driveCapacityPerRemoteAccount => 'リモートユーザーはんひとりあたりのドライブ容量';
	@override String get inMb => 'メガバイト単位';
	@override String get bannerUrl => 'バナー画像のURL';
	@override String get backgroundImageUrl => '背景画像のURL';
	@override String get basicInfo => '基本情報';
	@override String get pinnedUsers => 'ピン留めしたユーザー';
	@override String get pinnedUsersDescription => '「みつける」ページとかにピン留めしたいユーザーをここに書けばええんやで。ユーザー毎に改行してや。';
	@override String get pinnedPages => 'ピン留めページ';
	@override String get pinnedPagesDescription => 'サーバーのいっちゃん上にピン留めしたいページのパスを改行で区切って記述してな';
	@override String get pinnedClipId => 'ピン留めするクリップのID';
	@override String get pinnedNotes => 'ピン留めされとるノート';
	@override String get hcaptcha => 'hCaptcha（キャプチャ）';
	@override String get enableHcaptcha => 'hCaptcha（キャプチャ）をつけとく';
	@override String get hcaptchaSiteKey => 'サイトキー';
	@override String get hcaptchaSecretKey => 'シークレットキー';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'hCaptcha（キャプチャ）をつけとく';
	@override String get mcaptchaSiteKey => 'サイトキー';
	@override String get mcaptchaSecretKey => 'シークレットキー';
	@override String get mcaptchaInstanceUrl => 'mCaptchaのインスタンスのURL';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA（リキャプチャ）を有効にする';
	@override String get recaptchaSiteKey => 'サイトキー';
	@override String get recaptchaSecretKey => 'シークレットキー';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstileを有効にするで';
	@override String get turnstileSiteKey => 'サイトキー';
	@override String get turnstileSecretKey => 'シークレットキー';
	@override String get avoidMultiCaptchaConfirm => 'ぎょうさんのCaptchaをつこてしまうと、仲良うせんことがあるんや。他のCaptchaをなおしとこか？別にキャンセルしてもろうたらCaptchaは消されへんで済むけど知らんで。';
	@override String get antennas => 'アンテナ';
	@override String get manageAntennas => 'アンテナいじる';
	@override String get name => '名前';
	@override String get antennaSource => '受信ソース(このソースは食われへん)';
	@override String get antennaKeywords => '受信キーワード';
	@override String get antennaExcludeKeywords => '除外キーワード';
	@override String get antennaExcludeBots => 'Botアカウントを除外';
	@override String get antennaKeywordsDescription => 'スペースで区切ったらAND指定で、改行で区切ったらOR指定や';
	@override String get notifyAntenna => '新しいノートを通知すんで';
	@override String get withFileAntenna => 'なんか添付されたノートだけ';
	@override String get excludeNotesInSensitiveChannel => 'センシティブなチャンネルのノートは入れんとくわ';
	@override String get enableServiceworker => 'ブラウザにプッシュ通知が行くようにする';
	@override String get antennaUsersDescription => 'ユーザー名を改行で区切ったってな';
	@override String get caseSensitive => '大文字と小文字は別もんや';
	@override String get withReplies => '返信を含む';
	@override String get connectedTo => '次のアカウントに繋がっとるで';
	@override String get notesAndReplies => '投稿と返信';
	@override String get withFiles => 'ファイル付いとる';
	@override String get silence => 'サイレンス';
	@override String get silenceConfirm => 'サイレンスしよか？';
	@override String get unsilence => 'サイレンスやめるで';
	@override String get unsilenceConfirm => 'サイレンスやめよか？';
	@override String get popularUsers => '人気のユーザー';
	@override String get recentlyUpdatedUsers => 'ちょっと前に投稿したばっかりのユーザー';
	@override String get recentlyRegisteredUsers => 'ちょっと前に始めたばっかりのユーザー';
	@override String get recentlyDiscoveredUsers => '最近見っけたユーザー';
	@override String exploreUsersCount({required Object count}) => '${count}もユーザーおるで';
	@override String get exploreFediverse => 'Fediverseを探ってみる';
	@override String get popularTags => '人気のタグ';
	@override String get userList => 'リスト';
	@override String get about => '情報';
	@override String get aboutMisskey => 'Misskeyってなんや？';
	@override String get administrator => '管理者';
	@override String get token => '確認コード';
	@override String get x2fa => '二要素認証';
	@override String get setupOf2fa => '二要素認証のセットアップ';
	@override String get totp => '認証アプリ';
	@override String get totpDescription => '認証アプリ使うてワンタイムパスワードを入れる';
	@override String get moderator => 'モデレーター';
	@override String get moderation => 'モデレーション';
	@override String get moderationNote => 'モデレーションノート';
	@override String get moderationNoteDescription => 'モデレーターの中だけで共有するメモを入れれるで。';
	@override String get addModerationNote => 'モデレーションノートを追加するで';
	@override String get moderationLogs => 'モデログ';
	@override String nUsersMentioned({required Object n}) => '${n}人が投稿';
	@override String get securityKeyAndPasskey => 'セキュリティキー・パスキー';
	@override String get securityKey => 'セキュリティキー';
	@override String get lastUsed => '最後に使うた日';
	@override String lastUsedAt({required Object t}) => '最後に使うたんは: ${t}';
	@override String get unregister => '登録やめる';
	@override String get passwordLessLogin => 'パスワード無くてもログインできるようにする';
	@override String get passwordLessLoginDescription => 'パスワードなんかいらん、セキュリティキーとかパスキーだけでログインするわ';
	@override String get resetPassword => 'パスワードをリセット';
	@override String newPasswordIs({required Object password}) => '今度のパスワードは「${password}」や';
	@override String get reduceUiAnimation => 'UIの動きやアニメーションを少なする';
	@override String get share => 'わけわけ';
	@override String get notFound => '見つからへんね';
	@override String get notFoundDescription => '言われたURLのページはなかったで。';
	@override String get uploadFolder => 'とりあえずアップロードしたやつ置いとく所';
	@override String get markAsReadAllNotifications => '通知はもう全部読んだわ';
	@override String get markAsReadAllUnreadNotes => '投稿は全て読んだわっ';
	@override String get markAsReadAllTalkMessages => 'チャットはもうぜんぶ読んだわっ';
	@override String get help => 'ヘルプ';
	@override String get inputMessageHere => 'ここにメッセージ書いてや';
	@override String get close => 'さいなら';
	@override String get invites => '来てや';
	@override String get members => 'メンバーはん';
	@override String get transfer => '譲渡';
	@override String get title => 'タイトル';
	@override String get text => 'テキスト';
	@override String get enable => '有効にするで';
	@override String get next => '次';
	@override String get retype => 'もっかい入力';
	@override String noteOf({required Object user}) => '${user}はんのノート';
	@override String get quoteAttached => '引用付いとるで';
	@override String get quoteQuestion => '引用として添付してもええか？';
	@override String get attachAsFileQuestion => 'クリップボードのテキストが長すぎるからテキストファイルとして添付してもええか？';
	@override String get onlyOneFileCanBeAttached => 'ごめんな、メッセージに添付できるファイルはひとつだけなんよ。';
	@override String get signinRequired => 'ログインしてくれへん？';
	@override String get signinOrContinueOnRemote => '続行するには、お使いのサーバーに移動するか、このサーバーに登録・ログインする必要があるで';
	@override String get invitations => '来てや';
	@override String get invitationCode => '招待コード';
	@override String get checking => '確認しとるで';
	@override String get available => '使えるで';
	@override String get unavailable => '利用できん';
	@override String get usernameInvalidFormat => 'a~z、A~Z、0~9、_が使えるで';
	@override String get tooShort => '短すぎやろ！';
	@override String get tooLong => '長すぎやろ！';
	@override String get weakPassword => 'へぼいパスワード';
	@override String get normalPassword => 'ぼちぼちのパスワード';
	@override String get strongPassword => 'ええ感じのパスワード';
	@override String get passwordMatched => 'よし！一致や！';
	@override String get passwordNotMatched => 'ちゃうで？';
	@override String signinWith({required Object x}) => '${x}でログイン';
	@override String get signinFailed => 'ログインできんかったで。もっかいユーザー名とパスワードを確認してみてや。';
	@override String get or => 'それか';
	@override String get language => '言語';
	@override String get uiLanguage => 'UIの表示言語';
	@override String aboutX({required Object x}) => '${x}について';
	@override String get emojiStyle => '絵文字のスタイル';
	@override String get native => 'ネイティブ';
	@override String get menuStyle => 'メニューのスタイル';
	@override String get style => 'スタイル';
	@override String get drawer => 'ドロワー';
	@override String get popup => 'ポップアップ';
	@override String get showNoteActionsOnlyHover => 'ノートの操作部をホバー時のみ表示するで';
	@override String get showReactionsCount => 'ノートのリアクション数を表示する';
	@override String get noHistory => '履歴はないわ。';
	@override String get signinHistory => 'ログイン履歴';
	@override String get enableAdvancedMfm => 'ややこしいMFMもありにする';
	@override String get enableAnimatedMfm => '動きがやかましいMFMも許したる';
	@override String get doing => 'やっとるがな';
	@override String get category => 'カテゴリ';
	@override String get tags => 'タグ';
	@override String get docSource => 'このドキュメントのソース';
	@override String get createAccount => 'アカウントを作るで';
	@override String get existingAccount => '前に作ったアカウント';
	@override String get regenerate => 'もっぺん生成するで';
	@override String get fontSize => '字の大きさ';
	@override String get mediaListWithOneImageAppearance => '画像が1枚のみのメディアリストの高さ';
	@override String limitTo({required Object x}) => '${x}をいっぱいに';
	@override String get showMediaListByGridInWideArea => '画面幅が広いときはメディアリストを横並びで表示する';
	@override String get noFollowRequests => 'フォロー申請はあらへんで';
	@override String get openImageInNewTab => '画像を新しいタブで開くで';
	@override String get dashboard => 'ダッシュボード';
	@override String get local => 'ローカル';
	@override String get remote => 'リモート';
	@override String get total => '合計';
	@override String get weekOverWeekChanges => '前週比';
	@override String get dayOverDayChanges => '前日比';
	@override String get appearance => '見た目';
	@override String get clientSettings => 'クライアントの設定';
	@override String get accountSettings => 'アカウントの設定';
	@override String get promotion => '宣伝';
	@override String get promote => '宣伝';
	@override String get numberOfDays => '日数';
	@override String get hideThisNote => 'このノートは表示せんでいい';
	@override String get showFeaturedNotesInTimeline => 'タイムラインにおすすめのノートを表示してや';
	@override String get objectStorage => 'オブジェクトストレージ';
	@override String get useObjectStorage => 'オブジェクトストレージを使う';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '参照に使うURLやで。CDNやProxyを使用してるんならそのURL、S3: \'https://<bucket>.s3.amazonaws.com\'、GCSとかなら: \'https://storage.googleapis.com/<bucket>\'。';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => '使ってるサービスのbucket名を選んでな';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'このprefixのディレクトリ下に格納されるで';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'S3のときは空、それ以外は各サービスのendpointを指定してなー。\'<host>\'ってやるか\'<host>:<port>\'みたいに指定するんやで。';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '\'xx-east-1\'みたいなregionを指定したってやー。使ってるサービスにregionの概念がないときは、空か\'us-east-1\'にするんやで。';
	@override String get objectStorageUseSSL => 'SSLを使う';
	@override String get objectStorageUseSSLDesc => 'API接続にhttpsを使わんのやったら消しといて';
	@override String get objectStorageUseProxy => 'Proxyを使う';
	@override String get objectStorageUseProxyDesc => 'API接続にproxy使わんのやったら切ってくれへん？';
	@override String get objectStorageSetPublicRead => 'アップロードした時に\'public-read\'を設定してや';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyleを使たらバケット名をURLのホスト名やなくてパスの一部として必ず指定させるようになるで。セルフホストされたMinioとかを使うてるんやったら有効にせなあかん場合があるで。';
	@override String get serverLogs => 'サーバーログ';
	@override String get deleteAll => '全部ほかす';
	@override String get showFixedPostForm => 'タイムラインの上の方で投稿できるようにするわ';
	@override String get showFixedPostFormInChannel => 'タイムラインの上の方で投稿できるようにするわ(チャンネル)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'フォローする時、デフォルトで返信をタイムラインに含むようにしよか';
	@override String get newNoteRecived => '新しいノートがあるで';
	@override String get newNote => '新しいノートがあるで';
	@override String get sounds => '音';
	@override String get sound => '音';
	@override String get notificationSoundSettings => '通知音の設定';
	@override String get listen => '聴く';
	@override String get none => 'なし';
	@override String get showInPage => 'ページで表示';
	@override String get popout => 'ポップアウト';
	@override String get volume => '音のでかさ';
	@override String get masterVolume => '全体のやかましさ';
	@override String get notUseSound => '音出さへん';
	@override String get useSoundOnlyWhenActive => 'Misskeyがアクティブなときだけ音出す';
	@override String get details => 'もっと';
	@override String get renoteDetails => 'リノートの詳細';
	@override String get chooseEmoji => '絵文字を選ぶ';
	@override String get unableToProcess => 'なんか奥の方で詰まってもうた';
	@override String get recentUsed => '最近使ったやつ';
	@override String get install => 'インストール';
	@override String get uninstall => 'アンインストール';
	@override String get installedApps => 'インストールされとるアプリ';
	@override String get nothing => 'あらへん';
	@override String get installedDate => 'インストールした日時';
	@override String get lastUsedDate => '最後に使った日時';
	@override String get state => '状態';
	@override String get sort => '並び替え';
	@override String get ascendingOrder => '小さい順';
	@override String get descendingOrder => '大きい順';
	@override String get scratchpad => 'スクラッチパッド';
	@override String get scratchpadDescription => 'スクラッチパッドではAiScriptを色々試すことができるんや。Misskeyに対して色々できるコードを書いて動かしてみたり、結果を見たりできるで。';
	@override String get uiInspector => 'UIインスペクター';
	@override String get uiInspectorDescription => 'メモリ上にあるUIコンポーネントのインスタンス一覧を見れるで。UIコンポーネントはUi:C:系関数で生成されるで。';
	@override String get output => '出力';
	@override String get script => 'スクリプト';
	@override String get disablePagesScript => 'Pagesのスクリプトを無効にしてや';
	@override String get updateRemoteUser => 'リモートユーザー情報の更新してくれん？';
	@override String get unsetUserAvatar => 'アイコン戻す';
	@override String get unsetUserAvatarConfirm => 'アイコンを元に戻すで？';
	@override String get unsetUserBanner => 'バナー戻す';
	@override String get unsetUserBannerConfirm => 'バナー元に戻すで？';
	@override String get deleteAllFiles => 'ファイルを全部ほかす';
	@override String get deleteAllFilesConfirm => 'ホンマにファイル全部ほかすんか？消したもんはもう戻ってこんのやで？';
	@override String get removeAllFollowing => 'フォローを全解除';
	@override String removeAllFollowingDescription({required Object host}) => '${host}からのフォローをすべて解除するで。そのインスタンスが消えて無くなった時とかには便利な機能やで。';
	@override String get userSuspended => 'このユーザーは...凍結されとる。';
	@override String get userSilenced => 'このユーザーは...サイレンスされとる。';
	@override String get yourAccountSuspendedTitle => 'あんたのアカウント凍結されとるで';
	@override String get yourAccountSuspendedDescription => 'あんたのアカウントは、サーバーの使うための決め事に違反したとかの理由で、凍結されとるで。細かいことは管理者までお問い合わせたってなー。絶対に新しいアカウント作ったらあかんで。絶対やで。';
	@override String get tokenRevoked => 'トークンが無効やで';
	@override String get tokenRevokedDescription => 'ログイントークンが失効しとるで。もっかいログインしてもろてもええか？';
	@override String get accountDeleted => 'アカウントは削除されとるで';
	@override String get accountDeletedDescription => 'このアカウントはもう消えとる。';
	@override String get menu => 'メニュー';
	@override String get divider => '分割線';
	@override String get addItem => '項目を追加';
	@override String get rearrange => '並び替え';
	@override String get relays => 'リレー';
	@override String get addRelay => 'リレーの追加';
	@override String get inboxUrl => 'inboxのURL';
	@override String get addedRelays => '追加済みのリレー';
	@override String get serviceworkerInfo => 'プッシュ通知をするんなら有効にせなあかんで。';
	@override String get deletedNote => '消された投稿';
	@override String get invisibleNote => '非公開の投稿';
	@override String get enableInfiniteScroll => '自動でもっと見る';
	@override String get visibility => '公開範囲';
	@override String get poll => 'アンケート';
	@override String get useCw => '内容を隠す';
	@override String get enablePlayer => 'プレイヤー開く';
	@override String get disablePlayer => 'プレイヤー閉じる';
	@override String get expandTweet => 'ポスト展開しとく';
	@override String get themeEditor => 'テーマエディター';
	@override String get description => '説明';
	@override String get describeFile => 'キャプションを付ける';
	@override String get enterFileDescription => 'キャプションを入力';
	@override String get author => '作者';
	@override String get leaveConfirm => 'あんた、いじったのにまだ保存してないで！ほかしてええか？';
	@override String get manage => '管理';
	@override String get plugins => 'プラグイン';
	@override String get preferencesBackups => '設定のバックアップ';
	@override String get deck => 'デッキ';
	@override String get undeck => 'デッキ解除';
	@override String get useBlurEffectForModal => 'モーダルにぼかし効果を使用';
	@override String get useFullReactionPicker => 'フルフルのツッコミピッカーを使う';
	@override String get width => '幅';
	@override String get height => '高さ';
	@override String get large => 'でかい';
	@override String get medium => 'ふつう';
	@override String get small => 'ちいさい';
	@override String get generateAccessToken => 'アクセストークンの発行';
	@override String get permission => '権限';
	@override String get adminPermission => '管理者権限';
	@override String get enableAll => '全部使えるようにする';
	@override String get disableAll => '全部使えへんようにする';
	@override String get tokenRequested => 'アカウントへのアクセス許してやったらどうや';
	@override String get pluginTokenRequestedDescription => 'このプラグインはここで設定した権限を使えるようになるで。';
	@override String get notificationType => '通知の種類';
	@override String get edit => '編集';
	@override String get emailServer => 'メールサーバー';
	@override String get enableEmail => 'メール配信を受け取る';
	@override String get emailConfigInfo => 'メールアドレスの確認とかパスワードリセットの時に使うで';
	@override String get email => 'メール';
	@override String get emailAddress => 'メールアドレス';
	@override String get smtpConfig => 'SMTP サーバーの設定';
	@override String get smtpHost => 'ホスト';
	@override String get smtpPort => 'ポート';
	@override String get smtpUser => 'ユーザー名';
	@override String get smtpPass => 'パスワード';
	@override String get emptyToDisableSmtpAuth => 'ユーザー名とパスワードになんも入れんかったら、SMTP認証を無効化するで';
	@override String get smtpSecure => 'SMTP 接続に暗黙的なSSL/TLSを使用する';
	@override String get smtpSecureInfo => 'STARTTLS使っとる時はオフにしてや。';
	@override String get testEmail => '配信テスト';
	@override String get wordMute => 'ワードミュート';
	@override String get wordMuteDescription => '指定した語句が入ってるノートをちっさくするで。ちっさくなったノートをクリックしたら中身を見れるで。';
	@override String get hardWordMute => 'ハードワードミュート';
	@override String get showMutedWord => 'ミュートされたワードを表示するで';
	@override String get hardWordMuteDescription => '指定した語句が入ってるノートを隠すで。ワードミュートとちゃうて、ノートは完全に表示されんようになるで。';
	@override String get regexpError => '正規表現エラー';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab}ワードミュートの${line}行目の正規表現にエラーが出てきたで:';
	@override String get instanceMute => 'サーバーミュート';
	@override String userSaysSomething({required Object name}) => '${name}が何か言うとるわ';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name}が「${word}」についてなんか言うてたで';
	@override String get makeActive => '使うで';
	@override String get display => '表示';
	@override String get copy => 'コピー';
	@override String get copiedToClipboard => 'クリップボードにコピーされたで';
	@override String get metrics => 'メトリクス';
	@override String get overview => '概要';
	@override String get logs => 'ログ';
	@override String get delayed => '遅延';
	@override String get database => 'データベース';
	@override String get channel => 'チャンネル';
	@override String get create => '作成';
	@override String get notificationSetting => '通知設定';
	@override String get notificationSettingDesc => '出す通知の種類えらんでや。';
	@override String get useGlobalSetting => 'グローバル設定を使ってや';
	@override String get useGlobalSettingDesc => 'オンにすると、アカウントの通知設定が使われるで。オフにすると、別々に設定できるようになるで。';
	@override String get other => 'その他';
	@override String get regenerateLoginToken => 'ログイントークンを再生成';
	@override String get regenerateLoginTokenDescription => 'ログインに使われる内部トークンをもっかい作るで。いつもならこれをやる必要はないで。もっかい作ると、全部のデバイスでログアウトされるで気ぃつけてなー。';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'カスタム絵文字を探すときのキーワードになるで。';
	@override String get setMultipleBySeparatingWithSpace => 'スペースで区切って何個でも設定できるで。';
	@override String get fileIdOrUrl => 'ファイルIDかURL';
	@override String get behavior => '動作';
	@override String get sample => 'サンプル';
	@override String get abuseReports => '通報';
	@override String get reportAbuse => '通報';
	@override String get reportAbuseRenote => 'リノートの苦情出す';
	@override String reportAbuseOf({required Object name}) => '${name}を通報する';
	@override String get fillAbuseReportDescription => '細かい通報理由を書いてなー。対象ノートがある時はそのURLも書いといてなー。';
	@override String get abuseReported => '無事内容が送信されたみたいやで。おおきに〜。';
	@override String get reporter => '通報者';
	@override String get reporteeOrigin => '通報先';
	@override String get reporterOrigin => '通報元';
	@override String get send => '送信';
	@override String get openInNewTab => '新しいタブで開く';
	@override String get openInSideView => 'サイドビューで開く';
	@override String get defaultNavigationBehaviour => 'デフォルトのナビゲーション';
	@override String get editTheseSettingsMayBreakAccount => 'このへんの設定をようわからんままイジるとアカウントが壊れて使えんくなるかも知れへんで？';
	@override String get instanceTicker => 'ノートのサーバー情報';
	@override String waitingFor({required Object x}) => '${x}を待っとるで';
	@override String get random => 'ランダム';
	@override String get system => 'システム';
	@override String get switchUi => 'UI切り替え';
	@override String get desktop => 'デスクトップ';
	@override String get clip => 'クリップ';
	@override String get createNew => '新しく作るで';
	@override String get optional => '任意';
	@override String get createNewClip => '新しいクリップを作るで';
	@override String get unclip => 'クリップやめとく';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'このノートはもう「${name}」に含まれとるで。ノート、このクリップから外そか？';
	@override String get public => 'パブリック';
	@override String get private => '非公開';
	@override String i18nInfo({required Object link}) => 'Misskeyは有志がいろんな言語に訳しとるで。${link}で翻訳に協力したってやー。';
	@override String get manageAccessTokens => 'アクセストークンの管理';
	@override String get accountInfo => 'アカウント情報';
	@override String get notesCount => 'ノートの数やで';
	@override String get repliesCount => '返信した数やで';
	@override String get renotesCount => 'リノートした数やで';
	@override String get repliedCount => '返信された数やで';
	@override String get renotedCount => 'リノートされた数やで';
	@override String get followingCount => 'フォロー数やで';
	@override String get followersCount => 'フォロワー数やで';
	@override String get sentReactionsCount => 'ツッコんだ数';
	@override String get receivedReactionsCount => 'ツッコまれた数';
	@override String get pollVotesCount => 'アンケートに投票した数';
	@override String get pollVotedCount => 'アンケートに投票された数';
	@override String get yes => 'ええで';
	@override String get no => 'あかん';
	@override String get driveFilesCount => 'ドライブのファイル数';
	@override String get driveUsage => 'ドライブ使用量やで';
	@override String get noCrawle => 'クローラーによるインデックスを拒否するで';
	@override String get noCrawleDescription => '検索エンジンにあんたのユーザーページ、ノート、Pagesとかのコンテンツを登録(インデックス)せんように頼むで。邪魔すんねんやったら帰って〜。';
	@override String get lockedAccountInfo => 'フォローを承認制にしとっても、ノートの公開範囲を「フォロワー」にせぇへん限り、誰でもあんたのノートを見れるで。';
	@override String get alwaysMarkSensitive => 'デフォルトでメディアを閲覧注意にするで';
	@override String get loadRawImages => '添付画像のサムネイルをオリジナル画質にするで';
	@override String get disableShowingAnimatedImages => 'アニメーション画像を再生せんとくで';
	@override String get disableShowingAnimatedImages_caption => 'この設定を変えてもアニメーション画像が再生されへん時は、ブラウザとかOSのアクセシビリティ設定とか省電力設定の方が悪さしてるかもしれへんで。';
	@override String get highlightSensitiveMedia => 'きわどいことをめっっちゃわかりやすくする';
	@override String get verificationEmailSent => '無事確認のメールを送れたで。メールに書いてあるリンクにアクセスして、設定を完了してなー。';
	@override String get notSet => '未設定';
	@override String get emailVerified => 'メールアドレスは確認されたで';
	@override String get noteFavoritesCount => 'お気に入りノートの数やで';
	@override String get pageLikesCount => 'Pageにええやんと思った数';
	@override String get pageLikedCount => 'Pageにええやんと思ってくれた数';
	@override String get contact => '連絡先';
	@override String get useSystemFont => 'システムのデフォルトのフォントを使うで';
	@override String get clips => 'クリップ';
	@override String get experimentalFeatures => 'おためし機能やで';
	@override String get experimental => '実験的';
	@override String get thisIsExperimentalFeature => 'これは実験的な機能やから、仕様が変わったりちゃんと動かんかったりするかもしれん。';
	@override String get developer => '開発者やで';
	@override String get makeExplorable => 'アカウントを見つけやすくするで';
	@override String get makeExplorableDescription => 'オフにすると、「みつける」にアカウントが載らんくなるで。';
	@override String get duplicate => '複製';
	@override String get left => '左';
	@override String get center => '真ん中';
	@override String get wide => '広い';
	@override String get narrow => '狭い';
	@override String get reloadToApplySetting => '設定はページリロード後に反映されるで。今リロードしとくか？';
	@override String get needReloadToApply => '反映には再起動せなあかんで';
	@override String get needToRestartServerToApply => '反映にはサーバーを再起動せなあかんのよ。';
	@override String get showTitlebar => 'タイトルバーを見せる';
	@override String get clearCache => 'キャッシュをほかす';
	@override String onlineUsersCount({required Object n}) => '${n}人が起きとるで';
	@override String nUsers({required Object n}) => '${n}ユーザー';
	@override String nNotes({required Object n}) => '${n}ノート';
	@override String get sendErrorReports => 'エラーリポートを送る';
	@override String get sendErrorReportsDescription => 'オンにしたら、なんか変なことが起きたとき、詳しいのが全部Misskeyに送られて、ソフトウェアをもっと良うするで。エラー情報には、OSのバージョン、ブラウザの種類、行動履歴なんかが含まれるな。';
	@override String get myTheme => 'マイテーマ';
	@override String get backgroundColor => '背景';
	@override String get accentColor => 'アクセント';
	@override String get textColor => '文字';
	@override String get saveAs => '名前を付けて保存';
	@override String get advanced => '高度';
	@override String get advancedSettings => '高度な設定';
	@override String get value => '値';
	@override String get createdAt => '作成した日';
	@override String get updatedAt => '更新日時';
	@override String get saveConfirm => '保存するで？';
	@override String get deleteConfirm => 'ホンマにほかすで？';
	@override String get invalidValue => '有効な値じゃないみたいやで。';
	@override String get registry => 'レジストリ';
	@override String get closeAccount => 'アカウントを閉鎖する';
	@override String get currentVersion => '今のやつ';
	@override String get latestVersion => 'いっちゃん新しいやつ';
	@override String get youAreRunningUpToDateClient => '今使ってるクライアントが最新やで！';
	@override String get newVersionOfClientAvailable => '新しいバージョンのクライアントが使えるで。';
	@override String get usageAmount => '使用量';
	@override String get capacity => '容量';
	@override String get inUse => '使用中';
	@override String get editCode => 'コードを編集';
	@override String get apply => '適用';
	@override String get receiveAnnouncementFromInstance => 'サーバーからのお知らせを受け取る';
	@override String get emailNotification => 'メール通知';
	@override String get publish => '公開';
	@override String get inChannelSearch => 'チャンネル内検索';
	@override String get useReactionPickerForContextMenu => '右クリックでツッコミピッカーを開くようにする';
	@override String typingUsers({required Object users}) => '${users}が今書きよるで';
	@override String get jumpToSpecifiedDate => '特定の日付にジャンプ';
	@override String get showingPastTimeline => '過去のタイムラインを表示してるで';
	@override String get clear => 'クリア';
	@override String get markAllAsRead => 'もうみな読んでもうたわ';
	@override String get goBack => '戻る';
	@override String get unlikeConfirm => 'いいね解除するんか？';
	@override String get fullView => 'フルビュー';
	@override String get quitFullView => 'フルビュー解除';
	@override String get addDescription => '説明を入れるで';
	@override String get userPagePinTip => 'ノートのメニューから「ピン留め」を選んどいたら、ここにノートを置いとけるで。';
	@override String get notSpecifiedMentionWarning => '宛先にないメンションがあるで';
	@override String get info => '情報';
	@override String get userInfo => 'ユーザー情報やで';
	@override String get unknown => '不明';
	@override String get onlineStatus => 'オンライン状態';
	@override String get hideOnlineStatus => 'オンライン状態を隠すで';
	@override String get hideOnlineStatusDescription => 'オンライン状態を隠すと、検索とかの一部の機能で使いにくくなるかもしれんよ。';
	@override String get online => 'オンライン';
	@override String get active => 'アクティブ';
	@override String get offline => 'オフライン';
	@override String get notRecommended => 'あんま推奨しやんで';
	@override String get botProtection => 'Botプロテクション';
	@override String get instanceBlocking => 'サーバーブロック・サイレンス';
	@override String get selectAccount => 'アカウントを選んでなー';
	@override String get switchAccount => 'アカウントを変えるで';
	@override String get enabled => '有効';
	@override String get disabled => '無効';
	@override String get quickAction => 'クイックアクション';
	@override String get user => 'ユーザー';
	@override String get administration => '管理';
	@override String get accounts => 'アカウント';
	@override String get switch_ => '切り替え';
	@override String get noMaintainerInformationWarning => '管理者情報が設定されてへんで';
	@override String get noInquiryUrlWarning => '問い合わせ先URLが設定されてへんで。';
	@override String get noBotProtectionWarning => 'Botプロテクションが設定されてへんで。';
	@override String get configure => '設定する';
	@override String get postToGallery => 'ギャラリーへ投稿';
	@override String get postToHashtag => 'このハッシュタグで投稿';
	@override String get gallery => 'ギャラリー';
	@override String get recentPosts => '最近の投稿';
	@override String get popularPosts => '人気の投稿';
	@override String get shareWithNote => 'ノートで共有';
	@override String get ads => '広告';
	@override String get expiration => '期限';
	@override String get startingperiod => '始めた期間';
	@override String get memo => 'メモ';
	@override String get priority => '優先度';
	@override String get high => '高い';
	@override String get middle => 'ふつう';
	@override String get low => '低い';
	@override String get emailNotConfiguredWarning => 'メアドの設定がされてへんで。';
	@override String get ratio => '比率';
	@override String get previewNoteText => '本文を下見するで';
	@override String get customCss => 'カスタムCSS';
	@override String get customCssWarn => 'この設定は必ず知識のある人がやらなあかんで。あんま良くない設定をしたるとクライアントがちゃんと使えへんくなってくで。';
	@override String get global => 'グローバル';
	@override String get squareAvatars => 'アイコンを四角形で表示するで';
	@override String get sent => '送信';
	@override String get received => '受信';
	@override String get searchResult => '検索結果やで';
	@override String get hashtags => 'ハッシュタグ';
	@override String get troubleshooting => 'トラブルシューティング';
	@override String get useBlurEffect => 'UIにぼかし効果を使うで';
	@override String get learnMore => '詳しく';
	@override String get misskeyUpdated => 'Misskeyが更新されたで！\nモデレーターの人らに感謝せなあかんで';
	@override String get whatIsNew => '更新情報を見るで';
	@override String get translate => '翻訳';
	@override String translatedFrom({required Object x}) => '${x}から翻訳するで';
	@override String get accountDeletionInProgress => 'アカウント削除しとるで待っとってなー';
	@override String get usernameInfo => 'サーバー上であんたのアカウントをあんたやと分かるようにするための名前やで。アルファベット(a~z, A~Z)、数字(0~9)、それとアンダーバー(_)が使って考えてな。この名前は後から変更することはできへんからちゃんと考えるんやで。';
	@override String get aiChanMode => '藍モードやで';
	@override String get devMode => '開発者モード';
	@override String get keepCw => 'CWを維持するで';
	@override String get pubSub => 'Pub/Subのアカウント';
	@override String get lastCommunication => '直近の通信';
	@override String get resolved => '解決したで';
	@override String get unresolved => 'まだ解決してないで';
	@override String get breakFollow => 'フォロワーを解除するで';
	@override String get breakFollowConfirm => 'フォロワー解除してもええか？';
	@override String get itsOn => 'オンになっとるよ';
	@override String get itsOff => 'オフになってるで';
	@override String get on => 'オン';
	@override String get off => 'オフ';
	@override String get emailRequiredForSignup => 'アカウント作るのにメールアドレスを必須にするで';
	@override String get unread => '未読';
	@override String get filter => 'フィルタ';
	@override String get controlPanel => 'コントロールパネル';
	@override String get manageAccounts => 'アカウントを管理';
	@override String get makeReactionsPublic => 'ツッコミ一覧を公開するで';
	@override String get makeReactionsPublicDescription => 'あんたがしたツッコミ一覧を誰でも見れるようにするで。';
	@override String get classic => 'クラシック';
	@override String get muteThread => 'スレッドをミュート';
	@override String get unmuteThread => 'スレッドのミュートを解除';
	@override String get followingVisibility => 'フォローの公開範囲';
	@override String get followersVisibility => 'フォロワーの公開範囲';
	@override String get continueThread => 'さらにスレッドを見るで';
	@override String get deleteAccountConfirm => 'アカウントを消すで？ええんか？';
	@override String get incorrectPassword => 'パスワードがちゃうわ。';
	@override String get incorrectTotp => 'ワンタイムパスワードが間違っとるか、期限が切れとるみたいやな。';
	@override String voteConfirm({required Object choice}) => '「${choice}」に投票するんか？';
	@override String get hide => '隠す';
	@override String get useDrawerReactionPickerForMobile => 'ケータイとかのときドロワーで表示するで';
	@override String welcomeBackWithName({required Object name}) => 'まいど、${name}はん';
	@override String clickToFinishEmailVerification({required Object ok}) => '[${ok}]を押してメアドの確認を終わらせてなー';
	@override String get overridedDeviceKind => 'デバイスタイプ';
	@override String get smartphone => 'スマホ';
	@override String get tablet => 'タブレット';
	@override String get auto => '自動';
	@override String get themeColor => 'テーマカラー';
	@override String get size => '大きさ';
	@override String get numberOfColumn => '列の数';
	@override String get searchByGoogle => '探す';
	@override String get instanceDefaultLightTheme => 'サーバーおすすめの明るいテーマ';
	@override String get instanceDefaultDarkTheme => 'サーバーおすすめのの暗いテーマ';
	@override String get instanceDefaultThemeDescription => 'オブジェクト形式のテーマコードを記入するで。';
	@override String get mutePeriod => 'ミュートする期間';
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
	@override String get reflectMayTakeTime => '反映されるまで時間がかかることがあるで';
	@override String get failedToFetchAccountInformation => 'アカウントの取得に失敗したみたいや…';
	@override String get rateLimitExceeded => 'レート制限が超えたみたいやで';
	@override String get cropImage => '画像切り取り';
	@override String get cropImageAsk => '画像を切り取ってもええか？';
	@override String get cropYes => '切り抜いたる';
	@override String get cropNo => '切り抜かへん';
	@override String get file => 'ファイル';
	@override String recentNHours({required Object n}) => '直近${n}時間';
	@override String recentNDays({required Object n}) => '直近${n}日';
	@override String get noEmailServerWarning => 'メールサーバーの設定がされてへんで。';
	@override String get thereIsUnresolvedAbuseReportWarning => '未対応の通報があるみたいやで';
	@override String get recommended => '推奨';
	@override String get check => 'チェック';
	@override String get driveCapOverrideLabel => 'このユーザーのドライブ容量上限を変更するで';
	@override String get driveCapOverrideCaption => '0以下にしたら解除されるで。';
	@override String get requireAdminForView => 'これ見たいんなら管理者じゃないとアカンわ。';
	@override String get isSystemAccount => 'システムが自動で作成・管理しとるアカウントやで。';
	@override String typeToConfirm({required Object x}) => 'これやるんなら ${x} って入力してなー';
	@override String get deleteAccount => 'アカウント削除するで';
	@override String get document => 'ドキュメント';
	@override String get numberOfPageCache => 'ページ、どんだけキャッシュすんの？';
	@override String get numberOfPageCacheDescription => '増やすと使いやすくなるけど、負荷とメモリ使用量が増えてくで。一長一短やな。';
	@override String get logoutConfirm => 'ログアウトしまっか？';
	@override String get logoutWillClearClientData => 'ログアウトするとクライアントの設定情報がブラウザから消されてまうで。再ログイン時に設定情報を復元できるようにするためには、設定の自動バックアップを有効にするとええで。';
	@override String get lastActiveDate => '最後に使った日時';
	@override String get statusbar => 'ステータスバー';
	@override String get pleaseSelect => '選んだってやー';
	@override String get reverse => '反転';
	@override String get colored => '色付き';
	@override String get refreshInterval => '更新間隔';
	@override String get label => 'ラベル';
	@override String get type => 'タイプ';
	@override String get speed => '速度';
	@override String get slow => '遅い';
	@override String get fast => '速い';
	@override String get sensitiveMediaDetection => 'きわどいやつの検出';
	@override String get localOnly => 'ローカルだけ';
	@override String get remoteOnly => 'リモートだけ';
	@override String get failedToUpload => 'アップロードに失敗してもうたわ…';
	@override String get cannotUploadBecauseInappropriate => 'きわどい内容を含むかもしれへんって言われたからアップロードできへんわ。';
	@override String get cannotUploadBecauseNoFreeSpace => 'ドライブがもうパンパンやからアップロードできへんわ。';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'ファイルが思うたよりも大きいさかいアップロードできへんでこれ。';
	@override String get cannotUploadBecauseUnallowedFileType => '許可されてへんファイル種別やからアップロードできへんっぽい。';
	@override String get beta => 'ベータ';
	@override String get enableAutoSensitive => '自動できわどいか判断する';
	@override String get enableAutoSensitiveDescription => '使える時は、機械学習を使って自動でメディアにNSFWフラグを設定するで。この機能をオフにしても、サーバーによっては自動で設定されることがあるで。';
	@override String get activeEmailValidationDescription => 'ユーザーのメアドのバリデーションを、捨てアドかどうかとか、ちゃんと通信できるかとかを見るで。切ったら単に文字列として合っとるかどうかだけ見るわ。';
	@override String get navbar => 'ナビゲーションバー';
	@override String get shuffle => 'シャッフルするで';
	@override String get account => 'アカウント';
	@override String get move => '移すで';
	@override String get pushNotification => 'プッシュ通知';
	@override String get subscribePushNotification => 'プッシュ通知をオンにするで';
	@override String get unsubscribePushNotification => 'プッシュ通知を止めるで';
	@override String get pushNotificationAlreadySubscribed => 'プッシュ通知はオンになってるで';
	@override String get pushNotificationNotSupported => 'ブラウザかサーバーがプッシュ通知に対応してないみたいやで。';
	@override String get sendPushNotificationReadMessage => '通知やメッセージが既読になったらプッシュ通知を消すで';
	@override String get sendPushNotificationReadMessageCaption => 'あんたの端末の電池使う量が増えるかもしれん。';
	@override String get pleaseAllowPushNotification => 'ブラウザの通知設定を許可してな';
	@override String get browserPushNotificationDisabled => '通知の送信権限が取れんかったわ';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => '今 ${serverName} から通知を送るための権限が無いから、ブラウザの設定で通知を許可してもっかい試してな。';
	@override String get windowMaximize => '最大化';
	@override String get windowMinimize => '最小化';
	@override String get windowRestore => '元に戻す';
	@override String get caption => 'キャプション';
	@override String get loggedInAsBot => 'Botアカウントでログイン中やで';
	@override String get tools => 'ツール';
	@override String get cannotLoad => '読み込めへんで';
	@override String get numberOfProfileView => 'プロフィール表示回数';
	@override String get like => 'ええやん！';
	@override String get unlike => 'いいねやめる';
	@override String get numberOfLikes => 'いいね数';
	@override String get show => '表示';
	@override String get neverShow => '今後表示しない';
	@override String get remindMeLater => 'また後で';
	@override String get didYouLikeMisskey => 'Misskey気に入ってくれた？';
	@override String pleaseDonate({required Object host}) => 'Misskeyは${host}が使うとる無料のソフトウェアやで。これからも開発を続けれるように、寄付したってな～。';
	@override String correspondingSourceIsAvailable({required Object anchor}) => '${anchor}';
	@override String get roles => 'ロール';
	@override String get role => 'ロール';
	@override String get noRole => 'ロールはありまへん';
	@override String get normalUser => '一般ユーザー';
	@override String get undefined => '未定義';
	@override String get assign => 'アサイン';
	@override String get unassign => 'アサインやめる';
	@override String get color => '色';
	@override String get manageCustomEmojis => 'カスタム絵文字の管理';
	@override String get manageAvatarDecorations => 'アバターを飾るモンの管理';
	@override String get youCannotCreateAnymore => 'これ以上作れなさそうやわ';
	@override String get cannotPerformTemporary => 'ちょっといまは使えへんで';
	@override String get cannotPerformTemporaryDescription => '操作し過ぎてちょっと今は使えへんくしとるで。ちょっと待ってからもっかいやってや。';
	@override String get invalidParamError => 'パラメータがエラー言うとりますわ';
	@override String get invalidParamErrorDescription => 'リクエストパラメータが変やわ。だいたいはバグやねんけど、もしかしたら入れた文字が多すぎるとかかもしれんから確認してや〜';
	@override String get permissionDeniedError => '操作が拒否されてもうた。';
	@override String get permissionDeniedErrorDescription => 'このアカウントはこれやったらアカンって。';
	@override String get preset => 'プリセット';
	@override String get selectFromPresets => 'プリセットから選ぶ';
	@override String get custom => 'カスタム';
	@override String get achievements => '実績';
	@override String get gotInvalidResponseError => 'サーバー黙っとるわ、知らんけど';
	@override String get gotInvalidResponseErrorDescription => 'サーバーいま日曜日。またきて月曜日。';
	@override String get thisPostMayBeAnnoying => 'この投稿は迷惑かもしらんで。';
	@override String get thisPostMayBeAnnoyingHome => 'ホームに投稿';
	@override String get thisPostMayBeAnnoyingCancel => 'やめとく';
	@override String get thisPostMayBeAnnoyingIgnore => 'このまま投稿';
	@override String get collapseRenotes => '見たことあるリノートは飛ばして表示するで';
	@override String get collapseRenotesDescription => 'リアクションやリノートをしたことがあるノートをたたんで表示するで。';
	@override String get internalServerError => 'サーバー内部エラー';
	@override String get internalServerErrorDescription => 'サーバーでなんか変なこと起こっとるわ。';
	@override String get copyErrorInfo => 'エラー情報をコピるで';
	@override String get joinThisServer => 'このサーバーに登録するわ';
	@override String get exploreOtherServers => '他のサーバー見てみる';
	@override String get letsLookAtTimeline => 'タイムライン見てみーや';
	@override String get disableFederationConfirm => '連合なしにしとくか？';
	@override String get disableFederationConfirmWarn => '連合なしにしても投稿が非公開になるわけちゃうで。大体の場合は連合なしにする必要はないで。';
	@override String get disableFederationOk => '連合なしにしとく';
	@override String get invitationRequiredToRegister => '今このサーバー招待制になってもうてんねん。招待コードを持っとるんやったら登録できるで。';
	@override String get emailNotSupported => 'このサーバーはメール配信がサポートされてへんみたいやわ';
	@override String get postToTheChannel => 'チャンネルに投稿';
	@override String get cannotBeChangedLater => '後からは変えられへんで。';
	@override String get reactionAcceptance => 'ツッコミの受け入れ';
	@override String get likeOnly => 'いいねだけ';
	@override String get likeOnlyForRemote => 'リモートからはいいねだけな';
	@override String get nonSensitiveOnly => 'いつ見ても大丈夫なやつだけ';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'いつ見ても大丈夫なやつだけ (リモートはいいねだけ)';
	@override String get rolesAssignedToMe => '自分に割り当てられたロール';
	@override String get resetPasswordConfirm => 'パスワード作り直すんでええな？';
	@override String get sensitiveWords => 'けったいな単語';
	@override String get sensitiveWordsDescription => '設定した単語が入っとるノートの公開範囲をホームにしたるわ。改行で区切ったら複数設定できるで。';
	@override String get sensitiveWordsDescription2 => 'スペースで区切るとAND指定、キーワードをスラッシュで囲んだら正規表現や。';
	@override String get prohibitedWords => '禁止ワード';
	@override String get prohibitedWordsDescription => '設定した言葉が含まれるノートを投稿しようとしたら、エラーが出るようにするで。改行で区切って複数設定できるで。';
	@override String get prohibitedWordsDescription2 => 'スペースで区切るとAND指定、キーワードをスラッシュで囲んだら正規表現や。';
	@override String get hiddenTags => '見えてへんハッシュタグ';
	@override String get hiddenTagsDescription => '設定したタグを最近流行りのとこに見えんようにすんで。複数設定するときは改行で区切ってな。';
	@override String get notesSearchNotAvailable => 'なんかノート探せへん。';
	@override String get usersSearchNotAvailable => 'ユーザーを探すことはできへんみたいや。';
	@override String get license => 'ライセンス';
	@override String get unfavoriteConfirm => 'ほんまに気に入らんの？';
	@override String get myClips => '自分のクリップ';
	@override String get drivecleaner => 'ドライブキレイキレイ';
	@override String get retryAllQueuesNow => 'キューを全部もっかいやり直す';
	@override String get retryAllQueuesConfirmTitle => 'もっかいやってみるか？';
	@override String get retryAllQueuesConfirmText => '一時的にサーバー重なるかもしれへんで。';
	@override String get enableChartsForRemoteUser => 'リモートユーザーのチャートを作る';
	@override String get enableChartsForFederatedInstances => 'リモートサーバーのチャートを作る';
	@override String get enableStatsForFederatedInstances => 'リモートサーバの情報を取得';
	@override String get showClipButtonInNoteFooter => 'ノートのアクションにクリップを追加';
	@override String get reactionsDisplaySize => 'ツッコミの表示のでかさ';
	@override String get limitWidthOfReaction => 'ツッコミの最大横幅を制限して、ちっさく表示するで';
	@override String get noteIdOrUrl => 'ノートIDかURL';
	@override String get video => '動画';
	@override String get videos => '動画';
	@override String get audio => '音声';
	@override String get audioFiles => '音声';
	@override String get dataSaver => 'データケチケチ';
	@override String get accountMigration => 'アカウントのお引っ越し';
	@override String get accountMoved => 'このユーザーはさらのアカウントに引っ越したで：';
	@override String get accountMovedShort => 'このアカウントは引っ越し済みや';
	@override String get operationForbidden => 'この操作はできまへん';
	@override String get forceShowAds => 'いっつも広告を映す';
	@override String get addMemo => 'メモを足す';
	@override String get editMemo => 'メモをいらう';
	@override String get reactionsList => 'ツッコミ一覧';
	@override String get renotesList => 'リノート一覧';
	@override String get notificationDisplay => '通知見せる';
	@override String get leftTop => '左上';
	@override String get rightTop => '右上';
	@override String get leftBottom => '左下';
	@override String get rightBottom => '右下';
	@override String get stackAxis => '重ねる方向';
	@override String get vertical => '縦';
	@override String get horizontal => '横';
	@override String get position => '位置';
	@override String get serverRules => 'サーバールール';
	@override String get pleaseConfirmBelowBeforeSignup => 'このサーバーに登録する前に、下に書いてること確認してな。';
	@override String get pleaseAgreeAllToContinue => '続けるんやったら、全部にチェック入れとかなアカンで。';
	@override String get continue_ => '続けるで';
	@override String get preservedUsernames => '予約ユーザー名';
	@override String get preservedUsernamesDescription => '予約しとくユーザー名を行ごとに挙げるで。ここで指定されたユーザー名はアカウント作るときに使えへんくなるけど、管理者は例外や。あと、もうあるアカウントも例外やな。';
	@override String get createNoteFromTheFile => 'このファイル使うてノート作るで';
	@override String get archive => 'アーカイブ';
	@override String get archived => 'アーカイブ済み';
	@override String get unarchive => 'アーカイブ解除';
	@override String channelArchiveConfirmTitle({required Object name}) => '${name}をアーカイブしてええか？';
	@override String get channelArchiveConfirmDescription => 'アーカイブしたら、チャンネル一覧とか検索結果からなくなるし、新しく書き込みもできへんなるで。';
	@override String get thisChannelArchived => 'このチャンネル、アーカイブされとるで。';
	@override String get displayOfNote => 'ノートの表示';
	@override String get initialAccountSetting => '初期設定';
	@override String get youFollowing => 'フォロー中やで';
	@override String get preventAiLearning => '生成AIの学習に使わんといて';
	@override String get preventAiLearningDescription => '他の文章生成AIとか画像生成AIに、投稿したノートとか画像なんかを勝手に使わんように頼むで。具体的にはnoaiフラグをHTMLレスポンスに含めるんやけど、これ聞いてくれるんはAIの気分次第やから、使われる可能性もちょっとはあるな。';
	@override String get options => 'オプション';
	@override String get specifyUser => 'ユーザー指定';
	@override String get lookupConfirm => '照会するけどええか？';
	@override String get openTagPageConfirm => 'ハッシュタグのページを開くんか？';
	@override String get specifyHost => 'ホスト指定';
	@override String get failedToPreviewUrl => 'プレビューできへん';
	@override String get update => '更新';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'ツッコミとして使えるロール';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'ロールが一個も指定されてへんかったら、誰でもツッコミとして使えるで。';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'ロールは公開ロールじゃないとアカンで。';
	@override String get cancelReactionConfirm => 'ツッコむんをやっぱやめるか？';
	@override String get changeReactionConfirm => 'ツッコミを別のに変えるか？';
	@override String get later => 'あとで';
	@override String get goToMisskey => 'Misskeyへ';
	@override String get additionalEmojiDictionary => '絵文字の追加辞書';
	@override String get installed => 'インストールしとる';
	@override String get branding => 'ブランディング';
	@override String get enableServerMachineStats => 'サーバーのマシン情報見せびらかすで';
	@override String get enableIdenticonGeneration => 'ユーザーごとのIdenticon生成を有効にする';
	@override String get showRoleBadgesOfRemoteUsers => 'リモートユーザーに付与したロールバッジを表示する';
	@override String get turnOffToImprovePerformance => 'オフにしたらえらい軽うなるで。';
	@override String get createInviteCode => '招待コード作る';
	@override String get createWithOptions => 'オプション決めて作る';
	@override String get createCount => '作った数';
	@override String get inviteCodeCreated => '招待コード作ったで';
	@override String get inviteLimitExceeded => '招待コード作りすぎやで。';
	@override String createLimitRemaining({required Object limit}) => '作れる招待コードは残り ${limit} 個や';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => '${time}で最大 ${limit} 個の招待コードを作れるで。';
	@override String get expirationDate => '有効期限';
	@override String get noExpirationDate => '期限なし';
	@override String get inviteCodeUsedAt => '招待コードが使われた時';
	@override String get registeredUserUsingInviteCode => '招待コードを使うた人';
	@override String get waitingForMailAuth => 'メール認証待ち';
	@override String get inviteCodeCreator => '招待コードを作った人';
	@override String get usedAt => '使った時';
	@override String get unused => 'つこてへん';
	@override String get used => 'もうつこてる';
	@override String get expired => '期限切れ';
	@override String get doYouAgree => 'ええんか？';
	@override String get beSureToReadThisAsItIsImportant => '重要やから絶対読んでや。';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => '「${x}」の内容をよう読んで、同意するで。';
	@override String get dialog => 'ダイアログ';
	@override String get icon => 'アイコン';
	@override String get forYou => 'あんたへ';
	@override String get currentAnnouncements => '現在のお知らせやで';
	@override String get pastAnnouncements => '過去のお知らせやで';
	@override String get youHaveUnreadAnnouncements => 'あんたまだこのお知らせ読んどらんやろ。';
	@override String get useSecurityKey => 'ブラウザまたはデバイスの言う通りに、セキュリティキーまたはパスキーを使ってや。';
	@override String get replies => '返事';
	@override String get renotes => 'リノート';
	@override String get loadReplies => '返信を見るで';
	@override String get loadConversation => '会話を見るで';
	@override String get pinnedList => 'ピン留めしはったリスト';
	@override String get keepScreenOn => 'デバイスの画面を常にオンにすんで';
	@override String get verifiedLink => 'このリンク先の所有者ってわかったわ。';
	@override String get notifyNotes => '投稿を通知';
	@override String get unnotifyNotes => '投稿の通知やめる';
	@override String get authentication => '認証';
	@override String get authenticationRequiredToContinue => '続けるんなら認証してや。';
	@override String get dateAndTime => '日時';
	@override String get showRenotes => 'リノート出す';
	@override String get edited => 'いじったやつ';
	@override String get notificationRecieveConfig => '通知もらうかの設定';
	@override String get mutualFollow => 'お互いフォローしてんで';
	@override String get followingOrFollower => 'フォロー中またはフォロワー';
	@override String get fileAttachedOnly => 'ファイルのっけてあるやつだけ';
	@override String get showRepliesToOthersInTimeline => 'タイムラインに他の人への返信とかも入れるで';
	@override String get hideRepliesToOthersInTimeline => 'タイムラインに他の人への返信とかは入れへん';
	@override String get showRepliesToOthersInTimelineAll => 'タイムラインに今フォローしとる人全員の返信入れるで';
	@override String get hideRepliesToOthersInTimelineAll => 'タイムラインに今フォローしとる人の返信入れへん';
	@override String get confirmShowRepliesAll => 'これは元に戻せへんから慎重に決めてや。本当にタイムラインに今フォローしとる全員の返信を入れるか？';
	@override String get confirmHideRepliesAll => 'これは元に戻せへんから慎重に決めてや。本当にタイムラインに今フォローしとる全員の返信を入れへんのか？';
	@override String get externalServices => '他のサイトのサービス';
	@override String get sourceCode => 'ソースコード';
	@override String get sourceCodeIsNotYetProvided => 'ソースコードはまだ提供されてへんで。問題の修正について管理者に問い合わせてみ。';
	@override String get repositoryUrl => 'リポジトリURL';
	@override String get repositoryUrlDescription => 'ソースコードが公開されているリポジトリがある場合、そのURLを記入するで。Misskeyをそのまんま（ソースコードにいかなる変更も加えずに）使っとる場合は https://github.com/misskey-dev/misskey と記入するで。';
	@override String get repositoryUrlOrTarballRequired => 'リポジトリを公開してへんなら、代わりにtarballを提供する必要があるで。詳細は.config/example.ymlを参照してな。';
	@override String get feedback => 'フィードバック';
	@override String get feedbackUrl => 'フィードバックURL';
	@override String get impressum => '運営者の情報';
	@override String get impressumUrl => '運営者の情報URL';
	@override String get impressumDescription => 'ドイツとかの一部んところではな、表示が義務付けられてんねん(Impressum)。';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get privacyPolicyUrl => 'プライバシーポリシーURL';
	@override String get tosAndPrivacyPolicy => '利用規約・プライバシーポリシー';
	@override String get avatarDecorations => 'アイコンデコレーション';
	@override String get attach => 'のっける';
	@override String get detach => '取る';
	@override String get detachAll => '全部とる';
	@override String get angle => '角度';
	@override String get flip => '反転';
	@override String get showAvatarDecorations => 'アイコンのデコレーション映す';
	@override String get releaseToRefresh => '離したらリロード';
	@override String get refreshing => 'リロードしとる';
	@override String get pullDownToRefresh => '引っ張ってリロードするで';
	@override String get useGroupedNotifications => '通知をグループ分けして出すで';
	@override String get emailVerificationFailedError => 'メアド確認してたらなんか変なことなったわ。リンクの期限切れてるかもしれん。';
	@override String get cwNotationRequired => '「内容を隠す」んやったら注釈書かなアカンで。';
	@override String get doReaction => 'ツッコむで';
	@override String get code => 'コード';
	@override String get reloadRequiredToApplySettings => '設定を見るんにはリロードが必要やで。';
	@override String remainingN({required Object n}) => '残り:${n}';
	@override String get overwriteContentConfirm => '今の内容に上書きされるけどいい？';
	@override String get seasonalScreenEffect => '季節にあった画面の動き';
	@override String get decorate => 'デコる';
	@override String get addMfmFunction => '装飾つける';
	@override String get enableQuickAddMfmFunction => 'ややこしいMFMのピッカーを出す';
	@override String get bubbleGame => 'バブルゲーム';
	@override String get sfx => '効果音';
	@override String get soundWillBePlayed => 'サウンドが再生されるで';
	@override String get showReplay => 'リプレイ見る';
	@override String get replay => 'リプレイ';
	@override String get replaying => 'リプレイ中';
	@override String get endReplay => 'リプレイを終了';
	@override String get copyReplayData => 'リプレイデータをコピー';
	@override String get ranking => 'ランキング';
	@override String lastNDays({required Object n}) => '直近${n}日';
	@override String get backToTitle => 'タイトルへ';
	@override String get hemisphere => '住んでる地域';
	@override String get withSensitive => 'センシティブなファイルを含むノートを表示';
	@override String userSaysSomethingSensitive({required Object name}) => '${name}のセンシティブなファイルを含む投稿';
	@override String get enableHorizontalSwipe => 'スワイプしてタブを切り替える';
	@override String get loading => '読み込み中';
	@override String get surrender => 'やめとく';
	@override String get gameRetry => 'もういっちょ';
	@override String get notUsePleaseLeaveBlank => '使用せえへん場合は空欄にしてや';
	@override String get useTotp => 'ワンタイムパスワードを使う';
	@override String get useBackupCode => 'バックアップコードを使う';
	@override String get launchApp => 'アプリを起動';
	@override String get useNativeUIForVideoAudioPlayer => '動画・音声の再生にブラウザのUIを使用する';
	@override String get keepOriginalFilename => 'オリジナルのファイル名を保持';
	@override String get keepOriginalFilenameDescription => 'この設定をオフにすると、アップロード時にファイル名が自動でランダム文字列に置き換えられるで。';
	@override String get noDescription => '説明文はあらへんで';
	@override String get alwaysConfirmFollow => 'フォローの際常に確認する';
	@override String get inquiry => '問い合わせ';
	@override String get tryAgain => 'もう一度試しいや。';
	@override String get confirmWhenRevealingSensitiveMedia => 'センシティブなメディアを表示するとき確認する';
	@override String get sensitiveMediaRevealConfirm => 'センシティブなメディアやで。表示するんか？';
	@override String get createdLists => '作成したリスト';
	@override String get createdAntennas => '作成したアンテナ';
	@override String fromX({required Object x}) => '${x}から';
	@override String get genEmbedCode => '埋め込みコードを作る';
	@override String get noteOfThisUser => 'このユーザーのノート全部';
	@override String get clipNoteLimitExceeded => 'これ以上このクリップにノート追加でけへんわ。';
	@override String get performance => 'パフォーマンス';
	@override String get modified => '変更あり';
	@override String get discard => 'やめる';
	@override String thereAreNChanges({required Object n}) => '${n}個の変更があるみたいや';
	@override String get signinWithPasskey => 'パスキーでログイン';
	@override String get unknownWebAuthnKey => '登録されてへんパスキーやな。';
	@override String get passkeyVerificationFailed => 'パスキーの検証に失敗したで。';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'パスキーの検証は成功したんやけど、パスワードレスログインが無効になっとるわ。';
	@override String get messageToFollower => 'フォロワーへのメッセージ';
	@override String get target => '対象';
	@override String get testCaptchaWarning => 'CAPTCHAのテストを目的としてるで。<strong>絶対に本番環境で使わんといてな。絶対やで。</strong>';
	@override String get prohibitedWordsForNameOfUser => '禁止ワード（ユーザー名）';
	@override String get prohibitedWordsForNameOfUserDescription => 'このリストの中にある文字列がユーザー名に入っとったら、その名前に変更できひんようになるで。モデレーター権限があるユーザーは除外や。';
	@override String get yourNameContainsProhibitedWords => 'その名前は禁止した文字列が含まれとるで';
	@override String get yourNameContainsProhibitedWordsDescription => 'その名前は禁止した文字列が含まれとるわ。どうしてもって言うなら、サーバー管理者に言うしかないで。';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => '投稿者が、表示にログインが要るって設定してるで';
	@override String get lockdown => 'ロックダウン';
	@override String get pleaseSelectAccount => 'アカウント選んでや';
	@override String get availableRoles => '使えるロール';
	@override String get acknowledgeNotesAndEnable => '注意事項をわかった上でオンにする。';
	@override String get federationSpecified => 'このサーバーはホワイトリスト連合で運用されてるで。管理者が指定したサーバー以外とはやり取りできひんで。';
	@override String get federationDisabled => 'このサーバーは連合が無効化されてるで。他のサーバーのユーザーとやり取りすることはできひんで。';
	@override String get draft => '下書き';
	@override String get draftsAndScheduledNotes => '下書きと予約投稿';
	@override String get confirmOnReact => 'ツッコむときに確認とる';
	@override String reactAreYouSure({required Object emoji}) => '" ${emoji} " でツッコむ？';
	@override String get markAsSensitiveConfirm => 'このメディアをきわどい扱いしときますか？';
	@override String get unmarkAsSensitiveConfirm => 'このメディアはやっぱきわどくなかったってことでええんか？';
	@override String get preferences => '環境設定';
	@override String get accessibility => 'アクセシビリティ';
	@override String get preferencesProfile => '設定のプロファイル';
	@override String get copyPreferenceId => '設定IDをコピー';
	@override String get resetToDefaultValue => '初期値に戻す';
	@override String get overrideByAccount => 'アカウントで上書き';
	@override String get untitled => '無題';
	@override String get noName => '名前はあらへんで';
	@override String get skip => 'スキップ';
	@override String get restore => '復元';
	@override String get syncBetweenDevices => 'デバイス間で同期';
	@override String get preferenceSyncConflictTitle => 'サーバーに設定値があるみたいやわ';
	@override String get preferenceSyncConflictText => '同期が有効にされた設定項目は設定値をサーバーに保存するねんけど、この設定項目はサーバーに保存されたやつがあるみたいやわ。どないするん？';
	@override String get preferenceSyncConflictChoiceMerge => 'ガッチャンコしよか';
	@override String get preferenceSyncConflictChoiceServer => 'サーバーの設定値で上書き';
	@override String get preferenceSyncConflictChoiceDevice => 'デバイスの設定値で上書き';
	@override String get preferenceSyncConflictChoiceCancel => '同期の有効化はやめとくわ';
	@override String get paste => 'ペースト';
	@override String get emojiPalette => '絵文字パレット';
	@override String get postForm => '投稿フォーム';
	@override String get textCount => '文字数';
	@override String get information => '情報';
	@override String get chat => 'チャット';
	@override String get directMessage => 'チャットしよか';
	@override String get directMessage_short => 'メッセージ';
	@override String get migrateOldSettings => '旧設定情報をお引っ越し';
	@override String get migrateOldSettings_description => '通常これは自動で行われるはずなんやけど、なんかの理由で上手く移行できへんかったときは手動で移行処理をポチっとできるで。今の設定情報は上書きされるで。';
	@override String get compress => '圧縮';
	@override String get right => '右';
	@override String get bottom => '下';
	@override String get top => '上';
	@override String get embed => '埋め込み';
	@override String get settingsMigrating => '設定を移行しとるで。ちょっと待っとってな... (後で、設定→その他→旧設定情報を移行 で手動で移行することもできるで)';
	@override String get readonly => '読み取り専用';
	@override String get goToDeck => 'デッキへ戻る';
	@override String get federationJobs => '連合ジョブ';
	@override String get driveAboutTip => 'ドライブでは、今までアップロードしたファイルがずらーっと表示されるで。<br>\nノートにファイルをもっかいのっけたり、あとで投稿するファイルをその辺に置いとくこともできるねん。<br>\n<b>ファイルをほかすと、前にそのファイルをのっけた全部の場所(ノート、ページ、アバター、バナー等)からも見えんくなるから気いつけてな。</b><br>\nフォルダを作って整理することもできるで。';
	@override String get scrollToClose => 'スクロールして閉じる';
	@override String get advice => 'アドバイス';
	@override String get realtimeMode => 'リアルタイムモード';
	@override String get turnItOn => 'オンにしとこ';
	@override String get turnItOff => 'オフでええわ';
	@override String get emojiMute => '絵文字ミュート';
	@override String get emojiUnmute => '絵文字ミュートやめたる';
	@override String muteX({required Object x}) => '${x}をミュート';
	@override String unmuteX({required Object x}) => '${x}のミュートやめたる';
	@override String get abort => '中止';
	@override String get tip => 'ヒントとコツ';
	@override String get redisplayAllTips => '全部の「ヒントとコツ」をもっかい見して';
	@override String get hideAllTips => '「ヒントとコツ」は全部表示せんでええ';
	@override String get defaultImageCompressionLevel => 'デフォルトの画像圧縮度';
	@override String get defaultImageCompressionLevel_description => '低くすると画質は保てるんやけど、ファイルサイズが増えるで。<br>高くするとファイルサイズは減らせるんやけど、画質が落ちるで。';
	@override String get defaultCompressionLevel => 'デフォルトの圧縮度';
	@override String get defaultCompressionLevel_description => '低くすると品質は保てるんやけど、ファイルサイズが増えるで。<br>高くするとファイルサイズは減らせるんやけど、品質が落ちるで。';
	@override String get inMinutes => '分';
	@override String get inDays => '日';
	@override String get safeModeEnabled => 'セーフモードがオンになってるで';
	@override String get pluginsAreDisabledBecauseSafeMode => 'セーフモードがオンやから、プラグインは全部無効化されてるで。';
	@override String get customCssIsDisabledBecauseSafeMode => 'セーフモードがオンやから、カスタムCSSは適用されてへんで。';
	@override String get themeIsDefaultBecauseSafeMode => 'セーフモードがオンの間はデフォルトのテーマを使うで。セーフモードをオフにれば元に戻るで。';
	@override String get thankYouForTestingBeta => 'ベータ版使うてくれておおきに！';
	@override String get createUserSpecifiedNote => 'ユーザー指定ノートを作成';
	@override String get schedulePost => '投稿を予約';
	@override String scheduleToPostOnX({required Object x}) => '${x}に投稿を予約します';
	@override String scheduledToPostOnX({required Object x}) => '${x}に投稿が予約されています';
	@override String get schedule => '予約';
	@override String get scheduled => '予約';
	@override String get widgets => 'ウィジェット';
	@override String get deviceInfo => 'デバイス情報';
	@override String get deviceInfoDescription => 'なんか技術的なことで分からんこと聞くときは、下の情報も一緒に書いてもらえると、こっちも分かりやすいし、はよ直ると思います。';
	@override String get youAreAdmin => 'あんた、管理者やで';
	@override String get frame => 'フレーム';
	@override String get presets => 'プリセット';
	@override String get zeroPadding => 'ゼロ埋め';
	@override String get nothingToConfigure => '設定項目はありません';
	@override late final _TranslationsMisskeyImageEditingJaKs imageEditing_ = _TranslationsMisskeyImageEditingJaKs._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorJaKs imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorJaKs._(_root);
	@override late final _TranslationsMisskeyCompressionJaKs compression_ = _TranslationsMisskeyCompressionJaKs._(_root);
	@override late final _TranslationsMisskeyOrderJaKs order_ = _TranslationsMisskeyOrderJaKs._(_root);
	@override late final _TranslationsMisskeyChatJaKs chat_ = _TranslationsMisskeyChatJaKs._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteJaKs emojiPalette_ = _TranslationsMisskeyEmojiPaletteJaKs._(_root);
	@override late final _TranslationsMisskeySettingsJaKs settings_ = _TranslationsMisskeySettingsJaKs._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileJaKs preferencesProfile_ = _TranslationsMisskeyPreferencesProfileJaKs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupJaKs preferencesBackup_ = _TranslationsMisskeyPreferencesBackupJaKs._(_root);
	@override late final _TranslationsMisskeyAccountSettingsJaKs accountSettings_ = _TranslationsMisskeyAccountSettingsJaKs._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportJaKs abuseUserReport_ = _TranslationsMisskeyAbuseUserReportJaKs._(_root);
	@override late final _TranslationsMisskeyDeliveryJaKs delivery_ = _TranslationsMisskeyDeliveryJaKs._(_root);
	@override late final _TranslationsMisskeyBubbleGameJaKs bubbleGame_ = _TranslationsMisskeyBubbleGameJaKs._(_root);
	@override late final _TranslationsMisskeyAnnouncementJaKs announcement_ = _TranslationsMisskeyAnnouncementJaKs._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingJaKs initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialJaKs initialTutorial_ = _TranslationsMisskeyInitialTutorialJaKs._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionJaKs timelineDescription_ = _TranslationsMisskeyTimelineDescriptionJaKs._(_root);
	@override late final _TranslationsMisskeyServerRulesJaKs serverRules_ = _TranslationsMisskeyServerRulesJaKs._(_root);
	@override late final _TranslationsMisskeyServerSettingsJaKs serverSettings_ = _TranslationsMisskeyServerSettingsJaKs._(_root);
	@override late final _TranslationsMisskeyAccountMigrationJaKs accountMigration_ = _TranslationsMisskeyAccountMigrationJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsJaKs achievements_ = _TranslationsMisskeyAchievementsJaKs._(_root);
	@override late final _TranslationsMisskeyRoleJaKs role_ = _TranslationsMisskeyRoleJaKs._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionJaKs sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionJaKs._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableJaKs emailUnavailable_ = _TranslationsMisskeyEmailUnavailableJaKs._(_root);
	@override late final _TranslationsMisskeyFfVisibilityJaKs ffVisibility_ = _TranslationsMisskeyFfVisibilityJaKs._(_root);
	@override late final _TranslationsMisskeySignupJaKs signup_ = _TranslationsMisskeySignupJaKs._(_root);
	@override late final _TranslationsMisskeyAccountDeleteJaKs accountDelete_ = _TranslationsMisskeyAccountDeleteJaKs._(_root);
	@override late final _TranslationsMisskeyAdJaKs ad_ = _TranslationsMisskeyAdJaKs._(_root);
	@override late final _TranslationsMisskeyForgotPasswordJaKs forgotPassword_ = _TranslationsMisskeyForgotPasswordJaKs._(_root);
	@override late final _TranslationsMisskeyGalleryJaKs gallery_ = _TranslationsMisskeyGalleryJaKs._(_root);
	@override late final _TranslationsMisskeyEmailJaKs email_ = _TranslationsMisskeyEmailJaKs._(_root);
	@override late final _TranslationsMisskeyPluginJaKs plugin_ = _TranslationsMisskeyPluginJaKs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsJaKs preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsJaKs._(_root);
	@override late final _TranslationsMisskeyRegistryJaKs registry_ = _TranslationsMisskeyRegistryJaKs._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyJaKs aboutMisskey_ = _TranslationsMisskeyAboutMisskeyJaKs._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaJaKs displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaJaKs._(_root);
	@override late final _TranslationsMisskeyInstanceTickerJaKs instanceTicker_ = _TranslationsMisskeyInstanceTickerJaKs._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorJaKs serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorJaKs._(_root);
	@override late final _TranslationsMisskeyChannelJaKs channel_ = _TranslationsMisskeyChannelJaKs._(_root);
	@override late final _TranslationsMisskeyMenuDisplayJaKs menuDisplay_ = _TranslationsMisskeyMenuDisplayJaKs._(_root);
	@override late final _TranslationsMisskeyWordMuteJaKs wordMute_ = _TranslationsMisskeyWordMuteJaKs._(_root);
	@override late final _TranslationsMisskeyInstanceMuteJaKs instanceMute_ = _TranslationsMisskeyInstanceMuteJaKs._(_root);
	@override late final _TranslationsMisskeyThemeJaKs theme_ = _TranslationsMisskeyThemeJaKs._(_root);
	@override late final _TranslationsMisskeySfxJaKs sfx_ = _TranslationsMisskeySfxJaKs._(_root);
	@override late final _TranslationsMisskeySoundSettingsJaKs soundSettings_ = _TranslationsMisskeySoundSettingsJaKs._(_root);
	@override late final _TranslationsMisskeyAgoJaKs ago_ = _TranslationsMisskeyAgoJaKs._(_root);
	@override late final _TranslationsMisskeyTimeInJaKs timeIn_ = _TranslationsMisskeyTimeInJaKs._(_root);
	@override late final _TranslationsMisskeyTimeJaKs time_ = _TranslationsMisskeyTimeJaKs._(_root);
	@override late final _TranslationsMisskeyX2faJaKs x2fa_ = _TranslationsMisskeyX2faJaKs._(_root);
	@override late final _TranslationsMisskeyPermissionsJaKs permissions_ = _TranslationsMisskeyPermissionsJaKs._(_root);
	@override late final _TranslationsMisskeyAuthJaKs auth_ = _TranslationsMisskeyAuthJaKs._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesJaKs antennaSources_ = _TranslationsMisskeyAntennaSourcesJaKs._(_root);
	@override late final _TranslationsMisskeyWeekdayJaKs weekday_ = _TranslationsMisskeyWeekdayJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetsJaKs widgets_ = _TranslationsMisskeyWidgetsJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsJaKs widgetOptions_ = _TranslationsMisskeyWidgetOptionsJaKs._(_root);
	@override late final _TranslationsMisskeyCwJaKs cw_ = _TranslationsMisskeyCwJaKs._(_root);
	@override late final _TranslationsMisskeyPollJaKs poll_ = _TranslationsMisskeyPollJaKs._(_root);
	@override late final _TranslationsMisskeyVisibilityJaKs visibility_ = _TranslationsMisskeyVisibilityJaKs._(_root);
	@override late final _TranslationsMisskeyPostFormJaKs postForm_ = _TranslationsMisskeyPostFormJaKs._(_root);
	@override late final _TranslationsMisskeyProfileJaKs profile_ = _TranslationsMisskeyProfileJaKs._(_root);
	@override late final _TranslationsMisskeyExportOrImportJaKs exportOrImport_ = _TranslationsMisskeyExportOrImportJaKs._(_root);
	@override late final _TranslationsMisskeyChartsJaKs charts_ = _TranslationsMisskeyChartsJaKs._(_root);
	@override late final _TranslationsMisskeyInstanceChartsJaKs instanceCharts_ = _TranslationsMisskeyInstanceChartsJaKs._(_root);
	@override late final _TranslationsMisskeyTimelinesJaKs timelines_ = _TranslationsMisskeyTimelinesJaKs._(_root);
	@override late final _TranslationsMisskeyPlayJaKs play_ = _TranslationsMisskeyPlayJaKs._(_root);
	@override late final _TranslationsMisskeyPagesJaKs pages_ = _TranslationsMisskeyPagesJaKs._(_root);
	@override late final _TranslationsMisskeyRelayStatusJaKs relayStatus_ = _TranslationsMisskeyRelayStatusJaKs._(_root);
	@override late final _TranslationsMisskeyNotificationJaKs notification_ = _TranslationsMisskeyNotificationJaKs._(_root);
	@override late final _TranslationsMisskeyDeckJaKs deck_ = _TranslationsMisskeyDeckJaKs._(_root);
	@override late final _TranslationsMisskeyDialogJaKs dialog_ = _TranslationsMisskeyDialogJaKs._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineJaKs disabledTimeline_ = _TranslationsMisskeyDisabledTimelineJaKs._(_root);
	@override late final _TranslationsMisskeyDrivecleanerJaKs drivecleaner_ = _TranslationsMisskeyDrivecleanerJaKs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsJaKs webhookSettings_ = _TranslationsMisskeyWebhookSettingsJaKs._(_root);
	@override late final _TranslationsMisskeyAbuseReportJaKs abuseReport_ = _TranslationsMisskeyAbuseReportJaKs._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesJaKs moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesJaKs._(_root);
	@override late final _TranslationsMisskeyFileViewerJaKs fileViewer_ = _TranslationsMisskeyFileViewerJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerJaKs externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerJaKs._(_root);
	@override late final _TranslationsMisskeyDataSaverJaKs dataSaver_ = _TranslationsMisskeyDataSaverJaKs._(_root);
	@override late final _TranslationsMisskeyHemisphereJaKs hemisphere_ = _TranslationsMisskeyHemisphereJaKs._(_root);
	@override late final _TranslationsMisskeyReversiJaKs reversi_ = _TranslationsMisskeyReversiJaKs._(_root);
	@override late final _TranslationsMisskeyOfflineScreenJaKs offlineScreen_ = _TranslationsMisskeyOfflineScreenJaKs._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingJaKs urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingJaKs._(_root);
	@override late final _TranslationsMisskeyMediaControlsJaKs mediaControls_ = _TranslationsMisskeyMediaControlsJaKs._(_root);
	@override late final _TranslationsMisskeyContextMenuJaKs contextMenu_ = _TranslationsMisskeyContextMenuJaKs._(_root);
	@override late final _TranslationsMisskeyGridComponentJaKs gridComponent_ = _TranslationsMisskeyGridComponentJaKs._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogJaKs roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogJaKs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerJaKs customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerJaKs._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenJaKs embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenJaKs._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionJaKs selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionJaKs._(_root);
	@override late final _TranslationsMisskeyFollowRequestJaKs followRequest_ = _TranslationsMisskeyFollowRequestJaKs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsJaKs remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsJaKs._(_root);
	@override late final _TranslationsMisskeyCaptchaJaKs captcha_ = _TranslationsMisskeyCaptchaJaKs._(_root);
	@override late final _TranslationsMisskeyBootErrorsJaKs bootErrors_ = _TranslationsMisskeyBootErrorsJaKs._(_root);
	@override late final _TranslationsMisskeySearchJaKs search_ = _TranslationsMisskeySearchJaKs._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardJaKs serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardJaKs._(_root);
	@override late final _TranslationsMisskeyUploaderJaKs uploader_ = _TranslationsMisskeyUploaderJaKs._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipJaKs clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipJaKs._(_root);
	@override late final _TranslationsMisskeyClipJaKs clip_ = _TranslationsMisskeyClipJaKs._(_root);
	@override late final _TranslationsMisskeyUserListsJaKs userLists_ = _TranslationsMisskeyUserListsJaKs._(_root);
	@override String get watermark => 'ウォーターマーク';
	@override String get defaultPreset => 'デフォルトのプリセット';
	@override late final _TranslationsMisskeyWatermarkEditorJaKs watermarkEditor_ = _TranslationsMisskeyWatermarkEditorJaKs._(_root);
	@override late final _TranslationsMisskeyImageEffectorJaKs imageEffector_ = _TranslationsMisskeyImageEffectorJaKs._(_root);
	@override String get drafts => '下書き';
	@override late final _TranslationsMisskeyDraftsJaKs drafts_ = _TranslationsMisskeyDraftsJaKs._(_root);
	@override String get qr => '二次元コード';
	@override late final _TranslationsMisskeyQrJaKs qr_ = _TranslationsMisskeyQrJaKs._(_root);
}

// Path: misskeyIO
class _TranslationsMisskeyIOJaKs extends TranslationsMisskeyIOEnUs {
	_TranslationsMisskeyIOJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusJaKs skebStatus_ = _TranslationsMisskeyIOSkebStatusJaKs._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingJaKs extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsJaKs vars_ = _TranslationsMisskeyImageEditingVarsJaKs._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorJaKs extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フレームの編集';
	@override String get tip => '画像にフレームとかメタデータを入れたラベルとかを付け足していい感じにできるで。';
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
	@override String get quitWithoutSaveConfirm => '保存せずに終わってもええんか？';
	@override String get failedToLoadImage => 'あかん、画像読み込まれへんわ';
}

// Path: misskey.compression_
class _TranslationsMisskeyCompressionJaKs extends TranslationsMisskeyCompressionEnUs {
	_TranslationsMisskeyCompressionJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCompressionQualityJaKs quality_ = _TranslationsMisskeyCompressionQualityJaKs._(_root);
	@override late final _TranslationsMisskeyCompressionSizeJaKs size_ = _TranslationsMisskeyCompressionSizeJaKs._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderJaKs extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get newest => '新しい順';
	@override String get oldest => '古い順';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatJaKs extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get messages => 'メッセージ';
	@override String get noMessagesYet => 'まだメッセージはあらへんで';
	@override String get newMessage => '新しいメッセージ';
	@override String get individualChat => '個別';
	@override String get individualChat_description => '特定のユーザーとサシでチャットできるで。';
	@override String get roomChat => 'グループ';
	@override String get roomChat_description => '複数人でチャットできるで。\nあと、個人チャットを許可してへんユーザーとでも、相手がええって言うならチャットできるで。';
	@override String get createRoom => 'グループを作成';
	@override String get inviteUserToChat => 'ユーザーを招待してチャットを始めてみ';
	@override String get yourRooms => '作成したグループ';
	@override String get joiningRooms => '参加中のグループ';
	@override String get invitations => '来てや';
	@override String get noInvitations => '招待はあらへんで';
	@override String get history => '履歴';
	@override String get noHistory => '履歴はないわ。';
	@override String get noRooms => 'ルームはあらへんで';
	@override String get inviteUser => 'ユーザーを招待';
	@override String get sentInvitations => '送信した招待';
	@override String get join => '入る';
	@override String get ignore => 'ほっとく';
	@override String get leave => 'グループから抜ける';
	@override String get members => 'メンバーはん';
	@override String get searchMessages => 'メッセージを検索';
	@override String get home => 'ホーム';
	@override String get send => '送信';
	@override String get newline => '改行';
	@override String get muteThisRoom => 'このグループをミュート';
	@override String get deleteRoom => 'ルームをほかす';
	@override String get chatNotAvailableForThisAccountOrServer => 'このサーバー、もしくはこのアカウントでチャットが有効にされてへんで。';
	@override String get chatIsReadOnlyForThisAccountOrServer => 'このサーバー、もしくはこのアカウントでチャットが読み取り専用になっとるわ。新しく書き込んだり、チャットルームを作ったり参加したりはできへんで。';
	@override String get chatNotAvailableInOtherAccount => '相手のアカウントでチャット機能が使えんくなっとるみたいやわ。';
	@override String get cannotChatWithTheUser => 'このユーザーとのチャットを開始できへんみたいやわ';
	@override String get cannotChatWithTheUser_description => 'チャットが使えん状態になっとるか、相手がチャットを開放してへんみたいやわ。';
	@override String get youAreNotAMemberOfThisRoomButInvited => 'あんたはこのルームの参加者ちゃうけど、招待が届いとるで。参加するんやったら、招待を承認してな。';
	@override String get doYouAcceptInvitation => '招待を承認してもええんか？';
	@override String get chatWithThisUser => 'チャットしよか';
	@override String get thisUserAllowsChatOnlyFromFollowers => 'このユーザーはフォロワーからのチャットしか受け付けとらんみたいやわ。';
	@override String get thisUserAllowsChatOnlyFromFollowing => 'このユーザーは、このユーザーがフォローしとるユーザーからのチャットしか受け付けとらんみたいやわ。';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => 'このユーザーは相互フォローのユーザーからのチャットしか受け付けとらんみたいやわ。';
	@override String get thisUserNotAllowedChatAnyone => 'このユーザーは誰からのチャットも受け付けとらんみたいやわ。';
	@override String get chatAllowedUsers => 'チャットしてもええ相手';
	@override String get chatAllowedUsers_note => '自分からチャットメッセージを送った相手やったらこの設定に関わらずチャットできるで。';
	@override late final _TranslationsMisskeyChatChatAllowedUsersJaKs chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersJaKs._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteJaKs extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get palettes => 'パレット';
	@override String get enableSyncBetweenDevicesForPalettes => 'パレットのデバイス間同期をつけとく';
	@override String get paletteForMain => 'メインで使うパレット';
	@override String get paletteForReaction => 'リアクションで使うパレット';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsJaKs extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => 'ドライブの管理と設定、使用量の確認、ファイルをアップロードするときの設定ができるで。';
	@override String get pluginBanner => 'プラグインを使うとクライアントの機能を拡張できるねん。プラグインのインストール、個別の設定と管理ができるで。';
	@override String get notificationsBanner => 'サーバーから受け取る通知の種類とか範囲、プッシュ通知の設定ができるで。';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => 'サービス連携';
	@override String get serviceConnectionBanner => '外部のアプリ・サービスと連携するのに使うとるアクセストークンとかWebhookの管理と設定ができるで。';
	@override String get accountData => 'アカウントのデータ';
	@override String get accountDataBanner => 'アカウントデータのアーカイブをエクスポート/インポートして管理できるで。';
	@override String get muteAndBlockBanner => '見せんでええコンテンツの設定とか、特定のユーザーからのアクションを制限する設定と管理ができるで。';
	@override String get accessibilityBanner => 'クライアントの視覚や動作に関わるパーソナライズをして、よりええ感じに使えるように設定できるで。';
	@override String get privacyBanner => 'コンテンツの公開範囲、見つけやすさ、フォローの承認制とかアカウントのプライバシーに関わる設定ができるで。';
	@override String get securityBanner => 'パスワード、ログイン方法、認証アプリ、パスキーとかアカウントのセキュリティに関わる設定ができるで。';
	@override String get preferencesBanner => '好みに応じた、クライアントの全体的な動作の設定ができるで。';
	@override String get appearanceBanner => '好みに応じた、クライアントの見た目・表示方法に関わる設定ができるで。';
	@override String get soundsBanner => 'クライアントで流すサウンドの設定ができるで。';
	@override String get timelineAndNote => 'タイムラインとノート';
	@override String get makeEveryTextElementsSelectable => '全部のテキスト要素を選択できるようにする';
	@override String get makeEveryTextElementsSelectable_description => 'これをつけると、場面によったら使いにくくなるかもしれん。';
	@override String get useStickyIcons => 'アイコンがスクロールにひっつくようにする';
	@override String get enableHighQualityImagePlaceholders => '高品質な画像のプレースホルダを表示';
	@override String get uiAnimations => 'UIのアニメーション';
	@override String get showNavbarSubButtons => 'ナビゲーションバーに副ボタンを表示';
	@override String get ifOn => 'オンのとき';
	@override String get ifOff => 'オフのとき';
	@override String get enableSyncThemesBetweenDevices => 'デバイス間でインストールしたテーマを同期';
	@override String get enablePullToRefresh => 'ひっぱって更新';
	@override String get enablePullToRefresh_description => 'マウスやったら、ホイールを押し込みながらドラッグしてな。';
	@override String get realtimeMode_description => 'サーバーと接続を確立して、リアルタイムでコンテンツを更新するで。通信量とバッテリーの消費が多くなるかもしれへん。';
	@override String get contentsUpdateFrequency => 'コンテンツの取得頻度';
	@override String get contentsUpdateFrequency_description => '高いほどリアルタイムにコンテンツが更新されるんやけど、そのぶんパフォーマンスが落ちるし、通信量とバッテリーの消費も増えるねん。';
	@override String get contentsUpdateFrequency_description2 => 'リアルタイムモードをつけてるんやったら、この設定がどうであれリアルタイムでコンテンツが更新されるで。';
	@override String get showUrlPreview => 'URLプレビューを表示する';
	@override String get showAvailableReactionsFirstInNote => '利用できるリアクションを先頭に表示';
	@override String get showPageTabBarBottom => 'ページのタブバーを下部に表示';
	@override String get emojiPaletteBanner => '絵文字ピッカーに置いとくプリセットをパレットっていうので登録したり、ピッカーの見た目を変えたりできるで。';
	@override String get enableAnimatedImages => 'アニメーション画像を有効にする';
	@override String get settingsPersistence_title => '設定の永続化';
	@override String get settingsPersistence_description1 => '設定の永続化を有効にすると、設定情報が失われるのを防止できます。';
	@override String get settingsPersistence_description2 => '環境によっては有効化できない場合があります。';
	@override late final _TranslationsMisskeySettingsChatJaKs chat_ = _TranslationsMisskeySettingsChatJaKs._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileJaKs extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get profileName => 'プロファイル名';
	@override String get profileNameDescription => 'このデバイスはなんて呼んだらええんや？';
	@override String get profileNameDescription2 => '例: 「メインPC」、「スマホ」など';
	@override String get manageProfiles => 'プロファイルの管理';
	@override String get shareSameProfileBetweenDevicesIsNotRecommended => '複数のデバイスで同一のプロファイルを共有することは推奨しません。';
	@override String get useSyncBetweenDevicesOptionIfYouWantToSyncSetting => '複数のデバイスで同期したい設定項目が存在する場合は、個別に「複数のデバイスで同期」オプションを有効にしてください。';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupJaKs extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => '自動バックアップ';
	@override String get restoreFromBackup => 'バックアップから復元';
	@override String get noBackupsFoundTitle => 'バックアップが見つからへんね';
	@override String get noBackupsFoundDescription => '自動で作られたバックアップは見つからんかったけど、バックアップファイルを手動で保存してるんやったら、それをインポートして復元できるで。';
	@override String get selectBackupToRestore => '復元するバックアップを選んでや';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => '自動バックアップを有効するんやったらプロファイル名の設定が必要やな。';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => 'このデバイスで設定の自動バックアップは有効になってへんで。';
	@override String get backupFound => '設定のバックアップがあるみたいやわ';
	@override String get forceBackup => '設定の強制バックアップ';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsJaKs extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => 'ログインしてもらってからコンテンツ見てもらう';
	@override String get requireSigninToViewContentsDescription1 => 'あなたが作成した全部のノートとかのコンテンツを見れるようにするのにログインがいるようにするで。クローラーにいろいろ収集されるんを防げるかもしれん。';
	@override String get requireSigninToViewContentsDescription2 => 'URLプレビュー(OGP)、Webページへの埋め込み、ノートの引用に対応してないサーバーからの表示ができんくなるで。';
	@override String get requireSigninToViewContentsDescription3 => 'リモートサーバーに連合されたコンテンツは、これらの制限が適用されんかもしれんで。';
	@override String get makeNotesFollowersOnlyBefore => '昔のノートをフォロワーだけに見てもらう';
	@override String get makeNotesFollowersOnlyBeforeDescription => 'この機能が有効になってる間は、設定された日時より前、それか設定された時間が経ったノートがフォロワーのみ見れるようになるで。無効に戻すと、ノートの公開状態も戻るで。';
	@override String get makeNotesHiddenBefore => '昔のノートを見れんようにする';
	@override String get makeNotesHiddenBeforeDescription => 'この機能が有効になってる間は、設定された日時より前、それか設定された時間が経ったノートがあんただけ見れるようになるで。無効に戻すと、ノートの公開状態も戻るで。';
	@override String get mayNotEffectForFederatedNotes => 'リモートサーバーに連合されたノートには効果が及ばんかもしれん。';
	@override String get mayNotEffectSomeSituations => 'これらの制限は簡易的なものやで。リモートサーバーでの閲覧とかモデレーション時とか、一部のシチュエーションでは適用されへんかもしれん。';
	@override String get notesHavePassedSpecifiedPeriod => '決めた時間が経ったノート';
	@override String get notesOlderThanSpecifiedDateAndTime => '決めた日時より前のノート';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportJaKs extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get forward => '転送';
	@override String get forwardDescription => '匿名のシステムアカウントってことにして、リモートサーバーに通報を転送するで。';
	@override String get resolve => '解決';
	@override String get accept => 'ええよ';
	@override String get reject => 'あかんよ';
	@override String get resolveTutorial => '内容がええなら「ええよ」を選ぶんや。肯定的に解決されたことにして記録するで。\n逆に、内容がだめなら「あかんよ」を選びいや。否定的に解決されたって記録しとくで。';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryJaKs extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get status => '配信状態';
	@override String get stop => '配信せぇへん';
	@override String get resume => '配信再開';
	@override late final _TranslationsMisskeyDeliveryTypeJaKs type_ = _TranslationsMisskeyDeliveryTypeJaKs._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameJaKs extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '遊び方';
	@override String get hold => 'ホールド';
	@override late final _TranslationsMisskeyBubbleGameScoreJaKs score_ = _TranslationsMisskeyBubbleGameScoreJaKs._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayJaKs howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayJaKs._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementJaKs extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'もうおるユーザーのみ';
	@override String get forExistingUsersDescription => 'オンにしたらこのお知らせができた時点でおる人らにだけお知らせが行くで。切ったらこの知らせが行ったあとにアカウント作った人にもちゃんとお知らせが行くで。';
	@override String get needConfirmationToRead => '既読にするんやったら確認してや';
	@override String get needConfirmationToReadDescription => 'オンにしたら、このお知らせを既読にする時に確認するで。ついでに、一括既読しても既読扱いにならへんで。';
	@override String get end => 'お知らせやめる';
	@override String get tooManyActiveAnnouncementDescription => 'お知らせが多すぎてUXが落ちそうや。終わったお知らせはアーカイブに突っ込んだほうがええかも。';
	@override String get readConfirmTitle => '既読にしてええんやな?';
	@override String readConfirmText({required Object title}) => '「${title}」はもう読んだから既読にするで。';
	@override String get shouldNotBeUsedToPresentPermanentInfo => '新規ユーザーのUXを損ねやすいから、お知らせはストック情報やのうてフロー情報の掲示に使った方がええで。';
	@override String get dialogAnnouncementUxWarn => 'ダイアログ形式のお知らせがいっぺんに2コ以上ある場合、UXに良うないことが多いから、使うんは慎重にすんのがおすすめやで。';
	@override String get silence => '通知せんで';
	@override String get silenceDescription => 'オンにすると、このお知らせは通知されへんし、既読にする必要もなくなるで。';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingJaKs extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'アカウント作り終わったで。';
	@override String get letsStartAccountSetup => 'アカウントの初期設定をしよか。';
	@override String get letsFillYourProfile => '最初はあんたのプロフィールを設定するで。';
	@override String get profileSetting => 'プロフィール設定';
	@override String get privacySetting => 'プライバシー設定';
	@override String get theseSettingsCanEditLater => 'この設定はあとから変えれるで。';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'これ以外にもいろんな設定を「設定」ページからできるで。後で確認してみてな。';
	@override String get followUsers => 'タイムラインを構築するために、気になるユーザーをフォローしてみ。';
	@override String pushNotificationDescription({required Object name}) => 'プッシュ通知を有効にすると${name}の通知をあんたのデバイスで受け取れるで。';
	@override String get initialAccountSettingCompleted => '初期設定終わりや！';
	@override String haveFun({required Object name}) => '${name}、楽しんでな～';
	@override String youCanContinueTutorial({required Object name}) => 'こんまま${name}(Misskey)の使い方のチュートリアルにも行けるけど、ここでやめてすぐに使い始めてもええで。';
	@override String get startTutorial => 'チュートリアルはじめる';
	@override String get skipAreYouSure => '初期設定飛ばすか？';
	@override String get laterAreYouSure => '初期設定あとでやり直すん？';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialJaKs extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'チュートリアル見るで';
	@override String get title => 'チュートリアルやで';
	@override String get wellDone => 'やるやん';
	@override String get skipAreYouSure => 'チュートリアルやめるか？';
	@override late final _TranslationsMisskeyInitialTutorialLandingJaKs landing_ = _TranslationsMisskeyInitialTutorialLandingJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteJaKs note_ = _TranslationsMisskeyInitialTutorialNoteJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionJaKs reaction_ = _TranslationsMisskeyInitialTutorialReactionJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineJaKs timeline_ = _TranslationsMisskeyInitialTutorialTimelineJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteJaKs postNote_ = _TranslationsMisskeyInitialTutorialPostNoteJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaKs howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneJaKs done_ = _TranslationsMisskeyInitialTutorialDoneJaKs._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionJaKs extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホームタイムラインは、あんたがフォローしとるアカウントの投稿だけ見れるで。';
	@override String get local => 'ローカルタイムラインは、このサーバーにおる全員の投稿を見れるで。';
	@override String get social => 'ソーシャルタイムラインは、ホームタイムラインの投稿もローカルタイムラインのも一緒に見れるで。';
	@override String get global => 'グローバルタイムラインは、繋がっとる他のサーバーの投稿、全部ひっくるめて見れるで。';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesJaKs extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get description => '新規登録前に見せる、サーバーのカンタンなルールを決めるで。内容は使うための決め事の要約がええと思うわ。';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsJaKs extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'アイコン画像のURL';
	@override String appIconDescription({required Object host}) => '${host}がアプリとして表示してるんやつをアイコンを指定すんで。';
	@override String get appIconUsageExample => '例えば、PWAとか、スマホのホームにブックマークしたときとか';
	@override String get appIconStyleRecommendation => '円か角丸に切り取られることがあるさかい、塗り潰した余白のある背景があるものがおすすめや。';
	@override String appIconResolutionMustBe({required Object resolution}) => '解像度は絶対${resolution}じゃないとアカン。';
	@override String get manifestJsonOverride => 'manifest.jsonのオーバーライド';
	@override String get shortName => '略称';
	@override String get shortNameDescription => 'サーバーの名前が長ったらしい時に、代わりに出すあだ名。';
	@override String get fanoutTimelineDescription => '入れると、おのおのタイムラインを取得するときにめちゃめちゃ動きが良うなって、データベースが軽くなるわ。でも、Redisのメモリ使う量が増えるから注意な。サーバーのメモリが足りんときとか、動きが変なときは切れるで。';
	@override String get fanoutTimelineDbFallback => 'データベースにフォールバックする';
	@override String get fanoutTimelineDbFallbackDescription => '有効にしたら、タイムラインがキャッシュん中に入ってないときにDBにもっかい問い合わせるフォールバック処理ってのをやっとくで。切ったらフォールバック処理をやらんからサーバーはもっと軽くなんねんけど、タイムラインの取得範囲がちょっと減るで。';
	@override String get reactionsBufferingDescription => '有効にしたら、リアクション作るときのパフォーマンスがすっごい上がって、データベースへの負荷が減るで。代わりに、Redisのメモリ使用は増えるで。';
	@override String get remoteNotesCleaning => 'リモート投稿の自動クリーニング';
	@override String get remoteNotesCleaning_description => 'つけると、参照されてへん古いリモートの投稿を定期的にクリーンアップしてデータベースの肥大化を抑えてくれるで。';
	@override String get remoteNotesCleaningMaxProcessingDuration => '最大クリーニング処理継続時間';
	@override String get remoteNotesCleaningExpiryDaysForEachNotes => '最低ノート保持日数';
	@override String get inquiryUrl => '問い合わせ先URL';
	@override String get inquiryUrlDescription => 'サーバー運営者へのお問い合わせフォームのURLや、運営者の連絡先等が記載されたWebページのURLを指定するで。';
	@override String get openRegistration => 'アカウントの作成をオープンにする';
	@override String get openRegistrationWarning => '登録を解放するのはリスクあるで。サーバーをいっつも監視して、なんか起きたらすぐに対応できるんやったら、オンにしてもええと思うけどな。';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => '一定期間モデレーターがおらんかったら、スパムを防ぐためにこの設定は勝手に切られるで。';
	@override String get deliverSuspendedSoftware => '配信停止中のソフトウェア';
	@override String get deliverSuspendedSoftwareDescription => '脆弱性とかの理由で、サーバーのソフトウェアの名前とバージョンの範囲を決めて配信を止められるで。このバージョン情報はサーバーが提供したものやから、信頼性は保証されへん。バージョン指定には semver の範囲指定が使えるねんけど、>= 2024.3.1と指定すると 2024.3.1-custom.0 みたいなカスタムバージョンが含まれへんから、>= 2024.3.1-0 みたいに prerelease を指定するとええかもしれへんな。';
	@override String get singleUserMode => 'お一人様モード';
	@override String get singleUserMode_description => 'このサーバーを使うとるんが自分だけなんやったら、このモードを有効にすると動作がええ感じになるで。';
	@override String get signToActivityPubGet => 'GETリクエストに署名する';
	@override String get signToActivityPubGet_description => '通常はつけといてな。連合の通信に関わる問題があるんやったら、無効にすると改善するかもしれへんけど、逆にサーバーによっては通信ができんくなることがあるで。';
	@override String get proxyRemoteFiles => 'リモートファイルをプロキシする';
	@override String get proxyRemoteFiles_description => 'つけると、リモートのファイルをプロキシして提供するで。画像のサムネイル生成とかユーザーのプライバシー保護にええな。';
	@override String get allowExternalApRedirect => 'ActivityPub経由の照会にリダイレクトを許可する';
	@override String get allowExternalApRedirect_description => 'つけると、他のサーバーがうちのサーバーを通して第三者のコンテンツを照会できるようになるんやけど、コンテンツのなりすましが発生するかもしれへん。';
	@override String get userGeneratedContentsVisibilityForVisitor => '非利用者に対するユーザー作成コンテンツの公開範囲';
	@override String get userGeneratedContentsVisibilityForVisitor_description => 'モデレーションが行き届きにくい不適切なリモートコンテンツとかが、うちのサーバー経由で図らずもインターネットに公開されてまうことによるトラブルを防止できたりするで。';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => 'サーバーで受け取ったリモートのコンテンツを含め、サーバー内の全部のコンテンツを何でもかんでもインターネットに公開するのはリスクを伴うねん。特に、分散型の特性を知らん閲覧者にとっては、リモートのコンテンツやったとしてもサーバー内で作られたコンテンツやと誤認してまうかもしれへんから、注意が必要やな。';
	@override String get restartServerSetupWizardConfirm_title => 'サーバーの初期設定ウィザードをやり直すん？';
	@override String get restartServerSetupWizardConfirm_text => '現在の一部の設定はリセットされるで。';
	@override String get entrancePageStyle => 'エントランスページのスタイル';
	@override String get showTimelineForVisitor => 'タイムラインを表示する';
	@override String get showActivitiesForVisitor => 'アクティビティを表示する';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaKs userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaKs._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationJaKs extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '別のアカウントからこのアカウントに引っ越す';
	@override String get moveFromSub => '別のアカウントへエイリアスを作る';
	@override String moveFromLabel({required Object n}) => '引っ越しする前のアカウント #${n}';
	@override String get moveFromDescription => '別のアカウントからこのアカウントにフォロワーを引っ越ししたいんなら、ここでエイリアスを作っとかなアカンで。\n引っ越す前のアカウントをこんな感じに入力してや: @username@server.example.com\n入力欄空っぽやったら消しとくで（おすすめはせえへん）。';
	@override String get moveTo => 'このアカウントをさらのアカウントに引っ越すで';
	@override String get moveToLabel => '引っ越し先のアカウント:';
	@override String get moveCannotBeUndone => 'アカウント引っ越したらもう戻せへん。';
	@override String get moveAccountDescription => 'おニューのアカウントに移行すんで。\n　・フォロワーがおニューの方を勝手にフォローすんで。\n　・このアカウントからのフォローはまるまる全部解除されんで。\n　・このアカウントでノート作れへんようになるで。\n\nフォロワーの移行は勝手にこっちでやっとくけど、フォローの移行は自分でしてや。移行前にこのアカウントでフォローエクスポートして、移行したあとすぐにおニューのところでインポートしてくれな。\nリストとかミュート、あとブロックもおんなじや。自分で移行してな。\n\n（この説明はこのサーバー、つまりMisskey v13.12.0から後の仕様や。Mastodonとか他のActivityPubソフトやとちょっと挙動が違うこともあんで。）';
	@override String get moveAccountHowTo => 'アカウントの引っ越しには、まず引っ越し先のアカウントで自分のアカウントに対しエイリアスを作ってな。\nエイリアス作ったら、引っ越し先のアカウントをこんな感じに入れてや: @username@server.example.com';
	@override String get startMigration => '引っ越す';
	@override String migrationConfirm({required Object account}) => 'ほんまにこのアカウントを ${account} に引っ越すんか？一回引っ越してもうたら取り消されへんし、二度とこのアカウントを元に戻されへんくなるで。\nそれと、引っ越し先のアカウントでエイリアスが作れたかちゃ～んと確認しーや？';
	@override String get movedAndCannotBeUndone => '\nアカウントはもう引っ越し済みや。\nこれはもう戻せへん。';
	@override String get postMigrationNote => 'このアカウントからのフォロー解除は移行操作から丸一日経ったら実行されんで。\nこのアカウントのフォロー・フォロワー数はどっちも0や。フォローの解除はされへんから、あんたのフォロワーはこのアカウントのフォロワー向けの投稿をこの後も見れるで。';
	@override String get movedTo => '引っ越し先のアカウント:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsJaKs extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '貰った日ぃ';
	@override late final _TranslationsMisskeyAchievementsTypesJaKs types_ = _TranslationsMisskeyAchievementsTypesJaKs._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleJaKs extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'ロールの作成';
	@override String get edit => 'ロールの編集';
	@override String get name => 'ロール名';
	@override String get description => 'ロールの説明';
	@override String get permission => 'ロールの権限';
	@override String get descriptionOfPermission => '<b>モデレーター</b>は基本的なモデレーションに関わる操作を行えるで。\n<b>管理者</b>はサーバーの全ての設定を変更できるで。';
	@override String get assignTarget => 'アサイン';
	@override String get descriptionOfAssignTarget => '<b>マニュアル</b>は誰がこのロールに含まれてるかを手動で管理するで。\n<b>コンディショナル</b>は条件を設定して、それに合うユーザーが自動で含まれるようになるで。';
	@override String get manual => 'マニュアル';
	@override String get manualRoles => 'マニュアルロール';
	@override String get conditional => 'コンディショナル';
	@override String get conditionalRoles => 'コンディショナルロール';
	@override String get condition => '条件';
	@override String get isConditionalRole => 'これはコンディショナルロールやで';
	@override String get isPublic => 'ロールを公開';
	@override String get descriptionOfIsPublic => 'プロフィールでこのロールが出されるで。';
	@override String get options => 'オプション';
	@override String get policies => 'ポリシー';
	@override String get baseRole => 'ベースロール';
	@override String get useBaseValue => 'ベースロールの値使う';
	@override String get chooseRoleToAssign => 'アサインするロール選ぶ';
	@override String get iconUrl => 'アイコン画像のURL';
	@override String get asBadge => 'バッジとして見せる';
	@override String get descriptionOfAsBadge => 'オンにすると、ユーザー名の横んとこにロールのアイコンが表示されるで。';
	@override String get isExplorable => 'ユーザーを見つけやすくしたる';
	@override String get descriptionOfIsExplorable => 'オンにしたらロールの面子一覧が「みつける」で公開されるし、ロールのタイムラインが使えるようになるで。';
	@override String get displayOrder => '表示順';
	@override String get descriptionOfDisplayOrder => '数がでかいほど、UI上で先に表示されるで。';
	@override String get preserveAssignmentOnMoveAccount => 'アサイン状態を移行先アカウントにも引き継ぐ';
	@override String get preserveAssignmentOnMoveAccount_description => 'つけると、このロールがのっかったアカウントが引っ越したときに、引っ越し先アカウントにもこのロールがのっかるようになるで。';
	@override String get canEditMembersByModerator => 'モデレーターがメンバーいじるのを許す';
	@override String get descriptionOfCanEditMembersByModerator => 'オンにすると、管理者だけやなくてモデレーターもこのロールにユーザーを入れたり抜いたりできるで。オフにすると管理者だけしかやれへんくなるで。';
	@override String get priority => '優先度';
	@override late final _TranslationsMisskeyRolePriorityJaKs priority_ = _TranslationsMisskeyRolePriorityJaKs._(_root);
	@override late final _TranslationsMisskeyRoleOptionsJaKs options_ = _TranslationsMisskeyRoleOptionsJaKs._(_root);
	@override late final _TranslationsMisskeyRoleConditionJaKs condition_ = _TranslationsMisskeyRoleConditionJaKs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionJaKs extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get description => '機械学習で自動できわどいメディアを検出して、運営しやすくするで。でもサーバーが少し重くなってまうわ。';
	@override String get sensitivity => '検出感度やで';
	@override String get sensitivityDescription => '感度を低くすると、誤検知(偽陽性)が減るで。感度を高くすると、検知漏れ(偽陰性)が減るで。';
	@override String get setSensitiveFlagAutomatically => 'センシティブフラグを設定するで';
	@override String get setSensitiveFlagAutomaticallyDescription => 'この設定切っても内部的には判定結果はそのままや。';
	@override String get analyzeVideos => '動画の解析をオンにするで';
	@override String get analyzeVideosDescription => '画像だけじゃなくて動画も解析するようにするで。サーバーがちょっと重くなるで。';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableJaKs extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get used => 'もう使われとるわ';
	@override String get format => '形式がおかしいで';
	@override String get disposable => 'ずーっと使えるアドレスじゃないみたいや';
	@override String get mx => '正しいメールサーバーじゃないっぽいわ';
	@override String get smtp => 'メールサーバーがうんともすんとも言わへん';
	@override String get banned => 'このメールアドレスはあかん';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityJaKs extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get public => '公開';
	@override String get followers => 'フォロワーだけに公開';
	@override String get private => '非公開';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupJaKs extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'ほぼ終わったようなもんや';
	@override String get emailAddressInfo => 'あんたが使っとるメアドを入力してなー。入れたメアドが公開されることはないで。';
	@override String emailSent({required Object email}) => 'さっき入れたメアド(${email})宛に確認メールを送ったで。メールに書かれたリンク押してアカウント作るの終わらしてな。\nメールの認証リンクの期限は30分や。';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteJaKs extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'アカウントの削除';
	@override String get mayTakeTime => 'アカウント消すんはサーバーに負荷かかるんやって。やから、作ったコンテンツとか上げたファイルの数が多いと消し終わるまでに時間がかかるかもしれんわ。';
	@override String get sendEmail => 'アカウントの消し終わるときは、登録してたメアドに通知するで。';
	@override String get requestAccountDelete => 'アカウント削除頼む';
	@override String get started => '削除処理が始まったで。';
	@override String get inProgress => '今消しよるで';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdJaKs extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get back => '戻る';
	@override String get reduceFrequencyOfThisAd => 'この広告ちょっとうざったらしいわ';
	@override String get hide => '表示せん';
	@override String get timezoneinfo => '曜日はサーバーのタイムゾーンを元に決めるで。';
	@override String get adsSettings => '広告配信設定';
	@override String get notesPerOneAd => 'リアタイ更新中に広告を出す間隔（ノートの個数な）';
	@override String get setZeroToDisable => '0でリアタイ更新時の広告配信を無効にすんで';
	@override String get adsTooClose => '広告を出す間隔がめっちゃ短いから、ユーザー体験がめちゃめちゃ悪くなるかもしれへん。';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordJaKs extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'アカウントに登録したメールアドレスをここに入力してや。そのアドレス宛に、パスワードリセット用のリンクが送られるから待っててな～。';
	@override String get ifNoEmail => 'メールアドレスを登録してへんのやったら、管理者まで教えてな～。';
	@override String get contactAdmin => 'このサーバーはメールに対応してへんから、パスワードリセットをしたいときは管理者まで教えてな～。';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryJaKs extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get my => 'あんたの投稿';
	@override String get liked => 'いいねした投稿';
	@override String get like => 'ええやん！';
	@override String get unlike => '良くないわ';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailJaKs extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowJaKs follow_ = _TranslationsMisskeyEmailFollowJaKs._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestJaKs receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestJaKs._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginJaKs extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get install => 'プラグインのインストール';
	@override String get installWarn => '信頼できへんプラグインはインストールせんとってな';
	@override String get manage => 'プラグインの管理';
	@override String get viewSource => 'ソース見る';
	@override String get viewLog => 'ログを表示';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsJaKs extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get list => '作ったバックアップ';
	@override String get saveNew => '新しく保存';
	@override String get loadFile => 'ファイルを読み込む';
	@override String get apply => 'このデバイスに使う';
	@override String get save => '上書き保存';
	@override String get inputName => 'バックアップ名を入力してや';
	@override String get cannotSave => '保存できへん';
	@override String nameAlreadyExists({required Object name}) => '「${name}」って名前のバックアップはもうあんねん。やから違う名前を入れてや。';
	@override String applyConfirm({required Object name}) => 'バックアップ「${name}」をこのデバイスに使うん？今のデバイス設定は消えるで？ええの？';
	@override String saveConfirm({required Object name}) => '${name}に上書き保存するん？';
	@override String deleteConfirm({required Object name}) => '${name}を消すん？';
	@override String renameConfirm({required Object old, required Object new_}) => '「${old}」を「${new_}」に変えるん？';
	@override String get noBackups => 'バックアップはないで。「新しく保存」ってとこでこのクライアント設定を鯖に保存できるで。';
	@override String createdAt({required Object date, required Object time}) => '作った日時: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => '更新日時: ${date} ${time}';
	@override String get cannotLoad => '読み込みできへん...';
	@override String get invalidFile => 'ファイル形式が違うで？';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryJaKs extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get scope => 'スコープ';
	@override String get key => 'キー';
	@override String get keys => 'キー';
	@override String get domain => 'ドメイン';
	@override String get createKey => 'キーを作る';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyJaKs extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskeyはsyuiloが2014年からずっと作ってはる、オープンソースなソフトウェアや。';
	@override String get contributors => '主な貢献者';
	@override String get allContributors => '全ての貢献者';
	@override String get source => 'ソースコード';
	@override String get original => 'オリジナル';
	@override String thisIsModifiedVersion({required Object name}) => '${name}はオリジナルのMisskeyをいじったバージョンをつこうてるで。';
	@override String get translation => 'Misskeyを翻訳';
	@override String get donate => 'Misskeyに寄付';
	@override String get morePatrons => '他にもぎょうさんの人からサポートしてもろてんねん。ほんまおおきに🥰';
	@override String get patrons => '支援者';
	@override String get projectMembers => '';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaJaKs extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get respect => 'きわどいのは見とうない';
	@override String get ignore => 'きわどいのも見たい';
	@override String get force => '常にメディアを隠すで';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerJaKs extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get none => '表示せん';
	@override String get remote => 'リモートユーザーに見せる';
	@override String get always => 'いつでも見せる';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorJaKs extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get reload => '自動でリロード';
	@override String get dialog => 'ダイアログで警告';
	@override String get quiet => '控えめに警告';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelJaKs extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get create => 'チャンネル作る';
	@override String get edit => 'チャンネルいじる';
	@override String get setBanner => 'バナーを設定';
	@override String get removeBanner => 'バナーを削除';
	@override String get featured => 'トレンド';
	@override String get owned => '管理しとる';
	@override String get following => 'フォロー中やで';
	@override String usersCount({required Object n}) => '${n}人が参加しとる';
	@override String notesCount({required Object n}) => '${n}こ投稿があるで';
	@override String get nameAndDescription => '名前と説明';
	@override String get nameOnly => '名前だけ';
	@override String get allowRenoteToExternal => 'チャンネルの外にリノートできるようにする';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayJaKs extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '横';
	@override String get sideIcon => '横(アイコン)';
	@override String get top => '上';
	@override String get hide => '隠す';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteJaKs extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'ミュートするワード';
	@override String get muteWordsDescription => 'スペースで区切るとAND指定になって、改行で区切るとOR指定になるで。';
	@override String get muteWordsDescription2 => 'キーワードをスラッシュで囲むと正規表現になるで。';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteJaKs extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'ミュートしたサーバーのユーザーへの返信を含めて、設定したインスタンスの全てのノートとRenoteをミュートにするで。';
	@override String get instanceMuteDescription2 => '改行で区切って設定するんやで';
	@override String get title => '設定したサーバーのノートを隠すで。';
	@override String get heading => 'ミュートするサーバー';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeJaKs extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get explore => 'テーマを探す';
	@override String get install => 'テーマのインストール';
	@override String get manage => 'テーマの管理';
	@override String get code => 'テーマコード';
	@override String get copyThemeCode => 'テーマコードをコピー';
	@override String get description => '説明';
	@override String installed({required Object name}) => '${name}をインストールしたで。';
	@override String get installedThemes => 'インストールされとるテーマ';
	@override String get builtinThemes => '標準のテーマ';
	@override String get instanceTheme => 'サーバーのテーマ';
	@override String get alreadyInstalled => 'そのテーマはもうインストールされとるで？';
	@override String get invalid => 'テーマの形式が間違ってるみたいや';
	@override String get make => 'テーマ作る';
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
	@override String get inputConstantName => '定数名を入力してな';
	@override String get importInfo => 'ここにテーマコードを張り付けて、エディターにインポートすることができるで';
	@override String deleteConstantConfirm({required Object const_}) => '定数 ${const_} を削除してもええか？';
	@override late final _TranslationsMisskeyThemeKeysJaKs keys = _TranslationsMisskeyThemeKeysJaKs._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxJaKs extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get note => 'ノート';
	@override String get noteMy => 'ノート(自分)';
	@override String get notification => '通知';
	@override String get reaction => 'ツッコミ選んどるとき';
	@override String get chatMessage => 'チャットしよか';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsJaKs extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'ドライブん中の音使う';
	@override String get driveFileWarn => 'ドライブん中のファイル選びや';
	@override String get driveFileTypeWarn => 'このファイルは対応しとらへん';
	@override String get driveFileTypeWarnDescription => '音声ファイルを選びや';
	@override String get driveFileDurationWarn => '音が長すぎるわ';
	@override String get driveFileDurationWarnDescription => '長い音使うたらMisskey使うのに良うないかもしれへんで。それでもええか？';
	@override String get driveFileError => '音声が読み込めへんかったで。設定を変更せえや';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoJaKs extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get future => '未来';
	@override String get justNow => 'ついさっき';
	@override String secondsAgo({required Object n}) => '${n}秒前';
	@override String minutesAgo({required Object n}) => '${n}分前';
	@override String hoursAgo({required Object n}) => '${n}時間前';
	@override String daysAgo({required Object n}) => '${n}日前';
	@override String weeksAgo({required Object n}) => '${n}週間前';
	@override String monthsAgo({required Object n}) => '${n}ヶ月前';
	@override String yearsAgo({required Object n}) => '${n}年前';
	@override String get invalid => 'あらへん';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInJaKs extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeJaKs extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get second => '秒';
	@override String get minute => '分';
	@override String get hour => '時間';
	@override String get day => '日';
	@override String get month => 'ヶ月';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faJaKs extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'もう設定終わっとるわ。';
	@override String get registerTOTP => '認証アプリの設定はじめる';
	@override String step1({required Object a, required Object b}) => 'ほんなら、${a}や${b}とかの認証アプリを使っとるデバイスにインストールしてな。';
	@override String get step2 => '次に、ここにあるQRコードをアプリでスキャンしてな～。';
	@override String get step2Uri => 'デスクトップアプリを使う時は次のURIを入れるで';
	@override String get step3Title => '確認コードを入れてーや';
	@override String get step3 => 'アプリに映っとる確認コード（トークン）を入れて終わりや。';
	@override String get setupCompleted => '設定が終わったで。';
	@override String get step4 => 'これからログインするときも、同じようにコードを入れるんや。';
	@override String get securityKeyNotSupported => '今使とるブラウザはセキュリティキーに対応してへんのやってさ。';
	@override String get registerTOTPBeforeKey => 'セキュリティキー・パスキーを登録するんやったら、まず認証アプリを設定してーな。';
	@override String get securityKeyInfo => 'FIDO2をサポートするハードウェアセキュリティキーか端末の指紋認証やPINを使ってログインするように設定できるで。';
	@override String get registerSecurityKey => 'セキュリティキー・パスキーを登録するわ';
	@override String get securityKeyName => 'キーの名前を入れてーや';
	@override String get tapSecurityKey => 'ブラウザが言うこと聞いて、セキュリティキーとかパスキー登録しといでや';
	@override String get removeKey => 'セキュリティキーをほかす';
	@override String removeKeyConfirm({required Object name}) => '${name}を消すん？';
	@override String get whyTOTPOnlyRenew => 'セキュリティキーが登録されとったら、認証アプリの設定は解除できへんで。';
	@override String get renewTOTP => '認証アプリをもっかい設定';
	@override String get renewTOTPConfirm => '今までの認証アプリの確認コードは使えんくなるけどええか？';
	@override String get renewTOTPOk => 'もっかい設定する';
	@override String get renewTOTPCancel => 'やめとく';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'このウィザードを閉じる前に、したのバックアップコードを確認しいや。';
	@override String get backupCodes => 'バックアップコード';
	@override String get backupCodesDescription => '認証アプリが使用できんなった場合、以下のバックアップコードを使ってアカウントにアクセスできるで。これらのコードは必ず安全な場所に置いときや。各コードは一回だけ使用できるで。';
	@override String get backupCodeUsedWarning => 'バックアップコードが使用されたで。認証アプリが使えなくなってるん場合、なるべく早く認証アプリを再設定しや。';
	@override String get backupCodesExhaustedWarning => 'バックアップコードが全て使用されたで。認証アプリを利用できん場合、これ以上アカウントにアクセスできなくなるで。認証アプリを再登録しや。';
	@override String get moreDetailedGuideHere => '詳細なガイドはこちら';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsJaKs extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'アカウントの情報を見るで';
	@override String get writeAccount => 'アカウントの情報を変更するで';
	@override String get readBlocks => 'ブロックを見るで';
	@override String get writeBlocks => 'ブロックを操作するで';
	@override String get readDrive => 'ドライブを見るで';
	@override String get writeDrive => 'ドライブを操作するで';
	@override String get readFavorites => 'お気に入りを見るで';
	@override String get writeFavorites => 'お気に入りを操作するで';
	@override String get readFollowing => 'フォローの情報を見るで';
	@override String get writeFollowing => 'フォロー・フォロー解除するで';
	@override String get readMessaging => 'チャットを見るで';
	@override String get writeMessaging => 'チャットを操作するで';
	@override String get readMutes => 'ミュートを見るで';
	@override String get writeMutes => 'ミュートを操作するで';
	@override String get writeNotes => 'ノートを作成・削除するで';
	@override String get readNotifications => '通知を見るで';
	@override String get writeNotifications => '通知を操作するで';
	@override String get readReactions => 'ツッコミを見る';
	@override String get writeReactions => 'ツッコミを操作するで';
	@override String get writeVotes => '投票する';
	@override String get readPages => 'ページを見る';
	@override String get writePages => 'ページを操作するで';
	@override String get readPageLikes => 'ページのええやんを見る';
	@override String get writePageLikes => 'ページのええやんを操作する';
	@override String get readUserGroups => 'ユーザーグループを見る';
	@override String get writeUserGroups => 'ユーザーグループで操作するで';
	@override String get readChannels => 'チャンネルを見る';
	@override String get writeChannels => 'チャンネルを操作するで';
	@override String get readGallery => 'ギャラリーを見るで';
	@override String get writeGallery => 'ギャラリーを操作するで';
	@override String get readGalleryLikes => 'ギャラリーのいいねを見るで';
	@override String get writeGalleryLikes => 'ギャラリーのいいねを操作するで';
	@override String get readFlash => 'Playを見る';
	@override String get writeFlash => 'Playを操作する';
	@override String get readFlashLikes => 'Playのええやん！を見る';
	@override String get writeFlashLikes => 'Playのええやん！を見る';
	@override String get readAdminAbuseUserReports => 'ユーザーからの通報を見る';
	@override String get writeAdminDeleteAccount => 'ユーザーアカウント消す';
	@override String get writeAdminDeleteAllFilesOfAUser => 'ユーザーのファイル全部ほかす';
	@override String get readAdminIndexStats => 'データベースインデックスの情報見る';
	@override String get readAdminTableStats => 'データベーステーブルの情報見る';
	@override String get readAdminUserIps => 'ユーザーのIPアドレスを見る';
	@override String get readAdminMeta => 'インスタンスのメタデータ見る';
	@override String get writeAdminResetPassword => 'ユーザーのパスワードをリセット';
	@override String get writeAdminResolveAbuseUserReport => 'ユーザーからの通報を解決する';
	@override String get writeAdminSendEmail => 'メール送る';
	@override String get readAdminServerInfo => 'サーバーの情報見る';
	@override String get readAdminShowModerationLog => 'モデレーションログ見る';
	@override String get readAdminShowUser => 'ユーザーのプライベートな情報見る';
	@override String get writeAdminSuspendUser => 'ユーザーを凍結';
	@override String get writeAdminUnsetUserAvatar => 'ユーザーのアバターを削除';
	@override String get writeAdminUnsetUserBanner => 'ユーザーのバナーを削除';
	@override String get writeAdminUnsuspendUser => 'ユーザーの凍結解除';
	@override String get writeAdminMeta => 'インスタンスのメタデータいじる';
	@override String get writeAdminUserNote => 'モデレーションノートいじる';
	@override String get writeAdminRoles => 'ロールをいじる';
	@override String get readAdminRoles => 'ロール見る';
	@override String get writeAdminRelays => 'リレーいじる';
	@override String get readAdminRelays => 'リレー見る';
	@override String get writeAdminInviteCodes => '招待コードいじる';
	@override String get readAdminInviteCodes => '招待コード見る';
	@override String get writeAdminAnnouncements => 'お知らせいじる';
	@override String get readAdminAnnouncements => 'お知らせ見る';
	@override String get writeAdminAvatarDecorations => 'アバターデコレーションをいじる';
	@override String get readAdminAvatarDecorations => 'アバターデコレーション見る';
	@override String get writeAdminFederation => '連合の情報いじる';
	@override String get writeAdminAccount => 'ユーザーアカウントいじる';
	@override String get readAdminAccount => 'ユーザーの情報見る';
	@override String get writeAdminEmoji => '絵文字いじる';
	@override String get readAdminEmoji => '絵文字見る';
	@override String get writeAdminQueue => 'ジョブキューいじる';
	@override String get readAdminQueue => 'ジョブキューの情報見る';
	@override String get writeAdminPromo => 'プロモーションノートいじる';
	@override String get writeAdminDrive => 'ユーザーのドライブいじる';
	@override String get readAdminDrive => 'ユーザーのドライブの情報見る';
	@override String get readAdminStream => '管理者用のWebsocket API使う';
	@override String get writeAdminAd => '広告いじる';
	@override String get readAdminAd => '広告見る';
	@override String get writeInviteCodes => '招待コード作る';
	@override String get readInviteCodes => '招待コード取得';
	@override String get writeClipFavorite => 'クリップのいいねいじる';
	@override String get readClipFavorite => 'クリップのいいね見る';
	@override String get readFederation => '連合の情報取得';
	@override String get writeReportAbuse => '違反報告';
	@override String get writeChat => 'チャットを操作するで';
	@override String get readChat => 'ダイレクトメッセージを閲覧する';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthJaKs extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'アプリへのアクセス許してやったらどうや';
	@override String shareAccess({required Object name}) => '「${name}」がアカウントにアクセスすることを許可してええか？';
	@override String get shareAccessAsk => 'アカウントのアクセスを許可してもええか？';
	@override String permission({required Object name}) => '${name}に次の権限つけたってやって';
	@override String get permissionAsk => 'このアプリは次の権限を要求しとるで';
	@override String get pleaseGoBack => 'アプリケーションに戻ってええよ';
	@override String get callback => 'アプリケーションに戻っとるで';
	@override String get accepted => 'アクセスを許可したで';
	@override String get denied => 'アクセスを拒否ったで';
	@override String get scopeUser => '以下のユーザーとしていじってるで';
	@override String get pleaseLogin => 'アプリにアクセスさせるんやったら、ログインしてや。';
	@override String get byClickingYouWillBeRedirectedToThisUrl => 'アクセスを許したら、自動で下のURLに遷移するで';
	@override String get alreadyAuthorized => 'このアプリはもうアクセスを許可してるみたいやで。';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesJaKs extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get all => 'みんなのノート';
	@override String get homeTimeline => 'フォローしとるユーザーのノート';
	@override String get users => '選んだ一人か複数のユーザーのノート';
	@override String get userList => '選んだリストのユーザーのノート';
	@override String get userBlacklist => '選んだ一人か複数のユーザーを除いた全てのノート';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayJaKs extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyWidgetsJaKs extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
	@override late final _TranslationsMisskeyWidgetsUserListJaKs userList_ = _TranslationsMisskeyWidgetsUserListJaKs._(_root);
	@override String get clicker => 'クリッカー';
	@override String get birthdayFollowings => '今日誕生日のツレ';
	@override String get chat => 'チャットしよか';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsJaKs extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get showHeader => 'ヘッダー出す';
	@override String get transparent => '背景を透明にする';
	@override String get height => '高さ';
	@override late final _TranslationsMisskeyWidgetOptionsButtonJaKs button_ = _TranslationsMisskeyWidgetOptionsButtonJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockJaKs clock_ = _TranslationsMisskeyWidgetOptionsClockJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsJobQueueJaKs jobQueue_ = _TranslationsMisskeyWidgetOptionsJobQueueJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssJaKs rss_ = _TranslationsMisskeyWidgetOptionsRssJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRssTickerJaKs rssTicker_ = _TranslationsMisskeyWidgetOptionsRssTickerJaKs._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaKs birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaKs._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwJaKs extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get hide => '隠す';
	@override String get show => '続き見して！';
	@override String chars({required Object count}) => '${count}文字';
	@override String files({required Object count}) => '${count}ファイル';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollJaKs extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '選択肢は最低2つ必要やで';
	@override String choiceN({required Object n}) => '選択肢${n}';
	@override String get noMore => 'これ以上追加でけへん';
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
	@override String get showResult => '結果を見るで';
	@override String get voted => '投票済みやで';
	@override String get closed => '終了済みやで';
	@override String remainingDays({required Object d, required Object h}) => '終了まであと${d}日${h}時間や';
	@override String remainingHours({required Object h, required Object m}) => '終了まであと${h}時間${m}分や';
	@override String remainingMinutes({required Object m, required Object s}) => '終了まであと${m}分${s}秒や';
	@override String remainingSeconds({required Object s}) => '終了まであと${s}秒や';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityJaKs extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get public => 'パブリック';
	@override String get publicDescription => 'みんなに公開';
	@override String get home => 'ホーム';
	@override String get homeDescription => 'ホームタイムラインのみに公開するで';
	@override String get followers => 'フォロワー';
	@override String get followersDescription => '自分のフォロワーのみに公開するで';
	@override String get specified => 'ダイレクト';
	@override String get specifiedDescription => '選んだユーザーのみに公開するで';
	@override String get disableFederation => '連合なし';
	@override String get disableFederationDescription => '他サーバーへは送らんとくわ';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormJaKs extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'アップロードされてへんファイルがあるんやけど、ほかしてフォームを閉じてもええんか？';
	@override String get uploaderTip => 'ファイルはまだアップロードされてへんで。ファイルのメニューから、リネームとか画像のクロップ、ウォーターマークをのっける、圧縮するかどうかなんかを設定できるで。ファイルはノートを投稿するときに自動でアップロードされるで。';
	@override String get replyPlaceholder => 'このノートに返信...';
	@override String get quotePlaceholder => 'このノートを引用...';
	@override String get channelPlaceholder => 'チャンネルに投稿...';
	@override String get showHowToUse => 'フォームの説明を表示';
	@override late final _TranslationsMisskeyPostFormHowToUseJaKs howToUse_ = _TranslationsMisskeyPostFormHowToUseJaKs._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersJaKs placeholders_ = _TranslationsMisskeyPostFormPlaceholdersJaKs._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileJaKs extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get name => '名前';
	@override String get username => 'ユーザー名';
	@override String get description => '自己紹介';
	@override String get youCanIncludeHashtags => 'ハッシュタグを含めることができるで。';
	@override String get metadata => '追加情報';
	@override String get metadataEdit => '追加情報を編集するで';
	@override String get metadataDescription => 'プロフィールに表として追加情報を表示することができるで';
	@override String get metadataLabel => 'ラベル';
	@override String get metadataContent => '内容';
	@override String get changeAvatar => 'アバター画像を変更するで';
	@override String get changeBanner => 'バナー画像を変更するで';
	@override String get verifiedLinkDescription => '内容をURLに設定すると、リンク先のwebサイトに自分のプロフのリンクが含まれてる場合に所有者確認済みアイコンを表示させることができるで。';
	@override String avatarDecorationMax({required Object max}) => '最大${max}つまでデコつけれんで';
	@override String get followedMessage => 'フォローされたら返すメッセージ';
	@override String get followedMessageDescription => 'フォローされたときに相手に返す短めのメッセージを決めれるで。';
	@override String get followedMessageDescriptionForLockedAccount => 'フォローが承認制なら、フォローリクエストをOKしたときに見せるで。';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportJaKs extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '全てのノート';
	@override String get favoritedNotes => 'お気に入りにしたノート';
	@override String get clips => 'クリップ';
	@override String get followingList => 'フォロー';
	@override String get muteList => 'ミュート';
	@override String get blockingList => 'ブロック';
	@override String get userLists => 'リスト';
	@override String get excludeMutingUsers => 'ミュートしてるユーザーは入れんとくわ';
	@override String get excludeInactiveUsers => '使われてなさそうなアカウントは入れんとくわ';
	@override String get withReplies => 'インポートした人による返信をTLに含むようにすんで。';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsJaKs extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get federation => '連合';
	@override String get apRequest => 'リクエスト';
	@override String get usersIncDec => 'ユーザーの増減';
	@override String get usersTotal => 'ユーザーの合計';
	@override String get activeUsers => 'いまおるユーザー数';
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
class _TranslationsMisskeyInstanceChartsJaKs extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyTimelinesJaKs extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get local => 'ローカル';
	@override String get social => 'ソーシャル';
	@override String get global => 'グローバル';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayJaKs extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Playの作成';
	@override String get edit => 'Playの編集';
	@override String get created => 'Playを作ったで';
	@override String get updated => 'Playを更新したで';
	@override String get deleted => 'Playを消したで';
	@override String get pageSetting => 'Play設定';
	@override String get editThisPage => 'このPlayを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get my => '自分のPlay';
	@override String get liked => 'いいねしたPlay';
	@override String get featured => '人気';
	@override String get title => 'タイトル';
	@override String get script => 'スクリプト';
	@override String get summary => '説明';
	@override String get visibilityDescription => '非公開に設定するとプロフィールに表示されへんくなるけど、URLを知っとる人は引き続きアクセスできるで。';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesJaKs extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'ページを作る';
	@override String get editPage => 'ページの編集';
	@override String get readPage => 'ソースを表示中';
	@override String get pageSetting => 'ページ設定';
	@override String get nameAlreadyExists => '指定されたページURLはもうあるみたいや';
	@override String get invalidNameTitle => '正しくないページURLみたいやで';
	@override String get invalidNameText => '空白になってないか確認してや～';
	@override String get editThisPage => 'このページを編集';
	@override String get viewSource => 'ソースを表示';
	@override String get viewPage => 'ページを見る';
	@override String get like => 'ええやん';
	@override String get unlike => '良くないわ';
	@override String get my => '自分のページ';
	@override String get liked => 'ええと思ったページ';
	@override String get featured => '人気';
	@override String get inspector => 'インスペクター';
	@override String get contents => 'コンテンツ';
	@override String get content => 'ページブロック';
	@override String get variables => '変数';
	@override String get title => 'タイトル';
	@override String get url => 'ページURL';
	@override String get summary => 'ページの要約';
	@override String get alignCenter => '中央寄せ';
	@override String get hideTitleWhenPinned => 'ピン止めされてるときにタイトルを表示';
	@override String get font => 'フォント';
	@override String get fontSerif => 'セリフ';
	@override String get fontSansSerif => 'サンセリフ';
	@override String get eyeCatchingImageSet => 'アイキャッチ画像を設定';
	@override String get eyeCatchingImageRemove => 'アイキャッチ画像を削除';
	@override String get chooseBlock => 'ブロックを追加';
	@override String get enterSectionTitle => 'セクションタイトルを入れる';
	@override String get selectType => '種類を選択';
	@override String get contentBlocks => 'コンテンツ';
	@override String get inputBlocks => '入力';
	@override String get specialBlocks => '特殊';
	@override late final _TranslationsMisskeyPagesBlocksJaKs blocks = _TranslationsMisskeyPagesBlocksJaKs._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusJaKs extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get requesting => '承認待ち';
	@override String get accepted => '承認済み';
	@override String get rejected => '拒否済み';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationJaKs extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'ファイルが無事アップロードされたで。';
	@override String youGotMention({required Object name}) => '${name}からのメンション';
	@override String youGotReply({required Object name}) => '${name}からのリプライ';
	@override String youGotQuote({required Object name}) => '${name}による引用';
	@override String youRenoted({required Object name}) => '${name}がリノートしたみたいやで';
	@override String get youWereFollowed => 'フォローされたで';
	@override String get youReceivedFollowRequest => 'フォロー許可してほしいみたいやな';
	@override String get yourFollowRequestAccepted => 'フォローさせてもろたで';
	@override String get pollEnded => 'アンケートの結果が出たみたいや';
	@override String get scheduledNotePosted => '予約ノートが投稿されたで';
	@override String get scheduledNotePostFailed => '予約ノート投稿できんかったで';
	@override String get newNote => 'さらの投稿';
	@override String unreadAntennaNote({required Object name}) => 'アンテナ ${name}';
	@override String get roleAssigned => 'ロールが付与されたで';
	@override String get chatRoomInvitationReceived => 'チャットルームへ招待されたで';
	@override String get emptyPushNotificationMessage => 'プッシュ通知の更新をしといたで';
	@override String get achievementEarned => '実績を獲得しとるで';
	@override String get testNotification => '通知テスト';
	@override String get checkNotificationBehavior => '通知の表示を確かめるで';
	@override String get sendTestNotification => 'テスト通知を送信するで';
	@override String get notificationWillBeDisplayedLikeThis => '通知はこのように表示されるで';
	@override String reactedBySomeUsers({required Object n}) => '${n}人がツッコんだで';
	@override String likedBySomeUsers({required Object n}) => '${n}人がいいねしたで';
	@override String renotedBySomeUsers({required Object n}) => '${n}人がリノートしたで';
	@override String followedBySomeUsers({required Object n}) => '${n}人にフォローされたで';
	@override String get flushNotification => '通知の履歴をリセットする';
	@override String exportOfXCompleted({required Object x}) => '${x}のエクスポートが終わったわ';
	@override String get login => 'ログインしとったで';
	@override String get createToken => 'アクセストークンが作成されたで';
	@override String createTokenDescription({required Object text}) => '心当たりないんやったら「${text}」でアクセストークンを削除してやって。';
	@override late final _TranslationsMisskeyNotificationTypesJaKs types_ = _TranslationsMisskeyNotificationTypesJaKs._(_root);
	@override late final _TranslationsMisskeyNotificationActionsJaKs actions_ = _TranslationsMisskeyNotificationActionsJaKs._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckJaKs extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'いつもメインカラムを表示';
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
	@override String get stackLeft => '左に重ねる';
	@override String get popRight => '右に出す';
	@override String get profile => 'プロファイル';
	@override String get newProfile => '新規プロファイル';
	@override String get deleteProfile => 'プロファイルを削除';
	@override String get introduction => 'カラムを組み合わせて自分だけのインターフェイスを作りましょ！';
	@override String get introduction2 => '画面の右にある + を押して、いつでもカラムを追加できるで。';
	@override String get widgetsIntroduction => 'カラムのメニューから、「ウィジェットの編集」を選んでウィジェットを追加してなー';
	@override String get useSimpleUiForNonRootPages => '非ルートページは簡易UIで表示';
	@override String get usedAsMinWidthWhenFlexible => '「幅を自動調整」が有効の場合、これが幅の最小値となるで';
	@override String get flexible => '幅を自動調整';
	@override String get enableSyncBetweenDevicesForProfiles => 'プロファイル情報のデバイス間同期を有効にする';
	@override String get showHowToUse => 'UIの説明を見る';
	@override late final _TranslationsMisskeyDeckHowToUseJaKs howToUse_ = _TranslationsMisskeyDeckHowToUseJaKs._(_root);
	@override late final _TranslationsMisskeyDeckColumnsJaKs columns_ = _TranslationsMisskeyDeckColumnsJaKs._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogJaKs extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '最大の文字数を上回っとるで！今は ${current} / 最大でも ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '最小の文字数を下回っとるで！今は ${current} / 最低でも ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineJaKs extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '使われへんタイムライン';
	@override String get description => 'あんたの今のロールやったら、このタイムラインは使われへんで。';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerJaKs extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'サイズのでかい順';
	@override String get orderByCreatedAtAsc => '追加日の古い順';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsJaKs extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhookをつくる';
	@override String get modifyWebhook => 'Webhookを編集';
	@override String get name => '名前';
	@override String get secret => 'シークレット';
	@override String get trigger => 'トリガー';
	@override String get active => '有効';
	@override late final _TranslationsMisskeyWebhookSettingsEventsJaKs events_ = _TranslationsMisskeyWebhookSettingsEventsJaKs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsJaKs systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsJaKs._(_root);
	@override String get deleteConfirm => 'ほんまにWebhookをほかしてもええんか？';
	@override String get testRemarks => 'スイッチ右のボタンを押すとダミーデータを使ったテスト用Webhookを送れるで。';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportJaKs extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientJaKs notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientJaKs._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesJaKs extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get clearQueue => 'ジョブキューをクリア';
	@override String get promoteQueue => 'キューのジョブを再試行';
	@override String get createRole => 'ロールを追加すんで';
	@override String get deleteRole => 'ロールほかす';
	@override String get updateRole => 'ロールの更新すんで';
	@override String get assignRole => 'ロールへアサイン';
	@override String get unassignRole => 'ロールのアサインほかす';
	@override String get suspend => '凍結';
	@override String get unsuspend => '凍結解除';
	@override String get addCustomEmoji => '自由な絵文字追加されたで';
	@override String get updateCustomEmoji => '自由な絵文字更新されたで';
	@override String get deleteCustomEmoji => '自由な絵文字消されたで';
	@override String get updateServerSettings => 'サーバー設定更新すんねん';
	@override String get updateUserNote => 'モデレーションノート更新';
	@override String get deleteDriveFile => 'ファイルをほかす';
	@override String get deleteNote => 'ノートを削除';
	@override String get createGlobalAnnouncement => 'みんなへの通告を作成したで';
	@override String get createUserAnnouncement => 'あんたらへの通告を作成したで';
	@override String get updateGlobalAnnouncement => 'みんなへの通告更新したったで';
	@override String get updateUserAnnouncement => 'あんたらへの通告更新したったで';
	@override String get deleteGlobalAnnouncement => 'みんなへの通告消したったで';
	@override String get deleteUserAnnouncement => 'あんたらへのお知らせを削除';
	@override String get resetPassword => 'パスワードをリセット';
	@override String get suspendRemoteInstance => 'リモートサーバーを止めんで';
	@override String get unsuspendRemoteInstance => 'リモートサーバーを再開すんで';
	@override String get updateRemoteInstanceNote => 'リモートサーバーのモデレーションノート更新';
	@override String get markSensitiveDriveFile => 'ファイルをセンシティブ付与';
	@override String get unmarkSensitiveDriveFile => 'ファイルをセンシティブ解除';
	@override String get resolveAbuseReport => '苦情を解決';
	@override String get forwardAbuseReport => '通報を転送';
	@override String get updateAbuseReportNote => '通報のモデレーションノート更新';
	@override String get createInvitation => '招待コード作る';
	@override String get createAd => '広告を作んで';
	@override String get deleteAd => '広告ほかす';
	@override String get updateAd => '広告を更新';
	@override String get createAvatarDecoration => 'アイコンデコレーションを作成';
	@override String get updateAvatarDecoration => 'アイコンデコレーションを更新';
	@override String get deleteAvatarDecoration => 'アイコンデコレーションを削除';
	@override String get unsetUserAvatar => 'この子のアイコン元に戻す';
	@override String get unsetUserBanner => 'この子のバナー元に戻す';
	@override String get createSystemWebhook => 'SystemWebhookを作成';
	@override String get updateSystemWebhook => 'SystemWebhookを更新';
	@override String get deleteSystemWebhook => 'SystemWebhookを削除';
	@override String get createAbuseReportNotificationRecipient => '通報の通知先作る';
	@override String get updateAbuseReportNotificationRecipient => '通報の通知先更新';
	@override String get deleteAbuseReportNotificationRecipient => '通報の通知先消す';
	@override String get deleteAccount => 'アカウント消す';
	@override String get deletePage => 'ページ消す';
	@override String get deleteFlash => 'Playをほかす';
	@override String get deleteGalleryPost => 'ギャラリーの投稿をほかす';
	@override String get deleteChatRoom => 'ダイレクトメッセージのグループを削除';
	@override String get updateProxyAccountDescription => 'プロキシアカウントの説明を更新';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerJaKs extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ファイルの詳しい情報';
	@override String get type => 'ファイルの種類';
	@override String get size => 'ファイルのでかさ';
	@override String get url => 'URL';
	@override String get uploadedAt => '追加した日';
	@override String get attachedNotes => 'ファイルがついてきてるノート';
	@override String get usage => '利用';
	@override String get thisPageCanBeSeenFromTheAuthor => 'このページはこのファイルをアップした人しか見れへんねん。';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerJaKs extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ほかのサイトからインストール';
	@override String get checkVendorBeforeInstall => '配ってるとこが信頼できるか確認した上でインストールしてな。';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginJaKs plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeJaKs theme_ = _TranslationsMisskeyExternalResourceInstallerThemeJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaJaKs meta_ = _TranslationsMisskeyExternalResourceInstallerMetaJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoJaKs vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsJaKs errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsJaKs._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverJaKs extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaJaKs media_ = _TranslationsMisskeyDataSaverMediaJaKs._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarJaKs avatar_ = _TranslationsMisskeyDataSaverAvatarJaKs._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailJaKs urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailJaKs._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewJaKs disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewJaKs._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeJaKs code_ = _TranslationsMisskeyDataSaverCodeJaKs._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereJaKs extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get N => '北半球';
	@override String get S => '南半球';
	@override String get caption => '一部のクライアント設定で、季節を判定するのに使用するで。';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiJaKs extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'リバーシ';
	@override String get gameSettings => '対局の設定';
	@override String get chooseBoard => 'ボードを選択';
	@override String get blackOrWhite => '先行/後攻';
	@override String blackIs({required Object name}) => '${name}が黒(先行)';
	@override String get rules => 'ルール';
	@override String get thisGameIsStartedSoon => '対局、そろそろ開始されるで。';
	@override String get waitingForOther => '相手の準備が完了するのを待ってんで。';
	@override String get waitingForMe => 'あんさんの準備が完了すんのを待ってんで';
	@override String get waitingBoth => '準備してなー';
	@override String get ready => '準備完了';
	@override String get cancelReady => '準備を再開';
	@override String get opponentTurn => '相手のターンやで';
	@override String get myTurn => 'あんさんのターンや';
	@override String turnOf({required Object name}) => '${name}のターンやで';
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
	@override String get lookingForPlayer => '対戦相手を探してるで';
	@override String get gameCanceled => '対局がキャンセルされたわ';
	@override String get shareToTlTheGameWhenStart => '初めの時に対局をタイムラインに投稿するで';
	@override String get iStartedAGame => '対局し始めたで！ #MisskeyReversi';
	@override String get opponentHasSettingsChanged => '相手が設定変えたで';
	@override String get allowIrregularRules => '変則許可 (完全フリー)';
	@override String get disallowIrregularRules => '変則なし';
	@override String get showBoardLabels => '盤面に行・列番号を表示';
	@override String get useAvatarAsStone => '石をアイコンにする';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenJaKs extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'オフライン - サーバーに接続できひんで';
	@override String get header => 'サーバーに接続できへんわ';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingJaKs extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューの設定';
	@override String get enable => 'URLプレビューを有効にする';
	@override String get allowRedirect => 'プレビュー先のリダイレクトを許可';
	@override String get allowRedirectDescription => '入力されたURLがリダイレクトされるとき、そのリダイレクト先をたどってプレビューを表示するかどうかを設定できるで。無効にするとサーバーリソースを節約できるんやけど、リダイレクト先の内容は表示されへんくなるで。';
	@override String get timeout => 'プレビュー取得時のタイムアウト(ms)';
	@override String get timeoutDescription => 'プレビュー取得の所要時間がこの値を超えた場合、プレビューは生成されへんで。';
	@override String get maximumContentLength => 'Content-Lengthの最大値(byte)';
	@override String get maximumContentLengthDescription => 'Content-Lengthがこの値を超えた場合、プレビューは生成されへんで。';
	@override String get requireContentLength => 'Content-Lengthが取得できた場合のみプレビューを生成';
	@override String get requireContentLengthDescription => '相手サーバがContent-Lengthを返さない場合、プレビューは生成されへんで。';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'プレビュー取得時に使用されるUser-Agentを設定するで。空欄の場合、デフォルトのUser-Agentが使用されるで。';
	@override String get summaryProxy => 'プレビューを生成するプロキシのエンドポイント';
	@override String get summaryProxyDescription => 'Misskey本体やなく、サマリープロキシを使用してプレビューを生成するで。';
	@override String get summaryProxyDescription2 => 'プロキシには下記パラメータがクエリ文字列として連携されるで。プロキシ側がこれらをサポートせえへんときは、設定値は無視されるで。';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsJaKs extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get pip => 'ピクチャインピクチャ';
	@override String get playbackRate => '再生速度';
	@override String get loop => 'ループ再生';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuJaKs extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'コンテキストメニュー';
	@override String get app => 'アプリ';
	@override String get appWithShift => 'Shiftキーでアプリ';
	@override String get native => 'ブラウザのUI';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentJaKs extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorJaKs error_ = _TranslationsMisskeyGridComponentErrorJaKs._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogJaKs extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get notSelected => '選択されとらんで';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerJaKs extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonJaKs gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonJaKs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsJaKs logs_ = _TranslationsMisskeyCustomEmojisManagerLogsJaKs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteJaKs remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteJaKs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalJaKs local_ = _TranslationsMisskeyCustomEmojisManagerLocalJaKs._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenJaKs extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '埋め込みコードをカスタム';
	@override String get header => 'ヘッダー出す';
	@override String get autoload => '勝手に続きを読み込む（非推奨）';
	@override String get maxHeight => '高さの最大値';
	@override String get maxHeightDescription => '0は最大値を指定せえへんけど、ウィジェットが伸び続けるから絶対1以上にしといてや。';
	@override String get maxHeightWarn => '高さの最大値が無効になっとるで。意図してへん変更なら、普通の値に戻してや。';
	@override String get previewIsNotActual => 'プレビュー画面で出せる範囲をはみ出したから、ホンマの表示とはちゃうとおもうで。';
	@override String get rounded => '角丸める';
	@override String get border => '外枠に枠線つける';
	@override String get applyToPreview => 'プレビューに反映';
	@override String get generateCode => '埋め込みコード作る';
	@override String get codeGenerated => 'コード作ったで';
	@override String get codeGeneratedDescription => '作ったコードはウェブサイトに貼っつけて使ってや。';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionJaKs extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get warning => '警告';
	@override String get title => '「この画面になんか貼り付けろ」は全部詐欺やで。';
	@override String get description1 => 'ここになんかはつっつけると、悪いユーザーにアカウント乗っ取られたり、個人情報盗まれたりするかもやで';
	@override String get description2 => 'はっつけようとしてるものがなんなんかわからんのやったら、%c今すぐ作業やめてウィンドウを閉じて。';
	@override String description3({required Object link}) => '詳しくはこれを見て。${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestJaKs extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get recieved => 'もらった申請';
	@override String get sent => '送った申請';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsJaKs extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaKs federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaKs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidJaKs uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidJaKs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedJaKs requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedJaKs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaKs responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaKs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaKs noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaKs._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaJaKs extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get verify => 'CAPTCHAしばいたって';
	@override String get testSiteKeyMessage => 'サイトキーとシークレットキーにテスト用の値を入力することでプレビューを確認できるで。\n詳細は下記ページを確認してな。';
	@override late final _TranslationsMisskeyCaptchaErrorJaKs error_ = _TranslationsMisskeyCaptchaErrorJaKs._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsJaKs extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '読み込みに失敗したで';
	@override String get serverError => '少し待ってからリロードしてもまだ問題が解決されんのやったら、以下のError IDを添えてサーバー管理者に連絡して。';
	@override String get solution => '以下のことやったら解決するかもやで。';
	@override String get solution1 => 'ブラウザとかOSを最新バージョンに更新する';
	@override String get solution2 => 'アドブロッカーを無効にする';
	@override String get solution3 => 'ブラウザのキャッシュをクリアする';
	@override String get solution4 => '(Tor Browser) dom.webaudio.enabledをtrueに設定する';
	@override String get otherOption => 'ほかのオプション';
	@override String get otherOption1 => 'クライアント設定とキャッシュをほかす';
	@override String get otherOption2 => '簡易クライアントを起動';
	@override String get otherOption3 => '修復ツールを起動';
	@override String get otherOption4 => 'Misskeyをセーフモードで起動';
}

// Path: misskey.search_
class _TranslationsMisskeySearchJaKs extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'みんな';
	@override String get searchScopeLocal => 'ローカル';
	@override String get searchScopeServer => 'サーバー指定';
	@override String get searchScopeUser => 'ユーザー指定';
	@override String get pleaseEnterServerHost => 'サーバーのホストはどないするん？';
	@override String get pleaseSelectUser => 'ユーザーを選んでや';
	@override String get serverHostPlaceholder => '例: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardJaKs extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Misskeyのインストールが終わったで！';
	@override String get firstCreateAccount => '最初は、管理者アカウントを作成しよか。';
	@override String get accountCreated => '管理者アカウントができたで！';
	@override String get serverSetting => 'サーバーの設定';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'このウィザードで簡単にええ感じのサーバーの設定ができるで。';
	@override String get settingsYouMakeHereCanBeChangedLater => 'ここでの設定は、あとからでも変えられるで。';
	@override String get howWillYouUseMisskey => 'Misskeyをどんな感じに使うん？';
	@override late final _TranslationsMisskeyServerSetupWizardUseJaKs use_ = _TranslationsMisskeyServerSetupWizardUseJaKs._(_root);
	@override String get openServerAdvice => '不特定多数の利用者を受け入れるには相応のリスクがあるで。トラブルに対処できるよう、ちゃんとしたモデレーション体制で運営しいや。';
	@override String get openServerAntiSpamAdvice => 'うちのサーバーがスパムの踏み台にならへんように、reCAPTCHAとかのアンチボット機能を使う、みたいなセキュリティ対策もしっかり考えてな。';
	@override String get howManyUsersDoYouExpect => 'どれくらいの人数を考えとるん？';
	@override late final _TranslationsMisskeyServerSetupWizardScaleJaKs scale_ = _TranslationsMisskeyServerSetupWizardScaleJaKs._(_root);
	@override String get largeScaleServerAdvice => '大規模なサーバーやったら、ロードバランシングとかデータベースのレプリケーションみたいな、高度なインフラストラクチャーの知識が必要になるかもしれへんわ。';
	@override String get doYouConnectToFediverse => 'Fediverseと接続するんやっけ？';
	@override String get doYouConnectToFediverse_description1 => '分散型サーバーでできたネットワーク(Fediverse)に繋げると、他のサーバーと相互にコンテンツのやり取りができるようになるで。';
	@override String get doYouConnectToFediverse_description2 => 'Fediverseと接続することは「連合」とも呼ばれるな。';
	@override String get youCanConfigureMoreFederationSettingsLater => '連合してもええサーバーの指定とか、高度な設定も後でできるで。';
	@override String get remoteContentsCleaning => 'リモートコンテンツの自動クリーニング';
	@override String get remoteContentsCleaning_description => '連合すると、ぎょうさんコンテンツを受け取り続けることになるねん。自動クリーニングをつけると、参照されてない古いコンテンツを自動でサーバーからほかして、ストレージを節約できるで。';
	@override String get adminInfo => '管理者情報';
	@override String get adminInfo_description => '問い合わせを受け付けるのに使う管理者情報を設定しよか。';
	@override String get adminInfo_mustBeFilled => 'オープンサーバー、もしくは連合を入れとるんやったら必ず入力せなあかんで。';
	@override String get followingSettingsAreRecommended => 'こういう設定がええかもな';
	@override String get applyTheseSettings => 'この設定を適用';
	@override String get skipSettings => '設定をスキップ';
	@override String get settingsCompleted => '設定が終わったで！';
	@override String get settingsCompleted_description => 'お疲れさん。準備ができたから、さっそくサーバーを使い始められるで。';
	@override String get settingsCompleted_description2 => '細かいサーバー設定は、「コントロールパネル」を見てみてな。';
	@override String get donationRequest => '寄付のお願い';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestJaKs donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestJaKs._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderJaKs extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get editImage => '画像の編集';
	@override String compressedToX({required Object x}) => '${x}に圧縮';
	@override String savedXPercent({required Object x}) => '${x}%節約';
	@override String get abortConfirm => 'アップロードされてへんファイルがあるんやけど、やめてもええんか？';
	@override String get doneConfirm => 'アップロードされてへんファイルがあるんやけど、完了してもええんか？';
	@override String maxFileSizeIsX({required Object x}) => 'アップロードできるファイルサイズは${x}までやで。';
	@override String get allowedTypes => 'アップロード可能なファイル種別';
	@override String get tip => 'ファイルはまだアップロードされてへんで。このダイアログで、アップロードする前に確認・リネーム・圧縮・クロッピングとかをできるで。準備が出来たら、「アップロード」ボタンを押してアップロードしてな。';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipJaKs extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'バッテリーようさん食うなぁと思ったら';
	@override String get makeSureDisabledAdBlocker => 'アドブロッカーを切ってみてや';
	@override String get makeSureDisabledAdBlocker_description => 'アドブロッカーはパフォーマンスに影響があるかもしれへん。OSの機能とかブラウザの機能・アドオンとかでアドブロッカーが有効になってないか確認してや。';
	@override String get makeSureDisabledCustomCss => 'カスタムCSSを無効にしてみてや';
	@override String get makeSureDisabledCustomCss_description => 'スタイルを上書きするとパフォーマンスに影響があるかもしれへん。カスタムCSSとか、スタイルを上書きする拡張機能が有効になってないか確認してや。';
	@override String get makeSureDisabledAddons => '拡張機能を無効にしてみてや';
	@override String get makeSureDisabledAddons_description => 'なんかの拡張機能がクライアントの動作にちょっかいをかけてパフォーマンスに影響を与えてるかもしれへん。ブラウザの拡張機能を無効にして良くなるか確認してや。';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipJaKs extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get tip => 'クリップは、ノートをまとめられる機能やで。';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsJaKs extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get tip => '好きなユーザーを含むリストを作れるねん。作ったリストはタイムラインとして表示できるで。';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorJaKs extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get tip => '画像にクレジット情報とかのウォーターマークをのっけられるで。';
	@override String get quitWithoutSaveConfirm => '保存せずに終わってもええんか？';
	@override String get driveFileTypeWarn => 'このファイルは対応しとらへん';
	@override String get driveFileTypeWarnDescription => '画像ファイルを選んでや';
	@override String get title => 'ウォーターマークの編集';
	@override String get cover => '全体に被せる';
	@override String get repeat => '敷き詰める';
	@override String get preserveBoundingRect => '回転時はみ出ないように調整する';
	@override String get opacity => '不透明度';
	@override String get scale => '大きさ';
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
	@override String get failedToLoadImage => 'あかん、画像読み込まれへんわ';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorJaKs extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'エフェクト';
	@override String get addEffect => 'エフェクトを追加';
	@override String get discardChangesConfirm => '変更をせんで終わるか？';
	@override String get failedToLoadImage => 'あかん、画像読み込まれへんわ';
	@override late final _TranslationsMisskeyImageEffectorFxsJaKs fxs_ = _TranslationsMisskeyImageEffectorFxsJaKs._(_root);
	@override late final _TranslationsMisskeyImageEffectorFxPropsJaKs fxProps_ = _TranslationsMisskeyImageEffectorFxPropsJaKs._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsJaKs extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get select => '下書きを選択';
	@override String get cannotCreateDraftAnymore => '下書きはこれ以上は作れへんな。';
	@override String get cannotCreateDraft => 'この内容で下書きは作れへんな。';
	@override String get delete => '下書きをほかす';
	@override String get deleteAreYouSure => '下書きをほかしてもええか？';
	@override String get noDrafts => '下書きはあらへん';
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
class _TranslationsMisskeyQrJaKs extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => '表示';
	@override String get readTabTitle => '読み取る';
	@override String shareTitle({required Object name, required Object acct}) => '${name} ${acct}';
	@override String get shareText => 'Fediverseでフォローしてな！';
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
class _TranslationsMisskeyIOSkebStatusJaKs extends TranslationsMisskeyIOSkebStatusEnUs {
	_TranslationsMisskeyIOSkebStatusJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusGenresJaKs genres_ = _TranslationsMisskeyIOSkebStatusGenresJaKs._(_root);
	@override String get seeking => '募集中';
	@override String get stopped => '停止中';
	@override String get client => 'クライアント';
	@override String yenX({required Object x}) => '${x}円';
	@override String nWorks({required Object n}) => '納品実績 ${n}件';
	@override String nRequests({required Object n}) => '取引実績 ${n}件';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsJaKs extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyCompressionQualityJaKs extends TranslationsMisskeyCompressionQualityEnUs {
	_TranslationsMisskeyCompressionQualityJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get high => '高品質';
	@override String get medium => '中品質';
	@override String get low => '低品質';
}

// Path: misskey.compression_.size_
class _TranslationsMisskeyCompressionSizeJaKs extends TranslationsMisskeyCompressionSizeEnUs {
	_TranslationsMisskeyCompressionSizeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get large => 'サイズ大';
	@override String get medium => 'サイズ中';
	@override String get small => 'サイズ小';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersJaKs extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get everyone => '誰でも';
	@override String get followers => '自分のフォロワーだけ';
	@override String get following => '自分がフォローしとるユーザーだけ';
	@override String get mutual => '相互フォローのユーザーだけ';
	@override String get none => '誰もかもあかん';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatJaKs extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => '送信者の名前を表示';
	@override String get sendOnEnter => 'Enterで送信';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeJaKs extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get none => '配信しとる';
	@override String get manuallySuspended => '手動停止中';
	@override String get goneSuspended => 'サーバー削除のため停止中';
	@override String get autoSuspendedForNotResponding => 'サーバー応答せえへんから停止中';
	@override String get softwareSuspended => '配信停止中のソフトウェアやから停止中';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreJaKs extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyBubbleGameHowToPlayJaKs extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get section1 => '位置を調整してハコにモノを落とすで。';
	@override String get section2 => '同じもんがくっついたら別のやつになって、スコアがもらえるで。';
	@override String get section3 => 'モノがハコからあふれたらゲームオーバーや。ハコからあふれんようにしながらモノを融合させてハイスコアを目指しいや！';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingJaKs extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'チュートリアルによう来たな';
	@override String get description => 'ここでは、Misskeyのカンタンな使い方とか機能を確かめれんで。';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteJaKs extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートってなんや？';
	@override String get description => 'Misskeyでの投稿は「ノート」って呼ばれてんで。ノートは順々にタイムラインに載ってて、リアルタイムで新しくなってくで。';
	@override String get reply => '返信もできるで。返信の返信もできるから、スレッドっぽく会話をそのまま続けれもするで。';
	@override String get renote => 'そのノートを自分のタイムラインに流して共有できるで。テキスト入れて引用してもええな。';
	@override String get reaction => 'ツッコミをつけることもできるで。細かいことは次のページや。';
	@override String get menu => 'ノートの詳細を出したり、リンクをコピーしたり、いろいろできんねん。';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionJaKs extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ツッコミってなんや？';
	@override String get description => 'ノートには「ツッコミ」できんねん。「いいね」とか何言っとるかわからんし、簡単に表現できるのはええことやん？';
	@override String get letsTryReacting => 'ノートの「＋」ボタンでツッコめるわ。試しに下のノートにツッコんでみ。';
	@override String get reactToContinue => 'ツッコんだら進めるようになるで。';
	@override String get reactNotification => 'あんたのノートが誰かにツッコまれたら、すぐ通知するで。';
	@override String get reactDone => '「ー」ボタンでツッコミやめれるで。';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineJaKs extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'タイムラインのしくみ';
	@override String get description1 => 'Misskeyには、いろいろタイムラインがあんで（ただ、サーバーによっては無効化されてるところもあるな）。';
	@override String get home => 'あんたがフォローしてるアカウントの投稿が見れんねん。';
	@override String get local => 'このサーバーの中におる全員の投稿が見れるで。';
	@override String get social => 'ホームタイムラインの投稿もローカルタイムラインのも一緒に見れるで。';
	@override String get global => '繋がってる他の全サーバーからの投稿が見れるで。';
	@override String get description2 => 'それぞれのタイムラインは、いつでも画面上で切り替えられんねん。覚えとき。';
	@override String description3({required Object link}) => 'その他にも、リストタイムラインとかチャンネルタイムラインとかがあんねん。詳しいのは${link}を見ときや。';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteJaKs extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの投稿設定';
	@override String get description1 => 'Misskeyにノートを投稿するとき、いろんなオプションが付けれるで。投稿画面はこんな感じや。';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityJaKs visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityJaKs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwJaKs cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwJaKs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaKs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'のっけたファイルをセンシティブにするんは？';
	@override String get description => 'サーバーのガイドラインに書いてあったり、そのままおっぴろげとくのはあんま良うないファイルには「センシティブ」っちゅう設定をつけるんや。';
	@override String get tryThisFile => '試しに、これにのっけてある画像をセンシティブにしてみいや！';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaKs exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaKs._(_root);
	@override String get method => 'のっけたファイルをセンシティブにするときは、そのファイルを押してメニュー開けて、「ちょっとこれはアカン」を押すんよ。';
	@override String get sensitiveSucceeded => 'ファイルをのっけるときは、サーバーの言うこと聞いてちゃんと設定するんやで。';
	@override String get doItToContinue => '画像をちゃんと設定したら先に進めるで。';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneJaKs extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'チュートリアル終わり！おつかれさん🎉';
	@override String description({required Object link}) => 'ここで紹介したのは全部の中のちょび～っとだけや。もっと使い方知りたいんやったら、${link}を見ときや。';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaKs extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get all => '全て公開';
	@override String get localOnly => 'ローカルコンテンツのみ公開し、リモートコンテンツは非公開';
	@override String get none => '全て非公開';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesJaKs extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1JaKs notes1_ = _TranslationsMisskeyAchievementsTypesNotes1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10JaKs notes10_ = _TranslationsMisskeyAchievementsTypesNotes10JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100JaKs notes100_ = _TranslationsMisskeyAchievementsTypesNotes100JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500JaKs notes500_ = _TranslationsMisskeyAchievementsTypesNotes500JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000JaKs notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000JaKs notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000JaKs notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000JaKs notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000JaKs notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000JaKs notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000JaKs notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000JaKs notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000JaKs notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000JaKs notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000JaKs notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000JaKs notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3JaKs login3_ = _TranslationsMisskeyAchievementsTypesLogin3JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7JaKs login7_ = _TranslationsMisskeyAchievementsTypesLogin7JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15JaKs login15_ = _TranslationsMisskeyAchievementsTypesLogin15JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30JaKs login30_ = _TranslationsMisskeyAchievementsTypesLogin30JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60JaKs login60_ = _TranslationsMisskeyAchievementsTypesLogin60JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100JaKs login100_ = _TranslationsMisskeyAchievementsTypesLogin100JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200JaKs login200_ = _TranslationsMisskeyAchievementsTypesLogin200JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300JaKs login300_ = _TranslationsMisskeyAchievementsTypesLogin300JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400JaKs login400_ = _TranslationsMisskeyAchievementsTypesLogin400JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500JaKs login500_ = _TranslationsMisskeyAchievementsTypesLogin500JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600JaKs login600_ = _TranslationsMisskeyAchievementsTypesLogin600JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700JaKs login700_ = _TranslationsMisskeyAchievementsTypesLogin700JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800JaKs login800_ = _TranslationsMisskeyAchievementsTypesLogin800JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900JaKs login900_ = _TranslationsMisskeyAchievementsTypesLogin900JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000JaKs login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1JaKs noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1JaKs noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaKs myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledJaKs profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatJaKs markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1JaKs following1_ = _TranslationsMisskeyAchievementsTypesFollowing1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10JaKs following10_ = _TranslationsMisskeyAchievementsTypesFollowing10JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50JaKs following50_ = _TranslationsMisskeyAchievementsTypesFollowing50JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100JaKs following100_ = _TranslationsMisskeyAchievementsTypesFollowing100JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300JaKs following300_ = _TranslationsMisskeyAchievementsTypesFollowing300JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1JaKs followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10JaKs followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50JaKs followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100JaKs followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300JaKs followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500JaKs followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000JaKs followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30JaKs collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minJaKs viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyJaKs iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureJaKs foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minJaKs client30min_ = _TranslationsMisskeyAchievementsTypesClient30minJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minJaKs client60min_ = _TranslationsMisskeyAchievementsTypesClient60minJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaKs noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightJaKs postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secJaKs postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteJaKs selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmJaKs htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartJaKs viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaKs outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsJaKs open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaKs driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadJaKs reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereJaKs clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyJaKs justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaKs setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaKs passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaKs passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaKs passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaKs loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaKs loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedJaKs cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverJaKs brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaKs smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedJaKs tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaKs bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaKs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaKs bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaKs._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityJaKs extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get low => '低い';
	@override String get middle => '中くらい';
	@override String get high => '高い';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsJaKs extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'グローバルタイムライン見る';
	@override String get ltlAvailable => 'ローカルタイムライン見る';
	@override String get canPublicNote => 'パブリック投稿できるか';
	@override String get mentionMax => 'ノート内の最大メンション数';
	@override String get canInvite => 'サーバー招待コード作る';
	@override String get inviteLimit => '招待コード作れる数';
	@override String get inviteLimitCycle => '招待コードの作れる間隔';
	@override String get inviteExpirationTime => '招待コードの期限';
	@override String get canManageCustomEmojis => 'カスタム絵文字の管理';
	@override String get canManageAvatarDecorations => 'アバターを飾るモンの管理';
	@override String get driveCapacity => 'ドライブ容量';
	@override String get maxFileSize => 'アップロード可能な最大ファイルサイズ';
	@override String get maxFileSize_caption => 'リバースプロキシやCDNなど、前段で別の設定値が存在する場合があります。';
	@override String get alwaysMarkNsfw => '勝手にファイルにNSFWをくっつける';
	@override String get canUpdateBioMedia => 'アイコンとバナーの更新を許可';
	@override String get pinMax => 'ノートピン留めできる数';
	@override String get antennaMax => 'アンテナ作れる数';
	@override String get wordMuteMax => 'ワードミュートの最大文字数';
	@override String get webhookMax => 'Webhook作れる数';
	@override String get clipMax => 'クリップ作れる数';
	@override String get noteEachClipsMax => 'クリップの中にノート作れる数';
	@override String get userListMax => 'ユーザーリスト作れる数';
	@override String get userEachUserListsMax => 'ユーザーリスト内のユーザーの最大数';
	@override String get rateLimitFactor => 'レートリミット';
	@override String get descriptionOfRateLimitFactor => 'ちっちゃいほど制限が緩なって、大きいほど制限されるで。';
	@override String get canHideAds => '広告映さへん';
	@override String get canSearchNotes => 'ノート探せるかどうか';
	@override String get canSearchUsers => 'ユーザー検索の利用';
	@override String get canUseTranslator => '翻訳使えるかどうか';
	@override String get avatarDecorationLimit => 'アイコンデコのいっちばんつけれる数';
	@override String get canImportAntennas => 'アンテナのインポートを許す';
	@override String get canImportBlocking => 'ブロックのインポートを許す';
	@override String get canImportFollowing => 'フォローのインポートを許す';
	@override String get canImportMuting => 'ミュートのインポートを許す';
	@override String get canImportUserLists => 'リストのインポートを許す';
	@override String get chatAvailability => 'ダイレクトメッセージを許可';
	@override String get uploadableFileTypes => 'アップロード可能なファイル種別';
	@override String get uploadableFileTypes_caption => 'MIMEタイプを指定してや。改行で区切って複数指定もできるし、アスタリスク(*)でワイルドカード指定もできるで。(例: image/*)';
	@override String uploadableFileTypes_caption2({required Object x}) => 'ファイルによっては種別がわからんこともあるで。そないなファイルを許可するんやったら ${x} を指定に追加してな。';
	@override String get noteDraftLimit => 'サーバーサイドのノートの下書きの作成可能数';
	@override String get scheduledNoteLimit => '予約投稿の同時作成可能数';
	@override String get watermarkAvailable => 'ウォーターマーク機能の使用可否';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionJaKs extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'マニュアルロールにアサイン済み';
	@override String get isLocal => 'ローカルユーザー';
	@override String get isRemote => 'リモートユーザー';
	@override String get isCat => '猫ユーザー';
	@override String get isBot => 'botユーザー';
	@override String get isSuspended => 'サスペンド済みユーザー';
	@override String get isLocked => '鍵アカウントユーザー';
	@override String get isExplorable => '「アカウントを見つけやすくする」が有効なユーザー';
	@override String get createdLessThan => 'アカウント作ってから～以内';
	@override String get createdMoreThan => 'アカウント作ってから～経過';
	@override String get followersLessThanOrEq => 'フォロワー数が～以下';
	@override String get followersMoreThanOrEq => 'フォロワー数が～以上';
	@override String get followingLessThanOrEq => 'フォロー数が～以下';
	@override String get followingMoreThanOrEq => 'フォロー数が～以上';
	@override String get notesLessThanOrEq => '投稿数が～以下しかない';
	@override String get notesMoreThanOrEq => '投稿を～以上しとる';
	@override String get and => '～かつ～';
	@override String get or => '～または～';
	@override String get not => '～じゃない';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowJaKs extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローされたで';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestJaKs extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローリクエストを受け取ったで';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysJaKs extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
	@override String get navActive => 'サイドバー文字(アクティブ)';
	@override String get navIndicator => 'サイドバーのインジケーター';
	@override String get link => 'リンク';
	@override String get hashtag => 'ハッシュタグ';
	@override String get mention => 'あんた宛て';
	@override String get mentionMe => 'うち宛てのメンション';
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
	@override String get badge => 'バッジ';
	@override String get messageBg => 'チャットの背景';
	@override String get fgHighlighted => '強調されとる文字';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListJaKs extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'リストを選ぶ';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonJaKs extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get colored => '色付き';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockJaKs extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get size => '大きさ';
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
class _TranslationsMisskeyWidgetOptionsJobQueueJaKs extends TranslationsMisskeyWidgetOptionsJobQueueEnUs {
	_TranslationsMisskeyWidgetOptionsJobQueueJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get sound => '音を鳴らす';
}

// Path: misskey.widgetOptions_.rss_
class _TranslationsMisskeyWidgetOptionsRssJaKs extends TranslationsMisskeyWidgetOptionsRssEnUs {
	_TranslationsMisskeyWidgetOptionsRssJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get url => 'RSSフィードのURL';
	@override String get refreshIntervalSec => '更新間隔(秒)';
	@override String get maxEntries => '最大表示件数';
}

// Path: misskey.widgetOptions_.rssTicker_
class _TranslationsMisskeyWidgetOptionsRssTickerJaKs extends TranslationsMisskeyWidgetOptionsRssTickerEnUs {
	_TranslationsMisskeyWidgetOptionsRssTickerJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get shuffle => '表示順をシャッフル';
	@override String get duration => 'ティッカーのスクロール速度(秒)';
	@override String get reverse => '逆方向にスクロール';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaKs extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get period => '期間';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseJaKs extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get content_title => '本文';
	@override String get content_description => '投稿する内容を入力します。';
	@override String get toolbar_title => 'ツールバー';
	@override String get toolbar_description => 'ファイルとかアンケートを付けたり、注釈とかハッシュタグを書いたり、絵文字とかメンションとかを付け足したりできるで。';
	@override String get account_title => 'アカウントメニュー';
	@override String get account_description => '投稿するアカウントを変えたり、アカウントに保存した下書きとか予約投稿とかを見れるで。';
	@override String get visibility_title => '公開範囲';
	@override String get visibility_description => 'ノートを誰に見せたいかはここで切り替えてな。';
	@override String get menu_title => 'メニュー';
	@override String get menu_description => '下書きに保存したり、投稿の予約したり、リアクションの受け入れ設定とか…なんか色々できるで。';
	@override String get submit_title => '投稿ボタン';
	@override String get submit_description => 'ノートを投稿するときはここ押してな。Ctrl + Enter / Cmd + Enter でも投稿できるで。';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersJaKs extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get a => 'いまどないしとるん？';
	@override String get b => '何かあったん？';
	@override String get c => '何か考えとるん？';
	@override String get d => '何か言いたいことあるん？';
	@override String get e => 'ここに書いてーなー';
	@override String get f => 'あんたが書くの待っとるで';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksJaKs extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get text => 'テキスト';
	@override String get textarea => 'テキストエリア';
	@override String get section => 'セクション';
	@override String get image => '画像';
	@override String get button => 'ボタン';
	@override String get dynamic => '動的ブロック';
	@override String dynamicDescription({required Object play}) => 'このブロックは廃止されとるで。今後は${play}を利用してや。';
	@override String get note => 'ノート埋め込み';
	@override late final _TranslationsMisskeyPagesBlocksNoteJaKs note_ = _TranslationsMisskeyPagesBlocksNoteJaKs._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesJaKs extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get all => 'すべて';
	@override String get note => 'あんたらの新規投稿';
	@override String get follow => 'フォロー';
	@override String get mention => 'あんた宛て';
	@override String get reply => 'リプライ';
	@override String get renote => 'リノート';
	@override String get quote => '引用';
	@override String get reaction => 'ツッコミ';
	@override String get pollEnded => 'アンケートが終了したで';
	@override String get scheduledNotePosted => '予約投稿が成功した';
	@override String get scheduledNotePostFailed => '予約投稿が失敗した';
	@override String get receiveFollowRequest => 'フォロー許可してほしいみたいやで';
	@override String get followRequestAccepted => 'フォローが受理されたで';
	@override String get roleAssigned => 'ロールが付与された';
	@override String get chatRoomInvitationReceived => 'ダイレクトメッセージのグループへ招待された';
	@override String get achievementEarned => '実績の獲得';
	@override String get exportCompleted => 'エクスポート終わった';
	@override String get login => 'ログイン';
	@override String get createToken => 'アクセストークンの作成';
	@override String get test => '通知テスト';
	@override String get app => '連携アプリからの通知や';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsJaKs extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'フォローバック';
	@override String get reply => '返事';
	@override String get renote => 'リノート';
}

// Path: misskey.deck_.howToUse_
class _TranslationsMisskeyDeckHowToUseJaKs extends TranslationsMisskeyDeckHowToUseEnUs {
	_TranslationsMisskeyDeckHowToUseJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get addColumn_title => 'カラム追加';
	@override String get addColumn_description => 'カラムの種類を選んで追加できます。';
	@override String get settings_title => 'UI設定';
	@override String get settings_description => 'デッキUIの詳細設定を行えます。';
	@override String get switchProfile_title => 'プロファイル切り替え';
	@override String get switchProfile_description => 'UIのレイアウトをプロファイルとして保存し、いつでも切り替えられるようにできます。';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsJaKs extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get main => 'メイン';
	@override String get widgets => 'ウィジェット';
	@override String get notifications => '通知';
	@override String get tl => 'タイムライン';
	@override String get antenna => 'アンテナ';
	@override String get list => 'リスト';
	@override String get channel => 'チャンネル';
	@override String get mentions => 'あんた宛て';
	@override String get direct => 'ダイレクト';
	@override String get roleTimeline => 'ロールタイムライン';
	@override String get chat => 'チャットしよか';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsJaKs extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get follow => 'フォローしたとき～！';
	@override String get followed => 'フォローもらったとき～！';
	@override String get note => 'ノートを投稿したとき～！';
	@override String get reply => '返信があるとき～！';
	@override String get renote => 'リノートされるとき～！';
	@override String get reaction => 'ツッコまれたとき～！';
	@override String get mention => 'メンションがあるとき～！';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsJaKs extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'ユーザーから通報があったとき';
	@override String get abuseReportResolved => 'ユーザーからの通報を処理したとき';
	@override String get userCreated => 'ユーザーが作成されたとき';
	@override String get inactiveModeratorsWarning => 'モデレーターがしばらくおらんかったとき';
	@override String get inactiveModeratorsInvitationOnlyChanged => 'モデレーターがしばらくおらんかったから、システムが招待制に変えたとき';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientJaKs extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => '通報の通知先を追加';
	@override String get modifyRecipient => '通報の通知先を編集';
	@override String get recipientType => '通知先の種類';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaKs recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaKs._(_root);
	@override String get keywords => 'キーワード';
	@override String get notifiedUser => '通知先ユーザー';
	@override String get notifiedWebhook => '使用するWebhook';
	@override String get deleteConfirm => '通知先を削除してもええか？';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginJaKs extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'このプラグイン、インストールする？';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeJaKs extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'このテーマインストールする？';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaJaKs extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get base => '';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoJaKs extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '';
	@override String get endpoint => '';
	@override String get hashVerify => '';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaKs invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaKs resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaKs failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaKs hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaKs pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaKs pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaKs themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaKs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaKs themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaKs._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaJaKs extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'メディアの読み込み';
	@override String get description => '絵・動画が自動で読まれるのをふせぐわ。隠れてる絵・動画はタップするとひょっこりはんしてくれんで。';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarJaKs extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'アイコンの絵';
	@override String get description => 'アイコン画像のアニメが止まるで。普通の画像よりもデータ量がでかいから、もっと通信量を節約できるねん。';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailJaKs extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューのサムネイルを非表示';
	@override String get description => 'URLプレビューのサムネイル画像が読み込まれへんくなるで。';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewJaKs extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URLプレビューを無効化';
	@override String get description => 'URLプレビュー機能を切るで。サムネイル画像だけと違って、リンク先の情報の読み込み自体を削減できるで。';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeJaKs extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードハイライトは表示せんでええ';
	@override String get description => 'MFMとかでコードハイライト記法が使われてるとき、タップするまで読み込まれへんくなるで。コードハイライトではハイライトする言語ごとにその決めてるファイルを読む必要はあんねんな。けどな、それは自動で読み込まれなくなるから、通信量を少なくできることができるねん。';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorJaKs extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => 'この値は必須項目やで';
	@override String get columnTypeNotSupport => '正規表現によるバリデーションはtype:textのカラムだけサポートしてるで';
	@override String patternNotMatch({required Object pattern}) => 'この値は${pattern}のパターンに一致しいひんで';
	@override String get notUnique => 'この値は一意でなあかんで';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonJaKs extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => '選択行をコピーするで';
	@override String get copySelectionRanges => '選択範囲をコピーするで';
	@override String get deleteSelectionRows => '選択行を削除するで';
	@override String get deleteSelectionRanges => '選択範囲の値をクリアするで';
	@override String get searchSettings => '検索設定';
	@override String get searchSettingCaption => '検索条件を詳しく設定するで。';
	@override String get searchLimit => '表示件数';
	@override String get sortOrder => '並び順';
	@override String get registrationLogs => '登録ログ';
	@override String get registrationLogsCaption => '絵文字更新・削除時のログが表示されるで。更新・削除操作をしたり、ページを遷移・リロードしたら消えるから気ぃつけてな。';
	@override String get alertEmojisRegisterFailedDescription => '絵文字の更新・削除に失敗したで。詳細は登録ログを確認してな。';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsJaKs extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => '成功ログを表示するで';
	@override String get failureLogNothing => '失敗ログはあらへん。';
	@override String get logNothing => '失敗ログはあらへん。';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteJaKs extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => '選択行の詳細やで';
	@override String get importSelectionRows => '選択行をインポートするで';
	@override String get importSelectionRangesRows => '選択範囲の行をインポートするで';
	@override String get importEmojisButton => 'チェックされた絵文字をインポートするで';
	@override String get confirmImportEmojisTitle => '絵文字のインポートするで';
	@override String confirmImportEmojisDescription({required Object count}) => 'リモートから受信した${count}個の絵文字をインポートするで。絵文字のライセンスには十分気ぃつけてな。実行してもええか？';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalJaKs extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => '登録済み絵文字一覧';
	@override String get tabTitleRegister => '絵文字の登録';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListJaKs list_ = _TranslationsMisskeyCustomEmojisManagerLocalListJaKs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterJaKs register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterJaKs._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaKs extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'このサーバーと通信できん';
	@override String get description => 'このサーバーとの通信は無効化されてるか、このサーバーをブロックしてるんか、ブロックされてるかもしれん。\nサーバー管理者に問い合わせてや。';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidJaKs extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URIがおかしいで';
	@override String get description => '入力されたURIに問題があるで。URIに使えん文字を入れてないから確かめて。';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedJaKs extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'リクエスト失敗してもうたで';
	@override String get description => 'このサーバーとの通信に失敗してもうたわ。相手サーバーがダウンしてるかもしれん。あと、おかしいURIとか、ありえんURIを入れてないか確かめて。';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaKs extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'レスポンスがおかしいで';
	@override String get description => 'このサーバーと通信することはできたけど、もらったデータがおかしかったで。';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaKs extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '見つからへんね';
	@override String get description => '求められたリソースが見つからんかったで。URIをもっかい確かめてや。';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorJaKs extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedJaKs requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedJaKs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedJaKs verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedJaKs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownJaKs unknown_ = _TranslationsMisskeyCaptchaErrorUnknownJaKs._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseJaKs extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get single => 'お一人様サーバー';
	@override String get single_description => '自分専用のサーバーとして、一人で使う';
	@override String get single_youCanCreateMultipleAccounts => 'お一人様サーバーとして運用するとしても、アカウントは必要に応じて複数作れるで。';
	@override String get group => 'グループサーバー';
	@override String get group_description => '信頼できる他の利用者を招待して、複数人で使う';
	@override String get open => 'オープンサーバー';
	@override String get open_description => '不特定多数の利用者を受け入れる運営を行う';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleJaKs extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get small => '100人以下 (小規模)';
	@override String get medium => '100人以上1000人以下 (中規模)';
	@override String get large => '1000人以上 (大規模)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestJaKs extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskeyは有志で開発されとる無料のソフトウェアやで。';
	@override String get text2 => '今後も開発を続けられるように、よかったらぜひカンパをお願いするわ。';
	@override String get text3 => '支援者向け特典もあるで！';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsJaKs extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyImageEffectorFxPropsJaKs extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get angle => '角度';
	@override String get scale => '大きさ';
	@override String get size => '大きさ';
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
	@override String get zoomLinesMaskSize => '中心径';
	@override String get circle => '円形';
}

// Path: misskeyIO.skebStatus_.genres_
class _TranslationsMisskeyIOSkebStatusGenresJaKs extends TranslationsMisskeyIOSkebStatusGenresEnUs {
	_TranslationsMisskeyIOSkebStatusGenresJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityJaKs extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get description => 'ノートを見れる相手を制限できるわ。';
	@override String get public => 'みんなに見せるで。';
	@override String get home => 'ホームタイムラインにだけ見せるで。フォロワーとか、プロフィールを見に来た人、リノートからも見れるから、実質は全員見れるけどな。あんまし広がりにくいってことや。';
	@override String get followers => 'フォロワーにだけ見せるで。自分以外はリノートできへんし、フォロワー以外は絶対に見れへん。';
	@override String get direct => '指定した人にだけ公開されて、ついでに通知も送るで。ダイレクトメールの代わりとして使ってな。';
	@override String get doNotSendConfidencialOnDirect1 => '機密情報を送るときは十分注意せえよ。';
	@override String get doNotSendConfidencialOnDirect2 => '送信先のサーバーの管理者は投稿内容が見れるから、信用できへんサーバーのひとにダイレクト投稿するときには、めっちゃ用心しとくんやで。';
	@override String get localOnly => '他のサーバーに投稿せえへんくなるで。他の公開範囲とか一切無視して、他のサーバーの人らはこの設定がされたノートは絶対に見れへん。';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwJaKs extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '内容隠し（CW）';
	@override String get description => '本文のかわりに「注釈」に書いた内容だけ見せるで。「続き見して！」を押すと本文も見れんねん。';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaKs exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaKs._(_root);
	@override String get useCases => 'サーバーのガイドラインに決められとるノートに使うたり、ネタバレとかきわどい内容を自分で隠したりするとき用やな。';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaKs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get note => '納豆のフタ開けるときにやらかしてもうた…';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1JaKs extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'まいど！';
	@override String get description => '初めてノート投稿したった';
	@override String get flavor => 'Misskeyを楽しんでな～';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10JaKs extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの天保山';
	@override String get description => 'ノートを10回投稿した';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100JaKs extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの真田山';
	@override String get description => 'ノートを100回投稿した';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500JaKs extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの生駒山';
	@override String get description => 'ノートを500回投稿した';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000JaKs extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの六甲山';
	@override String get description => 'ノートを1,000回投稿した';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000JaKs extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '箕面の滝からノート';
	@override String get description => 'ノートを5,000回投稿した';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000JaKs extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'えげつないノート';
	@override String get description => 'ノートを10,000回投稿した';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000JaKs extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'もっとノートよこせ！';
	@override String get description => 'ノートを20,000回投稿した';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000JaKs extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートノートノート';
	@override String get description => 'ノートを30,000回投稿した';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000JaKs extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノート工場';
	@override String get description => 'ノートを40,000回投稿した';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000JaKs extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートの惑星';
	@override String get description => 'ノートを50,000回投稿した';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000JaKs extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートクエーサー';
	@override String get description => 'ノートを60,000回投稿した';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000JaKs extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ブラックノートホール';
	@override String get description => 'ノートを70,000回投稿した';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000JaKs extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートギャラクシー';
	@override String get description => 'ノートを80,000回投稿した';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000JaKs extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートバース';
	@override String get description => 'ノートを90,000回投稿した';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000JaKs extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'ノートを100,000回投稿した';
	@override String get flavor => 'そんなに書くことあるんか？';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3JaKs extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅠ';
	@override String get description => '通算3日ログインした';
	@override String get flavor => '今日からワシはミスキストやで';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7JaKs extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅡ';
	@override String get description => '通算7日ログインした';
	@override String get flavor => '慣れてきたんとちゃう？';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15JaKs extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ビギナーⅢ';
	@override String get description => '通算15日ログインした';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30JaKs extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅠ';
	@override String get description => '通算30日ログインした';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60JaKs extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅡ';
	@override String get description => '通算60日ログインした';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100JaKs extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ミスキストⅢ';
	@override String get description => '通算100日ログインした';
	@override String get flavor => 'そのユーザー、ミスキストにつき';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200JaKs extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '常連さんⅠ';
	@override String get description => '通算200日ログインした';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300JaKs extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '常連さんⅡ';
	@override String get description => '通算300日ログインした';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400JaKs extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '常連さんⅢ';
	@override String get description => '通算400日ログインした';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500JaKs extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランさんⅠ';
	@override String get description => '通算500日ログインした';
	@override String get flavor => 'あんたら、うちはノートが好きや';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600JaKs extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランさんⅡ';
	@override String get description => '通算600日ログインした';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700JaKs extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ベテランさんⅢ';
	@override String get description => '通算700日ログインした';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800JaKs extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマイスターⅠ';
	@override String get description => '通算800日ログインした';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900JaKs extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマイスターⅡ';
	@override String get description => '通算900日ログインした';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000JaKs extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ノートマイスターⅢ';
	@override String get description => '通算1,000日ログインした';
	@override String get flavor => 'Misskeyようさん使てもろておおきにな！';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1JaKs extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカンどれもクリップしたいわ';
	@override String get description => '初めてノートをクリップした';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1JaKs extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '星ぃみるひと';
	@override String get description => '初めてノートをお気に入りに登録した';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaKs extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '星ぃ欲しい';
	@override String get description => 'ワレのノートが他のひとにお気に入り登録されたで';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledJaKs extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '準備万端や';
	@override String get description => 'プロフィールを設定した';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatJaKs extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '吾輩は猫やねん';
	@override String get description => 'アカウントをCatにしたった';
	@override String get flavor => '名前はまだないねん。';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1JaKs extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロー';
	@override String get description => '初めてフォローした';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10JaKs extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'すたこらさっさ';
	@override String get description => 'フォローが10人超えた';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50JaKs extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '友達ぎょうさん';
	@override String get description => 'フォローが50人超えた';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100JaKs extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '友達100人';
	@override String get description => 'フォローが100人超えた';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300JaKs extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'いや友達多すぎやろ';
	@override String get description => 'フォローが300人超えた';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1JaKs extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'はじめてのフォロワー';
	@override String get description => '初めてフォローされた';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10JaKs extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'フォローみぃ！';
	@override String get description => 'フォロワーが10人超えた';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50JaKs extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ぞろぞろ';
	@override String get description => 'フォロワーが50人超えた';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100JaKs extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '人気もん';
	@override String get description => 'フォロワーが100人超えた';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300JaKs extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ほらそこ一列に並んで！';
	@override String get description => 'フォロワーが300人超えた';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500JaKs extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '基地局';
	@override String get description => 'フォロワーが500人超えた';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000JaKs extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'インフルエンサー';
	@override String get description => 'フォロワーが1,000人超えた';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30JaKs extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '実績コレクター';
	@override String get description => '実績を30個以上獲得した';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minJaKs extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '実績好き';
	@override String get description => '実績一覧を3分以上眺め続けた';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyJaKs extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey好きやねん';
	@override String get description => '"I ❤ #Misskey"を投稿した';
	@override String get flavor => 'Misskeyを使ってくれておおきにな～　by 開発チーム';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureJaKs extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'なんでも鑑定団';
	@override String get description => '隠されたお宝を発見した';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minJaKs extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ねんね';
	@override String get description => 'クライアントを起動してから30分以上経過した';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minJaKs extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyの見過ぎや！';
	@override String get description => 'クライアント付けてから１時間経ってもうたで。';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaKs extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '＊おおっと＊';
	@override String get description => '投稿してから1分以内にその投稿をほかした';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightJaKs extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '夜行性';
	@override String get description => '真夜中にノートを投稿した';
	@override String get flavor => 'そろそろ寝よか';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secJaKs extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '時報';
	@override String get description => '0分0秒にノートを投稿した';
	@override String get flavor => 'ポッ ポッ ポッ ピーン';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteJaKs extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '自己言及';
	@override String get description => '自分のノートを引用した';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmJaKs extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '流れるTL';
	@override String get description => 'ホームタイムラインの流速が20npmを超す';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartJaKs extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'アナリスト';
	@override String get description => 'サーバーのチャートを表示した';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaKs extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'スクラッチパッドで hello world を出力した';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsJaKs extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'マド開けすぎ';
	@override String get description => 'ウィンドウを3つ以上開いた状態にした';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaKs extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '環状線';
	@override String get description => 'ドライブのフォルダを再帰的な入れ子にしようとした';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadJaKs extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ちゃんと読んだんか？';
	@override String get description => '100文字以上のノートに投稿3秒以内にツッコんだ';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereJaKs extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ここをクリック';
	@override String get description => 'ここをクリックした';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyJaKs extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '単なるラッキー';
	@override String get description => '10秒ごとに0.005％の確率で獲得';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaKs extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '神様コンプレックス';
	@override String get description => '名前を syuilo にした';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaKs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '一周年';
	@override String get description => 'アカウント作成から1年経過した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaKs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '二周年';
	@override String get description => 'アカウント作成から2年経過した';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaKs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3JaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '三周年';
	@override String get description => 'アカウント作成から3年経過した';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaKs extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ハッピーバースデー！';
	@override String get description => '誕生日にログインした';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaKs extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'あけましておめでとうございます！';
	@override String get description => '元旦にログインした';
	@override String get flavor => '今年も弊サーバーをよろしゅう頼みますわ';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedJaKs extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'クッキー叩くやつ';
	@override String get description => 'クッキー叩いてもうた';
	@override String get flavor => '兄ちゃんソフト間違っとんで';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverJaKs extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diverへのリンクを投稿したった';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaKs extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '心配性';
	@override String get description => '通知のテストしすぎやって';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedJaKs extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskeyひよっこ講座 修了証';
	@override String get description => 'チュートリアル全部やった';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaKs extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'バブルゲームで最も大きいモノを出した';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaKs extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ダブル🤯';
	@override String get description => 'バブルゲームで最も大きいモノを2つ同時に出した';
	@override String get flavor => 'これくらいの　おべんとばこに　🤯　🤯　ちょっとつめて';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteJaKs extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get id => 'ノートID';
	@override String get idDescription => 'ノートURLをペーストして設定することもできるで。';
	@override String get detailed => '詳細な表示';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaKs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'メール';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaKs captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaKs._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '';
	@override String get description => '外部サイトからデータを持ってくるのに欲しい情報が足らへんみたいやわ。URLは合っとる？';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '';
	@override String get description => '';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => '';
	@override String get fetchErrorDescription => '他のサイトに繋がらんかったわ。もっかいやってもダメやったら、サイトの管理してる人に言っといて。';
	@override String get parseErrorDescription => '他のサイトから持ってきたデータ、よう分からんかったわ。サイトの管理してる人に言っといて。';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ちゃんとしたデータが持ってこれんかったわ';
	@override String get description => 'もらったデータがなんかおかしいっぽいわ。ちょっと危ないからインストールはできへん。サイト管理してる人に言っといてな。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScriptエラー起こしてもうたねん';
	@override String get description => 'データは取得できたものの、AiScript解析時にエラーがあったから読み込めへんかってん。すまんが、プラグインを作った人に問い合わせてくれへん？ごめんな。エラーの詳細はJavaScriptコンソール読んでな。';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'プラグインのインストール失敗してもた';
	@override String get description => 'プラグインのインストール中に問題発生してもた、もう1度試してな。エラーの詳細はJavaScriptのコンソール見てや。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ解析エラー';
	@override String get description => 'データは取れたんやが、テーマファイル読み込んどる時にエラーがあったから読み込めへんかったわ。すまんけど、テーマ作った人に言うてくれへん？ごめんな。エラーの詳細はJavaScriptコンソール読んでな。';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaKs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマインストールに失敗してもた';
	@override String get description => 'なんかテーマインストールできんかったわ。もう一回試してな。細かいのはJavaScriptのコンソール見てや。';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListJaKs extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => '登録された絵文字はないで。';
	@override String get markAsDeleteTargetRows => '選択行を削除対象にするで';
	@override String get markAsDeleteTargetRanges => '選択範囲の行を削除対象にするで';
	@override String get alertUpdateEmojisNothingDescription => '変更された絵文字はないで。';
	@override String get alertDeleteEmojisNothingDescription => '削除対象の絵文字はないで。';
	@override String get confirmMovePage => 'ページを移動してもええんか？';
	@override String get confirmChangeView => '表示を変更してもええんか？';
	@override String confirmUpdateEmojisDescription({required Object count}) => '${count}個の絵文字を更新するで。実行してもええか？';
	@override String confirmDeleteEmojisDescription({required Object count}) => 'チェックがつけられた${count}個の絵文字を削除するで。ほんまにええか？';
	@override String get confirmResetDescription => '今までやった変更が全部リセットされるで。';
	@override String get confirmMovePageDesciption => 'このページの絵文字に変更が加えられてるで。\n保存せずページを移動してまうと、このページで加えた変更が全てパーになるで。';
	@override String get dialogSelectRoleTitle => '絵文字に設定されたロールで検索';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterJaKs extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => 'アップロード設定';
	@override String get uploadSettingDescription => 'この画面で絵文字アップロードするときの動きを設定できるで。';
	@override String get directoryToCategoryLabel => 'ディレクトリ名を"category"に入力する';
	@override String get directoryToCategoryCaption => 'ディレクトリをドラッグ・ドロップした時に、ディレクトリ名を"category"に入力します。';
	@override String confirmRegisterEmojisDescription({required Object count}) => 'リストに表示されてる絵文字を新たなカスタム絵文字として登録するで。ほんまにええか？ (サーバーがしんどくなるから、一回で登録できる絵文字は${count}件までやで)';
	@override String get confirmClearEmojisDescription => '編集内容をほかして、リストに表示されている絵文字をクリアするで。ほんまにええか？';
	@override String confirmUploadEmojisDescription({required Object count}) => 'ドラッグ&ドロップされた${count}個のファイルをドライブにアップロードするで。ほんまにええか？';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedJaKs extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHAのリクエストに失敗してもうた';
	@override String get text => 'しばらく後で実行するか、設定をもっかい確認してや。';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedJaKs extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHAのリクエストに失敗してもうた';
	@override String get text => '設定がほんまに合ってるかもっかい確認してや。';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownJaKs extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHAエラー';
	@override String get text => '思いもせんかったエラーが起きたわ。';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaKs extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get cw => '飯テロ注意';
	@override String get note => 'チョコドーナツめっちゃ美味かったわ🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaKs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsJaKs._(TranslationsJaKs root) : this._root = root, super.internal(root);

	final TranslationsJaKs _root; // ignore: unused_field

	// Translations
	@override String get mail => 'モデレーター権限を持つユーザーのメアドに通知を送るで(通報を受けた時のみ)';
	@override String get webhook => '指定したSystemWebhookに通知を送るで(通報を受けた時と通報を解決した時にそれぞれ発信)';
}
