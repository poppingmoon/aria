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
class TranslationsKoGs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKoGs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.koGs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ko-GS>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsKoGs _root = this; // ignore: unused_field

	@override 
	TranslationsKoGs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKoGs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaKoGs aria = _TranslationsAriaKoGs._(_root);
	@override late final _TranslationsMisskeyKoGs misskey = _TranslationsMisskeyKoGs._(_root);
	@override late final _TranslationsMisskeyIOKoGs misskeyIO = _TranslationsMisskeyIOKoGs._(_root);
}

// Path: aria
class _TranslationsAriaKoGs extends TranslationsAriaEnUs {
	_TranslationsAriaKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Aria라 카믄';
	@override String get accessToken => '액세스 토큰';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: '아리아라 카믄, '),
		miria,
		const TextSpan(text: '를 갖다 포크한 기라.\n또 요 번역은 기본적으로는 '),
		misskey,
		const TextSpan(text: '의 번역 파일을 갖다 쓴 거래이.\n기여자 선새임들, 참말로 고맙심더!'),
	]);
	@override String get addTab => '탭 추가';
	@override String get alwaysExpandCw => 'CW 열고 댕기라';
	@override String get alwaysExpandLongNote => '긴 글 열고 댕기라';
	@override String get alwaysExpandMediaInSubNote => '서브노트의 미디어 열고 댕기라';
	@override String get alwaysShowTabHeader => '탭 정보 하루종일 뵈이라';
	@override String get authenticate => '인증';
	@override String get authenticated => '인증함';
	@override String get avatarSize => '아바타 크기';
	@override String get background => '배경';
	@override String get confirmBeforeFollow => '팔로우는 확인하고 카라';
	@override String get confirmBeforePost => '게시는 확인하고 카라';
	@override String get confirmBeforeReact => '리액션은 확인하고 카라';
	@override String get copied => '복사했대이';
	@override String get copyName => '이름 복사';
	@override String get crop => '짜르기';
	@override String get custom => '커스텀';
	@override String get defaultReaction => '기본 리액션';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '요 계정에 탭이 ${n}개 있는디, 읎애나?',
		other: '요 계정에 탭이 ${n}개가 있는디, 다 읎애나?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '파일 ${n}개 내삐릴기가?',
		other: '파일 ${n}개를 다 내삐릴기가?',
	);
	@override String get deleteTabConfirm => '요 탭 읎애나?';
	@override String get disableDataSaverWhenOnWifi => '와이파이에서 머한다꼬 데이터 절약같은 걸 해샇노';
	@override String get disableSubscribingNotes => '리액션 실시간으로 달지 말라카이';
	@override String get discardChangesConfirm => '그거 적용 안 해도 되나?';
	@override String get displayOfThumbnail => '썸네일 표시';
	@override String get doubleTapToShow => '볼라믄 두 번 누르래이';
	@override String get downloaded => '받았대이';
	@override String get draw => '그리기';
	@override String get editImage => '사진 수정';
	@override String get emojiPickerAutofocus => '이모지 선택할 때 키보드도 열어달래이';
	@override String get emojiPickerScale => '이모지 선택기 크기';
	@override String get emojiPickerUseDialog => '이모지 선택기는 창으로 띄우래이';
	@override String get enableEmojiFadeIn => '커스텀 이모지에 페이드인 효과 키래이';
	@override String get enableFederation => '연합 키라';
	@override String get endpoint => '엔드포인트';
	@override String get expandNote => '노트 열으라';
	@override String get extraMentionsWarning => '원래 노트엔 읎던 멘션이 달맀는디. 그거 맞제?';
	@override String get fileNotFound => '고런 파일 읎다';
	@override String get findServer => 'Misskey 써버를 찾아보자야';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '얼 팔로잉할끼가?'),
	]);
	@override String get font => '폰트';
	@override String get fromDevice => '장치에서';
	@override String get guest => '손님';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria는 이래저래 고마운 분들이 여럿 번역해 주고 있다야... '),
		link,
		const TextSpan(text: '에서 쪼금만 도와 주지 않겄나?'),
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'Aria의 아이콘은 '),
		sevenc_nanashi,
		const TextSpan(text: '가 그맀고, '),
		cc_by,
		const TextSpan(text: '로 쓸 수 있대이.'),
	]);
	@override String get importCompleted => '가져왔대이';
	@override String get importConfirm => '설정을 가지오겄나? 지금 설정은 덮어쓴대이.';
	@override String get invalidListFormat => '리스트 형식이 좀 이상해보인다야';
	@override String jumpTo({required Object x}) => '${x}로 이동';
	@override String get keepOpen => '하루죙일 열기';
	@override String get keepTimelinePosition => '타임라인 위치 고정';
	@override String get lineHeight => '줄 간격';
	@override String get loginWithAccessToken => '액세스 토큰으로 로그인';
	@override String get margin => '여백';
	@override String get media => '미디어';
	@override String get mentionToRemoteWarning => '요 노트는 옆 써버를 멘션할라고 칸다';
	@override String get moved => '이사함';
	@override String get muted => '뮤트함';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '파일 ${n}개',
		other: '파일 ${n}개',
	);
	@override String get newFollowRequestReceived => '새로 팔로우 요청이 들어왔다야';
	@override String get newNotes => '새 노트';
	@override String get newNotificationReceived => '새 알림이 있다야';
	@override String get newNotifications => '새 알림';
	@override String get noAccounts => '계정 읎대이';
	@override String get noTabs => '탭 읎대이';
	@override String get noThemes => '테마 읎대이';
	@override String get noteDoubleTapAction => '노트를 두 번 눌렀을 때의 동작';
	@override String get noteFooterSize => '노트 액션 버튼 크기';
	@override String get noteLongPressAction => '노트를 길게 눌렀을 때의 동작';
	@override String get noteTapAction => '노트를 탭했을 때의 동작';
	@override String get notesAfterRenotes => '리노트 뒤의 노트';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: '명이 접속 중'),
	]);
	@override String get opacity => '불투명도';
	@override String get openAsGuest => '손님으로서 열으래이';
	@override String get openInAnotherAccount => '다른 계정으로 열으래이';
	@override String get openInBrowser => '브라우저서 열으래이';
	@override String get openInExternalBrowser => '외부 브라우저서 열으래이';
	@override String get openInInternalBrowser => '내부 브라우저서 열으래이';
	@override String get openMenu => '메뉴 열으래이';
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		scratchpad,
		const TextSpan(text: ' 를 브라우저에서 열고, 다음 코드를 클릭한 다음 실행하세요.'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => '야시시한 미디어는 두 번 눌러서 열라카래이';
	@override String get parameters => '매개변수';
	@override String get paste => '붙여넣기';
	@override String get pasteResponseBelow => '답변을 아래 복사하세요';
	@override String get pinToEmojiPicker => '이모지 선택기에 고정';
	@override String get playAudio => '소리 듣기';
	@override String get playVideo => '동영상 재생';
	@override String get pleaseCopyResponse => '이 답변을 복사하세요';
	@override String get postConfirm => '노트 게시한대이. 맞제?';
	@override String get reactionConfirm => '리액션 단대이?';
	@override String get renoteConfirm => '리노트한대이?';
	@override String get renoteToChannel => '채널에다가 리노트';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: '님이 리노트했다야'),
	]);
	@override String get rotate => '돌리기';
	@override String get selectIcon => '아이콘 함 골라보래이';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: '님이 지 껄 리노트했다야'),
	]);
	@override String get serverUrl => '써버 URL';
	@override String get settingsFileForAria => 'Aria 설정 파일';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' 설정'),
	]);
	@override String get showAvatarsInNote => '노트에 아바타 좀 보이라';
	@override String get showAvatarsInSubNote => '서브노트에 아바타 좀 보이라';
	@override String get showEntireImage => '이미지 전체를 좀 보이라';
	@override String get showExpandedImage => '확장된 이미지를 좀 보이라';
	@override String get showImage => '이미지 보여달래이';
	@override String get showLikeButtonInNoteFooter => '노트 액션에 "좋아요" 좀 넣어달래이';
	@override String get showMenuButtonInTabBar => '타임라인 탭 바에 메뉴 버튼을 넣어달래이';
	@override String get showNoteCreatedAt => '노트 생성일을 보여달래이';
	@override String get showNoteFooter => '노트에 액션 버튼을 보여달래이';
	@override String get showNoteReactionsViewer => '노트에 리액션 뷰어를 넣어달래이';
	@override String get showPopupOnNewNote => '노트 열 때 팝업으로 띄워달래이';
	@override String get showQuoteButtonInNoteFooter => '노트 액션에 "인용" 좀 넣어달래이';
	@override String get showSelfRenotes => '지 글을 지가 리노트했대도 보여달래이';
	@override String get showStackTrace => '스택 트레이스 보여달래이';
	@override String get showSubNoteFooter => '서브노트에도 액션 버튼을 넣어달래이';
	@override String get showSubNoteReactionsViewer => '서브노트에도 리액션 뷰어를 넣어달래이';
	@override String get showTabHeaderInOneLine => '탭 정보를 한 줄로 표시';
	@override String get showTimelineLastViewedAt => '타임라인 마지막으로 본 날짜를 보여달래이';
	@override String get showTimelineTabBarAtBottom => '타임라인 탭 바를 화면 아래쪽에다가 박아놓으래이';
	@override String get showTranslateButtonInNoteFooter => '노트 액션에 "번역"을 넣어달래이';
	@override String get sinceDate => '요 날부터';
	@override String get stackTrace => '스택 트레이스';
	@override String get streamingChannel => '스트리밍 채널';
	@override String get tabName => '탭 이름';
	@override String get tabType => '탭 종류';
	@override String get tabs => '탭';
	@override String get tapToShow => '볼라믄 누르래이';
	@override String get timeMachine => '타임머신';
	@override String get unfavorited => '즐겨찾기서 뺐대이';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '얼 고마 팔로잉할끼가?'),
	]);
	@override String get untilDate => '요 날까제';
	@override String get uploaded => '업로드했대이';
	@override String get useThisEmoji => '요 이모지 쓰라야';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '가 뭐라 칸다'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '의 야시시한 파일이 든 글'),
	]);
	@override String get vibrateNote => '새 노트에 진동 울려달래이';
	@override String get vibrateNotification => '새 알림에 진동 울려달래이';
	@override String get webBrowser => '웹 브라우저';
}

// Path: misskey
class _TranslationsMisskeyKoGs extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '한국어(경상)';
	@override String get headlineMisskey => '노트로 이언 네트워크';
	@override String get introMisskey => '어서 오이소! Misskey넌 오픈소스 분산헹 마이크로 블로그 서비스입니다.\n‘노트’럴 맨걸어서 지검 일나넌 일얼 노누던가 내 이바구럴 남한데 서 보이소.📡\n‘리액션’ 기넝서 남으 노트에 억수로 빠리게 답할 수 잇십니다.👍\n새롭운 세게럴 탐험해 보입시다.🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} 서버넌 오픈소스 플랫폼 <b>Misskey</b>으 서버 가운데 하나입니다.';
	@override String monthAndDay({required Object month, required Object day}) => '${month}월 ${day}일';
	@override String get search => '찾기';
	@override String get reset => '초기화';
	@override String get notifications => '알림';
	@override String get username => '사용자 이럼';
	@override String get password => '비밀번호';
	@override String get initialPasswordForSetup => '초기 설정용 비밀번호';
	@override String get initialPasswordIsIncorrect => '초기 설정용 비밀번호가 올바르지 않습니다.';
	@override String get initialPasswordForSetupDescription => 'Misskey를 직접 설치하는 경우, 설정 파일에 입력해둔 비밀번호를 사용하세요.\nMisskey 설치를 도와주는 호스팅 서비스 등을 사용하는 경우, 서비스 제공자로부터 받은 비밀번호를 사용하세요.\n비밀번호를 따로 설정하지 않은 경우, 아무것도 입력하지 않아도 됩니다.';
	@override String get forgotPassword => '비밀번호럴 잊엇뿟십니꺼?';
	@override String get fetchingAsApObject => '연합서 찾아보고 잇어예';
	@override String get ok => '예';
	@override String get gotIt => '알것어예';
	@override String get cancel => '아이예';
	@override String get noThankYou => '뎃어예';
	@override String get enterUsername => '사용자 이럼 서기';
	@override String renotedBy({required Object user}) => '${user}님이 리노트햇어예';
	@override String get noNotes => '노트가 어ᇝ십니다';
	@override String get noNotifications => '알림이 어ᇝ십니다';
	@override String get instance => '서버';
	@override String get settings => '설정';
	@override String get notificationSettings => '알림 설정';
	@override String get basicSettings => '기본 설정';
	@override String get otherSettings => '다린 설정';
	@override String get openInWindow => '창서 옐기';
	@override String get profile => '프로필';
	@override String get timeline => '타임라인';
	@override String get noAccountDescription => '자기소개가 어ᇝ십니다';
	@override String get login => '로그인';
	@override String get loggingIn => '로그인하고 잇어예';
	@override String get logout => '로그아웃';
	@override String get signup => '가입하기';
	@override String get uploading => '올리고 잇어예';
	@override String get save => '저장하기';
	@override String get users => '사용자';
	@override String get addUser => '사용자 옇기';
	@override String get favorite => '질겨찾기';
	@override String get favorites => '질겨찾기';
	@override String get unfavorite => '질겨찾기서 어ᇝ애기';
	@override String get favorited => '질겨찾기에 담앗십니다.';
	@override String get alreadyFavorited => '벌시로 질겨찾기에 담기 잇십니다.';
	@override String get cantFavorite => '질겨찾기에 몬 담앗십니다.';
	@override String get pin => '프로필에 붙이기';
	@override String get unpin => '프로필서 띠기';
	@override String get copyContent => '내용 복사하기';
	@override String get copyLink => '링크 복사하기';
	@override String get copyRemoteLink => '리모트 서버의 링크로 복사하기';
	@override String get copyLinkRenote => '리노트 링크 복사';
	@override String get delete => '내삐리기';
	@override String get deleteAndEdit => '내삐리고 새로 적기';
	@override String get deleteAndEditConfirm => '요 노트럴 뭉캐고 새로 적십니꺼? 요 노트서 리액션하고 리노트, 답하기도 말캉 뭉캐집니다.';
	@override String get addToList => '리스트에 옇기';
	@override String get addToAntenna => '안테나에 옇기';
	@override String get sendMessage => '메시지 보내기';
	@override String get copyRSS => '알에스에스 복사하기';
	@override String get copyUsername => '사용자 이럼 복사하기';
	@override String get copyUserId => '사용자 아이디 복사하기';
	@override String get copyNoteId => '노트 아이디 복사하기';
	@override String get copyFileId => '파일 아이디 복사하기';
	@override String get copyFolderId => '폴더 아이디 복사하기';
	@override String get copyProfileUrl => '프로필 주소 복사하기';
	@override String get searchUser => '사용자 찾기';
	@override String get searchThisUsersNotes => '유저의 노트를 검색';
	@override String get reply => '답하기';
	@override String get loadMore => '더 볼래예';
	@override String get showMore => '더 볼래예';
	@override String get showLess => '꺼기';
	@override String get youGotNewFollower => '새 팔로워가 잇십니다';
	@override String get receiveFollowRequest => '팔로잉 요청이 잇십니다';
	@override String get followRequestAccepted => '팔로잉이 받아딜이젓십니다';
	@override String get mention => '멘션';
	@override String get mentions => '받언 멘션';
	@override String get directNotes => '쪽지 서기';
	@override String get importAndExport => '가오기하고 내가기';
	@override String get import => '가오기';
	@override String get export => '내가기';
	@override String get files => '파일';
	@override String get download => '내리받기';
	@override String driveFileDeleteConfirm({required Object name}) => '‘${name}’ 파일얼 뭉캡니꺼? 요 파일얼 서넌 콘텐츠도 뭉캐집니다.';
	@override String unfollowConfirm({required Object name}) => '${name}님얼 고마 팔로잉합니꺼?';
	@override String get exportRequested => '내가기 요청얼 햇십니다. 시간이 쪼매 걸릴 깁니다. 요청이 껕나모 ‘드라이브’에 옇십니다.';
	@override String get importRequested => '가오기 요청얼 햇십니다. 시간이 쪼매 걸릴 깁니다.';
	@override String get lists => '리스트';
	@override String get noLists => '리스트가 어ᇝ십니다';
	@override String get note => '노트';
	@override String get notes => '노트';
	@override String get following => '팔로잉';
	@override String get followers => '팔로워';
	@override String get followsYou => '내럴 팔로잉합니다';
	@override String get createList => '리스트 맨걸기';
	@override String get manageLists => '리스트 간리하기';
	@override String get error => '우짭니꺼';
	@override String get somethingHappened => '먼가 일낫십니다';
	@override String get retry => '다시 하기';
	@override String get pageLoadError => '하멘 부리오기가 아이뎁니다.';
	@override String get pageLoadErrorDescription => '네트워크나 브라우저 캐시 때문일 깁니다. 캐시럴 뭉캐던가 쪼매 잇다 새로 해 주이소.';
	@override String get serverIsDead => '서버가 대답얼 아이합니다. 쪼매 잇다 새로 해 주이소.';
	@override String get youShouldUpgradeClient => '요 하멘얼 볼라먼 새로 곤치던가 새 버전으 클라이언트럴 받아 서 보이소.';
	@override String get enterListName => '리스트 이럼 서기';
	@override String get privacy => '개인 정보';
	@override String get makeFollowManuallyApprove => '팔로잉얼 하나석 받아딜이기';
	@override String get defaultNoteVisibility => '기본 공개 범위';
	@override String get follow => '팔로우';
	@override String get followRequest => '팔로우 요청하기';
	@override String get followRequests => '팔로우 요청';
	@override String get unfollow => '팔로우 무루기';
	@override String get followRequestPending => '팔로우 수락 지둘림';
	@override String get enterEmoji => '이모지 서기';
	@override String get renote => '리노트';
	@override String get unrenote => '리노트 무루기';
	@override String get renoted => '리노트럴 햇십니다.';
	@override String renotedToX({required Object name}) => '${name}명이 리노트했습니다.';
	@override String get cantRenote => '요 걸언 리노트럴 몬 합니다.';
	@override String get cantReRenote => '리노트넌 지럴 리노트 몬 합니다.';
	@override String get quote => '따오기';
	@override String get inChannelRenote => '채널 안 리노트';
	@override String get inChannelQuote => '채널 안 따오기';
	@override String get renoteToChannel => '채널에 리노트';
	@override String get renoteToOtherChannel => '다른 채널에 리노트';
	@override String get pinnedNote => '붙인 노트';
	@override String get pinned => '프로필에 붙이기';
	@override String get you => '나';
	@override String get clickToShow => '누질라서 보기';
	@override String get sensitive => '수ᇚ힛섭니다';
	@override String get add => '옇기';
	@override String get reaction => '반엉';
	@override String get reactions => '반엉';
	@override String get emojiPicker => '이모지 선택기';
	@override String get pinnedEmojisForReactionSettingDescription => '리액션을 할 때 이모지 선택기 상단에 표시할 이모지를 설정할 수 있습니다.';
	@override String get pinnedEmojisSettingDescription => '이모지를 입력할 때 이모지 선택기 상단에 표시할 이모지를 설정할 수 있습니다.';
	@override String get emojiPickerDisplay => '선택기 표시';
	@override String get overwriteFromPinnedEmojisForReaction => '리액션 설정을 덮어쓰기';
	@override String get overwriteFromPinnedEmojis => '일반 설정을 덮어쓰기';
	@override String get reactionSettingDescription2 => '꺼시서 두고, 누질라서 뭉캐고,  ‘+’럴 누질라서 옇십니다.';
	@override String get rememberNoteVisibility => '공개 범위럴 기억하기';
	@override String get attachCancel => '붙임 빼기';
	@override String get deleteFile => '파일 뭉캐기';
	@override String get markAsSensitive => '수ᇚ힘 설정';
	@override String get unmarkAsSensitive => '수ᇚ힘 무루기';
	@override String get enterFileName => '파일 이럼 서기';
	@override String get mute => '수ᇚ후기';
	@override String get unmute => '수ᇚ훈 거 무루기';
	@override String get renoteMute => '리노트 수ᇚ후기';
	@override String get renoteUnmute => '리노트 수ᇚ훈 거 무루기';
	@override String get block => '차단하기';
	@override String get unblock => '차단 무루기';
	@override String get suspend => '얼우기';
	@override String get unsuspend => '얼우기 풀기';
	@override String get blockConfirm => '차단합니꺼?';
	@override String get unblockConfirm => '차단얼 무룹니꺼?';
	@override String get suspendConfirm => '얼웁니꺼?';
	@override String get unsuspendConfirm => '얼운 거 풉니꺼?';
	@override String get selectList => '리스트 개리기';
	@override String get editList => '리스트 적기';
	@override String get selectChannel => '채널 개리기';
	@override String get selectAntenna => '안테나 개리기';
	@override String get editAntenna => '안테나 적기';
	@override String get createAntenna => '안테나 만들기';
	@override String get selectWidget => '위젯 개리기';
	@override String get editWidgets => '위젯 적기';
	@override String get editWidgetsExit => '고마 적기';
	@override String get customEmojis => '사용자 지정 이모지';
	@override String get emoji => '이모지';
	@override String get emojis => '이모지';
	@override String get emojiName => '이모지 이럼';
	@override String get emojiUrl => '이모지 주소';
	@override String get addEmoji => '이모지 옇기';
	@override String get settingGuide => '개않언 설정';
	@override String get cacheRemoteFiles => '웬겍 파일 캐시하기';
	@override String get cacheRemoteFilesDescription => '요 설정얼 키모 웬겍 파일얼 요 서버으 스토리지에 캐시합니다. 미디어가 사게 비이지먼 서버으 스토리지럴 마이 섭니다. 웬겍 사용자가 얼매나 캐시럴 둘 긴가넌 고 옉할으 드라이브 크기 제한마중 다립니다. 요 제한얼 넘구모 엣날 파일버터 캐시서 뭉캐지서 링크가 뎁니다. 요 설정얼 꺼모 웬겍 파일언 첨버터 링크가 뎁니다. 이미지으 섬네일얼 맨걸던 사용자으 개인 정보럴 징키던 할라먼 default.yml서 proxyRemoteFiles럴 ture로 하입시다.';
	@override String get youCanCleanRemoteFilesCache => '파일 간리으 🗑️ 모냥얼 누질리모 캐시럴 말캉 뭉캘 수 잇십니다.';
	@override String get cacheRemoteSensitiveFiles => '웬겍으 수ᇚ힌 파일얼 캐시하기';
	@override String get cacheRemoteSensitiveFilesDescription => '요 설정얼 꺼모 웬겍 수ᇚ힌 파일이 캐시하지 아이하고 바리 링크합니다.';
	@override String get flagAsBot => '자동 게정입니다';
	@override String get flagAsBotDescription => '요 게정얼 프로그램서 설라먼 키야 합니다. 키모 다런 개발자가 반엉얼 끋어ᇝ이 데풀이하지 몬 하게 도아 줄 수 잇고 Misskey으 시스템서 자동 게정이 뎁니다.';
	@override String get flagAsCat => '애웅애웅애웅애웅!';
	@override String get flagAsCatDescription => '애옹?';
	@override String get flagShowTimelineReplies => '타임라인서 노트으 답하기 보기';
	@override String get flagShowTimelineRepliesDescription => '키모 타임라인서 다런 사용자덜으 답하기도 봅니다.';
	@override String get autoAcceptFollowed => '팔로잉하넌 사용자으 팔로잉 요청 바리 받아딜이기';
	@override String get addAccount => '게정 옇기';
	@override String get reloadAccountsList => '게정 리스트으 정보 새로 바꾸기';
	@override String get loginFailed => '로그인이 아이뎁니다.';
	@override String get showOnRemote => '웬겍서 보기';
	@override String get continueOnRemote => '리모트에서 계속';
	@override String get chooseServerOnMisskeyHub => 'Misskey Hub에서 서버 찾아보기';
	@override String get specifyServerHost => '서버 도메인 직접 지정';
	@override String get inputHostName => '도메인을 입력하세요';
	@override String get general => '일반';
	@override String get wallpaper => '벡지';
	@override String get setWallpaper => '벡지 설정';
	@override String get removeWallpaper => '벡지 뭉캐기';
	@override String searchWith({required Object q}) => '찾기: ${q}';
	@override String get youHaveNoLists => '리스트가 어ᇝ십니다';
	@override String followConfirm({required Object name}) => '${name}님얼 팔로잉합니꺼?';
	@override String get proxyAccount => '프락시 게정';
	@override String get proxyAccountDescription => '프락시 게정언 턱벨한 조겐서 웬겍 팔로잉얼 하넌 게정입니다. 사용자가 웬겍 사용자럴 리스트에 옇얼 때 리스트에 옇언 사용자럴 누도 팔로잉 아이하모 할동이 서버로 아이 오니께 요 게정이 아인 프락시 게정얼 팔로잉하게 합니다.';
	@override String get host => '호스트 이럼';
	@override String get selectSelf => '본인을 선택';
	@override String get selectUser => '사용자 개리기';
	@override String get recipient => '받넌 사람';
	@override String get annotation => '주석';
	@override String get federation => '옌합';
	@override String get instances => '서버';
	@override String get registeredAt => '첫 발겐';
	@override String get latestRequestReceivedAt => '막죽에 받언 요청';
	@override String get latestStatus => '막죽 상태';
	@override String get storageUsage => '스토리지 사용량';
	@override String get charts => '차트';
	@override String get perHour => '한 시간마중';
	@override String get perDay => '하리마중';
	@override String get stopActivityDelivery => '할동 고마 보내기';
	@override String get blockThisInstance => '요 서버 차단하기';
	@override String get silenceThisInstance => '서버 수ᇚ후기';
	@override String get mediaSilenceThisInstance => '서버의 미디어를 사일런스';
	@override String get operations => '동작';
	@override String get software => '소프트웨어';
	@override String get softwareName => '소프트웨어 이름';
	@override String get version => '버전';
	@override String get metadata => '메타데이터';
	@override String withNFiles({required Object n}) => '파일 ${n}개';
	@override String get monitor => '모니터';
	@override String get jobQueue => '작업 대기옐';
	@override String get cpuAndMemory => '시피유하고 메모리';
	@override String get network => '네트워크';
	@override String get disk => '디스크';
	@override String get instanceInfo => '서버 정보';
	@override String get statistics => '통게';
	@override String get clearQueue => '대기옐 비우기';
	@override String get clearQueueConfirmTitle => '대기옐얼 비웁니꺼?';
	@override String get clearQueueConfirmText => '대기옐에 잇넌 걸얼 아이 보냅니다. 흐이 요 동작언 할 필요가 어ᇝ십니다.';
	@override String get clearCachedFiles => '캐시 비우기';
	@override String get clearCachedFilesConfirm => '캐시한 웬겍 파일얼 말캉 뭉캡니꺼?';
	@override String get blockedInstances => '차단한 서버';
	@override String get blockedInstancesDescription => '차단할라넌 서버으 호스트럴 줄 바꿈해서로 비이 줍니다. 차단한 서버넌 요 서버하고 교류 몬 합니다.';
	@override String get silencedInstances => '수ᇚ훈 서버';
	@override String get silencedInstancesDescription => '수ᇚ훌라넌 서버으 호스트럴 줄 바꿈해서로 비이 줍니다. 수ᇚ훈 서버으 게정언 말캉 ‘수ᇚ후기’가 데서 팔로잉 요청만 데고 팔로워가 아인 로컬 게정서 멘션얼 몬 합니다. 차단한 서버넌 상간 어ᇝ십니다.';
	@override String get mediaSilencedInstances => '미디어를 사일런스한 서버';
	@override String get mediaSilencedInstancesDescription => '미디어를 사일런스 하려는 서버의 호스트를 한 줄에 하나씩 입력합니다. 미디어가 사일런스된 서버의 유저가 업로드한 파일은 모두 민감한 미디어로 처리되며, 커스텀 이모지를 사용할 수 없게 됩니다. 또한, 차단한 인스턴스에는 적용되지 않습니다.';
	@override String get federationAllowedHosts => '연합을 허가하는 서버';
	@override String get federationAllowedHostsDescription => '연합을 허가하는 서버의 호스트를 엔터로 구분해서 설정합니다.';
	@override String get muteAndBlock => '수ᇚ훔하고 차단';
	@override String get mutedUsers => '수ᇚ훈 사용자';
	@override String get blockedUsers => '차단한 사용자';
	@override String get noUsers => '사용자가 어ᇝ십니다';
	@override String get editProfile => '프로필 적기';
	@override String get noteDeleteConfirm => '요 노트럴 뭉캡니꺼?';
	@override String get pinLimitExceeded => '더 몬 붙입니다';
	@override String get done => '햇어예';
	@override String get processing => '처리하고 잇어예';
	@override String get preview => '미리보기';
	@override String get default_ => '기본값';
	@override String defaultValueIs({required Object value}) => '기본값: ${value}';
	@override String get noCustomEmojis => '이모지가 어ᇝ십니다';
	@override String get noJobs => '작업이 어ᇝ십니다';
	@override String get federating => '옌합하고 잇어예';
	@override String get blocked => '차단햇어예';
	@override String get suspended => '고만 보내예';
	@override String get all => '말캉';
	@override String get subscribing => '구독하고 잇어예';
	@override String get publishing => '보내고 잇어예';
	@override String get notResponding => '답이 어ᇝ어예';
	@override String get instanceFollowing => '서버으 팔로잉';
	@override String get instanceFollowers => '서버으 팔로워';
	@override String get instanceUsers => '서버으 사용자';
	@override String get changePassword => '비밀번호 바꾸기';
	@override String get security => '보안';
	@override String get retypedNotMatch => '선 거가 안 맞십니다.';
	@override String get currentPassword => '지검 비밀번호';
	@override String get newPassword => '새 비밀번호';
	@override String get newPasswordRetype => '새 비밀번호 다시 서기';
	@override String get attachFile => '파일 붙이기';
	@override String get more => '더 볼래예!';
	@override String get featured => '인기';
	@override String get usernameOrUserId => '사용자 이럼이나 사용자 아이디';
	@override String get noSuchUser => '사용자럴 몬 찾앗십니다';
	@override String get lookup => '찾아보기';
	@override String get announcements => '공지 걸';
	@override String get imageUrl => '이미지 주소';
	@override String get remove => '내삐리기';
	@override String get removed => '뭉캣십니다';
	@override String removeAreYouSure({required Object x}) => '‘${x}’(얼)럴 뭉캡니꺼?';
	@override String deleteAreYouSure({required Object x}) => '‘${x}’(얼)럴 뭉캡니꺼?';
	@override String get resetAreYouSure => '아시로 데돌립니꺼?';
	@override String get areYouSure => '갠찮십니꺼?';
	@override String get saved => '저장햇십니다';
	@override String get upload => '올리기';
	@override String get keepOriginalUploading => '온본 두기';
	@override String get keepOriginalUploadingDescription => '이미지럴 올릴 때 온본얼 고대로 둡니다. 꺼모 올릴 때 브라우저서 웹 공개 이미지럴 맨겁니다.';
	@override String get fromDrive => '드라이브서';
	@override String get fromUrl => '주소서';
	@override String get uploadFromUrl => '주소 올리기';
	@override String get uploadFromUrlDescription => '올리기할라넌 파일으 주소';
	@override String get uploadFromUrlRequested => '올리기럴 요청햇십니다';
	@override String get uploadFromUrlMayTakeTime => '올리기가 껕날라먼 시간이 쪼매 걸릴 깁니다.';
	@override String uploadNFiles({required Object n}) => '${n}개의 파일을 업로';
	@override String get explore => '살펴보기';
	@override String get messageRead => '이럿어예';
	@override String get noMoreHistory => '요카마 옛날 기록이 어ᇝ십니다';
	@override String get startChat => '채팅을 시작하기';
	@override String nUsersRead({required Object n}) => '${n}멩이 이럿십니다';
	@override String agreeTo({required Object x0}) => '${x0}에 동이하기';
	@override String get agree => '동이합니다';
	@override String get agreeBelow => '밑으 내용에 동이합니다';
	@override String get basicNotesBeforeCreateAccount => '주이할 내용';
	@override String get termsOfService => '이용 약간';
	@override String get start => '시작하기';
	@override String get home => '덜머리';
	@override String get remoteUserCaution => '웬겍 사용자넌 정보가 학실하지 아이할 수 잇십니다.';
	@override String get activity => '할동';
	@override String get images => '이미지';
	@override String get image => '이미지';
	@override String get birthday => '생일';
	@override String yearsOld({required Object age}) => '${age}살';
	@override String get registeredDate => '맨건 날';
	@override String get location => '장소';
	@override String get theme => '테마';
	@override String get themeForLightMode => '볽엄 모드서 설 테마';
	@override String get themeForDarkMode => '어덥엄 모드서 설 테마';
	@override String get light => '볽엄';
	@override String get dark => '어덥엄';
	@override String get lightThemes => '볽언 테마';
	@override String get darkThemes => '어덥언 테마';
	@override String get syncDeviceDarkMode => '디바이스 쪽 어덥엄 모드하고 같구로 마추기';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '\'${x}\'가 켜져 있습니다. 동기화를 끄고 수동으로 모드를 변경하겠습니까?';
	@override String get drive => '드라이브';
	@override String get fileName => '파일 이럼';
	@override String get selectFile => '파일 개리기';
	@override String get selectFiles => '파일 개리기';
	@override String get selectFolder => '폴더 개리기';
	@override String get selectFolders => '폴더 개리기';
	@override String get fileNotSelected => '파일을 선택하지 않았습니다';
	@override String get renameFile => '파일 이럼 바꾸기';
	@override String get folderName => '폴더 이럼';
	@override String get createFolder => '폴더 맨걸기';
	@override String get renameFolder => '폴더 이럼 바꾸기';
	@override String get deleteFolder => '폴더 뭉캐기';
	@override String get folder => '폴더';
	@override String get addFile => '파일 옇기';
	@override String get showFile => '파일 표시하기';
	@override String get emptyDrive => '드라이브가 비잇십니다';
	@override String get emptyFolder => '폴더가 비잇십니다';
	@override String get unableToDelete => '몬 뭉캡니다';
	@override String get inputNewFileName => '새 파일 이럼얼 서 보이소';
	@override String get inputNewDescription => '새 설멩얼 서 보이소';
	@override String get inputNewFolderName => '새 폴더 이럼얼 서 보이소';
	@override String get circularReferenceFolder => '엚길 폴더으 아래 폴더입니다.';
	@override String get hasChildFilesOrFolders => '요 폴더넌 아이 비잇어니께 몬 뭉캡니다.';
	@override String get copyUrl => '주소 복사하기';
	@override String get rename => '이럼 바꾸기';
	@override String get avatar => '아바타';
	@override String get banner => '배너';
	@override String get displayOfSensitiveMedia => '수ᇚ힌 옝상물 보기';
	@override String get whenServerDisconnected => '서버하고 옌겔이 껂기모';
	@override String get disconnectedFromServer => '서버하고 옌겔이 껂깃십니다';
	@override String get reload => '새로곤침';
	@override String get doNothing => '무시하기';
	@override String get reloadConfirm => '새로곤침합니꺼?';
	@override String get watch => '간심 갖기';
	@override String get unwatch => '간심 고마 갖기';
	@override String get accept => '받기';
	@override String get reject => '아이 받기';
	@override String get normal => '일반';
	@override String get instanceName => '서버 이럼';
	@override String get instanceDescription => '서버 소개';
	@override String get maintainerName => '간리자 이럼';
	@override String get maintainerEmail => '간리자 전자우펜';
	@override String get tosUrl => '이용 약간 주소';
	@override String get thisYear => '올개';
	@override String get thisMonth => '요달';
	@override String get today => '오올';
	@override String dayX({required Object day}) => '${day}일';
	@override String monthX({required Object month}) => '${month}월';
	@override String yearX({required Object year}) => '${year}년';
	@override String get pages => '바닥';
	@override String get integration => '옌겔';
	@override String get connectService => '옌겔하기';
	@override String get disconnectService => '껂기';
	@override String get enableLocalTimeline => '로컬 타임라인 키기';
	@override String get enableGlobalTimeline => '글로벌 타임라인 키기';
	@override String get disablingTimelinesInfo => '요 타임라인얼 꺼도 간리자하고 중재자넌 고대로 설 수 잇십니다.';
	@override String get registration => '맨걸기';
	@override String get invite => '초대하기';
	@override String get driveCapacityPerLocalAccount => '로컬 사용자 하나마중 드라이브 커기';
	@override String get driveCapacityPerRemoteAccount => '웬겍 사용자 하나마중 드라이브 커기';
	@override String get inMb => '메가바이트 단이';
	@override String get bannerUrl => '배너 이미지 주소';
	@override String get backgroundImageUrl => '배겡 이미지 주소';
	@override String get basicInfo => '기본 정보';
	@override String get pinnedUsers => '붙인 사용자';
	@override String get pinnedUsersDescription => '‘살펴보기’서 붙일라넌 사용자럴 줄 바꿈해서로 적십니다.';
	@override String get pinnedPages => '붙인 바닥';
	@override String get pinnedPagesDescription => '서버으 대문서 붙일라넌 바닥으 겡로럴 줄 바꿈해서로 적십니다.';
	@override String get pinnedClipId => '붙일 클립으 아이디';
	@override String get pinnedNotes => '붙인 노트';
	@override String get hcaptcha => '에이치캡차';
	@override String get enableHcaptcha => '에이치캡차 키기';
	@override String get hcaptchaSiteKey => '사이트키';
	@override String get hcaptchaSecretKey => '시크릿키';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'mCaptcha 활성화';
	@override String get mcaptchaSiteKey => '사이트키';
	@override String get mcaptchaSecretKey => '시크릿키';
	@override String get mcaptchaInstanceUrl => 'mCaptcha 인스턴스 URL';
	@override String get recaptcha => '리캡차';
	@override String get enableRecaptcha => '리캡차 키기';
	@override String get recaptchaSiteKey => '사이트키';
	@override String get recaptchaSecretKey => '시크릿키';
	@override String get turnstile => '턴스타일';
	@override String get enableTurnstile => '턴스타일 키기';
	@override String get turnstileSiteKey => '사이트키';
	@override String get turnstileSecretKey => '시크릿키';
	@override String get avoidMultiCaptchaConfirm => '오만 캡차럴 서모 간섭이 잇얼 깁니다. 다린 캡차를 껍니꺼? ‘아이예’럴 누질리모 오만 캡차럴 키 둘 수도 잇십니다.';
	@override String get antennas => '안테나';
	@override String get manageAntennas => '안테나 간리';
	@override String get name => '이럼';
	@override String get antennaSource => '받얼 소스';
	@override String get antennaKeywords => '받얼 검색어';
	@override String get antennaExcludeKeywords => '수ᇚ훌 검색어';
	@override String get antennaExcludeBots => '봇 계정 제외';
	@override String get antennaKeywordsDescription => '띠어서기럴 하모 ‘거라고’가 데고 줄 바꿈얼 하모 ‘아이먼’이 뎁니다';
	@override String get notifyAntenna => '새 노트럴 알리기';
	@override String get withFileAntenna => '파일이 붙언 노트마';
	@override String get excludeNotesInSensitiveChannel => '민감한 채널의 노트 제외';
	@override String get enableServiceworker => '브라우저서 알림 포시럴 키기';
	@override String get antennaUsersDescription => '사용자 이럼얼 줄 바꿈해서로 섭니다';
	@override String get caseSensitive => '대소문자럴 구벨하기';
	@override String get withReplies => '답하기도 옇기';
	@override String get connectedTo => '요 게정하고 옌겔데어 잇십니다';
	@override String get notesAndReplies => '걸하고 답걸';
	@override String get withFiles => '파일에 붙이기';
	@override String get silence => '수ᇚ후기';
	@override String get silenceConfirm => '수ᇚ훕니꺼?';
	@override String get unsilence => '수ᇚ후기 어ᇝ애기';
	@override String get unsilenceConfirm => '수ᇚ후기럴 어ᇝ앱니꺼?';
	@override String get popularUsers => '소문난 사용자';
	@override String get recentlyUpdatedUsers => '얼마 전에 걸 선 사용자';
	@override String get recentlyRegisteredUsers => '얼마 전에 맨건 사용자';
	@override String get recentlyDiscoveredUsers => '얼마 전에 찾언 사용자';
	@override String exploreUsersCount({required Object count}) => '사용자 ${count}멩이 잇십니다.';
	@override String get exploreFediverse => '옌합우주 탐험하기';
	@override String get popularTags => '소문난 태그';
	@override String get userList => '리스트';
	@override String get about => '정보';
	@override String get aboutMisskey => 'Misskey넌예';
	@override String get administrator => '간리자';
	@override String get token => '학인 기호';
	@override String get x2fa => '두 단게 정멩';
	@override String get setupOf2fa => '두 단게 정멩 설정';
	@override String get totp => '정멩 앱';
	@override String get totpDescription => '정멩 앱서 단헤용 비밀번호 서기';
	@override String get moderator => '중재자';
	@override String get moderation => '중재';
	@override String get moderationNote => '중재 노트';
	@override String get moderationNoteDescription => '모더레이터 역할을 가진 유저만 보이는 메모를 적을 수 있습니다.';
	@override String get addModerationNote => '중재 노트 옇기';
	@override String get moderationLogs => '중재 일지';
	@override String nUsersMentioned({required Object n}) => '${n}멩이 이바구하고 잇어예';
	@override String get securityKeyAndPasskey => '보안키·패스키';
	@override String get securityKey => '보안키';
	@override String get lastUsed => '마지막 쓰임';
	@override String lastUsedAt({required Object t}) => '마지막 쓰임: ${t}';
	@override String get unregister => '맨걸기 무루기';
	@override String get passwordLessLogin => '비밀번호 어ᇝ이 로그인';
	@override String get passwordLessLoginDescription => '비밀번호 어ᇝ이 보안 키나 패스 키만 서서 로그인합니다.';
	@override String get resetPassword => '비밀번호 재설정';
	@override String newPasswordIs({required Object password}) => '새 비밀번호넌 ‘${password}’입니다';
	@override String get reduceUiAnimation => '화면 움직임 효과들을 수ᇚ후기';
	@override String get share => '노누기';
	@override String get notFound => '몬 찾앗십니다';
	@override String get notFoundDescription => '선 주소에 맞넌 페이지가 어ᇝ십니다.';
	@override String get uploadFolder => '기본 올리기 위치';
	@override String get markAsReadAllNotifications => '모던 알림얼 읽엄 포시';
	@override String get markAsReadAllUnreadNotes => '모던 걸얼 읽엄 포시';
	@override String get markAsReadAllTalkMessages => '모던 대화 읽엄 포시';
	@override String get help => '도움말';
	@override String get inputMessageHere => '옇다 메시지럴 서이소';
	@override String get close => '꺼기';
	@override String get invites => '초대하기';
	@override String get members => '구성원';
	@override String get transfer => '넘구기';
	@override String get title => '제목';
	@override String get text => '걸';
	@override String get enable => '키기';
	@override String get next => '다엄';
	@override String get retype => '다시 서기';
	@override String noteOf({required Object user}) => '${user}님으 노트';
	@override String get quoteAttached => '따옴';
	@override String get quoteQuestion => '따와가 작성하겠십니까?';
	@override String get attachAsFileQuestion => '붙여넣으려는 글이 너무 깁니다. 텍스트 파일로 첨부하시겠습니까?';
	@override String get onlyOneFileCanBeAttached => '메시지엔 파일 하나까제밖에 몬 넣십니다';
	@override String get signinRequired => '진행하기 전에 로그인을 해 주세요';
	@override String get signinOrContinueOnRemote => '계속하려면 사용하는 서버로 이동하거나 이 서버에 로그인해야 합니다.';
	@override String get invitations => '초대하기';
	@override String get invitationCode => '초대장';
	@override String get checking => '학인하고 잇십니다';
	@override String get available => '사용 가능합니다';
	@override String get unavailable => '사용할 수 없습니다';
	@override String get usernameInvalidFormat => 'a~z, A~Z, 0-9, _를 사용할 수 있습니다';
	@override String get tooShort => '억수로 짜립니다';
	@override String get tooLong => '억수로 집니다';
	@override String get weakPassword => '약한 비밀번호';
	@override String get normalPassword => '좋은 비밀번호';
	@override String get strongPassword => '강한 비밀번호';
	@override String get passwordMatched => '맞십니다';
	@override String get passwordNotMatched => '안 맞십니다';
	@override String signinWith({required Object x}) => '${x} 서 로그인';
	@override String get signinFailed => '로그인 몬 했십니다. 고 이름이랑 비밀번호 제대로 썼는가 확인해 주이소.';
	@override String get or => '아니면';
	@override String get language => '언어';
	@override String get uiLanguage => 'UI 표시 언어';
	@override String aboutX({required Object x}) => '${x}에 대해서';
	@override String get emojiStyle => '이모지 모양';
	@override String get native => '기본';
	@override String get menuStyle => '메뉴 스타일';
	@override String get style => '스타일';
	@override String get drawer => '서랍';
	@override String get popup => '팝업';
	@override String get showNoteActionsOnlyHover => '마우스 올맀을 때만 노트 액션 버턴 보이기';
	@override String get showReactionsCount => '노트의 리액션 수를 표시하기';
	@override String get noHistory => '기록이 없십니다';
	@override String get signinHistory => '로그인 기록';
	@override String get enableAdvancedMfm => '복잡한 MFM 키기';
	@override String get enableAnimatedMfm => '정신사나운 MFM 키기';
	@override String get doing => '잠만예';
	@override String get category => '카테고리';
	@override String get tags => '태그';
	@override String get docSource => '요 문서의 원본';
	@override String get createAccount => '게정 맨걸기';
	@override String get existingAccount => '원래 게정';
	@override String get regenerate => '엎고 다시 맨걸기';
	@override String get fontSize => '글자 크기';
	@override String get mediaListWithOneImageAppearance => '사진 하나짜리 미디어 목록의 높이';
	@override String limitTo({required Object x}) => '${x}로 제한';
	@override String get noFollowRequests => '지둘리는 팔로우 요청이 없십니다';
	@override String get openImageInNewTab => '새 탭서 사진 열기';
	@override String get dashboard => '대시보드';
	@override String get local => '로컬';
	@override String get remote => '웬겍';
	@override String get total => '합계';
	@override String get weekOverWeekChanges => '저번주보다';
	@override String get dayOverDayChanges => '어제보다';
	@override String get appearance => '모냥';
	@override String get clientSettings => '클라이언트 설정';
	@override String get accountSettings => '게정 설정';
	@override String get promotion => '선전';
	@override String get promote => '선전하기';
	@override String get numberOfDays => '며칠동안';
	@override String get hideThisNote => '요 노트를 수ᇚ후기';
	@override String get showFeaturedNotesInTimeline => '타임라인에다 추천 노트 보이기';
	@override String get objectStorage => '오브젝트 스토리지';
	@override String get useObjectStorage => '오브젝트 스토리지 키기';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '오브젝트 (미디어) 참조 링크 만들 때 쓰는 URL임다. CDN 내지 프락시를 쓴다 카멘은 그 URL을 갖다 늫고, 아이면 써먹을 서비스네 가이드를 봐봐가 공개적으로 접근할 수 있는 주소를 여 넣어 주이소. 그니께, 내가 AWS S3을 쓴다 카면은 \'https://<bucket>.s3.amazonaws.com\', GCS를 쓴다 카면 \'https://storage.googleapis.com/<bucket>\' 처럼 쓰믄 되입니더.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => '설 서비스으 버킷 이럼얼 서 주이소.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => '요 Prefix 디렉토리 안에다가 파일이 들어감다.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'AWS S3넌 비아 두고 다런 것언 거 서비스으 엔드포인트럴 서 주이소. ‘<host>’나 ‘<host>:<port>’맨치로 섭니다.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '‘xx-east-1’맨치로 리전 이럼얼 서 주이소. 설 서비스에 리전 개넴이 어ᇝ어먼 ‘us-east-1’라고 해 두이소. 에이더블유에스 설정 파일이나 환겡 벤수가 이ᇇ어면 비아 두이소.';
	@override String get objectStorageUseSSL => 'SSL 쓰기';
	@override String get objectStorageUseSSLDesc => 'API 호출할 때 HTTPS 안 쓸거면은 꺼 두이소';
	@override String get objectStorageUseProxy => '연결에 프락시 사용';
	@override String get objectStorageUseProxyDesc => '오브젝트 스토리지 API 호출에 프락시 안 쓸 거면 꺼 두이소';
	@override String get objectStorageSetPublicRead => '업로드할 때 \'public-read\' 설정하기';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyle을 키면, 바께쓰 이름을 URL의 호스트명 말고 경로의 일부로써 취급합니다. 셀프 호스트 Minio 같은 걸 굴릴라믄 켜놔야 될 수도 있십니다.';
	@override String get serverLogs => '서버 로그';
	@override String get deleteAll => '말캉 뭉캐기';
	@override String get showFixedPostForm => '타임라인 우에 글 작성 칸 박기';
	@override String get showFixedPostFormInChannel => '채널 타임라인 우에 글 작성 칸 박기';
	@override String get withRepliesByDefaultForNewlyFollowed => '팔로우 할 때 기본적으로 답걸도 타임라인에 나오게 하기';
	@override String get newNoteRecived => '새 노트 있어예';
	@override String get newNote => '새로운 노트';
	@override String get sounds => '소리';
	@override String get sound => '소리';
	@override String get notificationSoundSettings => '알림 설정';
	@override String get listen => '듣기';
	@override String get none => '어ᇝ엄';
	@override String get showInPage => '바닥서 보기';
	@override String get popout => '새 창 열기';
	@override String get volume => '음량';
	@override String get masterVolume => '대빵 음량';
	@override String get notUseSound => '음소거하기';
	@override String get useSoundOnlyWhenActive => 'Misskey가 활성화되어 있을 때만 소리 내기';
	@override String get details => '자세히';
	@override String get renoteDetails => '리노트 상세 내용';
	@override String get chooseEmoji => '이모지 개리기';
	@override String get unableToProcess => '작업 다 몬 했십니다';
	@override String get recentUsed => '최근 쓴 놈';
	@override String get install => '설치';
	@override String get uninstall => '삭제';
	@override String get installedApps => '설치된 애플리케이션';
	@override String get nothing => '어ᇝ어예';
	@override String get installedDate => '설치한 날';
	@override String get lastUsedDate => '마지막 사용';
	@override String get state => '상태';
	@override String get sort => '정렬하기';
	@override String get ascendingOrder => '작은 순';
	@override String get descendingOrder => '큰 순';
	@override String get scratchpad => '스크래치 패드';
	@override String get scratchpadDescription => '스크래치 패드는 AiScript를 끼적거리는 창입니더. Misskey랑 갖다 이리저리 상호작용하는 코드를 서가 굴리멘은 그 결과도 바로 확인할 수 있십니다.';
	@override String get uiInspector => 'UI 인스펙터';
	@override String get uiInspectorDescription => '메모리에 있는 UI 컴포넌트의 인스턴트 목록을 볼 수 있습니다. UI 컴포넌트는 Ui:C: 계열 함수로 만들어집니다.';
	@override String get output => '출력';
	@override String get script => '스크립트';
	@override String get disablePagesScript => '온갖 바닥서 AiScript를 쓰지 않음';
	@override String get updateRemoteUser => '원겍 사용자 근황 알아오기';
	@override String get unsetUserAvatar => '아바타 치우기';
	@override String get unsetUserAvatarConfirm => '아바타 갖다 치울까예?';
	@override String get unsetUserBanner => '배너 치우기';
	@override String get unsetUserBannerConfirm => '배너 갖다 치울까예?';
	@override String get deleteAllFiles => '파일 말캉 뭉캐기';
	@override String get deleteAllFilesConfirm => '파일을 싸그리 다 뭉캐삐릴까예?';
	@override String get removeAllFollowing => '팔로잉 말캉 무루기';
	@override String removeAllFollowingDescription({required Object host}) => '${host} 서버랑 걸어놓은 모든 팔로잉을 무룹니다. 고 서버가 아예 없어지삐맀든가, 그런 경우에 하이소.';
	@override String get userSuspended => '요 게정은... 얼어 있십니다.';
	@override String get userSilenced => '요 게정은... 수ᇚ혀 있십니다.';
	@override String get yourAccountSuspendedTitle => '계정이 정지되었습니다';
	@override String get yourAccountSuspendedDescription => '이 계정은 서버의 이용 약관을 위반하거나, 기타 다른 이유로 인해 정지되었습니다. 자세한 사항은 관리자에게 문의해 주십시오. 계정을 새로 생성하지 마십시오.';
	@override String get tokenRevoked => '유효하지 않은 토큰입니다';
	@override String get tokenRevokedDescription => '로그인 토큰이 비활성화되었습니다. 다시 로그인하여 주십시오.';
	@override String get accountDeleted => '계정이 정지되었습니다';
	@override String get accountDeletedDescription => '이 계정이 삭제되었습니다.';
	@override String get menu => '메뉴';
	@override String get divider => '구분선';
	@override String get addItem => '항목 추가';
	@override String get rearrange => '정렬';
	@override String get relays => '릴레이';
	@override String get addRelay => '릴레이 옇기';
	@override String get inboxUrl => 'Inbox 주소';
	@override String get addedRelays => '옇은 릴레이';
	@override String get serviceworkerInfo => '푸시 알림을 수행하려면 활성화해야 합니다.';
	@override String get deletedNote => '뭉캔 걸';
	@override String get invisibleNote => '비공개 노트';
	@override String get enableInfiniteScroll => '알아서 더 보기';
	@override String get visibility => '공개 범위';
	@override String get poll => '투표';
	@override String get useCw => '내용 수ᇚ후기';
	@override String get enablePlayer => '플레이어 열기';
	@override String get disablePlayer => '플레이어 닫기';
	@override String get expandTweet => '게시물 확장하기';
	@override String get themeEditor => '테마 에디터';
	@override String get description => '설멩';
	@override String get describeFile => '캡션 옇기';
	@override String get enterFileDescription => '캡션 서기';
	@override String get author => '맨던 사람';
	@override String get leaveConfirm => '저장하지 않은 변경사항이 있습니다. 취소하시겠습니까?';
	@override String get manage => '간리';
	@override String get plugins => '플러그인';
	@override String get preferencesBackups => '환경설정 백업';
	@override String get deck => '덱';
	@override String get undeck => '덱 해제';
	@override String get useBlurEffectForModal => '모달에 흐림 효과 사용';
	@override String get useFullReactionPicker => '모든 기능이 포함된 리액션 선택기 사용';
	@override String get width => '폭';
	@override String get height => '높이';
	@override String get large => '커게';
	@override String get medium => '엔갆게';
	@override String get small => '쪼맪게';
	@override String get generateAccessToken => '액세스 토큰 생성';
	@override String get permission => '권한';
	@override String get adminPermission => '관리자 권한';
	@override String get enableAll => '전체 선택';
	@override String get disableAll => '전체 해제';
	@override String get tokenRequested => '계정 접근 허용';
	@override String get pluginTokenRequestedDescription => '이 플러그인은 여기서 설정한 권한을 사용할 수 있게 됩니다.';
	@override String get notificationType => '알림 유형';
	@override String get edit => '편집';
	@override String get emailServer => '전자우펜 서버';
	@override String get enableEmail => '이메일 송신 기능 활성화';
	@override String get emailConfigInfo => '가입 시 메일 주소 확인이나 비밀번호 초기화 시에 사용합니다.';
	@override String get email => '전자우펜';
	@override String get emailAddress => '전자우펜 주소';
	@override String get smtpConfig => 'SMTP 서버 설정';
	@override String get smtpHost => '호스트 이럼';
	@override String get smtpPort => '포트';
	@override String get smtpUser => '사용자 이럼';
	@override String get smtpPass => '비밀번호';
	@override String get emptyToDisableSmtpAuth => 'SMTP 인증을 사용하지 않으려면 공란으로 비워둡니다.';
	@override String get smtpSecure => 'SMTP 연결에 Implicit SSL/TTS 사용';
	@override String get smtpSecureInfo => 'STARTTLS 사용 시에는 해제합니다.';
	@override String get testEmail => '이메일 전송 테스트';
	@override String get wordMute => '단어 뮤트';
	@override String get wordMuteDescription => '정해진 단어가 포함된 노트를 최소화 한 상태로 표시합니다. 최소화 된 노트는 클릭해서 표시할 수 있습니다.';
	@override String get hardWordMute => '하드 단어 뮤트';
	@override String get showMutedWord => '뮤트한 단어를 표시하기';
	@override String get hardWordMuteDescription => '정한 단어가 들어간 노트를 숨깁니다. 단어 뮤트와 차이점은 노트가 아예 보이지 않습니다.';
	@override String get regexpError => '정규 표현식 오류';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab}단어 뮤트 ${line}행의 정규 표현식에 오류가 발생했습니다:';
	@override String get instanceMute => '서버 뮤트';
	@override String userSaysSomething({required Object name}) => '${name}님이 무언가를 말했습니다';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name}님이 "${word}"를 언급했습니다.';
	@override String get makeActive => '활성화';
	@override String get display => '보기';
	@override String get copy => '복사';
	@override String get copiedToClipboard => '클립보드에 복사되었습니다.';
	@override String get metrics => '통계';
	@override String get overview => '요약';
	@override String get logs => '로그';
	@override String get delayed => '지연';
	@override String get database => '데이터베이스';
	@override String get channel => '채널';
	@override String get create => '맨걸기';
	@override String get notificationSetting => '알림 설정';
	@override String get notificationSettingDesc => '표시할 알림의 종류를 선택해 주세요.';
	@override String get useGlobalSetting => '글로벌 설정을 사용하기';
	@override String get useGlobalSettingDesc => '활성화하면 계정의 알림 설정이 적용됩니다. 비활성화하면 개별적으로 설정할 수 있게 됩니다.';
	@override String get other => '기타';
	@override String get regenerateLoginToken => '로그인 토큰을 재생성';
	@override String get regenerateLoginTokenDescription => '로그인할 때 사용되는 내부 토큰을 재생성합니다. 일반적으로 이 작업을 실행할 필요는 없습니다. 이 기능을 사용하면 이 계정으로 로그인한 모든 기기에서 로그아웃됩니다.';
	@override String get theKeywordWhenSearchingForCustomEmoji => '맞춤 이모티콘을 검색할 때 키워드가 됩니다.';
	@override String get setMultipleBySeparatingWithSpace => '공백으로 구분하여 여러 개 설정할 수 있습니다.';
	@override String get fileIdOrUrl => '파일 ID 또는 URL';
	@override String get behavior => '동작';
	@override String get sample => '예시';
	@override String get abuseReports => '신고하기';
	@override String get reportAbuse => '신고하기';
	@override String get reportAbuseRenote => '리노트 신고하기';
	@override String reportAbuseOf({required Object name}) => '${name}님얼 신고하기';
	@override String get fillAbuseReportDescription => '신고 사유를 자세히 기재해 주세요. 대상 노트나 페이지 등이 있는 경우에는 해당 URL도 기재해 주세요.';
	@override String get abuseReported => '신고를 보냈습니다. 신고해 주셔서 감사합니다.';
	@override String get reporter => '신고한 사람';
	@override String get reporteeOrigin => '신고덴 사람';
	@override String get reporterOrigin => '신고한 곳';
	@override String get send => '전송';
	@override String get openInNewTab => '새 탭에서 열기';
	@override String get openInSideView => '사이드뷰로 열기';
	@override String get defaultNavigationBehaviour => '기본 탐색 동작';
	@override String get editTheseSettingsMayBreakAccount => '이 설정을 변경하면 계정이 손상될 수 있습니다.';
	@override String get instanceTicker => '노트의 서버 정보';
	@override String waitingFor({required Object x}) => '${x}(얼)럴 지달리고 잇십니다';
	@override String get random => '무작이';
	@override String get system => '시스템';
	@override String get switchUi => 'UI 전환';
	@override String get desktop => '데스크탑';
	@override String get clip => '클립 맨걸기';
	@override String get createNew => '새로 맨걸기';
	@override String get optional => '옵션';
	@override String get createNewClip => '새 클립 만들기';
	@override String get unclip => '클립 해제';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => '이 노트는 ‘${name}’ 클립을 이미 포함합니다. 클립에서 제외하시겠습니까?';
	@override String get public => '공개';
	@override String get private => '비공개';
	@override String i18nInfo({required Object link}) => 'Misskey는 자원봉사자들에 의해 다양한 언어로 번역되고 있습니다. ${link}에서 번역에 참가할 수 있습니다.';
	@override String get manageAccessTokens => '액세스 토큰 관리';
	@override String get accountInfo => '계정 정보';
	@override String get notesCount => '노트 수';
	@override String get repliesCount => '답글 수';
	@override String get renotesCount => '리노트한 수';
	@override String get repliedCount => '받은 답글 수';
	@override String get renotedCount => '리노트덴 수';
	@override String get followingCount => '팔로우 수';
	@override String get followersCount => '팔로워 수';
	@override String get sentReactionsCount => '리액션 수';
	@override String get receivedReactionsCount => '받은 리액션 수';
	@override String get pollVotesCount => '투표 수';
	@override String get pollVotedCount => '받은 투표 수';
	@override String get yes => '예';
	@override String get no => '아니오';
	@override String get driveFilesCount => '드라이브에 있는 파일 수';
	@override String get driveUsage => '드라이브 사용량';
	@override String get noCrawle => '검색엔진의 인덱싱 거부';
	@override String get noCrawleDescription => '검색엔진에 유저 페이지, 노트, 페이지 등의 콘텐츠를 인덱싱되지 않게 합니다.';
	@override String get lockedAccountInfo => '팔로우를 승인으로 승인받더라도 노트의 공개 범위를 \'팔로워\'로 하지 않는 한 누구나 당신의 노트를 볼 수 있습니다.';
	@override String get alwaysMarkSensitive => '미디어를 항상 열람 주의로 설정';
	@override String get loadRawImages => '첨부한 이미지의 썸네일을 원본화질로 표시';
	@override String get disableShowingAnimatedImages => '움직이는 이미지를 자동으로 재생하지 않음';
	@override String get highlightSensitiveMedia => '미디어가 민감한 내용이라는 것을 알기 쉽게 표시';
	@override String get verificationEmailSent => '확인 메일을 발송하였습니다. 설정을 완료하려면 메일에 첨부된 링크를 확인해 주세요.';
	@override String get notSet => '설정되지 않음';
	@override String get emailVerified => '메일 주소가 확인되었습니다.';
	@override String get noteFavoritesCount => '질겨찾기한 노트 수';
	@override String get pageLikesCount => '좋아요 한 Page 수';
	@override String get pageLikedCount => 'Page에 받은 좋아요 수';
	@override String get contact => '연락처';
	@override String get useSystemFont => '시스템 기본 글꼴을 사용';
	@override String get clips => '클립 맨걸기';
	@override String get experimentalFeatures => '실험실';
	@override String get experimental => '실험실';
	@override String get thisIsExperimentalFeature => '이 기능은 실험적인 기능입니다. 사양이 변경되거나 정상적으로 동작하지 않을 가능성이 있습니다.';
	@override String get developer => '개발자';
	@override String get makeExplorable => '계정을 쉽게 발견하도록 하기';
	@override String get makeExplorableDescription => '비활성화하면 "발견하기"에 나의 계정을 표시하지 않습니다.';
	@override String get duplicate => '복제';
	@override String get left => '왼쪽';
	@override String get center => '가운데';
	@override String get wide => '넓게';
	@override String get narrow => '좁게';
	@override String get reloadToApplySetting => '이 설정을 적용하려면 페이지를 새로고침해야 합니다. 바로 새로고침하시겠습니까?';
	@override String get needReloadToApply => '변경 사항은 새로고침하면 적용됩니다.';
	@override String get needToRestartServerToApply => '변경 사항은 새로고침이 필요합니다.';
	@override String get showTitlebar => '타이틀 바를 표시하기';
	@override String get clearCache => '캐시 비우기';
	@override String onlineUsersCount({required Object n}) => '${n}명이 접속 중';
	@override String nUsers({required Object n}) => '${n} 사용자';
	@override String nNotes({required Object n}) => '${n} 노트';
	@override String get sendErrorReports => '오류 보고서 보내기';
	@override String get sendErrorReportsDescription => '이 설정을 활성화하면, 문제가 발생했을 때 오류에 대한 상세 정보를 Misskey에 보내어 더 나은 소프트웨어를 만드는 데에 도움을 줄 수 있습니다.';
	@override String get myTheme => '내 테마';
	@override String get backgroundColor => '배경 색';
	@override String get accentColor => '강조 색상';
	@override String get textColor => '문자 색';
	@override String get saveAs => '다른 이름으로 저장';
	@override String get advanced => '고급';
	@override String get advancedSettings => '고급 설정';
	@override String get value => '값';
	@override String get createdAt => '생성된 날짜';
	@override String get updatedAt => '수정한 날짜';
	@override String get saveConfirm => '저장하시겠습니까?';
	@override String get deleteConfirm => '삭제하시겠습니까?';
	@override String get invalidValue => '올바른 값이 아닙니다.';
	@override String get registry => '레지스트리';
	@override String get closeAccount => '계정 폐쇄';
	@override String get currentVersion => '현재 버전';
	@override String get latestVersion => '최신 버전';
	@override String get youAreRunningUpToDateClient => '사용 중인 클라이언트는 최신입니다.';
	@override String get newVersionOfClientAvailable => '새로운 버전의 클라이언트를 이용할 수 있습니다.';
	@override String get usageAmount => '사용량';
	@override String get capacity => '용량';
	@override String get inUse => '사용중';
	@override String get editCode => '코드 수정';
	@override String get apply => '적용';
	@override String get receiveAnnouncementFromInstance => '이 서버의 알림을 이메일로 수신할게요';
	@override String get emailNotification => '메일 알림';
	@override String get publish => '공개';
	@override String get inChannelSearch => '채널에서 검색';
	@override String get useReactionPickerForContextMenu => '우클릭하여 리액션 선택기 열기';
	@override String typingUsers({required Object users}) => '${users} 님이 서고 잇어예';
	@override String get jumpToSpecifiedDate => '특정 날짜로 이동';
	@override String get showingPastTimeline => '과거의 타임라인을 표시하고 있어요';
	@override String get clear => '지우기';
	@override String get markAllAsRead => '모두 읽은 상태로 표시';
	@override String get goBack => '뒤로';
	@override String get unlikeConfirm => '좋네예럴 무룹니꺼?';
	@override String get fullView => '전체 화면';
	@override String get quitFullView => '전체 화면 해제';
	@override String get addDescription => '설명 추가';
	@override String get userPagePinTip => '각 노트의 메뉴에서 「프로필에 고정」을 선택하는 것으로, 여기에 노트를 표시해 둘 수 있어요.';
	@override String get notSpecifiedMentionWarning => '수신자가 선택되지 않은 멘션이 있어요';
	@override String get info => '정보';
	@override String get userInfo => '유저 정보';
	@override String get unknown => '알 수 없음';
	@override String get onlineStatus => '온라인 상태';
	@override String get hideOnlineStatus => '온라인 상태 숨기기';
	@override String get hideOnlineStatusDescription => '온라인 상태를 숨기면, 검색과 같은 일부 기능에 영향을 미칠 수 있습니다.';
	@override String get online => '온라인';
	@override String get active => '최근에 활동함';
	@override String get offline => '오프라인';
	@override String get notRecommended => '추천하지 않음';
	@override String get botProtection => 'Bot 방어';
	@override String get instanceBlocking => '서버 차단';
	@override String get selectAccount => '계정 개리기';
	@override String get switchAccount => '계정 바꾸기';
	@override String get enabled => '활성화';
	@override String get disabled => '비활성화';
	@override String get quickAction => '빠른 동작';
	@override String get user => '사용자';
	@override String get administration => '간리';
	@override String get accounts => '계정';
	@override String get switch_ => '전환';
	@override String get noMaintainerInformationWarning => '관리자 정보가 설정되어 있지 않습니다.';
	@override String get noInquiryUrlWarning => '문의처 주소를 설정하지 않았습니다.';
	@override String get noBotProtectionWarning => 'Bot 방어가 설정되어 있지 않습니다.';
	@override String get configure => '설정하기';
	@override String get postToGallery => '갤러리에 업로드';
	@override String get postToHashtag => '이 해시태그에 게시';
	@override String get gallery => '갤러리';
	@override String get recentPosts => '최근 게시물';
	@override String get popularPosts => '인기 게시물';
	@override String get shareWithNote => '노트로 공유';
	@override String get ads => '광고';
	@override String get expiration => '기한';
	@override String get startingperiod => '시작 기간';
	@override String get memo => '메모';
	@override String get priority => '우선순위';
	@override String get high => '높음';
	@override String get middle => '엔갆게';
	@override String get low => '낮음';
	@override String get emailNotConfiguredWarning => '메일 주소가 설정되어 있지 않습니다.';
	@override String get ratio => '비율';
	@override String get previewNoteText => '본문 미리보기';
	@override String get customCss => 'CSS 사용자화';
	@override String get customCssWarn => '이 설정은 기능을 알고 있는 경우에만 사용해야 합니다. 잘못된 값을 입력하면 클라이언트가 정상적으로 작동하지 않을 수 있습니다.';
	@override String get global => '글로벌';
	@override String get squareAvatars => '프로필 아바타를 사각형으로 표시';
	@override String get sent => '전송';
	@override String get received => '수신';
	@override String get searchResult => '검색 결과';
	@override String get hashtags => '해시태그';
	@override String get troubleshooting => '문제 해결';
	@override String get useBlurEffect => 'UI에 흐림 효과 사용';
	@override String get learnMore => '자세히';
	@override String get misskeyUpdated => 'Misskey가 업데이트 되었습니다!';
	@override String get whatIsNew => '패치 정보 보기';
	@override String get translate => '번역';
	@override String translatedFrom({required Object x}) => '${x}서 번옉';
	@override String get accountDeletionInProgress => '계정 삭제 작업을 진행하고 있습니다';
	@override String get usernameInfo => '서버상에서 계정을 식별하기 위한 이름. 알파벳(a~z, A~Z), 숫자(0~9) 및 언더바(_)를 사용할 수 있습니다. 유저명은 나중에 변경할 수 없습니다.';
	@override String get aiChanMode => '아이 모드';
	@override String get devMode => '개발자 모드';
	@override String get keepCw => 'CW 유지하기';
	@override String get pubSub => 'Pub/Sub 계정';
	@override String get lastCommunication => '마지막 통신';
	@override String get resolved => '처리함';
	@override String get unresolved => '처리되지 않음';
	@override String get breakFollow => '팔로워 해제';
	@override String get breakFollowConfirm => '팔로우를 해제하시겠습니까?';
	@override String get itsOn => '켜져 있습니다';
	@override String get itsOff => '꺼져 있습니다';
	@override String get on => '킴';
	@override String get off => '껌';
	@override String get emailRequiredForSignup => '가입할 때 이메일 주소 입력을 필수로 하기';
	@override String get unread => '읽지 않음';
	@override String get filter => '필터';
	@override String get controlPanel => '제어판';
	@override String get manageAccounts => '계정 관리';
	@override String get makeReactionsPublic => '리액션 목록을 공개하기';
	@override String get makeReactionsPublicDescription => '나의 리액션을 누구나 볼 수 있게 합니다.';
	@override String get classic => '클래식';
	@override String get muteThread => '글타래 뮤트';
	@override String get unmuteThread => '글타래 뮤트 해제';
	@override String get followingVisibility => '팔로우의 공개 범위';
	@override String get followersVisibility => '팔로워의 공개 범위';
	@override String get continueThread => '글타래 더 보기';
	@override String get deleteAccountConfirm => '계정이 삭제되고 되돌릴 수 없게 됩니다. 계속하시겠습니까? ';
	@override String get incorrectPassword => '비밀번호가 올바르지 않습니다.';
	@override String get incorrectTotp => 'OTP 번호가 틀렸거나 유효기간이 만료되어 있을 수 있습니다.';
	@override String voteConfirm({required Object choice}) => '"${choice}"에 투표하시겠습니까?';
	@override String get hide => '수ᇚ후기';
	@override String get useDrawerReactionPickerForMobile => '모바일에서 드로어 메뉴로 표시';
	@override String welcomeBackWithName({required Object name}) => '${name}님, 환영합니다.';
	@override String clickToFinishEmailVerification({required Object ok}) => '[${ok}]럴 누질라서 전자우펜 정멩얼 껕내이소.';
	@override String get overridedDeviceKind => '장치 유형';
	@override String get smartphone => '스마트폰';
	@override String get tablet => '태블릿';
	@override String get auto => '자동';
	@override String get themeColor => '테마 컬러';
	@override String get size => '크기';
	@override String get numberOfColumn => '한 줄에 보일 리액션의 수';
	@override String get searchByGoogle => '찾기';
	@override String get instanceDefaultLightTheme => '서버 기본 라이트 테마';
	@override String get instanceDefaultDarkTheme => '서버 기본 다크 테마';
	@override String get instanceDefaultThemeDescription => '객체 형식({}로 감싼 형태)의 테마 코드를 입력해 주세요.';
	@override String get mutePeriod => '뮤트할 기간';
	@override String get period => '기간';
	@override String get indefinitely => '무기한';
	@override String get tenMinutes => '십 분';
	@override String get oneHour => '한 시간';
	@override String get oneDay => '하리';
	@override String get oneWeek => '한 주';
	@override String get oneMonth => '한 달';
	@override String get threeMonths => '3개월';
	@override String get oneYear => '1년';
	@override String get threeDays => '3일';
	@override String get reflectMayTakeTime => '반영되기까지 시간이 걸릴 수 있습니다.';
	@override String get failedToFetchAccountInformation => '계정 정보를 가져오지 못했습니다';
	@override String get rateLimitExceeded => '요청 제한 횟수를 초과하였습니다';
	@override String get cropImage => '이미지 자르기';
	@override String get cropImageAsk => '이미지를 자르시겠습니까?';
	@override String get cropYes => '잘라내기';
	@override String get cropNo => '그대로 사용';
	@override String get file => '파일';
	@override String recentNHours({required Object n}) => '최근 ${n}시간';
	@override String recentNDays({required Object n}) => '최근 ${n}일';
	@override String get noEmailServerWarning => '메일 서버가 설정되어 있지 않습니다.';
	@override String get thereIsUnresolvedAbuseReportWarning => '해결되지 않은 신고가 있습니다.';
	@override String get recommended => '추천';
	@override String get check => '체크';
	@override String get driveCapOverrideLabel => '이 유저의 드라이브 용량을 변경';
	@override String get driveCapOverrideCaption => '0 이하를 지정하면 해제됩니다.';
	@override String get requireAdminForView => '열람하려면 관리자 계정으로 로그인해야 합니다.';
	@override String get isSystemAccount => '시스템에 의해 자동으로 생성되어 관리되는 계정입니다.';
	@override String typeToConfirm({required Object x}) => '게속할라먼 ${x}럴 누질라 주이소';
	@override String get deleteAccount => '계정 삭제';
	@override String get document => '문서';
	@override String get numberOfPageCache => '페이지 캐시 수';
	@override String get numberOfPageCacheDescription => '숫자가 클 수록 편리성이 높아지지만, 시스템 자원과 메모리를 더 많이 사용합니다.';
	@override String get logoutConfirm => '로그아웃 하시겠습니까?';
	@override String get logoutWillClearClientData => '로그아웃하면 클라이언트의 설정 데이터가 브라우저에서 지워지게 됩니다. 다시 로그인할 때 설정 데이터를 복원할 수 있도록 하려면 설정 자동 백업을 활성화하세요.';
	@override String get lastActiveDate => '마지막 이용';
	@override String get statusbar => '상태바';
	@override String get pleaseSelect => '개리 주이소';
	@override String get reverse => '플립';
	@override String get colored => '색 입히기';
	@override String get refreshInterval => '업데이트 주기';
	@override String get label => '라벨';
	@override String get type => '종류';
	@override String get speed => '속도';
	@override String get slow => '느리게';
	@override String get fast => '빠르게';
	@override String get sensitiveMediaDetection => '민감한 미디어 탐지';
	@override String get localOnly => '로컬에만';
	@override String get remoteOnly => '웬겍만';
	@override String get failedToUpload => '업로드 실패';
	@override String get cannotUploadBecauseInappropriate => '이 파일은 부적절한 내용을 포함한다고 판단되어 업로드할 수 없습니다.';
	@override String get cannotUploadBecauseNoFreeSpace => '드라이브 용량이 부족하여 업로드할 수 없습니다.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => '파일 크기가 너무 크기 때문에 업로드할 수 없습니다.';
	@override String get cannotUploadBecauseUnallowedFileType => '허가되지 않은 유형의 파일이기에 업로드할 수 없습니다.';
	@override String get beta => '베타';
	@override String get enableAutoSensitive => '자동 NSFW 탐지';
	@override String get enableAutoSensitiveDescription => '이용 가능할 경우 기계학습을 통해 자동으로 미디어 NSFW를 설정합니다. 이 기능을 해제하더라도, 서버 정책에 따라 자동으로 설정될 수 있습니다.';
	@override String get activeEmailValidationDescription => '유저가 입력한 메일 주소가 일회용 메일인지, 실제로 통신할 수 있는 지 엄격하게 검사합니다. 해제할 경우 이메일 형식에 대해서만 검사합니다.';
	@override String get navbar => '내비게이션 바';
	@override String get shuffle => '셔플';
	@override String get account => '계정';
	@override String get move => '이동';
	@override String get pushNotification => '푸시 알림';
	@override String get subscribePushNotification => '푸시 알림 켜기';
	@override String get unsubscribePushNotification => '푸시 알림 끄기';
	@override String get pushNotificationAlreadySubscribed => '푸시 알림이 이미 켜져 있습니다';
	@override String get pushNotificationNotSupported => '브라우저나 서버에서 푸시 알림이 지원되지 않습니다';
	@override String get sendPushNotificationReadMessage => '푸시 알림이나 메시지를 읽은 뒤 푸시 알림을 삭제';
	@override String get sendPushNotificationReadMessageCaption => '「」이라는 알림이 잠깐 표시됩니다. 기기의 전력 소비량이 증가할 수 있습니다.';
	@override String get windowMaximize => '최대화';
	@override String get windowMinimize => '최소화';
	@override String get windowRestore => '복구';
	@override String get caption => '캡션';
	@override String get loggedInAsBot => '봇 계정으로 로그인중';
	@override String get tools => '도구';
	@override String get cannotLoad => '불러오지 못했습니다';
	@override String get numberOfProfileView => '프로필 뷰 수';
	@override String get like => '좋네예!';
	@override String get unlike => '좋네예 무루기';
	@override String get numberOfLikes => '좋네예 수';
	@override String get show => '보기';
	@override String get neverShow => '다시 보지 않기';
	@override String get remindMeLater => '나중에 알림';
	@override String get didYouLikeMisskey => 'Misskey가 마음에 드시나요?';
	@override String pleaseDonate({required Object host}) => 'Misskey는 ${host} 서버의 무료 소프트웨어입니다. 앞으로도 개발을 이어 나가려면 후원이 절실히 필요합니다!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => '소스 코드는 ${anchor}에서 받아보실 수 있습니다.';
	@override String get roles => '옉할';
	@override String get role => '옉할';
	@override String get noRole => '옉할이 어ᇝ십니다';
	@override String get normalUser => '일반 유저';
	@override String get undefined => '정의되지 않음';
	@override String get assign => '할당';
	@override String get unassign => '할당 취소';
	@override String get color => '색';
	@override String get manageCustomEmojis => '커스텀 이모지 관리';
	@override String get manageAvatarDecorations => '아바타 꾸미기 관리';
	@override String get youCannotCreateAnymore => '더 이상 생성할 수 없습니다.';
	@override String get cannotPerformTemporary => '일시적으로 사용할 수 없음';
	@override String get cannotPerformTemporaryDescription => '조작 횟수 제한을 초과하여 일시적으로 사용이 불가합니다. 잠시 후 다시 시도해 주세요.';
	@override String get invalidParamError => '매개변수 오류';
	@override String get invalidParamErrorDescription => '요청 매개변수에 문제가 있습니다. 대부분의 경우 Misskey의 버그가 원인이지만, 입력 문자수가 너무 많았을 가능성 등도 있습니다.';
	@override String get permissionDeniedError => '작업이 거부되었습니다';
	@override String get permissionDeniedErrorDescription => '이 작업을 수행할 권한이 없습니다.';
	@override String get preset => '프리셋';
	@override String get selectFromPresets => '프리셋에서 선택';
	@override String get achievements => '도전 과제';
	@override String get gotInvalidResponseError => '서버의 응답이 올바르지 않습니다';
	@override String get gotInvalidResponseErrorDescription => ' 서버가 다운되었거나 점검중일 가능성이 있습니다. 잠시후에 다시 시도해 주십시오.';
	@override String get thisPostMayBeAnnoying => '이 게시물은 다른 유저에게 피해를 줄 가능성이 있습니다.';
	@override String get thisPostMayBeAnnoyingHome => '홈에 게시';
	@override String get thisPostMayBeAnnoyingCancel => '아이예';
	@override String get thisPostMayBeAnnoyingIgnore => '이대로 게시';
	@override String get collapseRenotes => '이미 본 리노트를 간략화하기';
	@override String get collapseRenotesDescription => '리액션이나 리노트를 한 노트를 접어서 표시합니다.';
	@override String get internalServerError => '내부 서버 오류';
	@override String get internalServerErrorDescription => '내부 서버에서 예기치 않은 오류가 발생했습니다.';
	@override String get copyErrorInfo => '오류 정보 복사';
	@override String get joinThisServer => '이 서버에 가입';
	@override String get exploreOtherServers => '다른 서버 찾기';
	@override String get letsLookAtTimeline => '타임라인 구경하기';
	@override String get disableFederationConfirm => '정말로 연합을 끄시겠습니까?';
	@override String get disableFederationConfirmWarn => '연합을 끄더라도 게시물이 비공개로 전환되는 것은 아닙니다. 대부분의 경우 연합을 비활성화할 필요가 없습니다.';
	@override String get disableFederationOk => '연합을 끄기';
	@override String get invitationRequiredToRegister => '현재 이 서버는 비공개입니다. 회원가입을 하시려면 초대 코드가 필요합니다.';
	@override String get emailNotSupported => '이 서버에서는 메일 전송을 지원하지 않습니다';
	@override String get postToTheChannel => '채널에 게시하기';
	@override String get cannotBeChangedLater => '나중에 변경할 수 없습니다.';
	@override String get reactionAcceptance => '리액션 수신';
	@override String get likeOnly => '좋네예마';
	@override String get likeOnlyForRemote => '리모트에서는 좋아요만 받기';
	@override String get nonSensitiveOnly => '민감한 이모지를 제외하고 받기';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => '민감한 이모지를 제외하고 받기(리모트에서는 좋아요만 받기)';
	@override String get rolesAssignedToMe => '나에게 할당된 역할';
	@override String get resetPasswordConfirm => '비밀번호를 재설정하시겠습니까?';
	@override String get sensitiveWords => '민감한 단어';
	@override String get sensitiveWordsDescription => '설정한 단어가 포함된 노트의 공개 범위를 \'홈\'으로 강제합니다. 개행으로 구분하여 여러 개를 지정할 수 있습니다.';
	@override String get sensitiveWordsDescription2 => '공백으로 구분하면 AND 지정이 되며, 키워드를 슬래시로 둘러싸면 정규 표현식이 됩니다.';
	@override String get prohibitedWords => '금지 단어';
	@override String get prohibitedWordsDescription => '설정된 단어가 포함되는 노트를 게시하려고 하면, 오류가 발생하도록 합니다. 줄바꿈으로 구분지어 복수 설정할 수 있습니다.';
	@override String get prohibitedWordsDescription2 => '공백으로 구분하면 AND 지정이 되며, 키워드를 슬래시로 둘러싸면 정규 표현식이 됩니다.';
	@override String get hiddenTags => '수ᇚ훈 해시태그';
	@override String get hiddenTagsDescription => '설정한 태그를 트렌드에 표시하지 않도록 합니다. 줄 바꿈으로 하나씩 나눠서 설정할 수 있습니다.';
	@override String get notesSearchNotAvailable => '노트 검색을 이용하실 수 없습니다.';
	@override String get license => '라이선스';
	@override String get unfavoriteConfirm => '즐겨찾기를 해제하시겠습니까?';
	@override String get myClips => '내 클립';
	@override String get drivecleaner => '드라이브 정리';
	@override String get retryAllQueuesNow => '모든 큐를 다시 시도';
	@override String get retryAllQueuesConfirmTitle => '지금 다시 시도하시겠습니까?';
	@override String get retryAllQueuesConfirmText => '일시적으로 서버의 부하가 증가할 수 있습니다.';
	@override String get enableChartsForRemoteUser => '리모트 유저의 차트를 생성';
	@override String get enableChartsForFederatedInstances => '리모트 서버의 차트를 생성';
	@override String get enableStatsForFederatedInstances => '리모트 서버 정보 받아오기';
	@override String get showClipButtonInNoteFooter => '노트 동작에 클립을 추가';
	@override String get reactionsDisplaySize => '리액션 표시 크기';
	@override String get limitWidthOfReaction => '리액션의 최대 폭을 제한하고 작게 표시하기';
	@override String get noteIdOrUrl => '노트 ID 및 URL';
	@override String get video => '동영상';
	@override String get videos => '동영상';
	@override String get audio => '소리';
	@override String get audioFiles => '소리';
	@override String get dataSaver => '데이터 절약 모드';
	@override String get accountMigration => '계정 이동';
	@override String get accountMoved => '이 유저는 다음 계정으로 이사했습니다:';
	@override String get accountMovedShort => '이사한 계정입니다';
	@override String get operationForbidden => '사용할 수 없습니다';
	@override String get forceShowAds => '광고를 항상 표시';
	@override String get addMemo => '메모 추가';
	@override String get editMemo => '메모 편집';
	@override String get reactionsList => '리액션 목록';
	@override String get renotesList => '리노트 목록';
	@override String get notificationDisplay => '알림 표시';
	@override String get leftTop => '왼쪽 상단';
	@override String get rightTop => '오른쪽 상단';
	@override String get leftBottom => '왼쪽 하단';
	@override String get rightBottom => '오른쪽 하단';
	@override String get stackAxis => '나열 방향';
	@override String get vertical => '세로';
	@override String get horizontal => '가로';
	@override String get position => '위치';
	@override String get serverRules => '서버 규칙';
	@override String get pleaseConfirmBelowBeforeSignup => '이 서버에 가입하기 전에 아래 사항을 확인하여 주십시오.';
	@override String get pleaseAgreeAllToContinue => '계속하시려면 모든 항목에 동의하십시오.';
	@override String get continue_ => '계속';
	@override String get preservedUsernames => '예약 사용자 이럼';
	@override String get preservedUsernamesDescription => '예약할 유저명을 한 줄에 하나씩 입력합니다. 여기에서 지정한 유저명으로는 계정을 생성할 수 없게 됩니다. 단, 관리자 권한으로 계정을 생성할 때에는 해당되지 않으며, 이미 존재하는 계정도 영향을 받지 않습니다.';
	@override String get createNoteFromTheFile => '이 파일로 노트를 작성';
	@override String get archive => '아카이브';
	@override String get archived => '아카이브 됨';
	@override String get unarchive => '보관 취소';
	@override String channelArchiveConfirmTitle({required Object name}) => '${name} 채널을 보존하시겠습니까?';
	@override String get channelArchiveConfirmDescription => '보존한 채널은 채널 목록과 검색 결과에 표시되지 않으며 새로운 노트도 작성할 수 없습니다.';
	@override String get thisChannelArchived => '이 채널은 보존되었습니다.';
	@override String get displayOfNote => '노트 표시';
	@override String get initialAccountSetting => '초기 설정';
	@override String get youFollowing => '팔로잉';
	@override String get preventAiLearning => '기계학습(생성형 AI)으로의 사용을 거부';
	@override String get preventAiLearningDescription => '외부의 문장 생성 AI나 이미지 생성 AI에 대해 제출한 노트나 이미지 등의 콘텐츠를 학습의 대상으로 사용하지 않도록 요구합니다. 다만, 이 요구사항을 지킬 의무는 없기 때문에 학습을 완전히 방지하는 것은 아닙니다.';
	@override String get options => '옵션';
	@override String get specifyUser => '사용자 지정';
	@override String get lookupConfirm => '조회 할까요?';
	@override String get openTagPageConfirm => '해시태그의 페이지를 열까요?';
	@override String get specifyHost => '호스트 지정';
	@override String get failedToPreviewUrl => '미리 볼 수 없음';
	@override String get update => '업데이트';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => '이 이모지를 리액션으로 사용할 수 있는 역할';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => '역할을 지정하지 않으면, 누구나 이 이모지를 리액션으로 사용할 수 있습니다.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => '역할은 공개로 설정되어 있어야 합니다.';
	@override String get cancelReactionConfirm => '리액션을 취소하시겠습니까?';
	@override String get changeReactionConfirm => '리액션을 변경하시겠습니까?';
	@override String get later => '나중에';
	@override String get goToMisskey => 'Misskey로';
	@override String get additionalEmojiDictionary => '이모지 추가 사전';
	@override String get installed => '설치됨';
	@override String get branding => '브랜딩';
	@override String get enableServerMachineStats => '서버의 머신 사양을 공개하기';
	@override String get enableIdenticonGeneration => '유저마다의 Identicon 생성 유효화';
	@override String get turnOffToImprovePerformance => '이 기능을 끄면 성능이 향상될 수 있습니다.';
	@override String get createInviteCode => '초대 코드 생성';
	@override String get createWithOptions => '옵션을 지정하여 생성';
	@override String get createCount => '초대 수';
	@override String get inviteCodeCreated => '초대 코드 생성됨';
	@override String get inviteLimitExceeded => '초대 코드 생성 한도를 초과했습니다.';
	@override String createLimitRemaining({required Object limit}) => '초대 한도: ${limit}회 남음';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => ' ${time}시간 이내에 최대 ${limit}개의 초대 코드를 생성할 수 있습니다.';
	@override String get expirationDate => '만료 날짜';
	@override String get noExpirationDate => '만료기간 없음';
	@override String get inviteCodeUsedAt => '다음에 사용된 초대 코드';
	@override String get registeredUserUsingInviteCode => '초대 코드 사용 대상';
	@override String get waitingForMailAuth => '이메일 인증 보류 중';
	@override String get inviteCodeCreator => '초대 코드 생성자';
	@override String get usedAt => '사용 시각';
	@override String get unused => '사용되지 않음';
	@override String get used => '사용됨';
	@override String get expired => '만료됨';
	@override String get doYouAgree => '동의하십니까?';
	@override String get beSureToReadThisAsItIsImportant => '중요하므로 반드시 읽어주십시오.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => '"${x}"의 내용을 읽고 동의합니다.';
	@override String get dialog => '다이얼로그';
	@override String get icon => '아바타';
	@override String get forYou => '나에게';
	@override String get currentAnnouncements => '현재 공지사항';
	@override String get pastAnnouncements => '과거 공지사항';
	@override String get youHaveUnreadAnnouncements => '읽지 않은 공지사항이 있습니다.';
	@override String get useSecurityKey => '브라우저 또는 기기의 안내에 따라 보안 키 또는 패스키를 사용해 주십시오.';
	@override String get replies => '답하기';
	@override String get renotes => '리노트';
	@override String get loadReplies => '답글 보기';
	@override String get loadConversation => '대화 보기';
	@override String get pinnedList => '고정된 리스트';
	@override String get keepScreenOn => '기기 화면을 항상 켜기';
	@override String get verifiedLink => '이 링크의 소유자임이 확인되었습니다.';
	@override String get notifyNotes => '새 노트 알림 켜기';
	@override String get unnotifyNotes => '새 노트 알림 끄기';
	@override String get authentication => '인증';
	@override String get authenticationRequiredToContinue => '계속하려면 인증하십시오';
	@override String get dateAndTime => '일시';
	@override String get showRenotes => '리노트 보기';
	@override String get edited => '수정됨';
	@override String get notificationRecieveConfig => '알림 설정';
	@override String get mutualFollow => '맞팔로우';
	@override String get followingOrFollower => '팔로 중이거나 팔로워';
	@override String get fileAttachedOnly => '미디어를 포함한 노트만';
	@override String get showRepliesToOthersInTimeline => '타임라인에 다른 사람에게 보내는 답글을 포함';
	@override String get hideRepliesToOthersInTimeline => '타임라인에 다른 사람에게 보내는 답글을 포함하지 않음';
	@override String get showRepliesToOthersInTimelineAll => '타임라인에 현재 팔로우 중인 사람 전원의 답글을 포함하게 하기';
	@override String get hideRepliesToOthersInTimelineAll => '타임라인에 현재 팔로우 중인 사람 전원의 답글이 나오지 않게 하기';
	@override String get confirmShowRepliesAll => '이 조작은 되돌릴 수 없습니다. 정말로 타임라인에 현재 팔로우 중인 사람 전원의 답글이 나오게 하시겠습니까?';
	@override String get confirmHideRepliesAll => '이 조작은 되돌릴 수 없습니다. 정말로 타임라인에 현재 팔로우 중인 사람 전원의 답글이 나오지 않게 하시겠습니까?';
	@override String get externalServices => '외부 서비스';
	@override String get sourceCode => '소스 코드';
	@override String get sourceCodeIsNotYetProvided => '소스 코드를 아직 제공하지 않습니다. 이 문제를 해결하려면 관리자에게 문의해 주세요.';
	@override String get repositoryUrl => '저장소 URL';
	@override String get repositoryUrlDescription => '소스 코드를 공개한 저장소가 있는 경우, 그 URL을 적습니다. Misskey를 원본 그대로 (소스 코드를 어떤 식으로도 변경하지 않고) 쓰고 있는 경우 https://github.com/misskey-dev/misskey 라고 적습니다.';
	@override String get repositoryUrlOrTarballRequired => '저장소를 공개하지 않은 경우 대신 tarball을 제공할 필요가 있습니다. 세부사항은 .config/example.yml을 참조해 주세요.';
	@override String get feedback => '피드백';
	@override String get feedbackUrl => '피드백 URL';
	@override String get impressum => '운영자 정보';
	@override String get impressumUrl => '운영자 정보 URL';
	@override String get impressumDescription => '독일 등의 일부 나라와 지역에서는 꼭 표시해야 합니다(Impressum).';
	@override String get privacyPolicy => '개인정보 보호 정책';
	@override String get privacyPolicyUrl => '개인정보 보호 정책 URL';
	@override String get tosAndPrivacyPolicy => '약관 및 개인정보 보호 정책';
	@override String get avatarDecorations => '아바타 장식';
	@override String get attach => '옇기';
	@override String get detach => '빼기';
	@override String get detachAll => '모두 빼기';
	@override String get angle => '각도';
	@override String get flip => '플립';
	@override String get showAvatarDecorations => '아바타 장식 표시';
	@override String get releaseToRefresh => '놓아서 새로고침';
	@override String get refreshing => '새로고침 중';
	@override String get pullDownToRefresh => '아래로 내려서 새로고침';
	@override String get useGroupedNotifications => '알림을 그룹화하고 표시';
	@override String get signupPendingError => '메일 주소 확인중에 문제가 발생했습니다. 링크의 유효기간이 지났을 가능성이 있습니다.';
	@override String get cwNotationRequired => '\'내용을 숨기기\'를 체크한 경우 주석을 써야 합니다.';
	@override String get doReaction => '리액션 추가';
	@override String get code => '문자열';
	@override String get reloadRequiredToApplySettings => '설정을 적용하려면 새로고침을 해야 합니다.';
	@override String remainingN({required Object n}) => '나머지: ${n}';
	@override String get overwriteContentConfirm => '현재 내용을 덮어쓰기 합니다. 계속 진행하시겠습니까?';
	@override String get seasonalScreenEffect => '계절에 따른 효과 보이기';
	@override String get decorate => '장식하기';
	@override String get addMfmFunction => '장식 추가하기';
	@override String get enableQuickAddMfmFunction => '상급자용 MFM 선택기 표시하기';
	@override String get bubbleGame => '버블 게임';
	@override String get sfx => '효과음';
	@override String get soundWillBePlayed => '소리가 재생됩니다';
	@override String get showReplay => '리플레이 보기';
	@override String get replay => '리플레이';
	@override String get replaying => '리플레이 중';
	@override String get endReplay => '리플레이 종료';
	@override String get copyReplayData => '리플레이 데이터를 복사';
	@override String get ranking => '랭킹';
	@override String lastNDays({required Object n}) => '최근 ${n}일';
	@override String get backToTitle => '타이틀로 가기';
	@override String get hemisphere => '거주 지역';
	@override String get withSensitive => '민감한 파일이 포함된 노트 보기';
	@override String userSaysSomethingSensitive({required Object name}) => '${name}의 민감한 파일이 포함된 게시물';
	@override String get enableHorizontalSwipe => '스와이프하여 탭 전환';
	@override String get loading => '불러오는 중';
	@override String get surrender => '아이예';
	@override String get gameRetry => '다시 시도';
	@override String get notUsePleaseLeaveBlank => '사용하지 않는 경우 비워두세요.';
	@override String get useTotp => '일회용 비밀번호 사용';
	@override String get useBackupCode => '백업 코드 사용';
	@override String get launchApp => '앱 실행';
	@override String get useNativeUIForVideoAudioPlayer => '브라우저 UI에서 미디어 재생';
	@override String get keepOriginalFilename => '원본 파일 이름을 유지';
	@override String get keepOriginalFilenameDescription => '이 설정을 끄면 업로드를 할 때 파일 이름이 자동으로 무작위 문자열로 바뀝니다.';
	@override String get noDescription => '설명문이 없습니다';
	@override String get alwaysConfirmFollow => '팔로우일 때 항상 확인하기';
	@override String get inquiry => '문의하기';
	@override String get tryAgain => '다시 시도해 주세요.';
	@override String get confirmWhenRevealingSensitiveMedia => '민감한 미디어를 열 때 두 번 확인';
	@override String get sensitiveMediaRevealConfirm => '민감한 미디어입니다. 표시할까요?';
	@override String get createdLists => '만든 리스트';
	@override String get createdAntennas => '만든 안테나';
	@override String fromX({required Object x}) => '${x}에서';
	@override String get genEmbedCode => '임베디드 코드 만들기';
	@override String get noteOfThisUser => '이 유저의 노트 목록';
	@override String get clipNoteLimitExceeded => '더 이상 이 클립에 노트를 추가 할 수 없습니다.';
	@override String get performance => '퍼포먼스';
	@override String get modified => '변경 있음';
	@override String get discard => '파기';
	@override String thereAreNChanges({required Object n}) => '${n}건 변경이 있습니다.';
	@override String get signinWithPasskey => '패스키로 로그인';
	@override String get unknownWebAuthnKey => '등록되지 않은 패스키입니다.';
	@override String get passkeyVerificationFailed => '패스키 검증을 실패했습니다.';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => '입력된 패스키는 정상적이나, 비밀번호 없이 로그인 하는 기능이 비활성화 되어있습니다.';
	@override String get messageToFollower => '팔로워에게 보낼 메시지';
	@override String get target => '대상';
	@override String get testCaptchaWarning => 'CAPTCHA를 테스트하기 위한 기능입니다. <strong>실제 환경에서는 사용하지 마세요.</strong>';
	@override String get prohibitedWordsForNameOfUser => '금지 단어 (유저명)';
	@override String get prohibitedWordsForNameOfUserDescription => '이 목록에 포함되는 키워드가 유저명에 있는 경우, 일반 유저는 이름을 바꿀 수 없습니다. 모더레이터 권한을 가진 유저는 제한 대상에서 제외됩니다.';
	@override String get yourNameContainsProhibitedWords => '바꾸려는 이름에 금지된 키워드가 포함되어 있습니다.';
	@override String get yourNameContainsProhibitedWordsDescription => '이름에 금지된 키워드가 있습니다. 이름을 사용해야 하는 경우, 서버 관리자에 문의하세요.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => '게시자에 의해 로그인해야 볼 수 있도록 설정되어 있습니다.';
	@override String get lockdown => '잠금';
	@override String get pleaseSelectAccount => '계정을 선택해주세요.';
	@override String get availableRoles => '사용 가능한 역할';
	@override String get acknowledgeNotesAndEnable => '활성화 하기 전에 주의 사항을 확인했습니다.';
	@override String get federationSpecified => '이 서버는 화이트 리스트 제도로 운영 중 입니다. 정해진 리모트 서버가 아닌 경우 연합되지 않습니다.';
	@override String get federationDisabled => '이 서버는 연합을 하지 않고 있습니다. 리모트 서버 유저와 통신을 할 수 없습니다.';
	@override String get draft => '초안';
	@override String get confirmOnReact => '리액션할 때 확인';
	@override String reactAreYouSure({required Object emoji}) => '" ${emoji} "로 리액션하시겠습니까?';
	@override String get markAsSensitiveConfirm => '이 미디어를 민감한 미디어로 설정하시겠습니까?';
	@override String get unmarkAsSensitiveConfirm => '이 미디어의 민감한 미디어 지정을 해제하시겠습니까?';
	@override String get preferences => '환경설정';
	@override String get accessibility => '접근성';
	@override String get preferencesProfile => '설정 프로필';
	@override String get copyPreferenceId => '설정한 ID를 복사';
	@override String get resetToDefaultValue => '기본값으로 되돌리기';
	@override String get overrideByAccount => '계정으로 덮어쓰기';
	@override String get untitled => '제목 없음';
	@override String get noName => '이름이 없습니다.';
	@override String get skip => '건너뛰기';
	@override String get restore => '복원';
	@override String get syncBetweenDevices => '장치간 동기화';
	@override String get preferenceSyncConflictTitle => '서버에 설정값이 존재합니다.';
	@override String get preferenceSyncConflictText => '동기화를 활성화 한 항목의 설정 값은 서버에 저장되지만, 해당 항목은 이미 서버에 설정 값이 저장되어져 있습니다. 어느 쪽의 설정 값을 덮어씌울까요?';
	@override String get preferenceSyncConflictChoiceMerge => '병합';
	@override String get preferenceSyncConflictChoiceServer => '서버 설정값';
	@override String get preferenceSyncConflictChoiceDevice => '장치 설정값';
	@override String get preferenceSyncConflictChoiceCancel => '동기화 취소';
	@override String get paste => '붙여넣기';
	@override String get emojiPalette => '이모지 팔레트';
	@override String get postForm => '글 입력란';
	@override String get textCount => '문자 수';
	@override String get information => '정보';
	@override String get chat => '채팅';
	@override String get migrateOldSettings => '기존 설정 정보를 이전';
	@override String get migrateOldSettings_description => '보통은 자동으로 이루어지지만, 어떤 이유로 인해 성공적으로 이전이 이루어지지 않는 경우 수동으로 이전을 실행할 수 있습니다. 현재 설정 정보는 덮어쓰게 됩니다.';
	@override String get compress => '압축';
	@override String get right => '오른쪽';
	@override String get bottom => '아래';
	@override String get top => '위';
	@override String get embed => '임베드';
	@override String get settingsMigrating => '설정을 이전하는 중입니다. 잠시 기다려주십시오... (나중에 \'환경설정 → 기타 → 기존 설정 정보를 이전\'에서 수동으로 이전할 수도 있습니다)';
	@override String get readonly => '읽기 전용';
	@override String get goToDeck => '덱으로 돌아가기';
	@override String get federationJobs => '연합 작업';
	@override String get driveAboutTip => '드라이브는 이전에 업로드한 파일 목록을 표시해요. <br>\n노트에 첨부할 때 다시 사용하거나 나중에 게시할 파일을 미리 업로드할 수 있어요. <br>\n<b>파일을 삭제하면, 지금까지 그 파일을 사용한 모든 장소(노트, 페이지, 아바타, 배너 등)에서도 보이지 않게 되므로 주의해 주세요. 폴더를 만들고 정리할 수도 있어요.</b><br>';
	@override String get scrollToClose => '스크롤하여 닫기';
	@override String get advice => '참고';
	@override String get realtimeMode => '실시간 모드';
	@override String get turnItOn => '켜기';
	@override String get turnItOff => '끄기';
	@override String get emojiMute => '이모티콘 뮤트';
	@override String get emojiUnmute => '이모티콘 뮤트 해제';
	@override String muteX({required Object x}) => '${x}를 뮤트';
	@override String unmuteX({required Object x}) => '${x}의 뮤트를 해제';
	@override String get abort => '중지';
	@override String get tip => '팁과 유용한 정보';
	@override String get redisplayAllTips => '모든 \'팁과 유용한 정보\'를 재표시';
	@override String get hideAllTips => '모든 \'팁과 유용한 정보\'를 비표시';
	@override String get defaultImageCompressionLevel => '기본 이미지 압축 정도';
	@override String get defaultImageCompressionLevel_description => '낮추면 화질을 유지합니다만 파일 크기는 증가합니다. <br>높이면 파일 크기를 줄일 수 있습니다만 화질은 저하됩니다.';
	@override late final _TranslationsMisskeyOrderKoGs order_ = _TranslationsMisskeyOrderKoGs._(_root);
	@override late final _TranslationsMisskeyChatKoGs chat_ = _TranslationsMisskeyChatKoGs._(_root);
	@override late final _TranslationsMisskeyEmojiPaletteKoGs emojiPalette_ = _TranslationsMisskeyEmojiPaletteKoGs._(_root);
	@override late final _TranslationsMisskeySettingsKoGs settings_ = _TranslationsMisskeySettingsKoGs._(_root);
	@override late final _TranslationsMisskeyPreferencesProfileKoGs preferencesProfile_ = _TranslationsMisskeyPreferencesProfileKoGs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupKoGs preferencesBackup_ = _TranslationsMisskeyPreferencesBackupKoGs._(_root);
	@override late final _TranslationsMisskeyAccountSettingsKoGs accountSettings_ = _TranslationsMisskeyAccountSettingsKoGs._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportKoGs abuseUserReport_ = _TranslationsMisskeyAbuseUserReportKoGs._(_root);
	@override late final _TranslationsMisskeyDeliveryKoGs delivery_ = _TranslationsMisskeyDeliveryKoGs._(_root);
	@override late final _TranslationsMisskeyBubbleGameKoGs bubbleGame_ = _TranslationsMisskeyBubbleGameKoGs._(_root);
	@override late final _TranslationsMisskeyAnnouncementKoGs announcement_ = _TranslationsMisskeyAnnouncementKoGs._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingKoGs initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialKoGs initialTutorial_ = _TranslationsMisskeyInitialTutorialKoGs._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionKoGs timelineDescription_ = _TranslationsMisskeyTimelineDescriptionKoGs._(_root);
	@override late final _TranslationsMisskeyServerRulesKoGs serverRules_ = _TranslationsMisskeyServerRulesKoGs._(_root);
	@override late final _TranslationsMisskeyServerSettingsKoGs serverSettings_ = _TranslationsMisskeyServerSettingsKoGs._(_root);
	@override late final _TranslationsMisskeyAccountMigrationKoGs accountMigration_ = _TranslationsMisskeyAccountMigrationKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsKoGs achievements_ = _TranslationsMisskeyAchievementsKoGs._(_root);
	@override late final _TranslationsMisskeyRoleKoGs role_ = _TranslationsMisskeyRoleKoGs._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionKoGs sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionKoGs._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableKoGs emailUnavailable_ = _TranslationsMisskeyEmailUnavailableKoGs._(_root);
	@override late final _TranslationsMisskeyFfVisibilityKoGs ffVisibility_ = _TranslationsMisskeyFfVisibilityKoGs._(_root);
	@override late final _TranslationsMisskeySignupKoGs signup_ = _TranslationsMisskeySignupKoGs._(_root);
	@override late final _TranslationsMisskeyAccountDeleteKoGs accountDelete_ = _TranslationsMisskeyAccountDeleteKoGs._(_root);
	@override late final _TranslationsMisskeyAdKoGs ad_ = _TranslationsMisskeyAdKoGs._(_root);
	@override late final _TranslationsMisskeyForgotPasswordKoGs forgotPassword_ = _TranslationsMisskeyForgotPasswordKoGs._(_root);
	@override late final _TranslationsMisskeyGalleryKoGs gallery_ = _TranslationsMisskeyGalleryKoGs._(_root);
	@override late final _TranslationsMisskeyEmailKoGs email_ = _TranslationsMisskeyEmailKoGs._(_root);
	@override late final _TranslationsMisskeyPluginKoGs plugin_ = _TranslationsMisskeyPluginKoGs._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsKoGs preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsKoGs._(_root);
	@override late final _TranslationsMisskeyRegistryKoGs registry_ = _TranslationsMisskeyRegistryKoGs._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyKoGs aboutMisskey_ = _TranslationsMisskeyAboutMisskeyKoGs._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaKoGs displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaKoGs._(_root);
	@override late final _TranslationsMisskeyInstanceTickerKoGs instanceTicker_ = _TranslationsMisskeyInstanceTickerKoGs._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorKoGs serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorKoGs._(_root);
	@override late final _TranslationsMisskeyChannelKoGs channel_ = _TranslationsMisskeyChannelKoGs._(_root);
	@override late final _TranslationsMisskeyMenuDisplayKoGs menuDisplay_ = _TranslationsMisskeyMenuDisplayKoGs._(_root);
	@override late final _TranslationsMisskeyWordMuteKoGs wordMute_ = _TranslationsMisskeyWordMuteKoGs._(_root);
	@override late final _TranslationsMisskeyInstanceMuteKoGs instanceMute_ = _TranslationsMisskeyInstanceMuteKoGs._(_root);
	@override late final _TranslationsMisskeyThemeKoGs theme_ = _TranslationsMisskeyThemeKoGs._(_root);
	@override late final _TranslationsMisskeySfxKoGs sfx_ = _TranslationsMisskeySfxKoGs._(_root);
	@override late final _TranslationsMisskeySoundSettingsKoGs soundSettings_ = _TranslationsMisskeySoundSettingsKoGs._(_root);
	@override late final _TranslationsMisskeyAgoKoGs ago_ = _TranslationsMisskeyAgoKoGs._(_root);
	@override late final _TranslationsMisskeyTimeInKoGs timeIn_ = _TranslationsMisskeyTimeInKoGs._(_root);
	@override late final _TranslationsMisskeyTimeKoGs time_ = _TranslationsMisskeyTimeKoGs._(_root);
	@override late final _TranslationsMisskeyX2faKoGs x2fa_ = _TranslationsMisskeyX2faKoGs._(_root);
	@override late final _TranslationsMisskeyPermissionsKoGs permissions_ = _TranslationsMisskeyPermissionsKoGs._(_root);
	@override late final _TranslationsMisskeyAuthKoGs auth_ = _TranslationsMisskeyAuthKoGs._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesKoGs antennaSources_ = _TranslationsMisskeyAntennaSourcesKoGs._(_root);
	@override late final _TranslationsMisskeyWeekdayKoGs weekday_ = _TranslationsMisskeyWeekdayKoGs._(_root);
	@override late final _TranslationsMisskeyWidgetsKoGs widgets_ = _TranslationsMisskeyWidgetsKoGs._(_root);
	@override late final _TranslationsMisskeyCwKoGs cw_ = _TranslationsMisskeyCwKoGs._(_root);
	@override late final _TranslationsMisskeyPollKoGs poll_ = _TranslationsMisskeyPollKoGs._(_root);
	@override late final _TranslationsMisskeyVisibilityKoGs visibility_ = _TranslationsMisskeyVisibilityKoGs._(_root);
	@override late final _TranslationsMisskeyPostFormKoGs postForm_ = _TranslationsMisskeyPostFormKoGs._(_root);
	@override late final _TranslationsMisskeyProfileKoGs profile_ = _TranslationsMisskeyProfileKoGs._(_root);
	@override late final _TranslationsMisskeyExportOrImportKoGs exportOrImport_ = _TranslationsMisskeyExportOrImportKoGs._(_root);
	@override late final _TranslationsMisskeyChartsKoGs charts_ = _TranslationsMisskeyChartsKoGs._(_root);
	@override late final _TranslationsMisskeyInstanceChartsKoGs instanceCharts_ = _TranslationsMisskeyInstanceChartsKoGs._(_root);
	@override late final _TranslationsMisskeyTimelinesKoGs timelines_ = _TranslationsMisskeyTimelinesKoGs._(_root);
	@override late final _TranslationsMisskeyPlayKoGs play_ = _TranslationsMisskeyPlayKoGs._(_root);
	@override late final _TranslationsMisskeyPagesKoGs pages_ = _TranslationsMisskeyPagesKoGs._(_root);
	@override late final _TranslationsMisskeyRelayStatusKoGs relayStatus_ = _TranslationsMisskeyRelayStatusKoGs._(_root);
	@override late final _TranslationsMisskeyNotificationKoGs notification_ = _TranslationsMisskeyNotificationKoGs._(_root);
	@override late final _TranslationsMisskeyDeckKoGs deck_ = _TranslationsMisskeyDeckKoGs._(_root);
	@override late final _TranslationsMisskeyDialogKoGs dialog_ = _TranslationsMisskeyDialogKoGs._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineKoGs disabledTimeline_ = _TranslationsMisskeyDisabledTimelineKoGs._(_root);
	@override late final _TranslationsMisskeyDrivecleanerKoGs drivecleaner_ = _TranslationsMisskeyDrivecleanerKoGs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsKoGs webhookSettings_ = _TranslationsMisskeyWebhookSettingsKoGs._(_root);
	@override late final _TranslationsMisskeyAbuseReportKoGs abuseReport_ = _TranslationsMisskeyAbuseReportKoGs._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesKoGs moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesKoGs._(_root);
	@override late final _TranslationsMisskeyFileViewerKoGs fileViewer_ = _TranslationsMisskeyFileViewerKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerKoGs externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerKoGs._(_root);
	@override late final _TranslationsMisskeyDataSaverKoGs dataSaver_ = _TranslationsMisskeyDataSaverKoGs._(_root);
	@override late final _TranslationsMisskeyHemisphereKoGs hemisphere_ = _TranslationsMisskeyHemisphereKoGs._(_root);
	@override late final _TranslationsMisskeyReversiKoGs reversi_ = _TranslationsMisskeyReversiKoGs._(_root);
	@override late final _TranslationsMisskeyOfflineScreenKoGs offlineScreen_ = _TranslationsMisskeyOfflineScreenKoGs._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingKoGs urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingKoGs._(_root);
	@override late final _TranslationsMisskeyMediaControlsKoGs mediaControls_ = _TranslationsMisskeyMediaControlsKoGs._(_root);
	@override late final _TranslationsMisskeyContextMenuKoGs contextMenu_ = _TranslationsMisskeyContextMenuKoGs._(_root);
	@override late final _TranslationsMisskeyGridComponentKoGs gridComponent_ = _TranslationsMisskeyGridComponentKoGs._(_root);
	@override late final _TranslationsMisskeyRoleSelectDialogKoGs roleSelectDialog_ = _TranslationsMisskeyRoleSelectDialogKoGs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerKoGs customEmojisManager_ = _TranslationsMisskeyCustomEmojisManagerKoGs._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenKoGs embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenKoGs._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionKoGs selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionKoGs._(_root);
	@override late final _TranslationsMisskeyFollowRequestKoGs followRequest_ = _TranslationsMisskeyFollowRequestKoGs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsKoGs remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsKoGs._(_root);
	@override late final _TranslationsMisskeyCaptchaKoGs captcha_ = _TranslationsMisskeyCaptchaKoGs._(_root);
	@override late final _TranslationsMisskeyBootErrorsKoGs bootErrors_ = _TranslationsMisskeyBootErrorsKoGs._(_root);
	@override late final _TranslationsMisskeySearchKoGs search_ = _TranslationsMisskeySearchKoGs._(_root);
	@override late final _TranslationsMisskeyServerSetupWizardKoGs serverSetupWizard_ = _TranslationsMisskeyServerSetupWizardKoGs._(_root);
	@override late final _TranslationsMisskeyUploaderKoGs uploader_ = _TranslationsMisskeyUploaderKoGs._(_root);
	@override late final _TranslationsMisskeyClientPerformanceIssueTipKoGs clientPerformanceIssueTip_ = _TranslationsMisskeyClientPerformanceIssueTipKoGs._(_root);
	@override late final _TranslationsMisskeyClipKoGs clip_ = _TranslationsMisskeyClipKoGs._(_root);
	@override late final _TranslationsMisskeyUserListsKoGs userLists_ = _TranslationsMisskeyUserListsKoGs._(_root);
	@override String get watermark => '워터마크';
	@override String get defaultPreset => '기본 프리셋';
	@override late final _TranslationsMisskeyWatermarkEditorKoGs watermarkEditor_ = _TranslationsMisskeyWatermarkEditorKoGs._(_root);
	@override late final _TranslationsMisskeyImageEffectorKoGs imageEffector_ = _TranslationsMisskeyImageEffectorKoGs._(_root);
	@override String get drafts => '초안';
	@override late final _TranslationsMisskeyDraftsKoGs drafts_ = _TranslationsMisskeyDraftsKoGs._(_root);
}

// Path: misskeyIO
class _TranslationsMisskeyIOKoGs extends TranslationsMisskeyIOEnUs {
	_TranslationsMisskeyIOKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusKoGs skebStatus_ = _TranslationsMisskeyIOSkebStatusKoGs._(_root);
}

// Path: misskey.order_
class _TranslationsMisskeyOrderKoGs extends TranslationsMisskeyOrderEnUs {
	_TranslationsMisskeyOrderKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get newest => '최신 순';
	@override String get oldest => '오래된 순';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatKoGs extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get noMessagesYet => '아직 메시지가 없습니다';
	@override String get newMessage => '새로운 메시지';
	@override String get individualChat => '개인 대화';
	@override String get individualChat_description => '특정 유저와 일대일 채팅을 할 수 있습니다.';
	@override String get roomChat => '룸 채팅';
	@override String get roomChat_description => '여러 명이 함께 채팅할 수 있습니다.\n또한, 개인 채팅을 허용하지 않은 유저와도 상대방이 수락하면 채팅을 할 수 있습니다.';
	@override String get createRoom => '룸을 생성';
	@override String get inviteUserToChat => '유저를 초대하여 채팅을 시작하세요';
	@override String get yourRooms => '생성한 룸';
	@override String get joiningRooms => '참가 중인 룸';
	@override String get invitations => '초대하기';
	@override String get noInvitations => '초대장이 없습니다';
	@override String get history => '이력';
	@override String get noHistory => '기록이 없십니다';
	@override String get noRooms => '룸이 없습니다';
	@override String get inviteUser => '유저를 초대';
	@override String get sentInvitations => '초대를 보내기';
	@override String get join => '참여';
	@override String get ignore => '무시';
	@override String get leave => '룸을 떠나기';
	@override String get members => '구성원';
	@override String get searchMessages => '메시지 검색';
	@override String get home => '덜머리';
	@override String get send => '전송';
	@override String get newline => '줄바꿈';
	@override String get muteThisRoom => '이 룸을 뮤트';
	@override String get deleteRoom => '룸을 삭제';
	@override String get chatNotAvailableForThisAccountOrServer => '이 서버 또는 이 계정에서 채팅이 활성화되어 있지 않습니다.';
	@override String get chatIsReadOnlyForThisAccountOrServer => '이 서버 또는 이 계정에서 채팅은 읽기 전용입니다. 새로 쓰거나 채팅 룸을 만들거나 참가할 수 없습니다.';
	@override String get chatNotAvailableInOtherAccount => '상대방 계정에서 채팅 기능을 사용할 수 없는 상태입니다.';
	@override String get cannotChatWithTheUser => '이 유저와 채팅을 시작할 수 없습니다';
	@override String get cannotChatWithTheUser_description => '채팅을 사용할 수 없는 상태이거나 상대방이 채팅을 열지 않은 상태입니다.';
	@override String get youAreNotAMemberOfThisRoomButInvited => '당신은 이 룸의 참가자가 아닙니다만 초대 신청을 받으셨습니다. 참가하려면 초대를  수락해주십시오.';
	@override String get doYouAcceptInvitation => '초대를 수락하시겠습니까?';
	@override String get chatWithThisUser => '채팅하기';
	@override String get thisUserAllowsChatOnlyFromFollowers => '이 유저는 팔로워만 채팅을 할 수 있습니다.';
	@override String get thisUserAllowsChatOnlyFromFollowing => '이 유저는 이 유저가 팔로우하는 유저만 채팅을 허용합니다.';
	@override String get thisUserAllowsChatOnlyFromMutualFollowing => '이 유저는 상호 팔로우하는 유저만 채팅을 허용합니다.';
	@override String get thisUserNotAllowedChatAnyone => '이 유저는 다른 사람의 채팅을 받지 않습니다.';
	@override String get chatAllowedUsers => '채팅을 허용한 상대';
	@override String get chatAllowedUsers_note => '내가 채팅 메시지를 보낸 상대와는 이 설정과 상관없이 채팅이 가능합니다.';
	@override late final _TranslationsMisskeyChatChatAllowedUsersKoGs chatAllowedUsers_ = _TranslationsMisskeyChatChatAllowedUsersKoGs._(_root);
}

// Path: misskey.emojiPalette_
class _TranslationsMisskeyEmojiPaletteKoGs extends TranslationsMisskeyEmojiPaletteEnUs {
	_TranslationsMisskeyEmojiPaletteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get palettes => '팔레트';
	@override String get enableSyncBetweenDevicesForPalettes => '팔레트의 디바이스 간 동기화를 활성화';
	@override String get paletteForMain => '메인으로 사용할 팔레트';
	@override String get paletteForReaction => '리액션으로 사용할 팔레트';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsKoGs extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get driveBanner => '드라이브 관리, 사용량 확인, 파일 업로드에 관한 설정을 합니다.';
	@override String get pluginBanner => '플러그인을 사용하면 클라이언트 기능을 확장할 수 있습니다. 플러그인 설치와 개별적인 설정을 합니다.';
	@override String get notificationsBanner => '서버에서 받는 알림의 종류 및 범위, 푸시 알림 설정을 합니다.';
	@override String get api => 'API';
	@override String get webhook => 'Webhook';
	@override String get serviceConnection => '서비스 연동';
	@override String get serviceConnectionBanner => '외부 앱, 서비스와 연결하기 위한 액세스 토큰과 웹 훅 관리 설정을 합니다.';
	@override String get accountData => '계정 데이터';
	@override String get accountDataBanner => '계정 데이터의 아카이브를 추출하기/가져오기 하여 관리할 수 있습니다.';
	@override String get muteAndBlockBanner => '숨길 컨텐츠의 설정과, 특정 유저의 리액션을 제한하는 설정을 관리합니다.';
	@override String get accessibilityBanner => '좀 더 쾌적하게 사용할 수 있도록 클라이언트의 시각 및 움직임에 관한 개인화 설정을 합니다.';
	@override String get privacyBanner => '컨텐츠, 계정의 발견 범위, 팔로우 승인제 등의 계정의 프라이버시에 관한 설정을 합니다.';
	@override String get securityBanner => '비밀번호, 로그인 방법, OTP, 패스 키 등의 계정의 보안에 관련된 설정을 합니다.';
	@override String get preferencesBanner => '취향에 알맞는 클라이언트의 전체적인 동작을 설정합니다.';
	@override String get appearanceBanner => '취향에 알맞는 클라이언트의 디스플레이, 표시 방법에 관한 설정을 합니다.';
	@override String get soundsBanner => '클라이언트에서 재생할 소리에 대한 설정을 합니다.';
	@override String get timelineAndNote => '타임라인과 노트';
	@override String get makeEveryTextElementsSelectable => '모든 텍스트 요소를 선택할 수 있도록 함';
	@override String get makeEveryTextElementsSelectable_description => '활성화 시, 일부 동작에서 유저의 접근성이 나빠질 수도 있습니다.';
	@override String get useStickyIcons => '아이콘이 스크롤을 따라가도록 하기';
	@override String get enableHighQualityImagePlaceholders => '고화질 이미지의 플레이스홀더를 표시';
	@override String get uiAnimations => 'UI 애니메이션';
	@override String get showNavbarSubButtons => '내비게이션 바에 보조 버튼 표시';
	@override String get ifOn => '켜져 있을 때';
	@override String get ifOff => '꺼져 있을 때';
	@override String get enableSyncThemesBetweenDevices => '기기 간 설치한 테마 동기화';
	@override String get enablePullToRefresh => '계속해서 갱신';
	@override String get enablePullToRefresh_description => '마우스에서 휠을 누르면서 드래그해요.';
	@override String get realtimeMode_description => '서버에 접속하고 실시간으로 콘텐츠를 업데이트합니다. 데이터 사용량과 배터리의 소비가 증가할 수 있습니다.';
	@override String get contentsUpdateFrequency => '콘텐츠의 업데이트 빈도';
	@override String get contentsUpdateFrequency_description => '높을수록 실시간으로 콘텐츠가 업데이트됩니다만, 성능이 저하되고 데이터 사용량과 배터리의 소비가 증가합니다.';
	@override String get contentsUpdateFrequency_description2 => '실시간 모드가 켜져 있을 때는 이 설정과 상관없이 실시간으로 콘텐츠가 업데이트됩니다.';
	@override String get showUrlPreview => 'URL 미리보기 표시';
	@override String get showAvailableReactionsFirstInNote => '이용 가능한 리액션을 선두로 표시';
	@override late final _TranslationsMisskeySettingsChatKoGs chat_ = _TranslationsMisskeySettingsChatKoGs._(_root);
}

// Path: misskey.preferencesProfile_
class _TranslationsMisskeyPreferencesProfileKoGs extends TranslationsMisskeyPreferencesProfileEnUs {
	_TranslationsMisskeyPreferencesProfileKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get profileName => '프로필 이름';
	@override String get profileNameDescription => '이 디바이스를 식별할 이름을 설정해 주세요.';
	@override String get profileNameDescription2 => '예: \'메인PC\', \'스마트폰\' 등';
	@override String get manageProfiles => '프로파일 관리';
}

// Path: misskey.preferencesBackup_
class _TranslationsMisskeyPreferencesBackupKoGs extends TranslationsMisskeyPreferencesBackupEnUs {
	_TranslationsMisskeyPreferencesBackupKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get autoBackup => '자동 백업';
	@override String get restoreFromBackup => '백업으로 복구';
	@override String get noBackupsFoundTitle => '백업을 찾을 수 없습니다';
	@override String get noBackupsFoundDescription => '자동으로 생성된 백업은 찾을 수 없었지만, 수동으로 백업 파일을 저장한 경우 해당 파일을 가져와 복원할 수 있습니다.';
	@override String get selectBackupToRestore => '복원할 백업을 선택하세요';
	@override String get youNeedToNameYourProfileToEnableAutoBackup => '자동 백업을 활성화하려면 프로필 이름을 설정해야 합니다.';
	@override String get autoPreferencesBackupIsNotEnabledForThisDevice => '이 장치에서 설정 자동 백업이 활성화되어 있지 않습니다.';
	@override String get backupFound => '설정 백업이 발견되었습니다';
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsKoGs extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => '콘텐츠 열람을 위해 로그인을 필수로 설정하기';
	@override String get requireSigninToViewContentsDescription1 => '자신이 작성한 모든 노트 등의 콘텐츠를 보기 위해 로그인을 필수로 설정합니다. 크롤러가 정보 수집하는 것을 방지하는 효과를 기대할 수 있습니다.';
	@override String get requireSigninToViewContentsDescription2 => 'URL 미리보기(OGP), 웹페이지에 삽입, 노트 인용을 지원하지 않는 서버에서 볼 수 없게 됩니다.';
	@override String get requireSigninToViewContentsDescription3 => '리모트 서버에 연합된 콘텐츠에는 이러한 제한이 적용되지 않을 수 있습니다.';
	@override String get makeNotesFollowersOnlyBefore => '과거 노트는 팔로워만 볼 수 있도록 설정하기';
	@override String get makeNotesFollowersOnlyBeforeDescription => '이 기능이 활성화되어 있는 동안, 설정된 날짜 및 시간보다 과거 또는 설정된 시간이 지난 노트는 팔로워만 볼 수 있게 됩니다. 비활성화하면 노트의 공개 상태도 원래대로 돌아갑니다.';
	@override String get makeNotesHiddenBefore => '과거 노트 비공개로 전환하기';
	@override String get makeNotesHiddenBeforeDescription => '이 기능이 활성화되어 있는 동안 설정한 날짜 및 시간보다 과거 또는 설정한 시간이 지난 노트는 본인만 볼 수 있게(비공개로 전환) 됩니다. 비활성화하면 노트의 공개 상태도 원래대로 돌아갑니다.';
	@override String get mayNotEffectForFederatedNotes => '리모트 서버에 연합된 노트에는 효과가 없을 수도 있습니다.';
	@override String get mayNotEffectSomeSituations => '여기서 설정하는 제한은 모더레이션이나 리모트 서버에서 볼 때 등 일부 환경에서는 적용되지 않을 수도 있습니다.';
	@override String get notesHavePassedSpecifiedPeriod => '지정한 시간이 경과된 노트';
	@override String get notesOlderThanSpecifiedDateAndTime => '지정된 날짜 및 시간 이전의 노트';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportKoGs extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get forward => '전달';
	@override String get forwardDescription => '익명 시스템 계정을 사용하여 리모트 서버에 신고 내용을 전달할 수 있습니다.';
	@override String get resolve => '해결됨';
	@override String get accept => '인용';
	@override String get reject => '기각';
	@override String get resolveTutorial => '적절한 신고 내용에 대응한 경우, "인용"을 선택하여 "해결됨"으로 기록합니다.\n적절하지 않은 신고를 받은 경우, "기각"을 선택하여 "기각"으로 기록합니다.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryKoGs extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get status => '전송 상태';
	@override String get stop => '고만 보내예';
	@override String get resume => '전송 다시 시작';
	@override late final _TranslationsMisskeyDeliveryTypeKoGs type_ = _TranslationsMisskeyDeliveryTypeKoGs._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameKoGs extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '설명';
	@override String get hold => '홀드';
	@override late final _TranslationsMisskeyBubbleGameScoreKoGs score_ = _TranslationsMisskeyBubbleGameScoreKoGs._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayKoGs howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayKoGs._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementKoGs extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => '기존 유저에게만 알림';
	@override String get forExistingUsersDescription => '활성화하면 이 공지사항을 게시한 시점에서 이미 가입한 유저에게만 표시합니다. 비활성화하면 게시 후에 가입한 유저에게도 표시합니다.';
	@override String get needConfirmationToRead => '읽음으로 표시하기 전에 확인하기';
	@override String get needConfirmationToReadDescription => '활성화하면 이 공지사항을 읽음으로 표시하기 전에 확인 알림창을 띄웁니다. \'모두 읽음\'의 대상에서도 제외됩니다.';
	@override String get end => '공지에서 내리기';
	@override String get tooManyActiveAnnouncementDescription => '공지사항이 너무 많을 경우, 유저 경험에 영향을 끼칠 가능성이 있습니다. 오래된 공지사항은 아카이브하시는 것을 권장드립니다.';
	@override String get readConfirmTitle => '읽음으로 표시합니까?';
	@override String readConfirmText({required Object title}) => '〈${title}〉의 내용을 읽음으로 표시합니다.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => '신규 유저의 이용 경험에 악영향을 끼칠 수 있으므로, 일시적인 알림 수단으로만 사용하고 고정된 정보에는 사용을 지양하는 것을 추천합니다.';
	@override String get dialogAnnouncementUxWarn => '다이얼로그 형태의 알림이 동시에 2개 이상 존재하는 경우, 유저 경험에 악영향을 끼칠 수 있으므로 신중히 결정하십시오.';
	@override String get silence => '조용히 알림';
	@override String get silenceDescription => '활성화하면 공지사항에 대한 알림이 가지 않게 되며, 확인 버튼을 누를 필요가 없게 됩니다.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingKoGs extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => '계정 생성이 완료되었습니다!';
	@override String get letsStartAccountSetup => '계정의 초기 설정을 진행합니다.';
	@override String get letsFillYourProfile => '우선 나의 프로필을 설정해 보아요.';
	@override String get profileSetting => '프로필 설정';
	@override String get privacySetting => '프라이버시 설정';
	@override String get theseSettingsCanEditLater => '이 설정들은 나중에도 변경할 수 있습니다.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => '이 외에도 \'설정\' 페이지에서 다양한 설정을 나의 입맛에 맞게 조절할 수 있습니다. 꼭 확인해 보세요!';
	@override String get followUsers => '관심사가 맞는 유저를 팔로우하여 타임라인을 가꾸어 봅시다.';
	@override String pushNotificationDescription({required Object name}) => '푸시 알림을 활성화하면 ${name}의 알림을 나의 기기에서 받아볼 수 있게 됩니다.';
	@override String get initialAccountSettingCompleted => '초기 설정을 모두 마쳤습니다!';
	@override String haveFun({required Object name}) => '${name}와 함께 즐거운 시간 보내세요!';
	@override String youCanContinueTutorial({required Object name}) => '이대로 ${name}(Misskey)의 사용법에 대해 튜토리얼을 진행할 수도 있지만, 여기서 중단하고 바로 시작할 수도 있습니다.';
	@override String get startTutorial => '길라잡이 하기';
	@override String get skipAreYouSure => '초기 설정을 중단하시겠습니까?';
	@override String get laterAreYouSure => '초기 설정을 나중에 진행하시겠습니까?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialKoGs extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => '길라잡이 보기';
	@override String get title => '길라잡이';
	@override String get wellDone => '잘 하셨습니다';
	@override String get skipAreYouSure => '길라잡이럴 껕냅니까?';
	@override late final _TranslationsMisskeyInitialTutorialLandingKoGs landing_ = _TranslationsMisskeyInitialTutorialLandingKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteKoGs note_ = _TranslationsMisskeyInitialTutorialNoteKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionKoGs reaction_ = _TranslationsMisskeyInitialTutorialReactionKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineKoGs timeline_ = _TranslationsMisskeyInitialTutorialTimelineKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteKoGs postNote_ = _TranslationsMisskeyInitialTutorialPostNoteKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoGs howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneKoGs done_ = _TranslationsMisskeyInitialTutorialDoneKoGs._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionKoGs extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get home => '홈 타임라인에서는, 내가 팔로우한 계정의 게시물을 볼 수 있습니다.';
	@override String get local => '로컬 타임라인에서는, 이 서버의 모든 유저의 게시물을 볼 수 있습니다.';
	@override String get social => '소셜 타임라인에서는, 홈 타임라인과 로컬 타임라인의 게시물을 모두 볼 수 있습니다.';
	@override String get global => '글로벌 타임라인에서는, 여기와 연결된 다른 모든 서버의 게시물을 볼 수 있습니다.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesKoGs extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get description => '회원 가입 이전에 간단하게 표시할 서버 규칙입니다. 이용 약관의 요약으로 구성하는 것을 추천합니다.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsKoGs extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => '아이콘 URL';
	@override String appIconDescription({required Object host}) => '${host}이 앱으로 표시될 때의 아이콘을 지정합니다.';
	@override String get appIconUsageExample => '예를 들어, PWA나 스마트폰 홈 화면에 북마크로 추가되었을 때 등';
	@override String get appIconStyleRecommendation => '아이콘이 원형 또는 둥근 사각형으로 잘리는 경우가 있으므로, 가장자리 여백이 충분한 사진을 사용하는 것을 추천합니다.';
	@override String appIconResolutionMustBe({required Object resolution}) => '해상도는 반드시 ${resolution} 이어야 합니다.';
	@override String get manifestJsonOverride => 'manifest.json 오버라이드';
	@override String get shortName => '약칭';
	@override String get shortNameDescription => '서버의 정식 명칭이 긴 경우에, 대신에 표시할 수 있는 약칭이나 통칭.';
	@override String get fanoutTimelineDescription => '활성화하면 각종 타임라인을 가져올 때의 성능을 대폭 향상하며, 데이터베이스의 부하를 줄일 수 있습니다. 단, Redis의 메모리 사용량이 증가합니다. 서버의 메모리 용량이 작거나, 서비스가 불안정해지는 경우 비활성화할 수 있습니다.';
	@override String get fanoutTimelineDbFallback => '데이터베이스를 예비로 사용하기';
	@override String get fanoutTimelineDbFallbackDescription => '활성화하면 타임라인의 캐시되어 있지 않은 부분에 대해 DB에 질의하여 정보를 가져옵니다. 비활성화하면 이를 실행하지 않음으로써 서버의 부하를 줄일 수 있지만, 타임라인에서 가져올 수 있는 게시물 범위가 한정됩니다.';
	@override String get reactionsBufferingDescription => '활성화 한 경우, 리액션 작성 퍼포먼스가 대폭 향상되어 DB의 부하를 줄일 수 있으나, Redis의 메모리 사용량이 많아집니다.';
	@override String get inquiryUrl => '문의처 URL';
	@override String get inquiryUrlDescription => '서버 운영자에게 보내는 문의 양식의 URL이나 운영자의 연락처 등이 적힌 웹 페이지의 URL을 설정합니다.';
	@override String get openRegistration => '회원 가입을 활성화 하기';
	@override String get openRegistrationWarning => '회원 가입을 개방하는 것은 리스크가 따릅니다. 서버를 항상 감시할 수 있고, 문제가 발생했을 때 바로 대응할 수 있는 상태에서만 활성화 하는 것을 권장합니다.';
	@override String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => '일정 기간동안 모더레이터의 활동이 감지되지 않는 경우, 스팸 방지를 위해 이 설정은 자동으로 꺼집니다.';
	@override String get deliverSuspendedSoftware => '전달 정지 중인 소프트웨어';
	@override String get deliverSuspendedSoftwareDescription => '취약성 등의 이유로 서버의 소프트웨어 이름 및 버전 범위를 지정하여 전달을 정지할 수 있어요. 이 버전 정보는 서버가 제공한 것이며 신뢰성은 보장되지 않아요. 버전 지정에는 semver의 범위 지정을 사용할 수 있지만, >= 2024.3.1로 지정하면 2024.3.1-custom.0과 같은 custom.0과 같은 custom 버전이 포함되지 않기 때문에 >= 2024.3.1-0과 같이 prerelease를 지정하는 것이 좋아요.';
	@override String get singleUserMode => '1인 모드';
	@override String get singleUserMode_description => '이 서버의 이용자가 자신 뿐인 경우, 이 모드를 활성화하면 동작이 최적화됩니다.';
	@override String get signToActivityPubGet => 'GET 요청에 사인';
	@override String get signToActivityPubGet_description => '보통의 경우 활성화해 주십시오. 연합의 통신에 관한 문제가 있는 경우, 비활성화하면 개선되는 경우도 있습니다만, 서버에 따라서는 통신이 불가능해지는 경우도 있습니다.';
	@override String get proxyRemoteFiles => '리모트 파일 프록시';
	@override String get proxyRemoteFiles_description => '활성화하면 리모트 파일을 프록시로 제공합니다. 이미지의 섬네일 생성이나 유저의 개인정보 보호에 도움을 줍니다.';
	@override String get allowExternalApRedirect => 'ActivityPub 경유 조회에 리디렉션 허가';
	@override String get allowExternalApRedirect_description => '활성화하면 다른 서버가 이 서버를 통해 제3자의 콘텐츠를 조회할 수 있습니다만, 콘텐츠의 사칭 문제가 생길 수 있습니다.';
	@override String get userGeneratedContentsVisibilityForVisitor => '비이용자에 대한 유저 작성 콘텐츠의 공개 범위';
	@override String get userGeneratedContentsVisibilityForVisitor_description => '조정을 하기 힘든 부적절한 리모트 콘텐츠 등이 자신의 서버 경유로 의도치 않게 인터넷에 공개되는 문제의 방지 등에 도움을 줍니다.';
	@override String get userGeneratedContentsVisibilityForVisitor_description2 => '서버에서 받은 리모트 콘텐츠를 포함해 서버 내의 모든 콘텐츠를 무조건 인터넷에 공개하는 것에는 위험이 따릅니다. 특히, 분산형 특성에 대해 모르는 열람자에게는 리모트 콘텐츠여도 서버 내에서 작성된 콘텐츠라고 잘못 인식할 수 있기에 주의가 필요합니다.';
	@override late final _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorKoGs userGeneratedContentsVisibilityForVisitor_ = _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorKoGs._(_root);
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationKoGs extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => '다른 계정에서 이 계정으로 이사';
	@override String get moveFromSub => '다른 계정에 대한 별칭을 생성';
	@override String moveFromLabel({required Object n}) => '기존 계정 #${n}';
	@override String get moveFromDescription => '다른 계정에서 이 계정으로 팔로워를 가져오려면, 우선 여기에서 별칭을 지정해야 합니다. 반드시 이사하기 전에 지정해야 합니다! 기존 계정을 다음과 같은 형식으로 입력해 주십시오: @person@instance.com';
	@override String get moveTo => '이 계정에서 다른 계정으로 이사';
	@override String get moveToLabel => '이사할 계정:';
	@override String get moveCannotBeUndone => '한 번 이사하면, 두 번 다시 되돌릴 수 없습니다.';
	@override String get moveAccountDescription => '새 계정으로 이전합니다.\n　・팔로워가 새 계정을 자동으로 팔로우 합니다\n　・이 계정에서 팔로우는 모두 해제됩니다\n　・이 계정으로는 노트 작성 등을 할 수 없게 됩니다\n\n팔로워는 자동으로 이전되지만, 팔로우는 수동으로 진행해야 합니다. 이전하기 전에 이 계정에서 팔로우를 내보내고, 이전 후에는 즉시 이전한 계정에서 가져오기를 진행하십시오.\n리스트・뮤트・차단에 대해서도 마찬가지이므로 수동으로 이전해야 합니다.\n\n(이 설명은 이 서버(Misskey v13.12.0 이후)의 사양입니다. Mastodon 등의 다른 ActivityPub 소프트웨어에서는 작동이 다를 수 있습니다.)';
	@override String get moveAccountHowTo => '계정을 이사하려면 우선 이사갈 계정에서 이 계정에 대한 별칭을 지정해야 합니다.\n별칭을 작성한 다음, 이사갈 계정을 다음과 같이 입력하십시오:\n@username@server.example.com';
	@override String get startMigration => '이사하기';
	@override String migrationConfirm({required Object account}) => '정말로 이 계정을 ${account} 으로 이전하시겠습니까? 한 번 이전한 다음에는 취소할 수 없으며, 두 번 다시 원래 상태로 복구할 수 없습니다.\n이사할 계정에서 계정 별칭을 지정하였는지 다시 한 번 확인하십시오.';
	@override String get movedAndCannotBeUndone => '\n이사한 계정입니다.\n이사는 취소할 수 없습니다.';
	@override String get postMigrationNote => '이 계정의 팔로잉 해제는 이사 후 24시간 뒤에 실행됩니다.\n이 계정의 팔로우 및 팔로워 수는 0으로 표시됩니다. 팔로워 해제는 이루어지지 않으므로, 당신의 팔로워는 이 계정의 팔로워 한정 게시물을 계속해서 열람할 수 있습니다.';
	@override String get movedTo => '이사할 계정:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsKoGs extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '달성 일시';
	@override late final _TranslationsMisskeyAchievementsTypesKoGs types_ = _TranslationsMisskeyAchievementsTypesKoGs._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleKoGs extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get new_ => '새 역할 생성';
	@override String get edit => '역할 수정';
	@override String get name => '역할 이름';
	@override String get description => '역할 설명';
	@override String get permission => '역할 권한';
	@override String get descriptionOfPermission => '<b>조정자</b>는 기본적인 조정 작업을 진행할 수 있습니다.\n<b>관리자</b>는 서버의 모든 설정을 변경할 수 있습니다.';
	@override String get assignTarget => '할당 대상';
	@override String get descriptionOfAssignTarget => '<b>수동</b>을 선택하면 누가 이 역할에 포함되는지를 수동으로 관리할 수 있습니다.\n<b>조건부</b>를 선택하면 조건을 설정해 일치하는 유저를 자동으로 포함되게 할 수 있습니다.';
	@override String get manual => '수동';
	@override String get manualRoles => '수동 역할';
	@override String get conditional => '조건부';
	@override String get conditionalRoles => '조건부 역할';
	@override String get condition => '조건';
	@override String get isConditionalRole => '조건부 역할입니다.';
	@override String get isPublic => '역할 공개';
	@override String get descriptionOfIsPublic => '역할에 할당된 유저를 누구나 볼 수 있습니다. 또한 유저 프로필에 이 역할이 표시됩니다.';
	@override String get options => '옵션';
	@override String get policies => '정책';
	@override String get baseRole => '기본 역할';
	@override String get useBaseValue => '기본값 사용';
	@override String get chooseRoleToAssign => '할당할 역할 선택';
	@override String get iconUrl => '아이콘 URL';
	@override String get asBadge => '뱃지로 표시';
	@override String get descriptionOfAsBadge => '활성화하면 유저명 옆에 역할의 아이콘이 표시됩니다.';
	@override String get isExplorable => '역할 타임라인 공개';
	@override String get descriptionOfIsExplorable => '활성화하면 역할 타임라인을 공개합니다. 비활성화 시 타임라인이 공개되지 않습니다.';
	@override String get displayOrder => '보기 순서';
	@override String get descriptionOfDisplayOrder => '값이 클 수록 UI에서 먼저 표시됩니다.';
	@override String get preserveAssignmentOnMoveAccount => '이전 대상 계정에도 할당 상태 전달';
	@override String get preserveAssignmentOnMoveAccount_description => '켜면 이 역할이 부여된 계정이 이전될 때 마이그레이션 대상 계정에도 이 역할이 승계됩니다.';
	@override String get canEditMembersByModerator => '모더레이터의 역할 수정 허용';
	@override String get descriptionOfCanEditMembersByModerator => '이 옵션을 켜면 모더레이터도 이 역할에 유저를 할당하거나 삭제할 수 있습니다. 꺼져 있으면 관리자만 할당이 가능합니다.';
	@override String get priority => '우선순위';
	@override late final _TranslationsMisskeyRolePriorityKoGs priority_ = _TranslationsMisskeyRolePriorityKoGs._(_root);
	@override late final _TranslationsMisskeyRoleOptionsKoGs options_ = _TranslationsMisskeyRoleOptionsKoGs._(_root);
	@override late final _TranslationsMisskeyRoleConditionKoGs condition_ = _TranslationsMisskeyRoleConditionKoGs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionKoGs extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get description => '기계 학습으로 민감한 미디어를 알아서 찾아내어 조정에 참고하도록 합니다. 서버가 부하를 다소 받습니다.';
	@override String get sensitivity => '탐지 민감도';
	@override String get sensitivityDescription => '민감도가 낮을수록 안전한 미디어가 잘못 탐지될 확률이 줄어들며, 높을수록 민감한 미디어가 탐지되지 않을 확률이 줄어듭니다.';
	@override String get setSensitiveFlagAutomatically => '자동으로 NSFW로 설정하기';
	@override String get setSensitiveFlagAutomaticallyDescription => '이 설정을 해제해도 탐지 결과는 유지됩니다.';
	@override String get analyzeVideos => '동영상도 같이 확인하기';
	@override String get analyzeVideosDescription => '사진 뿐만 아니라 동영상의 NSFW 여부도 탐지합니다. 서버의 부하를 약간 증가시킵니다.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableKoGs extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get used => '이 메일 주소는 사용중입니다';
	@override String get format => '형식이 올바르지 않습니다';
	@override String get disposable => '임시 이메일 주소는 사용할 수 없습니다';
	@override String get mx => '메일 서버가 올바르지 않습니다';
	@override String get smtp => '메일 서버가 응답하지 않습니다';
	@override String get banned => '이 메일 주소는 사용할 수 없습니다';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityKoGs extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get public => '공개';
	@override String get followers => '팔로워에게만 공개';
	@override String get private => '비공개';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupKoGs extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get almostThere => '거의 다 끝났습니다';
	@override String get emailAddressInfo => '당신이 사용하고 있는 이메일 주소를 입력해 주세요. 이메일 주소는 다른 유저에게 공개되지 않습니다.';
	@override String emailSent({required Object email}) => '입력하신 메일 주소(${email})로 확인 메일을 보내드렸습니다. 가입을 완료하시려면 보내드린 메일에 있는 링크로 접속해 주세요.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteKoGs extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => '계정 삭제';
	@override String get mayTakeTime => '계정 삭제는 서버에 부하를 가하기 때문에, 작성한 콘텐츠나 업로드한 파일의 수가 많으면 완료까지 시간이 걸릴 수 있습니다.';
	@override String get sendEmail => '계정 삭제가 완료되면 등록된 이메일 주소로 알림을 보냅니다.';
	@override String get requestAccountDelete => '계정 삭제 요청';
	@override String get started => '삭제 작업이 시작되었습니다.';
	@override String get inProgress => '삭제 진행 중';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdKoGs extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get back => '뒤로';
	@override String get reduceFrequencyOfThisAd => '이 광고의 표시 빈도 낮추기';
	@override String get hide => '보이지 않음';
	@override String get timezoneinfo => '요일은 서버의 표준 시간대에 따라 결정됩니다.';
	@override String get adsSettings => '광고 표시 설정';
	@override String get notesPerOneAd => '실시간으로 갱신되는 타임라인에서 광고를 노출시키는 간격 (노트 당)';
	@override String get setZeroToDisable => '0으로 지정하면 실시간 타임라인에서의 광고를 비활성화합니다';
	@override String get adsTooClose => '광고의 표시 간격이 매우 작아, 유저 경험에 부정적인 영향을 미칠 수 있습니다.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordKoGs extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => '여기에 계정에 등록한 메일 주소를 입력해 주세요. 입력한 메일 주소로 비밀번호 재설정 링크를 발송합니다.';
	@override String get ifNoEmail => '메일 주소를 등록하지 않은 경우, 관리자에 문의해 주십시오.';
	@override String get contactAdmin => '이 서버에서는 메일 기능이 지원되지 않습니다. 비밀번호를 재설정하려면 관리자에게 문의해 주십시오.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryKoGs extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get my => '내 걸';
	@override String get liked => '좋네예한 걸';
	@override String get like => '좋네예!';
	@override String get unlike => '좋네예 무루기';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailKoGs extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowKoGs follow_ = _TranslationsMisskeyEmailFollowKoGs._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestKoGs receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestKoGs._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginKoGs extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get install => '플러그인 설치';
	@override String get installWarn => '신뢰할 수 없는 플러그인은 설치하지 않는 것이 좋습니다.';
	@override String get manage => '플러그인 관리';
	@override String get viewSource => '소스 보기';
	@override String get viewLog => '로그 보기';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsKoGs extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get list => '생성한 백업';
	@override String get saveNew => '새 백업 만들기';
	@override String get loadFile => '파일 가져오기';
	@override String get apply => '이 기기에 적용';
	@override String get save => '현재 설정으로 덮어쓰기';
	@override String get inputName => '백업 이름을 입력하세요';
	@override String get cannotSave => '저장하지 못했습니다';
	@override String nameAlreadyExists({required Object name}) => '"${name}" 백업이 이미 존재합니다. 다른 이름을 설정하여 주십시오.';
	@override String applyConfirm({required Object name}) => '"${name}" 백업을 현재 기기에 적용하시겠습니까? 현재 설정은 덮어 씌워집니다.';
	@override String saveConfirm({required Object name}) => '${name} 백업을 덮어쓰시겠습니까?';
	@override String deleteConfirm({required Object name}) => '${name} 백업을 삭제하시겠습니까?';
	@override String renameConfirm({required Object old, required Object new_}) => '‘${old}’ 백업을 ‘${new_}’ 백업으로 바꾸시겠습니까?';
	@override String get noBackups => '저장된 백업이 없습니다. "새 백업 만들기"를 눌러 현재 클라이언트 설정을 서버에 백업할 수 있습니다.';
	@override String createdAt({required Object date, required Object time}) => '만든 날짜: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => '고친 날짜: ${date} ${time}';
	@override String get cannotLoad => '가져오기에 실패했습니다';
	@override String get invalidFile => '파일 형식이 올바르지 않습니다.';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryKoGs extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get scope => '범위';
	@override String get key => '키';
	@override String get keys => '키';
	@override String get domain => '도메인';
	@override String get createKey => '키 생성';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyKoGs extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey는 syuilo가 2014년부터 개발한 오픈소스 소프트웨어입니다.';
	@override String get contributors => '주요 기여자';
	@override String get allContributors => '모든 기여자';
	@override String get source => '소스 코드';
	@override String get original => '원본';
	@override String thisIsModifiedVersion({required Object name}) => '${name}에서는 원본 미스키를 수정한 버전을 사용하고 있습니다.';
	@override String get translation => 'Misskey를 번역하기';
	@override String get donate => 'Misskey에 기부하기';
	@override String get morePatrons => '이 외에도 다른 많은 분들이 도움을 주시고 계십니다. 감사합니다🥰';
	@override String get patrons => '후원자';
	@override String get projectMembers => '프로젝트 구성원';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaKoGs extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get respect => '민감한 콘텐츠로 표시된 미디어 숨기기';
	@override String get ignore => '민감한 콘텐츠로 표시된 미디어 보이기';
	@override String get force => '미디어 항상 숨기기';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerKoGs extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get none => '보이지 않음';
	@override String get remote => '리모트 유저에게만 보이기';
	@override String get always => '항상 보이기';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorKoGs extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get reload => '알아서 새로곤침';
	@override String get dialog => '경고창 표시';
	@override String get quiet => '조용히 경고';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelKoGs extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get create => '채널 생성';
	@override String get edit => '채널 편집';
	@override String get setBanner => '배너 설정';
	@override String get removeBanner => '배너 뭉캐기';
	@override String get featured => '트렌드';
	@override String get owned => '관리중';
	@override String get following => '팔로잉';
	@override String usersCount({required Object n}) => '${n}명 참여';
	@override String notesCount({required Object n}) => '노트 ${n}개';
	@override String get nameAndDescription => '이름과 설명';
	@override String get nameOnly => '이름만';
	@override String get allowRenoteToExternal => '채널 외부로의 리노트와 인용 리노트를 허가';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayKoGs extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '가로';
	@override String get sideIcon => '가로(아이콘)';
	@override String get top => '상단';
	@override String get hide => '수ᇚ후기';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteKoGs extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get muteWords => '뮤트할 단어';
	@override String get muteWordsDescription => '공백으로 구분하는 경우 AND, 줄바꿈으로 구분하는 경우 OR로 지정됩니다.';
	@override String get muteWordsDescription2 => '정규 표현식을 사용하려면 키워드를 빗금표(/)로 감싸 주세요.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteKoGs extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => '뮤트한 서버에서 오는 답글을 포함한 모든 노트와 Renote를 뮤트합니다.';
	@override String get instanceMuteDescription2 => '한 줄에 하나씩 입력해 주세요';
	@override String get title => '지정한 서버의 노트를 숨깁니다.';
	@override String get heading => '뮤트할 서버';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeKoGs extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get explore => '테마 둘러보기';
	@override String get install => '테마 설치';
	@override String get manage => '테마 관리';
	@override String get code => '테마 코드';
	@override String get copyThemeCode => '테마 코드 복사';
	@override String get description => '설멩';
	@override String installed({required Object name}) => '${name} 테마가 설치되었습니다';
	@override String get installedThemes => '설치된 테마';
	@override String get builtinThemes => '표준 테마';
	@override String get instanceTheme => '서버 테마';
	@override String get alreadyInstalled => '이미 설치된 테마입니다';
	@override String get invalid => '테마 형식이 올바르지 않습니다';
	@override String get make => '테마 만들기';
	@override String get base => '베이스';
	@override String get addConstant => '상수 추가';
	@override String get constant => '상수';
	@override String get defaultValue => '기본값';
	@override String get color => '색';
	@override String get refProp => '프로퍼티를 참조';
	@override String get refConst => '상수를 참조';
	@override String get key => '키';
	@override String get func => '함수';
	@override String get funcKind => '함수 종류';
	@override String get argument => '매개변수';
	@override String get basedProp => '기준으로 할 속성 이름';
	@override String get alpha => '불투명도';
	@override String get darken => '어두움';
	@override String get lighten => '밝음';
	@override String get inputConstantName => '상수 이름을 입력하세요';
	@override String get importInfo => '여기에 테마 코드를 붙여 넣어 에디터로 불러올 수 있습니다.';
	@override String deleteConstantConfirm({required Object const_}) => '상수 ${const_}를 삭제하시겠습니까?';
	@override late final _TranslationsMisskeyThemeKeysKoGs keys = _TranslationsMisskeyThemeKeysKoGs._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxKoGs extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get note => '새 노트';
	@override String get noteMy => '내 노트';
	@override String get notification => '알림';
	@override String get reaction => '리액션 개리기';
	@override String get chatMessage => '채팅 메시지';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsKoGs extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get driveFile => '드라이브에 있는 오디오를 사용';
	@override String get driveFileWarn => '드라이브에 있는 파일을 선택하세요.';
	@override String get driveFileTypeWarn => '이 파이';
	@override String get driveFileTypeWarnDescription => '오디오 파일을 선택하세요.';
	@override String get driveFileDurationWarn => '오디오가 너무 깁니다';
	@override String get driveFileDurationWarnDescription => '긴 오디오로 설정할 경우 미스키 사용에 지장이 갈 수도 있습니다. 그래도 괜찮습니까?';
	@override String get driveFileError => '오디오를 불러올 수 없습니다. 설정을 바꿔주세요.';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoKoGs extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get future => '미래';
	@override String get justNow => '방금 전';
	@override String secondsAgo({required Object n}) => '${n}초 전';
	@override String minutesAgo({required Object n}) => '${n}분 전';
	@override String hoursAgo({required Object n}) => '${n}시간 전';
	@override String daysAgo({required Object n}) => '${n}일 전';
	@override String weeksAgo({required Object n}) => '${n}주 전';
	@override String monthsAgo({required Object n}) => '${n}개월 전';
	@override String yearsAgo({required Object n}) => '${n}년 전';
	@override String get invalid => '없음';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInKoGs extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => '${n}초 후';
	@override String minutes({required Object n}) => '${n}분 후';
	@override String hours({required Object n}) => '${n}시간 후';
	@override String days({required Object n}) => '${n}일 후';
	@override String weeks({required Object n}) => '${n}주 후';
	@override String months({required Object n}) => '${n}개월 후';
	@override String years({required Object n}) => '${n}년 후';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeKoGs extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get second => '초';
	@override String get minute => '분';
	@override String get hour => '시간';
	@override String get day => '일';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faKoGs extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '이미 설정이 완료되었습니다.';
	@override String get registerTOTP => '인증 앱 설정 시작';
	@override String step1({required Object a, required Object b}) => '먼저, ${a}나 ${b}등의 인증 앱을 사용 중인 디바이스에 설치합니다.';
	@override String get step2 => '그 후, 표시되어 있는 QR코드를 앱으로 스캔합니다.';
	@override String get step2Uri => '데스크톱 앱을 사용하려면 다음 URI를 입력하십시오';
	@override String get step3Title => '학인 기호럴 서기';
	@override String get step3 => '앱에 표시된 토큰을 입력하시면 완료됩니다.';
	@override String get setupCompleted => '설정 완료했습니다';
	@override String get step4 => '다음 로그인부터는 토큰을 입력해야 합니다.';
	@override String get securityKeyNotSupported => '이 브라우저는 보안 키를 지원하지 않습니다.';
	@override String get registerTOTPBeforeKey => '보안 키 또는 패스키를 등록하려면 인증 앱을 등록하십시오.';
	@override String get securityKeyInfo => 'FIDO2를 지원하는 하드웨어 보안 키 혹은 디바이스의 지문인식이나 화면잠금 PIN을 이용해서 로그인하도록 설정할 수 있습니다.';
	@override String get registerSecurityKey => '보안 키 또는 패스키 등록';
	@override String get securityKeyName => '키 이름 입력';
	@override String get tapSecurityKey => '브라우저의 지시에 따라 보안 키 또는 패스키를 등록하여 주십시오';
	@override String get removeKey => '보안 키를 삭제';
	@override String removeKeyConfirm({required Object name}) => '${name} 앱을 삭제하시겠습니까?';
	@override String get whyTOTPOnlyRenew => '보안 키가 등록되어 있는 경우 인증 앱을 해제할 수 없습니다.';
	@override String get renewTOTP => '인증 앱 재설정';
	@override String get renewTOTPConfirm => '기존에 등록되어 있던 인증 키는 사용하지 못하게 됩니다.';
	@override String get renewTOTPOk => '재설정';
	@override String get renewTOTPCancel => '뎃어예';
	@override String get checkBackupCodesBeforeCloseThisWizard => '이 위자드를 닫기 전에 아래 백업 코드를 확인하십시오';
	@override String get backupCodes => '백업 코드';
	@override String get backupCodesDescription => '인증 앱을 사용할 수 없게 된 경우 아래 백업 코드를 사용하여 계정에 액세스 할 수 있습니다.이 코드들은 반드시 안전한 장소에 보관하십시오.각 코드는 한 번만 사용할 수 있습니다.';
	@override String get backupCodeUsedWarning => '백업 코드가 사용되었습니다.인증 앱을 사용할 수 없게 된 경우, 조속히 인증 앱을 다시 설정해 주십시오.';
	@override String get backupCodesExhaustedWarning => '백업 코드가 모두 사용되었습니다.인증 앱을 사용할 수 없는 경우 더 이상 계정에 액세스하는 것이 불가능합니다.인증 앱을 다시 등록해 주세요.';
	@override String get moreDetailedGuideHere => '여기에 자세한 설명이 있습니다';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsKoGs extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get readAccount => '계정의 정보를 봅니다';
	@override String get writeAccount => '계정의 정보를 변경합니다';
	@override String get readBlocks => '차단 여부를 확인합니다';
	@override String get writeBlocks => '차단을 하거나 해제합니다';
	@override String get readDrive => '드라이브 보기';
	@override String get writeDrive => '드라이브에 파일을 올리거나, 이름을 변경하거나, 삭제합니다';
	@override String get readFavorites => '질겨찾기 보기';
	@override String get writeFavorites => '질겨찾기 곤치기';
	@override String get readFollowing => '팔로우 상태를 봅니다';
	@override String get writeFollowing => '팔로우하거나 팔로우를 해제합니다';
	@override String get readMessaging => '대화를 읽습니다';
	@override String get writeMessaging => '대화를 시작하거나 메시지를 보냅니다';
	@override String get readMutes => '뮤트 여부를 확인합니다';
	@override String get writeMutes => '뮤트를 하거나 해제합니다';
	@override String get writeNotes => '노트를 작성하거나 삭제합니다';
	@override String get readNotifications => '알림을 확인합니다';
	@override String get writeNotifications => '알림을 모두 읽음 처리합니다';
	@override String get readReactions => '리액션을 확인합니다';
	@override String get writeReactions => '리액션을 추가하거나 취소합니다';
	@override String get writeVotes => '투표를 합니다';
	@override String get readPages => '페이지를 봅니다';
	@override String get writePages => '페이지를 수정합니다';
	@override String get readPageLikes => '페이지의 좋아요를 확인합니다';
	@override String get writePageLikes => '페이지에 좋아요를 추가하거나 취소합니다';
	@override String get readUserGroups => '유저 그룹 보기';
	@override String get writeUserGroups => '유저 그룹을 만들거나, 초대하거나, 이름을 변경하거나, 양도하거나, 삭제합니다';
	@override String get readChannels => '채널을 보기';
	@override String get writeChannels => '채널을 추가하거나 삭제합니다';
	@override String get readGallery => '갤러리를 봅니다';
	@override String get writeGallery => '갤러리를 추가하거나 삭제합니다';
	@override String get readGalleryLikes => '갤러리의 좋아요를 확인합니다';
	@override String get writeGalleryLikes => '갤러리에 좋아요를 추가하거나 취소합니다';
	@override String get readFlash => 'Play를 봅니다';
	@override String get writeFlash => 'Play를 조작합니다';
	@override String get readFlashLikes => 'Play의 좋아요를 봅니다';
	@override String get writeFlashLikes => 'Play의 좋아요를 조작합니다';
	@override String get readAdminAbuseUserReports => '유저 신고 보기';
	@override String get writeAdminDeleteAccount => '유저 계정 삭제하기';
	@override String get writeAdminDeleteAllFilesOfAUser => '모든 유저 파일 삭제하기';
	@override String get readAdminIndexStats => '데이터베이스 색인 정보 보기';
	@override String get readAdminTableStats => '데이터베이스 테이블 정보 보기';
	@override String get readAdminUserIps => '유저 IP 주소 보기';
	@override String get readAdminMeta => '인스턴스 메타데이터 보기';
	@override String get writeAdminResetPassword => '유저 비밀번호 재설정하기';
	@override String get writeAdminResolveAbuseUserReport => '유저 신고 처리하기';
	@override String get writeAdminSendEmail => '이메일 보내기';
	@override String get readAdminServerInfo => '서버 정보 보기';
	@override String get readAdminShowModerationLog => '조정 기록 보기';
	@override String get readAdminShowUser => '유저 개인정보 보기';
	@override String get writeAdminSuspendUser => '유저 정지하기';
	@override String get writeAdminUnsetUserAvatar => '유저 아바타 삭제하기';
	@override String get writeAdminUnsetUserBanner => '유저 배너 삭제하기';
	@override String get writeAdminUnsuspendUser => '유저 정지 해제하기';
	@override String get writeAdminMeta => '인스턴스 메타데이터 수정하기';
	@override String get writeAdminUserNote => '조정 기록 수정하기';
	@override String get writeAdminRoles => '역할 수정하기';
	@override String get readAdminRoles => '역할 보기';
	@override String get writeAdminRelays => '릴레이 수정하기';
	@override String get readAdminRelays => '릴레이 보기';
	@override String get writeAdminInviteCodes => '초대 코드 수정하기';
	@override String get readAdminInviteCodes => '초대 코드 보기';
	@override String get writeAdminAnnouncements => '공지사항 수정하기';
	@override String get readAdminAnnouncements => '공지사항 보기';
	@override String get writeAdminAvatarDecorations => '아바타 꾸미기 수정하기';
	@override String get readAdminAvatarDecorations => '아바타 꾸미기 보기';
	@override String get writeAdminFederation => '연합 정보 수정하기';
	@override String get writeAdminAccount => '유저 계정 수정하기';
	@override String get readAdminAccount => '유저 정보 보기';
	@override String get writeAdminEmoji => '이모지 수정하기';
	@override String get readAdminEmoji => '이모지 보기';
	@override String get writeAdminQueue => '작업 대기열 수정하기';
	@override String get readAdminQueue => '작업 대기열 정보 보기';
	@override String get writeAdminPromo => '홍보 기록 수정하기';
	@override String get writeAdminDrive => '유저 드라이브 수정하기';
	@override String get readAdminDrive => '유저 드라이브 정보 보기';
	@override String get readAdminStream => '관리자용 Websocket API 사용하기';
	@override String get writeAdminAd => '광고 수정하기';
	@override String get readAdminAd => '광고 보기';
	@override String get writeInviteCodes => '초대 코드 만들기';
	@override String get readInviteCodes => '초대 코드 불러오기';
	@override String get writeClipFavorite => '클립의 좋아요 수정하기';
	@override String get readClipFavorite => '클립의 좋아요 보기';
	@override String get readFederation => '연합 정보 불러오기';
	@override String get writeReportAbuse => '위반 내용 신고하기';
	@override String get writeChat => '대화를 시작하거나 메시지를 보냅니다';
	@override String get readChat => '채팅 열람하기';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthKoGs extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => '어플리케이션의 접근 허가';
	@override String shareAccess({required Object name}) => '‘${name}’에서 계정에 접근하는 것을 허용하시겠습니까?';
	@override String get shareAccessAsk => '이 애플리케이션이 계정에 접근하는 것을 허용하시겠습니까?';
	@override String permission({required Object name}) => '${name}에서 다음 권한을 요청하였습니다';
	@override String get permissionAsk => '이 앱은 다음의 권한을 요청합니다';
	@override String get pleaseGoBack => '앱으로 돌아가서 시도해 주세요';
	@override String get callback => '앱으로 돌아갑니다';
	@override String get accepted => '접근 권한이 부여되었습니다.';
	@override String get denied => '접근이 거부되었습니다';
	@override String get scopeUser => '다음 유저로 활동하고 있습니다.';
	@override String get pleaseLogin => '어플리케이션의 접근을 허가하려면 로그인하십시오.';
	@override String get byClickingYouWillBeRedirectedToThisUrl => '접근을 허용하면 자동으로 다음 URL로 이동합니다.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesKoGs extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get all => '모든 노트';
	@override String get homeTimeline => '팔로우중인 유저의 노트';
	@override String get users => '지정한 유저의 노트';
	@override String get userList => '지정한 리스트에 속한 유저의 노트';
	@override String get userBlacklist => '지정한 유저를 제외한 모든 노트';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayKoGs extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get sunday => '일요일';
	@override String get monday => '월요일';
	@override String get tuesday => '화요일';
	@override String get wednesday => '수요일';
	@override String get thursday => '목요일';
	@override String get friday => '금요일';
	@override String get saturday => '토요일';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsKoGs extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get profile => '프로필';
	@override String get instanceInfo => '서버 정보';
	@override String get memo => '스티커 메모';
	@override String get notifications => '알림';
	@override String get timeline => '타임라인';
	@override String get calendar => '달력';
	@override String get trends => '트렌드';
	@override String get clock => '시계';
	@override String get rss => 'RSS 리더';
	@override String get rssTicker => 'RSS Ticker';
	@override String get activity => '할동';
	@override String get photos => '사진';
	@override String get digitalClock => '디지털 시계';
	@override String get unixClock => 'UNIX 시계';
	@override String get federation => '옌합';
	@override String get instanceCloud => '서버 구름';
	@override String get postForm => '글 입력란';
	@override String get slideshow => '슬라이드 쇼';
	@override String get button => '버튼';
	@override String get onlineUsers => '온라인 유저';
	@override String get jobQueue => '작업 대기옐';
	@override String get serverMetric => '서버 통계';
	@override String get aiscript => 'AiScript 콘솔';
	@override String get aiscriptApp => 'AiScript 앱';
	@override String get aichan => '아이';
	@override String get userList => '유저 리스트';
	@override late final _TranslationsMisskeyWidgetsUserListKoGs userList_ = _TranslationsMisskeyWidgetsUserListKoGs._(_root);
	@override String get clicker => '클리커';
	@override String get birthdayFollowings => '오늘이 생일인 유저';
	@override String get chat => '채팅';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwKoGs extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get hide => '수ᇚ후기';
	@override String get show => '더 볼래예';
	@override String chars({required Object count}) => '걸자 ${count}개';
	@override String files({required Object count}) => '파일 ${count}개';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollKoGs extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => '투표 항목이 최소 2개 필요합니다';
	@override String choiceN({required Object n}) => '선택지 ${n}';
	@override String get noMore => '더 이상 추가할 수 없습니다';
	@override String get canMultipleVote => '복수 응답 허용';
	@override String get expiration => '투표 기한';
	@override String get infinite => '무기한';
	@override String get at => '일시 지정';
	@override String get after => '기간 지정';
	@override String get deadlineDate => '기한';
	@override String get deadlineTime => '시간';
	@override String get duration => '기간';
	@override String votesCount({required Object n}) => '${n}표';
	@override String totalVotes({required Object n}) => '총 ${n}표';
	@override String get vote => '투표하기';
	@override String get showResult => '결과 보기';
	@override String get voted => '투표함';
	@override String get closed => '종료됨';
	@override String remainingDays({required Object d, required Object h}) => '종료까지 앞으로 ${d}일 ${h}시간';
	@override String remainingHours({required Object h, required Object m}) => '종료까지 앞으로 ${h}시간 ${m}분';
	@override String remainingMinutes({required Object m, required Object s}) => '종료까지 앞으로 ${m}분 ${s}초';
	@override String remainingSeconds({required Object s}) => '종료까지 앞으로 ${s}초';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityKoGs extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get public => '공개';
	@override String get publicDescription => '모든 유저에게 공개';
	@override String get home => '덜머리';
	@override String get homeDescription => '홈 타임라인에만 공개';
	@override String get followers => '팔로워';
	@override String get followersDescription => '팔로워에게만 공개';
	@override String get specified => '다이렉트';
	@override String get specifiedDescription => '지정한 유저에게만 공개';
	@override String get disableFederation => '연합에 보내지 않기';
	@override String get disableFederationDescription => '다른 서버로 보내지 않습니다';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormKoGs extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get quitInspiteOfThereAreUnuploadedFilesConfirm => '업로드되지 않은 파일이 있습니다만, 없애고 폼을 닫겠습니까?';
	@override String get uploaderTip => '파일이 아직 업로드돼있지 않습니다. 파일 메뉴에서 이름 바꾸기나 이미지의 자르기, 워터마크 넣기, 압축의 유무 등을 설정할 수 있습니다. 파일은 노트 게시 시 자동으로 업로드됩니다.';
	@override String get replyPlaceholder => '이 노트에 답글...';
	@override String get quotePlaceholder => '이 노트를 인용...';
	@override String get channelPlaceholder => '채널에 게시하기...';
	@override late final _TranslationsMisskeyPostFormPlaceholdersKoGs placeholders_ = _TranslationsMisskeyPostFormPlaceholdersKoGs._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileKoGs extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get name => '이럼';
	@override String get username => '사용자 이럼';
	@override String get description => '자기소개';
	@override String get youCanIncludeHashtags => '해시 태그를 포함할 수 있습니다.';
	@override String get metadata => '추가 정보';
	@override String get metadataEdit => '추가 정보 편집';
	@override String get metadataDescription => '프로필에 추가 정보를 표시할 수 있어요';
	@override String get metadataLabel => '라벨';
	@override String get metadataContent => '내용';
	@override String get changeAvatar => '아바타 이미지 변경';
	@override String get changeBanner => '배너 이미지 변경';
	@override String get verifiedLinkDescription => '내용에 자신의 프로필로 향하는 링크가 포함된 페이지의 URL을 삽입하면 소유자 인증 마크가 표시됩니다.';
	@override String avatarDecorationMax({required Object max}) => '최대 ${max}개까지 장식을 할 수 있습니다.';
	@override String get followedMessage => '팔로우 받았을 때 메시지';
	@override String get followedMessageDescription => '팔로우 받았을 때 상대방에게 보여줄 단문 메시지를 설정할 수 있습니다.';
	@override String get followedMessageDescriptionForLockedAccount => '팔로우를 승인제로 한 경우, 팔로우 요청을 수락했을 때 보여줍니다.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportKoGs extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '모든 노트';
	@override String get favoritedNotes => '질겨찾기한 노트';
	@override String get clips => '클립 맨걸기';
	@override String get followingList => '팔로잉';
	@override String get muteList => '수ᇚ후기';
	@override String get blockingList => '차단하기';
	@override String get userLists => '리스트';
	@override String get excludeMutingUsers => '뮤트한 유저 제외하기';
	@override String get excludeInactiveUsers => '휴면 중인 계정 제외하기';
	@override String get withReplies => '가져오기한 유저에 의한 답글을 타임라인에 포함';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsKoGs extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get federation => '옌합';
	@override String get apRequest => '요청';
	@override String get usersIncDec => '유저 수 증감';
	@override String get usersTotal => '유저 수 합계';
	@override String get activeUsers => '활동 유저 수';
	@override String get notesIncDec => '노트 수 증감';
	@override String get localNotesIncDec => '로컬 노트 수 증감';
	@override String get remoteNotesIncDec => '리모트 노트 수 증감';
	@override String get notesTotal => '노트 수 합계';
	@override String get filesIncDec => '파일 수 증감';
	@override String get filesTotal => '파일 수 합계';
	@override String get storageUsageIncDec => '스토리지 사용량 증감';
	@override String get storageUsageTotal => '스토리지 사용량 합계';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsKoGs extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get requests => '요청';
	@override String get users => '유저 수 차이';
	@override String get usersTotal => '누적 유저 수';
	@override String get notes => '노트 수 증감';
	@override String get notesTotal => '누적 노트 수';
	@override String get ff => '팔로잉/팔로워 증감';
	@override String get ffTotal => '누적 팔로잉/팔로워 수';
	@override String get cacheSize => '캐시 용량 증감';
	@override String get cacheSizeTotal => '누적 캐시 용량';
	@override String get files => '파일 수 증감';
	@override String get filesTotal => '누적 파일 수';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesKoGs extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get home => '덜머리';
	@override String get local => '로컬';
	@override String get social => '소셜';
	@override String get global => '글로벌';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayKoGs extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Play 만들기';
	@override String get edit => 'Play 수정하기';
	@override String get created => 'Play를 생성했습니다';
	@override String get updated => 'Play를 갱신했습니다';
	@override String get deleted => 'Play를 삭제했습니다';
	@override String get pageSetting => 'Play 설정';
	@override String get editThisPage => '이 Play를 수정';
	@override String get viewSource => '소스 보기';
	@override String get my => '내 플레이';
	@override String get liked => '좋아요 한 Play';
	@override String get featured => '인기';
	@override String get title => '제목';
	@override String get script => '스크립트';
	@override String get summary => '설멩';
	@override String get visibilityDescription => '비공개로 설정하면 프로필에 표시하지 않지만 URL을 아는 사람은 계속해서 접속할 수 있습니다.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesKoGs extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get newPage => '페이지 만들기';
	@override String get editPage => '페이지 수정';
	@override String get readPage => '소스 표시 중';
	@override String get pageSetting => '페이지 설정';
	@override String get nameAlreadyExists => '지정한 페이지 URL이 이미 존재합니다';
	@override String get invalidNameTitle => '유효하지 않은 페이지 URL입니다';
	@override String get invalidNameText => '비어있는지 확인해 주세요';
	@override String get editThisPage => '이 페이지를 편집';
	@override String get viewSource => '소스 보기';
	@override String get viewPage => '페이지 보기';
	@override String get like => '좋네예';
	@override String get unlike => '좋네예 무루기';
	@override String get my => '내 페이지';
	@override String get liked => '좋아요한 페이지';
	@override String get featured => '인기';
	@override String get inspector => '인스펙터';
	@override String get contents => '콘텐츠';
	@override String get content => '페이지 블록';
	@override String get variables => '변수';
	@override String get title => '제목';
	@override String get url => '페이지 URL';
	@override String get summary => '페이지 요약';
	@override String get alignCenter => '가운데 정렬';
	@override String get hideTitleWhenPinned => '프로필에 고정한 경우 타이틀을 표시하지 않음';
	@override String get font => '폰트';
	@override String get fontSerif => '명조체';
	@override String get fontSansSerif => '고딕체';
	@override String get eyeCatchingImageSet => '아이캐치 이미지를 설정';
	@override String get eyeCatchingImageRemove => '아이캐치 이미지를 삭제';
	@override String get chooseBlock => '블록 추가';
	@override String get enterSectionTitle => '섹션 타이틀을 입력하기';
	@override String get selectType => '종류 선택';
	@override String get contentBlocks => '콘텐츠';
	@override String get inputBlocks => '입력';
	@override String get specialBlocks => '특수';
	@override late final _TranslationsMisskeyPagesBlocksKoGs blocks = _TranslationsMisskeyPagesBlocksKoGs._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusKoGs extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get requesting => '대기 중';
	@override String get accepted => '승인됨';
	@override String get rejected => '거절됨';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationKoGs extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => '파일이 업로드되었습니다';
	@override String youGotMention({required Object name}) => '${name}님이 멘션함';
	@override String youGotReply({required Object name}) => '${name}님이 답글함';
	@override String youGotQuote({required Object name}) => '${name}님이 인용함';
	@override String youRenoted({required Object name}) => '${name}님이 리노트했습니다';
	@override String get youWereFollowed => '새 팔로워가 잇십니다';
	@override String get youReceivedFollowRequest => '새로운 팔로우 요청이 있습니다';
	@override String get yourFollowRequestAccepted => '팔로우 요청이 수락되었습니다';
	@override String get pollEnded => '투표 결과가 발표되었습니다';
	@override String get newNote => '새 걸';
	@override String unreadAntennaNote({required Object name}) => '안테나 ${name}';
	@override String get roleAssigned => '역할이 부여 되었습니다.';
	@override String get chatRoomInvitationReceived => '채팅 룸에 초대받았습니다';
	@override String get emptyPushNotificationMessage => '푸시 알림이 갱신되었습니다';
	@override String get achievementEarned => '도전 과제를 달성했습니다';
	@override String get testNotification => '알림 테스트';
	@override String get checkNotificationBehavior => '알림 표시를 체크하기';
	@override String get sendTestNotification => '테스트 알림 보내기';
	@override String get notificationWillBeDisplayedLikeThis => '알림이 이렇게 표시됩니다';
	@override String reactedBySomeUsers({required Object n}) => '${n}명이 리액션했습니다';
	@override String likedBySomeUsers({required Object n}) => '${n}명이 좋아요를 했습니다';
	@override String renotedBySomeUsers({required Object n}) => '${n}명이 리노트했습니다';
	@override String followedBySomeUsers({required Object n}) => '${n}명에게 팔로우됨';
	@override String get flushNotification => '알림 이력을 초기화';
	@override String exportOfXCompleted({required Object x}) => '${x} 추출에 성공했습니다.';
	@override String get login => '로그인 알림이 있습니다';
	@override String get createToken => '액세스 토큰이 생성되었습니다';
	@override String createTokenDescription({required Object text}) => '만약 기억이 나지 않는다면 \'${text}\'를 통해 액세스 토큰을 삭제해 주세요.';
	@override late final _TranslationsMisskeyNotificationTypesKoGs types_ = _TranslationsMisskeyNotificationTypesKoGs._(_root);
	@override late final _TranslationsMisskeyNotificationActionsKoGs actions_ = _TranslationsMisskeyNotificationActionsKoGs._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckKoGs extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '메인 칼럼 항상 표시';
	@override String get columnAlign => '칼럼 정렬';
	@override String get columnGap => '칼럼 간 여백';
	@override String get deckMenuPosition => '덱 메뉴 위치';
	@override String get navbarPosition => '내비게이션 바 위치';
	@override String get addColumn => '칼럼 추가';
	@override String get newNoteNotificationSettings => '새 노트 알림 설정';
	@override String get configureColumn => '칼럼 설정';
	@override String get swapLeft => '왼쪽으로 이동';
	@override String get swapRight => '오른쪽으로 이동';
	@override String get swapUp => '위로 이동';
	@override String get swapDown => '아래로 이동';
	@override String get stackLeft => '왼쪽에 쌓기';
	@override String get popRight => '오른쪽으로 빼기';
	@override String get profile => '프로파일';
	@override String get newProfile => '새 프로파일';
	@override String get deleteProfile => '프로파일 삭제';
	@override String get introduction => '칼럼을 조합해서 나만의 인터페이스를 구성해 보아요!';
	@override String get introduction2 => '나중에라도 화면 우측의 + 버튼을 눌러 새 칼럼을 추가할 수 있습니다.';
	@override String get widgetsIntroduction => '칼럼 메뉴의 "위젯 편집"에서 위젯을 추가해 주세요';
	@override String get useSimpleUiForNonRootPages => '루트 이외의 페이지로 접속한 경우 UI 간략화하기';
	@override String get usedAsMinWidthWhenFlexible => '\'폭 자동 조정\'이 활성화된 경우 최소 폭으로 사용됩니다';
	@override String get flexible => '폭 자동 조정';
	@override String get enableSyncBetweenDevicesForProfiles => '프로파일 정보의 디바이스 간 동기화를 활성화';
	@override late final _TranslationsMisskeyDeckColumnsKoGs columns_ = _TranslationsMisskeyDeckColumnsKoGs._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogKoGs extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '최대 글자수를 초과하였습니다! 현재 ${current} / 최대 ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '최소 글자수 미만입니다! 현재 ${current} / 최소 ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineKoGs extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '비활성화된 타임라인';
	@override String get description => '현재 역할에서는 이 타임라인을 이용할 수 없습니다.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerKoGs extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => '크기가 큰 순';
	@override String get orderByCreatedAtAsc => '등록일이 오래된 순';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsKoGs extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhook 생성';
	@override String get modifyWebhook => 'Webhook 수정';
	@override String get name => '이럼';
	@override String get secret => '시크릿';
	@override String get trigger => '트리거';
	@override String get active => '활성화';
	@override late final _TranslationsMisskeyWebhookSettingsEventsKoGs events_ = _TranslationsMisskeyWebhookSettingsEventsKoGs._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsKoGs systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsKoGs._(_root);
	@override String get deleteConfirm => 'Webhook을 삭제할까요?';
	@override String get testRemarks => '스위치 오른쪽에 있는 버튼을 클릭하여 더미 데이터를 사용한 테스트용 웹 훅을 보낼 수 있습니다.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportKoGs extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientKoGs notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientKoGs._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesKoGs extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get createRole => '역할 생성';
	@override String get deleteRole => '역할 삭제';
	@override String get updateRole => '역할 수정';
	@override String get assignRole => '역할 할당';
	@override String get unassignRole => '역할 해제';
	@override String get suspend => '얼우기';
	@override String get unsuspend => '정지 해제';
	@override String get addCustomEmoji => '커스텀 이모지 추가';
	@override String get updateCustomEmoji => '커스텀 이모지 수정';
	@override String get deleteCustomEmoji => '커스텀 이모지 삭제';
	@override String get updateServerSettings => '서버 설정 갱신';
	@override String get updateUserNote => '조정 기록 갱신';
	@override String get deleteDriveFile => '파일 삭제';
	@override String get deleteNote => '노트 뭉캐기';
	@override String get createGlobalAnnouncement => '전역 공지사항 생성';
	@override String get createUserAnnouncement => '유저에게 공지사항 만들기';
	@override String get updateGlobalAnnouncement => '모든 공지사항 수정';
	@override String get updateUserAnnouncement => '유저의 공지사항 수정';
	@override String get deleteGlobalAnnouncement => '모든 공지사항 삭제';
	@override String get deleteUserAnnouncement => '사용자 공지 걸 뭉캐기';
	@override String get resetPassword => '비밀번호 재설정';
	@override String get suspendRemoteInstance => '리모트 서버를 정지';
	@override String get unsuspendRemoteInstance => '리모트 서버의 정지를 해제';
	@override String get updateRemoteInstanceNote => '리모트 서버의 조정 기록 갱신';
	@override String get markSensitiveDriveFile => '파일에 열람주의를 설정';
	@override String get unmarkSensitiveDriveFile => '파일에 열람주의를 해제';
	@override String get resolveAbuseReport => '신고 해겔하기';
	@override String get forwardAbuseReport => '신고 전달';
	@override String get updateAbuseReportNote => '신고 조정 노트 갱신';
	@override String get createInvitation => '초대 코드 생성';
	@override String get createAd => '광고 생성';
	@override String get deleteAd => '광고 삭제';
	@override String get updateAd => '광고 수정';
	@override String get createAvatarDecoration => '아바타 장식 만들기';
	@override String get updateAvatarDecoration => '아바타 장식 수정';
	@override String get deleteAvatarDecoration => '아바타 장식 삭제';
	@override String get unsetUserAvatar => '유저 아바타 제거';
	@override String get unsetUserBanner => '유저 배너 제거';
	@override String get createSystemWebhook => 'SystemWebhook을 생성';
	@override String get updateSystemWebhook => 'SystemWebhook을 수정';
	@override String get deleteSystemWebhook => 'SystemWebhook을 삭제';
	@override String get createAbuseReportNotificationRecipient => '신고 알림 수신자 생성';
	@override String get updateAbuseReportNotificationRecipient => '신고 알림 수신자 편집';
	@override String get deleteAbuseReportNotificationRecipient => '신고 알림 수신자 삭제';
	@override String get deleteAccount => '계정을 삭제';
	@override String get deletePage => '페이지를 삭제';
	@override String get deleteFlash => 'Play를 삭제';
	@override String get deleteGalleryPost => '갤러리 게시물을 삭제';
	@override String get deleteChatRoom => '채팅 룸 삭제';
	@override String get updateProxyAccountDescription => '프록시 계정의 설명 업데이트';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerKoGs extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '파일 상세';
	@override String get type => '파일 유형';
	@override String get size => '파일 크기';
	@override String get url => 'URL';
	@override String get uploadedAt => '업로드 날짜';
	@override String get attachedNotes => '첨부된 노트';
	@override String get usage => '이용';
	@override String get thisPageCanBeSeenFromTheAuthor => '이 페이지는 파일 소유자만 열람할 수 있습니다';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerKoGs extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '외부 사이트로부터 설치';
	@override String get checkVendorBeforeInstall => '제공자를 신뢰할 수 있는 경우에만 설치하십시오.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginKoGs plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeKoGs theme_ = _TranslationsMisskeyExternalResourceInstallerThemeKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaKoGs meta_ = _TranslationsMisskeyExternalResourceInstallerMetaKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoKoGs vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsKoGs errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsKoGs._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverKoGs extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaKoGs media_ = _TranslationsMisskeyDataSaverMediaKoGs._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarKoGs avatar_ = _TranslationsMisskeyDataSaverAvatarKoGs._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewThumbnailKoGs urlPreviewThumbnail_ = _TranslationsMisskeyDataSaverUrlPreviewThumbnailKoGs._(_root);
	@override late final _TranslationsMisskeyDataSaverDisableUrlPreviewKoGs disableUrlPreview_ = _TranslationsMisskeyDataSaverDisableUrlPreviewKoGs._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeKoGs code_ = _TranslationsMisskeyDataSaverCodeKoGs._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereKoGs extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get N => '북반구';
	@override String get S => '남반구';
	@override String get caption => '일부 클라이언트 설정에서 계절을 판단하려고 사용합니다.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiKoGs extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get reversi => '리버시';
	@override String get gameSettings => '대국 설정';
	@override String get chooseBoard => '보드 개리기';
	@override String get blackOrWhite => '선공/후공';
	@override String blackIs({required Object name}) => '${name}님이 흑(선공)';
	@override String get rules => '규칙';
	@override String get thisGameIsStartedSoon => '대국을 곧 시작합니다';
	@override String get waitingForOther => '상대의 준비가 끝나기를 기다리고 있습니다.';
	@override String get waitingForMe => '나의 준비가 끝나기를 기다리고 있습니다.';
	@override String get waitingBoth => '준비하세요';
	@override String get ready => '준비 완료';
	@override String get cancelReady => '준비되지 않음';
	@override String get opponentTurn => '상대의 차례입니다';
	@override String get myTurn => '나의 차례입니다';
	@override String turnOf({required Object name}) => '${name}님의 차례입니다';
	@override String pastTurnOf({required Object name}) => '${name}님의 차례';
	@override String get surrender => '기권';
	@override String get surrendered => '상대의 기권';
	@override String get timeout => '시간 초과';
	@override String get drawn => '무승부';
	@override String won({required Object name}) => '${name}님의 승리';
	@override String get black => '꺼멍';
	@override String get white => '허영';
	@override String get total => '합게';
	@override String turnCount({required Object count}) => '${count}번째 수';
	@override String get myGames => '내 대국';
	@override String get allGames => '모든 대국';
	@override String get ended => '종료';
	@override String get playing => '대국 중';
	@override String get isLlotheo => '돌이 적은 쪽이 승리(로세오)';
	@override String get loopedMap => '순환 지도';
	@override String get canPutEverywhere => '어디든 둘 수 있는 모드';
	@override String get timeLimitForEachTurn => '각 수의 시간 제한';
	@override String get freeMatch => '자유 대국';
	@override String get lookingForPlayer => '대국 상대를 찾고 있습니다';
	@override String get gameCanceled => '대국이 취소되었습니다';
	@override String get shareToTlTheGameWhenStart => '대국이 시작할 때 타임라인에 공유';
	@override String get iStartedAGame => '대국을 시작하였습니다! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => '상대가 설정을 변경했습니다';
	@override String get allowIrregularRules => '규칙 변경 허용(완전 자유)';
	@override String get disallowIrregularRules => '규칙 변경 없음';
	@override String get showBoardLabels => '판에 행·열 번호 표시';
	@override String get useAvatarAsStone => '돌을 아이콘으로 표시';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenKoGs extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '오프라인 - 서버에 접속할 수 없습니다';
	@override String get header => '서버에 접속할 수 없습니다';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingKoGs extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL 미리보기 설정';
	@override String get enable => 'URL 미리보기 활성화';
	@override String get allowRedirect => '미리보기 위치의 리디렉션 허가';
	@override String get allowRedirectDescription => '입력된 URL이 리디렉션될 경우, 그 리디렉션 위치를 따라 미리보기를 표시할 것인지 설정합니다. 비활성화하면 서버 리소스를 절약할 수 있습니다만, 리디렉션 위치의 내용은 표시되지 않습니다.';
	@override String get timeout => '미리보기를 불러올 때의 타임아웃 (ms)';
	@override String get timeoutDescription => '미리보기를 로딩하는데 걸리는 시간이 정한 시간보다 오래 걸리는 경우, 미리보기를 생성하지 않습니다.';
	@override String get maximumContentLength => 'Content-Length의 최대치 (byte)';
	@override String get maximumContentLengthDescription => 'Content-Length가 이 값을 넘어서면 미리보기를 생성하지 않습니다.';
	@override String get requireContentLength => 'Content-Length를 받아온 경우에만 ';
	@override String get requireContentLengthDescription => '상대 서버가 Content-Length를 되돌려주지 않는다면 미리보기를 만들지 않습니다.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => '미리보기를 얻을 때 사용한 User-Agent를 설정합니다. 비어 있다면 기본값의 User-Agent를 사용합니다.';
	@override String get summaryProxy => '미리보기를 만든 프록시의 엔드포인트';
	@override String get summaryProxyDescription => 'Misskey 본체를 사용하지 않고 서머리 프록시로 미리보기를 만듭니다.';
	@override String get summaryProxyDescription2 => '프록시는 아래의 파라미터를 쿼리 문자열로 연동합니다. 프록시 측이 이를 지원하지 않으면 설정값을 무시합니다.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsKoGs extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get pip => '화면 속 화면';
	@override String get playbackRate => '재생 속도';
	@override String get loop => '반복 재생';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuKoGs extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '컨텍스트 메뉴';
	@override String get app => '애플리케이션';
	@override String get appWithShift => 'Shift 키로 애플리케이션';
	@override String get native => '브라우저의 UI';
}

// Path: misskey.gridComponent_
class _TranslationsMisskeyGridComponentKoGs extends TranslationsMisskeyGridComponentEnUs {
	_TranslationsMisskeyGridComponentKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyGridComponentErrorKoGs error_ = _TranslationsMisskeyGridComponentErrorKoGs._(_root);
}

// Path: misskey.roleSelectDialog_
class _TranslationsMisskeyRoleSelectDialogKoGs extends TranslationsMisskeyRoleSelectDialogEnUs {
	_TranslationsMisskeyRoleSelectDialogKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get notSelected => '선택하지 않았습니다.';
}

// Path: misskey.customEmojisManager_
class _TranslationsMisskeyCustomEmojisManagerKoGs extends TranslationsMisskeyCustomEmojisManagerEnUs {
	_TranslationsMisskeyCustomEmojisManagerKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCustomEmojisManagerGridCommonKoGs gridCommon_ = _TranslationsMisskeyCustomEmojisManagerGridCommonKoGs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLogsKoGs logs_ = _TranslationsMisskeyCustomEmojisManagerLogsKoGs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerRemoteKoGs remote_ = _TranslationsMisskeyCustomEmojisManagerRemoteKoGs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalKoGs local_ = _TranslationsMisskeyCustomEmojisManagerLocalKoGs._(_root);
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenKoGs extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '임베디드 코드를 커스터마이즈';
	@override String get header => '해더를 표시';
	@override String get autoload => '자동으로 다음 코드를 실행 (비권장)';
	@override String get maxHeight => '최대 높이';
	@override String get maxHeightDescription => '최대 값을 무시하려면 0을 입력하세요. 위젯이 상하로 길어지는 것을 방지하려면, 임의의 값을 입력해 주세요.';
	@override String get maxHeightWarn => '높이 최대 값이 설정되어져 있지 않습니다(0). 의도적으로 설정 하지 않았다면 임의의 값을 설정해주세요.';
	@override String get previewIsNotActual => '미리보기로 표시할 수 있는 크기보다 큽니다. 실제로 넣은 코드의 표시가 다른 경우가 있습니다.';
	@override String get rounded => '외곽선을 둥글게 하기';
	@override String get border => '외곽선에 테두리를 씌우기';
	@override String get applyToPreview => '미리보기에 반영';
	@override String get generateCode => '임베디드 코드를 만들기';
	@override String get codeGenerated => '코드를 만들었습니다.';
	@override String get codeGeneratedDescription => '만들어진 코드를 웹 사이트에 붙여서 사용하세요.';
}

// Path: misskey.selfXssPrevention_
class _TranslationsMisskeySelfXssPreventionKoGs extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get warning => '경고';
	@override String get title => '“이 화면에 뭔가를 붙여넣어라"는 것은 모두 사기입니다.';
	@override String get description1 => '여기에 무언가를 붙여넣으면 악의적인 유저에게 계정을 탈취당하거나 개인정보를 도용당할 수 있습니다.';
	@override String get description2 => '붙여 넣으려는 항목이 무엇인지 정확히 이해하지 못하는 경우, %c지금 바로 작업을 중단하고 이 창을 닫으십시오.';
	@override String description3({required Object link}) => '자세한 내용은 여기를 확인해 주세요.  ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestKoGs extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get recieved => '받은 신청';
	@override String get sent => '보낸 신청';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsKoGs extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoGs federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoGs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidKoGs uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidKoGs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedKoGs requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedKoGs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsResponseInvalidKoGs responseInvalid_ = _TranslationsMisskeyRemoteLookupErrorsResponseInvalidKoGs._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoGs noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoGs._(_root);
}

// Path: misskey.captcha_
class _TranslationsMisskeyCaptchaKoGs extends TranslationsMisskeyCaptchaEnUs {
	_TranslationsMisskeyCaptchaKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get verify => 'CAPTCHA를 먼저 해결하세요.';
	@override String get testSiteKeyMessage => '사이트 키와 비밀 키에 테스트용 값을 입력하여 미리보기를 확인할 수 있습니다.\n자세한 내용은 아래 페이지를 확인해보세요.';
	@override late final _TranslationsMisskeyCaptchaErrorKoGs error_ = _TranslationsMisskeyCaptchaErrorKoGs._(_root);
}

// Path: misskey.bootErrors_
class _TranslationsMisskeyBootErrorsKoGs extends TranslationsMisskeyBootErrorsEnUs {
	_TranslationsMisskeyBootErrorsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '로딩이 실패함';
	@override String get serverError => '잠시 기다렸다가 다시 로드해도 여전히 문제가 해결되지 않으면 아래 Error ID와 함께 서버 관리자에게 연락해 주세요.';
	@override String get solution => '다음과 같은 방법으로 해결할 수 있습니다.';
	@override String get solution1 => '브라우저 및 OS를 최신 버전으로 업데이트하기';
	@override String get solution2 => '광고 차단 비활성화하기';
	@override String get solution3 => '브라우저 캐시 지우기';
	@override String get solution4 => '(Tor Browser) dom.webaudio.enabled를 true로 설정하세요';
	@override String get otherOption => '기타 옵션';
	@override String get otherOption1 => '클라이언트 설정 및 캐시 삭제';
	@override String get otherOption2 => '간편 클라이언트 실행';
	@override String get otherOption3 => '복구 툴 실행';
}

// Path: misskey.search_
class _TranslationsMisskeySearchKoGs extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => '말캉';
	@override String get searchScopeLocal => '로컬';
	@override String get searchScopeServer => '서버 지정';
	@override String get searchScopeUser => '사용자 지정';
	@override String get pleaseEnterServerHost => '서버의 호스트를 입력해 주세요.';
	@override String get pleaseSelectUser => '유저를 선택해주세요';
	@override String get serverHostPlaceholder => '예: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class _TranslationsMisskeyServerSetupWizardKoGs extends TranslationsMisskeyServerSetupWizardEnUs {
	_TranslationsMisskeyServerSetupWizardKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get installCompleted => 'Misskey의 설치가 완료됐습니다!';
	@override String get firstCreateAccount => '먼저 관리자 계정을 만듭시다.';
	@override String get accountCreated => '관리자 계정이 만들어졌습니다!';
	@override String get serverSetting => '서버 설정';
	@override String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => '이 위자드로 쉽게 최적화된 서버의 설정을 할 수 있습니다.';
	@override String get settingsYouMakeHereCanBeChangedLater => '이 설정은 나중에 변경 가능합니다.';
	@override String get howWillYouUseMisskey => 'Misskey를 어떻게 사용하십니까?';
	@override late final _TranslationsMisskeyServerSetupWizardUseKoGs use_ = _TranslationsMisskeyServerSetupWizardUseKoGs._(_root);
	@override String get openServerAdvice => '불특정 다수의 유저를 받아들이는 것에는 위험이 따릅니다. 문제에 대처할 수 있도록 확실한 조정 체제로 운영하는 것을 권장합니다.';
	@override String get openServerAntiSpamAdvice => '자신의 서버가 스팸으로 사용되지 않게끔 reCAPTCHA라는 안티 봇 기능을 활성화하는 등 보안에 대해서도 세심한 주의가 필요합니다.';
	@override String get howManyUsersDoYouExpect => '어느 정도의 인원으로 생각 중이십니까?';
	@override late final _TranslationsMisskeyServerSetupWizardScaleKoGs scale_ = _TranslationsMisskeyServerSetupWizardScaleKoGs._(_root);
	@override String get largeScaleServerAdvice => '대규모 서버에서는 부하분산이나 데이터베이스의 복제 등 높은 인프라스트럭처 지식이 필요할 수 있습니다.';
	@override String get doYouConnectToFediverse => 'Fediverse에 접속하시겠습니까?';
	@override String get doYouConnectToFediverse_description1 => '분산형 서버로 구성된 네트워크(Fediverse)에 접속하면 다른 서버와 서로 콘텐츠의 주고받기를 할 수 있습니다.';
	@override String get doYouConnectToFediverse_description2 => 'Fediverse에 접속하는 것을 \'연합\'이라고도 부릅니다.';
	@override String get youCanConfigureMoreFederationSettingsLater => '나중에 연합 가능한 서버의 지정 등 고급 설정을 할 수 있습니다.';
	@override String get adminInfo => '관리자 정보';
	@override String get adminInfo_description => '문의 접수를 위해 사용되는 관리자 정보를 설정합니다.';
	@override String get adminInfo_mustBeFilled => '오픈 서버 혹은 연합이 켜져 있는 경우 반드시 입력해야 합니다.';
	@override String get followingSettingsAreRecommended => '아래의 설정이 권장됩니다.';
	@override String get applyTheseSettings => '이 설정을 적용';
	@override String get skipSettings => '설정 건너뛰기';
	@override String get settingsCompleted => '설정이 완료됐습니다!';
	@override String get settingsCompleted_description => '수고하셨습니다. 준비를 마쳤으므로 바로 서버의 이용을 시작하실 수 있습니다.';
	@override String get settingsCompleted_description2 => '상세한 서버 설정은 \'제어판\'에서 하실 수 있습니다.';
	@override String get donationRequest => '기부 요청';
	@override late final _TranslationsMisskeyServerSetupWizardDonationRequestKoGs donationRequest_ = _TranslationsMisskeyServerSetupWizardDonationRequestKoGs._(_root);
}

// Path: misskey.uploader_
class _TranslationsMisskeyUploaderKoGs extends TranslationsMisskeyUploaderEnUs {
	_TranslationsMisskeyUploaderKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get editImage => '이미지 편집';
	@override String compressedToX({required Object x}) => '${x}로 압축';
	@override String savedXPercent({required Object x}) => '${x}% 절약';
	@override String get abortConfirm => '업로드되지 않은 파일이 있습니다만, 그만 두시겠습니까?';
	@override String get doneConfirm => '업로드되지 않은 파일이 있습니다만, 완료하시겠습니까?';
	@override String maxFileSizeIsX({required Object x}) => '업로드 가능한 최대 파일 크기는 ${x}입니다.';
	@override String get allowedTypes => '업로드 가능한 파일 유형';
	@override String get tip => '파일은 아직 업로드되지 않았습니다. 이 다이얼로그에서 업로드 전의 확인, 이름 바꾸기, 압축, 자르기 등을 하실 수 있습니다. 준비가 되셨다면 \'업로드\' 버튼을 클릭해 업로드를 시작하실 수 있습니다.';
}

// Path: misskey.clientPerformanceIssueTip_
class _TranslationsMisskeyClientPerformanceIssueTipKoGs extends TranslationsMisskeyClientPerformanceIssueTipEnUs {
	_TranslationsMisskeyClientPerformanceIssueTipKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '배터리 소비가 심하다고 생각되시면';
	@override String get makeSureDisabledAdBlocker => '광고 차단을 비활성화해 주십시오.';
	@override String get makeSureDisabledAdBlocker_description => '광고 차단은 성능에 영향을 미칠 수 있습니다. OS의 기능이나 브라우저의 기능, 애드온 등으로 광고 차단이 활성화돼있지 않은지 확인해 주십시오.';
	@override String get makeSureDisabledCustomCss => '커스텀 CSS를 무효로 해주십시오.';
	@override String get makeSureDisabledCustomCss_description => '스타일을 덮어쓰기하면 성능에 영향을 미칠 수 있습니다. 커스텀 CSS나 스타일을 덮어쓰기하는 확장 기능이 유효로 돼있는지 확인해주십시오.';
	@override String get makeSureDisabledAddons => '확장 기능을 비활성화해 주십시오.';
	@override String get makeSureDisabledAddons_description => '일부 확장 기능은 클라이언트의 동작에 간섭해 성능에 영향을 미칠 수 있습니다. 브라우저의 확장 기능을 비활성화해 개선할지 확인해주십시오.';
}

// Path: misskey.clip_
class _TranslationsMisskeyClipKoGs extends TranslationsMisskeyClipEnUs {
	_TranslationsMisskeyClipKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get tip => '클립은 노트를 정리할 수 있는 기능입니다.';
}

// Path: misskey.userLists_
class _TranslationsMisskeyUserListsKoGs extends TranslationsMisskeyUserListsEnUs {
	_TranslationsMisskeyUserListsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get tip => '임의의 유저가 포함된 리스트를 작성할 수 있습니다. 작성한 리스트는 타임라인으로 표시가 가능합니다.';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorKoGs extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get tip => '이미지에 크레딧 정보 등의 워터마크를 추가할 수 있습니다.';
	@override String get quitWithoutSaveConfirm => '보존하지 않고 종료하시겠습니까?';
	@override String get driveFileTypeWarn => '이 파이';
	@override String get driveFileTypeWarnDescription => '이미지 파일을 선택해주십시오.';
	@override String get title => '워터마크 편집';
	@override String get cover => '전체에 붙이기';
	@override String get repeat => '전면에 깔기';
	@override String get opacity => '불투명도';
	@override String get scale => '크기';
	@override String get text => '텍스트';
	@override String get position => '위치';
	@override String get type => '종류';
	@override String get image => '이미지';
	@override String get advanced => '고급';
	@override String get stripe => '줄무늬';
	@override String get stripeWidth => '라인의 폭';
	@override String get stripeFrequency => '라인의 수';
	@override String get angle => '각도';
	@override String get polkadot => '물방울 무늬';
	@override String get checker => '체크 무늬';
	@override String get polkadotMainDotOpacity => '주요 물방울의 불투명도';
	@override String get polkadotMainDotRadius => '주요 물방울의 크기';
	@override String get polkadotSubDotOpacity => '서브 물방울의 불투명도';
	@override String get polkadotSubDotRadius => '서브 물방울의 크기';
	@override String get polkadotSubDotDivisions => '서브 물방울의 수';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorKoGs extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '이펙트';
	@override String get addEffect => '이펙트를 추가';
	@override String get discardChangesConfirm => '변경을 취소하고 종료하시겠습니까?';
	@override late final _TranslationsMisskeyImageEffectorFxsKoGs fxs_ = _TranslationsMisskeyImageEffectorFxsKoGs._(_root);
}

// Path: misskey.drafts_
class _TranslationsMisskeyDraftsKoGs extends TranslationsMisskeyDraftsEnUs {
	_TranslationsMisskeyDraftsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get select => '초안 선택';
	@override String get cannotCreateDraftAnymore => '초안 작성 가능 수를 초과했습니다.';
	@override String get cannotCreateDraft => '이 내용으로는 초안을 작성할 수 없습니다. ';
	@override String get delete => '초안 삭제\n';
	@override String get deleteAreYouSure => '초안을 삭제하시겠습니까?';
	@override String get noDrafts => '초안 없음\n';
	@override String replyTo({required Object user}) => '${user}에 회신';
	@override String quoteOf({required Object user}) => '${user} 노트에 인용';
	@override String postTo({required Object channel}) => '${channel}에 게시';
	@override String get saveToDraft => '초안에 저장';
	@override String get restoreFromDraft => '초안에서 복원\n';
	@override String get restore => '복원';
	@override String get listDrafts => '초안 목록';
}

// Path: misskeyIO.skebStatus_
class _TranslationsMisskeyIOSkebStatusKoGs extends TranslationsMisskeyIOSkebStatusEnUs {
	_TranslationsMisskeyIOSkebStatusKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusGenresKoGs genres_ = _TranslationsMisskeyIOSkebStatusGenresKoGs._(_root);
	@override String get seeking => '모집 중';
	@override String get stopped => '정지 중';
	@override String get client => '클라이언트';
	@override String yenX({required Object x}) => 'JPY ${x}';
	@override String nWorks({required Object n}) => '납품 실적 ${n}건';
	@override String nRequests({required Object n}) => '거래 실적 ${n}건';
}

// Path: misskey.chat_.chatAllowedUsers_
class _TranslationsMisskeyChatChatAllowedUsersKoGs extends TranslationsMisskeyChatChatAllowedUsersEnUs {
	_TranslationsMisskeyChatChatAllowedUsersKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get everyone => '누구나';
	@override String get followers => '자신의 팔로워만';
	@override String get following => '자신이 팔로우한 유저만';
	@override String get mutual => '상호 팔로우한 유저만';
	@override String get none => '아무도 허락하지 않기';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatKoGs extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => '발신자 이름 표시';
	@override String get sendOnEnter => '엔터로 보내기';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeKoGs extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get none => '보내고 잇어예';
	@override String get manuallySuspended => '수동 정지 중';
	@override String get goneSuspended => '서버 삭제를 이유로 정지 중';
	@override String get autoSuspendedForNotResponding => '서버 응답 없음을 이유로 정지 중';
	@override String get softwareSuspended => '전달 정지 중인 소프트웨어이므로 정지 중';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreKoGs extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get score => '점수';
	@override String get scoreYen => '번 돈';
	@override String get highScore => '최고 점수';
	@override String get maxChain => '최대 콤보 수';
	@override String yen({required Object yen}) => '${yen}엔';
	@override String estimatedQty({required Object qty}) => '${qty}개';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '오니기리 ${onigiriQtyWithUnit}';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayKoGs extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get section1 => '위치를 조정하여 상자에 물건을 떨어뜨립니다.';
	@override String get section2 => '같은 종류의 물건이 붙으면 다른 물건으로 바뀌면서 점수를 얻게 됩니다.';
	@override String get section3 => '상자에서 물건이 넘치면 게임 오버입니다. 상자에서 물건이 넘치지 않도록 하면서 물건을 융합하여 높은 점수를 획득하세요!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingKoGs extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '길라잡이에 어서 오이소';
	@override String get description => '여기서는 미스키의 기본적인 사용법이나 기능을 확인할 수 있습니다.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteKoGs extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '\'노트\'가 무엇인가요?';
	@override String get description => '미스키에서는 게시물을 \'노트\'라고 합니다. 노트는 타임라인에 시간순으로 정렬되어 있고, 실시간으로 갱신됩니다.';
	@override String get reply => '답글을 달 수 있습니다. 답글에 답글을 달 수도 있고 글타래처럼 대화를 이어갈 수도 있습니다.';
	@override String get renote => '그 노트를 자기 타임라인에 가져와서 공유하는 것이 가능합니다. 글을 추가해서 인용하는 것도 가능합니다.';
	@override String get reaction => '리액션을 다는 것이 가능합니다. 다음 페이지에서 자세한 설명을 볼 수 있습니다.';
	@override String get menu => '노트의 상세 정보를 표시하거나, 링크를 복사하는 등의 다양한 조작을 할 수 있습니다.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionKoGs extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '\'리액션\'이 무엇인가요?';
	@override String get description => '노트에 \'리액션\'을 보낼 수 있습니다. \'좋아요\'만으로는 충분히 전해지지 않는 감정을, 이모지에 실어서 가볍게 보낼 수 있습니다.';
	@override String get letsTryReacting => '리액션은 노트의 \'+\' 버튼을 클릭하여 붙일 수 있습니다. 지금 표시되는 샘플 노트에 리액션을 달아 보세요!';
	@override String get reactToContinue => '다음으로 진행하려면 리액션을 보내세요.';
	@override String get reactNotification => '누군가가 나의 노트에 리액션을 보내면 실시간으로 알림을 받게 됩니다.';
	@override String get reactDone => '\'-\' 버튼을 눌러서 리액션을 취소할 수 있습니다.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineKoGs extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '타임라인에 대하여';
	@override String get description1 => 'Misskey에는 종류에 따라 여러 가지의 타임라인으로 구성되어 있습니다.(서버에 따라서는 일부 타임라인을 사용할 수 없는 경우가 있습니다)';
	@override String get home => '내가 팔로우 중인 계정의 노트를 볼 수 있습니다.';
	@override String get local => '이 서버에 있는 모든 유저의 게시물을 볼 수 있습니다.';
	@override String get social => '홈 타임라인과 로컬 타임라인의 게시물을 모두 볼 수 있습니다.';
	@override String get global => '연결되어 있는 모든 서버의 게시물을 볼 수 있습니다.';
	@override String get description2 => '각각의 타임라인은 화면 상단에서 언제든지 변경할 수 있습니다.';
	@override String description3({required Object link}) => '이 외에도, \'리스트 타임라인\'이나 \'채널 타임라인\' 등이 있습니다. 자세한 사항은 ${link}에서 확인하실 수 있습니다.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteKoGs extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 게시 설정';
	@override String get description1 => 'Misskey에 노트를 게시할 때에는 다양한 옵션 설정이 가능합니다. 노트를 게시할 때 쓰이는 \'글 입력란\'은 이렇게 생겼습니다.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityKoGs visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityKoGs._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwKoGs cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwKoGs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoGs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '첨부 파일을 열람주의로 설정하려면?';
	@override String get description => '서버의 가이드라인에 따라 필요한 이미지, 또는 그대로 노출되기에 부적절한 미디어는 \'열람 주의\'를 설정해 주세요.';
	@override String get tryThisFile => '이 입력란에 첨부된 이미지를 열람 주의로 설정해 보세요!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoGs exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoGs._(_root);
	@override String get method => '첨부 파일을 열람 주의로 설정하려면, 해당 파일을 클릭하여 메뉴를 열고, \'열람주의로 설정\'을 클릭합니다.';
	@override String get sensitiveSucceeded => '파일을 첨부할 때에는 서버의 가이드라인에 따라 적절히 열람주의를 설정해 주시기 바랍니다.';
	@override String get doItToContinue => '이미지를 열람 주의로 설정하면 다음으로 넘어갈 수 있게 됩니다.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneKoGs extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '길라잡이가 껕낫십니다!🎉';
	@override String description({required Object link}) => '여기에서 소개한 기능은 극히 일부에 지나지 않습니다. Misskey의 사용 방법을 더 자세히 알아보려면 ${link}를 확인해 주세요!';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class _TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorKoGs extends TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	_TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get all => '모두 공개';
	@override String get localOnly => '로컬 콘텐츠만 공개하고 리모트 콘텐츠는 비공개';
	@override String get none => '모두 비공개';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesKoGs extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1KoGs notes1_ = _TranslationsMisskeyAchievementsTypesNotes1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10KoGs notes10_ = _TranslationsMisskeyAchievementsTypesNotes10KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100KoGs notes100_ = _TranslationsMisskeyAchievementsTypesNotes100KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500KoGs notes500_ = _TranslationsMisskeyAchievementsTypesNotes500KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000KoGs notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000KoGs notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000KoGs notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000KoGs notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000KoGs notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000KoGs notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000KoGs notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000KoGs notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000KoGs notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000KoGs notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000KoGs notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000KoGs notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3KoGs login3_ = _TranslationsMisskeyAchievementsTypesLogin3KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7KoGs login7_ = _TranslationsMisskeyAchievementsTypesLogin7KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15KoGs login15_ = _TranslationsMisskeyAchievementsTypesLogin15KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30KoGs login30_ = _TranslationsMisskeyAchievementsTypesLogin30KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60KoGs login60_ = _TranslationsMisskeyAchievementsTypesLogin60KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100KoGs login100_ = _TranslationsMisskeyAchievementsTypesLogin100KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200KoGs login200_ = _TranslationsMisskeyAchievementsTypesLogin200KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300KoGs login300_ = _TranslationsMisskeyAchievementsTypesLogin300KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400KoGs login400_ = _TranslationsMisskeyAchievementsTypesLogin400KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500KoGs login500_ = _TranslationsMisskeyAchievementsTypesLogin500KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600KoGs login600_ = _TranslationsMisskeyAchievementsTypesLogin600KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700KoGs login700_ = _TranslationsMisskeyAchievementsTypesLogin700KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800KoGs login800_ = _TranslationsMisskeyAchievementsTypesLogin800KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900KoGs login900_ = _TranslationsMisskeyAchievementsTypesLogin900KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000KoGs login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1KoGs noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1KoGs noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoGs myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledKoGs profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatKoGs markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1KoGs following1_ = _TranslationsMisskeyAchievementsTypesFollowing1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10KoGs following10_ = _TranslationsMisskeyAchievementsTypesFollowing10KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50KoGs following50_ = _TranslationsMisskeyAchievementsTypesFollowing50KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100KoGs following100_ = _TranslationsMisskeyAchievementsTypesFollowing100KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300KoGs following300_ = _TranslationsMisskeyAchievementsTypesFollowing300KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1KoGs followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10KoGs followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50KoGs followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100KoGs followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300KoGs followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500KoGs followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000KoGs followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30KoGs collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minKoGs viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyKoGs iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureKoGs foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minKoGs client30min_ = _TranslationsMisskeyAchievementsTypesClient30minKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minKoGs client60min_ = _TranslationsMisskeyAchievementsTypesClient60minKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoGs noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightKoGs postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secKoGs postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteKoGs selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmKoGs htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartKoGs viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoGs outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsKoGs open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoGs driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadKoGs reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereKoGs clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyKoGs justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoGs setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoGs passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoGs passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoGs passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoGs loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoGs loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedKoGs cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverKoGs brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoGs smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedKoGs tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoGs bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoGs._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoGs bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoGs._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityKoGs extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get low => '낮음';
	@override String get middle => '엔갆게';
	@override String get high => '높음';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsKoGs extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => '글로벌 타임라인 보이기';
	@override String get ltlAvailable => '로컬 타임라인 보이기';
	@override String get canPublicNote => '공개 노트 허용';
	@override String get mentionMax => '노트에 넣을 수 있는 멘션 수';
	@override String get canInvite => '서버 초대 코드 발행';
	@override String get inviteLimit => '초대 한도';
	@override String get inviteLimitCycle => '초대 발급 간격';
	@override String get inviteExpirationTime => '초대 만료 기간';
	@override String get canManageCustomEmojis => '커스텀 이모지 관리';
	@override String get canManageAvatarDecorations => '아바타 꾸미기 관리';
	@override String get driveCapacity => '드라이브 용량';
	@override String get maxFileSize => '업로드 가능한 최대 파일 크기';
	@override String get alwaysMarkNsfw => '파일을 항상 NSFW로 지정';
	@override String get canUpdateBioMedia => '아바타 및 배너 이미지 변경 허용';
	@override String get pinMax => '고정할 수 있는 노트 수';
	@override String get antennaMax => '만들 수 있는 안테나 수';
	@override String get wordMuteMax => '단어 뮤트할 수 있는 문자 수';
	@override String get webhookMax => '만들 수 있는 Webhook 수';
	@override String get clipMax => '만들 수 있는 클립 수';
	@override String get noteEachClipsMax => '클립에 넣을 수 있는 노트 수';
	@override String get userListMax => '만들 수 있는 유저 리스트 수';
	@override String get userEachUserListsMax => '유저 리스트에 넣을 수 있는 유저 수';
	@override String get rateLimitFactor => '요청 빈도 제한';
	@override String get descriptionOfRateLimitFactor => '작을수록 제한이 완화되고, 클수록 제한이 강화됩니다.';
	@override String get canHideAds => '강고 수ᇚ후기';
	@override String get canSearchNotes => '노트 검색 이용 가능 여부';
	@override String get canUseTranslator => '번역 기능의 사용';
	@override String get avatarDecorationLimit => '아바타 장식의 최대 붙임 개수';
	@override String get canImportAntennas => '안테나 가져오기 허용';
	@override String get canImportBlocking => '차단 목록 가져오기 허용';
	@override String get canImportFollowing => '팔로우 가져오기 허용';
	@override String get canImportMuting => '뮤트 목록 가져오기 허용';
	@override String get canImportUserLists => '리스트 목록 가져오기 허용';
	@override String get chatAvailability => '채팅을 허락';
	@override String get uploadableFileTypes => '업로드 가능한 파일 유형';
	@override String get uploadableFileTypes_caption => 'MIME 유형을 ';
	@override String uploadableFileTypes_caption2({required Object x}) => '파일에 따라서는 유형을 검사하지 못하는 경우가 있습니다. 그러한 파일을 허가하는 경우에는 ${x}를 지정으로 추가해주십시오.';
	@override String get noteDraftLimit => '서버측 노트 초안 작성 가능 수';
	@override String get watermarkAvailable => '워터마크 기능의 사용 여부';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionKoGs extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => '수동 역할에 이미 할당됨';
	@override String get isLocal => '로컬 유저';
	@override String get isRemote => '웬겍 사용자';
	@override String get isCat => '갱이 사용자';
	@override String get isBot => '자동 사용자';
	@override String get isSuspended => '정지된 유저';
	@override String get isLocked => '잠금 계정 유저';
	@override String get isExplorable => '‘계정을 쉽게 발견하도록 하기’를 활성화한 유저';
	@override String get createdLessThan => '가입한 지 다음 일수 이내인 유저';
	@override String get createdMoreThan => '가입한 지 다음 일수 이상인 유저';
	@override String get followersLessThanOrEq => '팔로워 수가 다음 이하인 유저';
	@override String get followersMoreThanOrEq => '팔로워 수가 다음보다 많은 유저';
	@override String get followingLessThanOrEq => '팔로잉 수가 다음 이하인 유저';
	@override String get followingMoreThanOrEq => '팔로잉 수가 다음보다 많은 유저';
	@override String get notesLessThanOrEq => '노트 수가 다음 이하인 유저';
	@override String get notesMoreThanOrEq => '노트 수가 다음보다 많은 유저';
	@override String get and => '다음을 모두 만족';
	@override String get or => '다음을 하나라도 만족';
	@override String get not => '다음을 만족하지 않음';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowKoGs extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '새 팔로워가 잇십니다';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestKoGs extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '팔로우 요청을 받았습니다';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysKoGs extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get accent => '강조 색상';
	@override String get bg => '배경';
	@override String get fg => '텍스트';
	@override String get focus => '포커스';
	@override String get indicator => '인디케이터';
	@override String get panel => '패널';
	@override String get shadow => '그림자';
	@override String get header => '헤더';
	@override String get navBg => '사이드바 배경';
	@override String get navFg => '사이드바 텍스트';
	@override String get navActive => '사이드바 텍스트 (활성)';
	@override String get navIndicator => '사이드바 인디케이터';
	@override String get link => '링크';
	@override String get hashtag => '해시태그';
	@override String get mention => '멘션';
	@override String get mentionMe => '나에게 보낸 멘션';
	@override String get renote => '리노트';
	@override String get modalBg => '모달 배경';
	@override String get divider => '구분선';
	@override String get scrollbarHandle => '스크롤바 핸들';
	@override String get scrollbarHandleHover => '스크롤바 핸들 (호버)';
	@override String get dateLabelFg => '날짜 레이블 텍스트';
	@override String get infoBg => '정보창 배경';
	@override String get infoFg => '정보창 텍스트';
	@override String get infoWarnBg => '경고창 배경';
	@override String get infoWarnFg => '경고창 텍스트';
	@override String get toastBg => '알림창 배경';
	@override String get toastFg => '알림창 텍스트';
	@override String get buttonBg => '버튼 배경';
	@override String get buttonHoverBg => '버튼 배경 (호버)';
	@override String get inputBorder => '입력 필드 테두리';
	@override String get badge => '배지';
	@override String get messageBg => '대화 배경';
	@override String get fgHighlighted => '강조된 텍스트';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListKoGs extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get chooseList => '리스트 개리기';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersKoGs extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get a => '지금 무엇을 하고 있나요?';
	@override String get b => '무슨 일이 일어나고 있나요?';
	@override String get c => '무엇을 생각하고 있나요?';
	@override String get d => '말하고 싶은 게 있나요?';
	@override String get e => '옇다 서 주이소';
	@override String get f => '작성해주시길 기다리고 있어요...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksKoGs extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get text => '텍스트';
	@override String get textarea => '텍스트 영역';
	@override String get section => '섹션';
	@override String get image => '이미지';
	@override String get button => '버튼';
	@override String get dynamic => '동적 블록';
	@override String dynamicDescription({required Object play}) => '이 블록은 폐지되었습니다. 이제부터 ${play}에서 이용해 주세요.';
	@override String get note => '노트필기';
	@override late final _TranslationsMisskeyPagesBlocksNoteKoGs note_ = _TranslationsMisskeyPagesBlocksNoteKoGs._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesKoGs extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get all => '전부';
	@override String get note => '유저의 새 글';
	@override String get follow => '팔로잉';
	@override String get mention => '멘션';
	@override String get reply => '답글';
	@override String get renote => '리노트';
	@override String get quote => '따오기';
	@override String get reaction => '반엉';
	@override String get pollEnded => '투표가 종료됨';
	@override String get receiveFollowRequest => '팔로우 요청을 받았을 때';
	@override String get followRequestAccepted => '팔로우 요청이 승인되었을 때';
	@override String get roleAssigned => '역할이 부여됨';
	@override String get chatRoomInvitationReceived => '채팅 룸에 초대받음';
	@override String get achievementEarned => '도전 과제 획득';
	@override String get exportCompleted => '추출을 성공함';
	@override String get login => '로그인';
	@override String get createToken => '액세스 토큰 만들기';
	@override String get test => '알림 테스트';
	@override String get app => '연동된 앱을 통한 알림';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsKoGs extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get followBack => '팔로우';
	@override String get reply => '답하기';
	@override String get renote => '리노트';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsKoGs extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get main => '메인';
	@override String get widgets => '위젯';
	@override String get notifications => '알림';
	@override String get tl => '타임라인';
	@override String get antenna => '안테나';
	@override String get list => '리스트';
	@override String get channel => '채널';
	@override String get mentions => '받언 멘션';
	@override String get direct => '다이렉트';
	@override String get roleTimeline => '역할 타임라인';
	@override String get chat => '채팅';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsKoGs extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get follow => '누군가를 팔로우했을 때';
	@override String get followed => '누군가 나를 팔로우했을 때';
	@override String get note => '노트를 게시할 때';
	@override String get reply => '답글을 받았을 때';
	@override String get renote => '누군가 내 글을 리노트했을 때';
	@override String get reaction => '누군가 내 노트에 리액션했을 때';
	@override String get mention => '누군가 나를 멘션했을 때';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsKoGs extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => '유저로부터 신고를 받았을 때';
	@override String get abuseReportResolved => '받은 신고를 처리했을 때';
	@override String get userCreated => '유저가 생성되었을 때';
	@override String get inactiveModeratorsWarning => '모더레이터가 일정 기간동안 활동하지 않은 경우';
	@override String get inactiveModeratorsInvitationOnlyChanged => '모더레이터가 일정 기간 활동하지 않아 시스템에 의해 초대제로 바뀐 경우';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientKoGs extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => '신고 수신자 추가';
	@override String get modifyRecipient => '신고 수신자 편집';
	@override String get recipientType => '알림 종류';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoGs recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoGs._(_root);
	@override String get keywords => '키워드';
	@override String get notifiedUser => '알릴 유저';
	@override String get notifiedWebhook => '사용할 Webhook';
	@override String get deleteConfirm => '수신자를 삭제하시겠습니까?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginKoGs extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '이 플러그인을 설치하시겠습니까?';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeKoGs extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '이 테마를 설치하시겠습니까?';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaKoGs extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get base => '기본 컬러 스키마';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoKoGs extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '제공자 정보';
	@override String get endpoint => '참조한 엔드포인트';
	@override String get hashVerify => '파일 무결성 확인';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoGs invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoGs resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoGs failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoGs hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoGs pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoGs pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoGs themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoGs._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoGs themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoGs._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaKoGs extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '미디어 불러오기';
	@override String get description => '사진이나 동영상을 자동으로 불러오지 않습니다. 숨겨 놓은 사진이나 동영상은 누르면 불러옵니다.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarKoGs extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '아이콘 이미지';
	@override String get description => '아이콘 이미지의 애니메이션을 멈춥니다. 애니메이션 이미지는 일반 이미지보다 파일 크기가 클 수 있으므로 데이터 사용량을 더 줄일 수 있습니다.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class _TranslationsMisskeyDataSaverUrlPreviewThumbnailKoGs extends TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewThumbnailKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL 미리보기의 섬네일을 비표시';
	@override String get description => 'URL 미리보기의 섬네일 이미지를 불러올 수 없게 됩니다.';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class _TranslationsMisskeyDataSaverDisableUrlPreviewKoGs extends TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverDisableUrlPreviewKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL 미리보기 비활성화';
	@override String get description => 'URL 미리보기 기능을 비활성화합니다. 섬네일 이미지와 달리 링크 정보 불러오기 자체를 줄일 수 있습니다.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeKoGs extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '문자열 강조';
	@override String get description => 'MFM 등으로 문자열 강조 기법을 사용할 때 누르기 전에는 불러오지 않습니다. 문자열 강조에서는 강조할 언어마다 그 정의 파일을 불러와야 하지만 이를 자동으로 불러오지 않으므로 데이터 사용량을 줄일 수 있습니다.';
}

// Path: misskey.gridComponent_.error_
class _TranslationsMisskeyGridComponentErrorKoGs extends TranslationsMisskeyGridComponentErrorEnUs {
	_TranslationsMisskeyGridComponentErrorKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get requiredValue => '이 값은 필수 항목입니다.';
	@override String get columnTypeNotSupport => '정규표현 규칙이 type:text인 칼럼만 지원합니다.';
	@override String patternNotMatch({required Object pattern}) => '이 값은 ${pattern} 패턴과 일치하지 않습니다.';
	@override String get notUnique => '이 값은 다른 값과 중복되지 않아야 합니다.';
}

// Path: misskey.customEmojisManager_.gridCommon_
class _TranslationsMisskeyCustomEmojisManagerGridCommonKoGs extends TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	_TranslationsMisskeyCustomEmojisManagerGridCommonKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get copySelectionRows => '선택한 행을 복사하기';
	@override String get copySelectionRanges => '선택범위를 복사하기';
	@override String get deleteSelectionRows => '선택한 행을 삭제';
	@override String get deleteSelectionRanges => '선택한 행을 삭제';
	@override String get searchSettings => '검색 설정';
	@override String get searchSettingCaption => '고급 검색을 설정합니다.';
	@override String get searchLimit => '표시 건수';
	@override String get sortOrder => '정렬 순서';
	@override String get registrationLogs => '등록 로그';
	@override String get registrationLogsCaption => '이모지를 갱신하거나 삭제할 때 로그가 표시됩니다. 갱신 또는 삭제하거나, 페이지 이동, 새로 고침하면 삭제됩니다.';
	@override String get alertEmojisRegisterFailedDescription => '이모지를 갱신 또는 삭제하지 못했습니다. 자세한 내용은 등록 로그를 확인해주세요.';
}

// Path: misskey.customEmojisManager_.logs_
class _TranslationsMisskeyCustomEmojisManagerLogsKoGs extends TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	_TranslationsMisskeyCustomEmojisManagerLogsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get showSuccessLogSwitch => '성공 로그를 표시';
	@override String get failureLogNothing => '실패 로그가 없습니다.';
	@override String get logNothing => '로그가 없습니다.';
}

// Path: misskey.customEmojisManager_.remote_
class _TranslationsMisskeyCustomEmojisManagerRemoteKoGs extends TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	_TranslationsMisskeyCustomEmojisManagerRemoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get selectionRowDetail => '선택 행 (상세)';
	@override String get importSelectionRows => '선택 행을 가져오기';
	@override String get importSelectionRangesRows => '선택한 범위 안의 행을 가져오기';
	@override String get importEmojisButton => '선택한 이모지를 가져오기';
	@override String get confirmImportEmojisTitle => '이모지 가져오기';
	@override String confirmImportEmojisDescription({required Object count}) => '리모트 서버에서 받아온 이모지 ${count}개를 이 서버로 가져옵니다. 이모지의 저작권, 라이선스를 확실히 확인하셨다면 실행해주세요.';
}

// Path: misskey.customEmojisManager_.local_
class _TranslationsMisskeyCustomEmojisManagerLocalKoGs extends TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get tabTitleList => '등록한 이모지 리스트';
	@override String get tabTitleRegister => '이모지 등록';
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalListKoGs list_ = _TranslationsMisskeyCustomEmojisManagerLocalListKoGs._(_root);
	@override late final _TranslationsMisskeyCustomEmojisManagerLocalRegisterKoGs register_ = _TranslationsMisskeyCustomEmojisManagerLocalRegisterKoGs._(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoGs extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '이 서버와 통신할 수 없음';
	@override String get description => '이 서버와의 통신이 비활성화 되었거나, 이 서버를 차단 중이거나 서버에게 차단되었을 수 있습니다.\n서버 관리자에게 문의하세요.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidKoGs extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'URI가 잘못되었습니다.';
	@override String get description => '입력한 URI에 문제가 있습니다. URI에 쓸 수 없는 문자를 넣었는지 확인해보세요.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedKoGs extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '요청을 실패했습니다.';
	@override String get description => '해당 서버와 통신을 실패했습니다. 상대방 서버에 접속 불가능한 상태일 수도 있습니다. 또는 잘못된 URI 또는 없는 URI를 입력했는지 확인해보세요.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class _TranslationsMisskeyRemoteLookupErrorsResponseInvalidKoGs extends TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsResponseInvalidKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '유효하지 않은 반응입니다.';
	@override String get description => '이 서버와 통신할 수 있지만, 데이터가 올바르지 않습니다.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoGs extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '몬 찾앗십니다';
	@override String get description => '요구된 리소스를 찾을 수 없습니다. URI를 다시 한 번 확인해보세요.';
}

// Path: misskey.captcha_.error_
class _TranslationsMisskeyCaptchaErrorKoGs extends TranslationsMisskeyCaptchaErrorEnUs {
	_TranslationsMisskeyCaptchaErrorKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyCaptchaErrorRequestFailedKoGs requestFailed_ = _TranslationsMisskeyCaptchaErrorRequestFailedKoGs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorVerificationFailedKoGs verificationFailed_ = _TranslationsMisskeyCaptchaErrorVerificationFailedKoGs._(_root);
	@override late final _TranslationsMisskeyCaptchaErrorUnknownKoGs unknown_ = _TranslationsMisskeyCaptchaErrorUnknownKoGs._(_root);
}

// Path: misskey.serverSetupWizard_.use_
class _TranslationsMisskeyServerSetupWizardUseKoGs extends TranslationsMisskeyServerSetupWizardUseEnUs {
	_TranslationsMisskeyServerSetupWizardUseKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get single => '1인 서버';
	@override String get single_description => '자신 전용 서버로 혼자서 사용';
	@override String get single_youCanCreateMultipleAccounts => '1인 서버로 운영하는 경우에도 계정은 필요에 따라 여러 개 만들 수 있습니다.';
	@override String get group => '그룹 서버';
	@override String get group_description => '신뢰 가능한 다른 유저를 초대해 여러 명이 사용';
	@override String get open => '오픈 서버';
	@override String get open_description => '불특정 다수의 유저를 받아들이는 운영을 함';
}

// Path: misskey.serverSetupWizard_.scale_
class _TranslationsMisskeyServerSetupWizardScaleKoGs extends TranslationsMisskeyServerSetupWizardScaleEnUs {
	_TranslationsMisskeyServerSetupWizardScaleKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get small => '100명 이하(소규모)';
	@override String get medium => '100명 이상 1000명 이하(중간 규모)';
	@override String get large => '1000명 이상(대규모)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class _TranslationsMisskeyServerSetupWizardDonationRequestKoGs extends TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	_TranslationsMisskeyServerSetupWizardDonationRequestKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Misskey는 자원봉사자들에 의해 개발되는 무료 소프트웨어입니다.';
	@override String get text2 => '앞으로도 계속해서 개발을 할 수 있도록 괜찮으시다면 부디 기부를 부탁드립니다.';
	@override String get text3 => '지원자 대상 특전도 있습니다!';
}

// Path: misskey.imageEffector_.fxs_
class _TranslationsMisskeyImageEffectorFxsKoGs extends TranslationsMisskeyImageEffectorFxsEnUs {
	_TranslationsMisskeyImageEffectorFxsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get chromaticAberration => '색수차';
	@override String get glitch => '글리치';
	@override String get mirror => '미러';
	@override String get invert => '색 반전';
	@override String get grayscale => '흑백';
	@override String get colorAdjust => '색조 보정';
	@override String get colorClamp => '색 압축';
	@override String get colorClampAdvanced => '색 압축(고급)';
	@override String get distort => '뒤틀림';
	@override String get threshold => '이진화';
	@override String get zoomLines => '집중선';
	@override String get stripe => '줄무늬';
	@override String get polkadot => '물방울 무늬';
	@override String get checker => '체크 무늬';
	@override String get blockNoise => '노이즈 방지';
	@override String get tearing => '티어링';
}

// Path: misskeyIO.skebStatus_.genres_
class _TranslationsMisskeyIOSkebStatusGenresKoGs extends TranslationsMisskeyIOSkebStatusGenresEnUs {
	_TranslationsMisskeyIOSkebStatusGenresKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get art => '작품';
	@override String get comic => '만화';
	@override String get voice => '음성';
	@override String get novel => '텍스트';
	@override String get video => '동영상';
	@override String get music => '음악';
	@override String get correction => '조언';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityKoGs extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get description => '노트를 볼 수 있는 사람을 제한할 수 있습니다.';
	@override String get public => '모든 유저에게 공개합니다.';
	@override String get home => '홈 타임라인에만 공개합니다. 팔로워, 프로필 화면, 리노트를 통해서 다른 유저가 볼 수 있습니다.';
	@override String get followers => '팔로워에게만 공개. 자기 자신을 제외하고는 리노트가 불가능하며, 팔로워 외에는 열람할 수 없습니다.';
	@override String get direct => '지정한 유저에게만 공개되며, 상대방에게 알림이 갑니다. 다이렉트 메시지(DM) 대용으로써 사용하실 수 있습니다.';
	@override String get doNotSendConfidencialOnDirect1 => '민감한 정보를 보낼 때에는 주의하십시오.';
	@override String get doNotSendConfidencialOnDirect2 => '서버 관리자는 기술적으로 게시물 내용을 열람할 수 있습니다. 신뢰할 수 없는 서버의 유저에게 다이렉트 메시지를 보내는 경우, 민감한 정보가 포함되어 있는 지 확인하십시오.';
	@override String get localOnly => '다른 서버에 게시물을 보내지 않습니다. 앞서 설정한 공개 범위와 상관 없이, 다른 서버의 유저는 이 게시물을 직접 열람할 수 없게 됩니다.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwKoGs extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '내용 가리기 (CW)';
	@override String get description => '본문 대신에 \'내용에 대한 주석\'에 입력한 텍스트가 먼저 표시됩니다. \'더 보기\' 버튼을 누르면 본문이 표시됩니다.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoGs exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoGs._(_root);
	@override String get useCases => '서버의 가이드라인에 따라 특정 주제를 다룰 때에 사용하거나, 스포일러 및 민감한 화제를 다룰 때에 자율적으로 사용하기도 합니다.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoGs extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get note => '낫또 뚜껑 뜯다가 실수했다…';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1KoGs extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키 계정 만들었어요';
	@override String get description => '첫 노트럴 섯어예';
	@override String get flavor => 'Misskey에 어서 오세요!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10KoGs extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '몇 가지 노트';
	@override String get description => '노트럴 10번 섰어예';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100KoGs extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '많은 노트';
	@override String get description => '노트럴 100번 섰어예';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500KoGs extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 범벅';
	@override String get description => '노트럴 500번 섰어예';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000KoGs extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트가 산더미';
	@override String get description => '노트럴 1,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000KoGs extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '솟아나는 노트';
	@override String get description => '노트럴 5,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000KoGs extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '슈퍼 노트';
	@override String get description => '노트럴 10,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000KoGs extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트가 더 필요해요';
	@override String get description => '노트럴 20,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000KoGs extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트노트노트';
	@override String get description => '노트럴 30,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000KoGs extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 공장';
	@override String get description => '노트럴 40,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000KoGs extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 행성';
	@override String get description => '노트럴 50,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000KoGs extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 퀘이사';
	@override String get description => '노트럴 60,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000KoGs extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 블랙홀';
	@override String get description => '노트럴 70,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000KoGs extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 은하';
	@override String get description => '노트럴 80,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000KoGs extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 우주';
	@override String get description => '노트럴 90,000번 섰어예';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000KoGs extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '노트럴 100,000번 섰어예';
	@override String get flavor => '이렇게나 쓸 게 있어요?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3KoGs extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '초보자 I';
	@override String get description => '총 로그인한 날이 3일';
	@override String get flavor => '오늘부터 여러분도 미스키스트랍니다';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7KoGs extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '초보자 II';
	@override String get description => '총 로그인한 날이 7일';
	@override String get flavor => '슬슬 익숙해지셨나요?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15KoGs extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '초보자 III';
	@override String get description => '총 로그인한 날이 15일';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30KoGs extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키스트 I';
	@override String get description => '총 로그인한 날이 30일';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60KoGs extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키스트 II';
	@override String get description => '총 로그인한 날이 60일';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100KoGs extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키스트 III';
	@override String get description => '총 로그인한 날이 100일';
	@override String get flavor => '그 유저, 미스키스트이다';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200KoGs extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '단골 I';
	@override String get description => '총 로그인한 날이 200일';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300KoGs extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '단골 II';
	@override String get description => '총 로그인한 날이 300일';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400KoGs extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '단골 III';
	@override String get description => '총 로그인한 날이 400일';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500KoGs extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '베테랑 I';
	@override String get description => '총 로그인한 날이 500일';
	@override String get flavor => '제군, 나는 노트가 좋다';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600KoGs extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '베테랑 II';
	@override String get description => '총 로그인한 날이 600일';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700KoGs extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '베테랑 III';
	@override String get description => '총 로그인한 날이 700일';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800KoGs extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 마스터 I';
	@override String get description => '총 로그인한 날이 800일';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900KoGs extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 마스터 II';
	@override String get description => '총 로그인한 날이 900일';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000KoGs extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 마스터 III';
	@override String get description => '총 로그인한 날이 1,000일';
	@override String get flavor => 'Misskey를 사용해 주셔서 감사합니다!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1KoGs extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '클립할 수밖에 없었어';
	@override String get description => '첫 노트럴 클립햇어예';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1KoGs extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '별을 바라보는 자';
	@override String get description => '첫 노트럴 질겨찾기에 담앗어예';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoGs extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '별을 원하는 자';
	@override String get description => '다런 사람이 내 노트럴 질겨찾기에 담앗십니다';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledKoGs extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '준비 완료';
	@override String get description => '프로필 설정을 완료했다';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatKoGs extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '나는 고양이다냥!';
	@override String get description => '계정을 고양이로 설정했다냥';
	@override String get flavor => '냐냐냐냐냐냐아아아아앙!';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1KoGs extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '첫 팔로우';
	@override String get description => '유저를 처음으로 팔로우했다';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10KoGs extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '팔로우, 팔로우';
	@override String get description => '10명의 유저를 팔로우했다';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50KoGs extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '친구 잔뜩';
	@override String get description => '50명의 유저를 팔로우했다';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100KoGs extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '주소록 한 권으론 부족해';
	@override String get description => '100명의 유저를 팔로우했다';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300KoGs extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '친구가 넘쳐나';
	@override String get description => '300명의 유저를 팔로우했다';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1KoGs extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '첫 팔로워';
	@override String get description => '유저가 처음으로 팔로잉했다';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10KoGs extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '팔로우 미!';
	@override String get description => '10명의 유저가 팔로우했다';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50KoGs extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '이곳저곳';
	@override String get description => '50명의 유저가 팔로우했다';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100KoGs extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '인기왕';
	@override String get description => '100명의 유저가 팔로우했다';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300KoGs extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '줄 좀 서봐요';
	@override String get description => '100명의 유저가 팔로우했다';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500KoGs extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '기지국';
	@override String get description => '500명의 유저가 팔로우했다';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000KoGs extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '유명인사';
	@override String get description => '1,000명의 유저가 팔로우했다';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30KoGs extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '도전 과제 콜렉터';
	@override String get description => '30개의 도전과제를 획득했다';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minKoGs extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '저 도전과제 좋아해요';
	@override String get description => '도전 과제 목록을 3분 이상 쳐다봤다';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyKoGs extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '“I ❤ #Misskey”럴 섰어예';
	@override String get flavor => 'Misskey를 이용해 주셔서 감사합니다! ― 개발 팀';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureKoGs extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '보물찾기';
	@override String get description => '숨겨진 보물을 발견했다';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minKoGs extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '잠시 쉬어요';
	@override String get description => '클라이언트를 시작하고 30분이 경과했다';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minKoGs extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No "Miss" in Misskey';
	@override String get description => '클라이언트를 시작하고 60분이 경과했다';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoGs extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '있었는데요 없었습니다';
	@override String get description => '노트를 게시한 후 1분 이내에 삭제했다';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightKoGs extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '올빼미';
	@override String get description => '한밤중에 노트를 게시했다';
	@override String get flavor => '잠 좀 자세요. 걱정돼요.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secKoGs extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '정각';
	@override String get description => '0분 0초에 노트를 섰어예';
	@override String get flavor => '째깍 째깍 째깍 땡!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteKoGs extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '혼잣말';
	@override String get description => '자기 노트를 인용했다';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmKoGs extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '타임라인 폭주 중';
	@override String get description => '1분 사이에 홈 타임라인에 노트가 20개 넘게 생성되었다';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartKoGs extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '애널리스트';
	@override String get description => '서버의 차트를 열었다';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoGs extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => '스크래치패드에서 hello world를 출력했다';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsKoGs extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '멀티 윈도우';
	@override String get description => '3개 이상의 창을 열었다';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoGs extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '순환 참조';
	@override String get description => '드라이브 폴더에 스스로를 넣게 했다';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadKoGs extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '읽고 답하긴 하시는 건가요?';
	@override String get description => '100자가 넘는 노트를 게시한 지 3초 안에 리액션했다';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereKoGs extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '여길 눌러보세요';
	@override String get description => '여기를 눌렀다';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyKoGs extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '그냥 운이 좋았어';
	@override String get description => '매 10초마다 0.01%의 확률로 달성된다';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoGs extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '신 콤플렉스';
	@override String get description => '이름을 syuilo로 설정했다';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoGs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '1주년';
	@override String get description => '계정을 생성하고 1년이 지났다';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoGs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '2주년';
	@override String get description => '계정을 생성하고 2년이 지났다';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoGs extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '3주년';
	@override String get description => '계정을 생성하고 3년이 지났다';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoGs extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '생일 축하합니다!';
	@override String get description => '생일에 로그인했다';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoGs extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '새해 복 많이 받으세요';
	@override String get description => '새해 첫 날에 로그인했다';
	@override String get flavor => '올해에도 저희 서버에 관심을 가져 주셔서 감사합니다';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedKoGs extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '쿠키를 클릭하는 게임';
	@override String get description => '쿠키를 클릭했다';
	@override String get flavor => '소프트웨어 착각하지 않으셨나요?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverKoGs extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diver로의 링크를 첨부했다';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoGs extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '테스트 과잉';
	@override String get description => '매우 짧은 시간 안에 알림 테스트를 여러 번 수행했다';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedKoGs extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey 입문자 과정 수료증';
	@override String get description => '길라잡이럴 껕냇십니다';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoGs extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => '버블 게임에서 가장 큰 물건을 내놓았다';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoGs extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '더블 🤯';
	@override String get description => '버블게임에서 가장 큰 물건 2개를 동시에 내놓았다';
	@override String get flavor => '이 정도만　도시락통에　🤯　🤯　조금만 더';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteKoGs extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get id => '노트 아이디';
	@override String get idDescription => '노트 URL을 붙여넣어 설정할 수도 있습니다.';
	@override String get detailed => '세부 정보 보기';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoGs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get mail => '전자우펜';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoGs captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoGs._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '파라미터가 부족합니다';
	@override String get description => '외부 사이트로부터 데이터를 불러오기 위해 필요한 정보가 부족합니다. URL을 다시 한 번 확인하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '해당하는 외부 리소스는 지원되지 않습니다.';
	@override String get description => '외부 사이트의 해당 리소스는 지원되지 않습니다. 사이트 관리자에게 문의하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터를 불러올 수 없습니다';
	@override String get fetchErrorDescription => '외부 사이트와의 통신에 실패하였습니다. 여러 번 시도해도 동일한 오류가 표시되는 경우 사이트 관리자에게 문의하십시오.';
	@override String get parseErrorDescription => '외부 사이트에서 불러온 데이터를 읽어들일 수 없습니다. 사이트 관리자에게 문의하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터가 올바르지 않습니다.';
	@override String get description => '데이터의 무결성 확인에 실패하여, 보안을 위해 설치가 중단되었습니다. 사이트 관리자에게 문의하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript 오류';
	@override String get description => '데이터를 성공적으로 불러왔으나, AiScript 분석 과정에서 오류가 발생하여 읽어들일 수 없습니다. 플러그인 작성자에게 문의하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '플러그인 설치에 실패했습니다';
	@override String get description => '플러그인을 설치하는 도중 문제가 발생하였습니다. 다시 한 번 시도하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '테마 코드 분석 오류';
	@override String get description => '데이터를 성공적으로 불러왔으나, 테마 코드 분석 과정에서 오류가 발생하여 읽어들일 수 없습니다. 테마 작성자에게 문의하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoGs extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => '테마를 설치하지 못했습니다';
	@override String get description => '테마를 설치하는 도중 문제가 발생하였습니다. 다시 한 번 시도하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.customEmojisManager_.local_.list_
class _TranslationsMisskeyCustomEmojisManagerLocalListKoGs extends TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalListKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get emojisNothing => '등록한 이모지가 없습니다.';
	@override String get markAsDeleteTargetRows => '선택한 행을 삭제할 대상으로 하기';
	@override String get markAsDeleteTargetRanges => '선택한 범위의 행을 삭제 대상으로 하기';
	@override String get alertUpdateEmojisNothingDescription => '변경할 이모지가 없습니다.';
	@override String get alertDeleteEmojisNothingDescription => '삭제 대상의 이모지는 없습니다.';
	@override String get confirmMovePage => '페이지를 이동할까요?';
	@override String get confirmChangeView => '표시를 바꿀까요?';
	@override String confirmUpdateEmojisDescription({required Object count}) => '${count}개의 이모지를 갱신합니다. 실행할까요?';
	@override String confirmDeleteEmojisDescription({required Object count}) => '선택한 이모지 ${count}개를 삭제합니다. 실행할까요?';
	@override String get confirmResetDescription => '지금까지 했던 변경 내용이 모두 초기화됩니다.';
	@override String get confirmMovePageDesciption => '이 페이지의 이모지에 변경이 있습니다.\n저장하지 않은 상태로 페이지를 이동하면, 이 페이지에서 바꾼 변경 내용이 모두 지워집니다.';
	@override String get dialogSelectRoleTitle => '이모지에 설정된 역할을 검색';
}

// Path: misskey.customEmojisManager_.local_.register_
class _TranslationsMisskeyCustomEmojisManagerLocalRegisterKoGs extends TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	_TranslationsMisskeyCustomEmojisManagerLocalRegisterKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get uploadSettingTitle => '업로드 설정';
	@override String get uploadSettingDescription => '여기서 이모지를 업로드 할 때의 동작을 설정할 수 있습니다.';
	@override String get directoryToCategoryLabel => '디렉토리 이름을 "category"로 입력하기';
	@override String get directoryToCategoryCaption => '디렉토리를 드래그 앤 드롭한 경우, 디렉토리 이름을 "category"로 입력합니다.';
	@override String confirmRegisterEmojisDescription({required Object count}) => '리스트에 표시되어진 이모지를 새로운 커스텀 이모지로 등록합니다. 실행할까요? (부하를 피하기 위해, 한 번에 등록할 수 있는 이모지는 ${count}건까지 입니다.)';
	@override String get confirmClearEmojisDescription => '편집 내용을 지우고, 목록에 표시되어진 이모지를 지웁니다. 실행할까요?';
	@override String confirmUploadEmojisDescription({required Object count}) => '드래그 앤 드롭한 ${count}개의 파일을 드라이브에 업로드 합니다. 실행할까요?';
}

// Path: misskey.captcha_.error_.requestFailed_
class _TranslationsMisskeyCaptchaErrorRequestFailedKoGs extends TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	_TranslationsMisskeyCaptchaErrorRequestFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA 요구에 실패했습니다.';
	@override String get text => '잠시 후에 다시 실행하거나, 설정을 다시 한 번 확인해보세요.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class _TranslationsMisskeyCaptchaErrorVerificationFailedKoGs extends TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	_TranslationsMisskeyCaptchaErrorVerificationFailedKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA 검증을 실패했습니다.';
	@override String get text => '설정이 올바른지 다시 한 번 확인해보세요.';
}

// Path: misskey.captcha_.error_.unknown_
class _TranslationsMisskeyCaptchaErrorUnknownKoGs extends TranslationsMisskeyCaptchaErrorUnknownEnUs {
	_TranslationsMisskeyCaptchaErrorUnknownKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get title => 'CAPTCHA 오류';
	@override String get text => '알 수 없는 오류가 발생했습니다.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoGs extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get cw => '배고픈 사람 주의';
	@override String get note => '방금 초코도넛을 먹었어요 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoGs extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoGs._(TranslationsKoGs root) : this._root = root, super.internal(root);

	final TranslationsKoGs _root; // ignore: unused_field

	// Translations
	@override String get mail => '모더레이터 권한을 가진 유저의 이메일 주소에 알림을 보냅니다 (신고를 받은 때에만)';
	@override String get webhook => '지정한 SystemWebhook에 알림을 보냅니다 (신고를 받은 때와 해결했을 때에 송신)';
}
