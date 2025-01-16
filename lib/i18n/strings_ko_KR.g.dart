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
class TranslationsKoKr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKoKr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.koKr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ko-KR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsKoKr _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsAriaKoKr aria = _TranslationsAriaKoKr._(_root);
	@override late final _TranslationsMisskeyKoKr misskey = _TranslationsMisskeyKoKr._(_root);
	@override late final _TranslationsMisskeyIOKoKr misskeyIO = _TranslationsMisskeyIOKoKr._(_root);
}

// Path: aria
class _TranslationsAriaKoKr extends TranslationsAriaEnUs {
	_TranslationsAriaKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Aria란';
	@override String get accessToken => '액세스 토큰';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: '아리아는 '),
		miria,
		const TextSpan(text: '의 포크입니다.\n아리아의 로컬라이제이션은 '),
		misskey,
		const TextSpan(text: '의 로컬라이제이션 파일을 기본으로 합니다.\n각 프로젝트의 기여자 여러분들께 감사드립니다.'),
	]);
	@override String get addTab => '탭 추가';
	@override String get alwaysExpandCw => 'CW 항상 펼치기';
	@override String get alwaysExpandLongNote => '긴 노트 항상 펼치기';
	@override String get alwaysExpandMediaInSubNote => '서브노트의 미디어 항상 펼치기';
	@override String get alwaysShowTabHeader => '탭 정보 항상 보이기';
	@override String get authenticate => '인증';
	@override String get authenticated => '인증됨';
	@override String get avatarSize => '아바타 크기';
	@override String get background => '배경';
	@override String get confirmBeforeFollow => '팔로우를 수동으로 승인';
	@override String get confirmBeforePost => '확인 후 게시';
	@override String get confirmBeforeReact => '확인 후 리액션';
	@override String get copied => '클립보드로 복사됨';
	@override String get copyName => '이름 복사';
	@override String get crop => '자르기';
	@override String get custom => '커스텀';
	@override String get defaultReaction => '기본 리액션';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '이 계정과 연관된 ${n} 탭을 닫으시겠습니까?',
		other: '이 계정과 연관된 ${n} 탭들을 닫으시겠습니까?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 파일을 삭제하겠습니까?',
		other: '${n} 파일들을 삭제하겠습니까?',
	);
	@override String get deleteTabConfirm => '이 탭을 닫으시겠습니까?';
	@override String get disableDataSaverWhenOnWifi => '와이파이일 때 데이터 절약모드 비활성화';
	@override String get disableSubscribingNotes => '실시간 리액션 업데이트 비활성화';
	@override String get discardChangesConfirm => '변경 사항을 취소하고 돌아가시겠습니까?';
	@override String get displayOfThumbnail => '썸네일 표시';
	@override String get doubleTapToShow => '더블 탭하여 표시';
	@override String get downloaded => '다운로드 완료';
	@override String get draw => '그리기';
	@override String get editImage => '이미지 수정';
	@override String get emojiPickerAutofocus => '이모지 선택기를 열 때 키보드 확장하기';
	@override String get emojiPickerScale => '이모지 선택기 스케일';
	@override String get emojiPickerUseDialog => '다이얼로그(박스) 형태로 이모지 선택기 표시하기';
	@override String get enableEmojiFadeIn => '커스텀 이모지에 페이드인 애니메이션 활성화';
	@override String get enableFederation => '연합 활성화하기';
	@override String get endpoint => 'Endpoint';
	@override String get expandNote => '노트 펼치기';
	@override String get extraMentionsWarning => '이 노트에는 대상 답글에 포함되지 않은 멘션이 포함되어 있습니다.';
	@override String get fileNotFound => '파일을 찾을 수 없음';
	@override String get findServer => 'Misskey 서버 찾아보기';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '님을 팔로우 하시겠습니까?'),
	]);
	@override String get font => '폰트';
	@override String get fromDevice => '장치에서';
	@override String get guest => '게스트';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria는 자원봉사자들에 의해 다양한 언어로 번역되고 있습니다. '),
		link,
		const TextSpan(text: '에서 번역에 참가할 수 있습니다.'),
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'Aria의 아이콘은 '),
		sevenc_nanashi,
		const TextSpan(text: ' 가 제작했으며 '),
		cc_by,
		const TextSpan(text: ' 에 따라 이용할 수 있습니다.'),
	]);
	@override String get importCompleted => '가져오기 완료';
	@override String get importConfirm => '설정을 가져오시겠습니까? 현재 설정을 덮어쓰게됩니다.';
	@override String get invalidListFormat => '리스트가 유효하지 않음';
	@override String jumpTo({required Object x}) => '${x} 로 이동';
	@override String get keepOpen => '계속 열기';
	@override String get keepTimelinePosition => '타임라인 위치 고정';
	@override String get lineHeight => '줄 간격';
	@override String get loginWithAccessToken => '엑세스 토큰으로 로그인';
	@override String get margin => '여백';
	@override String get media => '미디어';
	@override String get mentionToRemoteWarning => '이 노트는 리모트유저에게 맨션한 것을 포함합니다';
	@override String get moved => '이동됨';
	@override String get muted => '뮤트됨';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '${n} 파일',
		other: '${n} 파일',
	);
	@override String get newFollowRequestReceived => '새로운 팔로우 요청이 있습니다';
	@override String get newNotes => '새 노트';
	@override String get newNotificationReceived => '새 알림이 있습니다';
	@override String get newNotifications => '새 알림';
	@override String get noAccounts => '계정 없음';
	@override String get noTabs => '탭 없음';
	@override String get noThemes => '테마 없음';
	@override String get noteDoubleTapAction => '더블 탭 해서 노트';
	@override String get noteFooterSize => '노트 동작 버튼 사이즈';
	@override String get noteLongPressAction => '길게 눌러서 노트';
	@override String get noteTapAction => '탭하여 노트';
	@override String get notesAfterRenotes => '리노트 후 노트';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: '명이 접속 중'),
	]);
	@override String get opacity => '불투명도';
	@override String get openAsGuest => '게스트로 열기';
	@override String get openInAnotherAccount => '다른 계정으로 열기';
	@override String get openInBrowser => '브라우저에서 열기';
	@override String get openInExternalBrowser => '외부 브라우저에서 열기';
	@override String get openInInternalBrowser => '내부 브라우저에서 열기';
	@override String get openMenu => '메뉴 열기';
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		scratchpad,
		const TextSpan(text: ' 를 브라우저에서 열고, 다음 코드를 클릭한 다음 실행하세요.'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => '더블 탭하여 민감한 미디어 열기';
	@override String get parameters => '매개변수';
	@override String get paste => '붙여넣기';
	@override TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: '이모지를 고정하려면 Json파일을 붙여넣기 해야합니다.\n'),
		url,
		const TextSpan(text: '에서 미스키 웹용으로 고정된 이모지를 복사할 수 있습니다.'),
	]);
	@override String get pasteResponseBelow => '답변을 아래 복사하세요';
	@override String get pinToEmojiPicker => '이모지 선택기에 고정';
	@override String get playAudio => '소리 재생';
	@override String get playVideo => '동영상 재생';
	@override String get pleaseCopyResponse => '이 답변을 복사하세요';
	@override String get postConfirm => '이 노트를 게시하시겠습니까?';
	@override String get reactionConfirm => '리액션을 추가하시겠습니까?';
	@override String get renoteConfirm => '이 노트를 리노트하시겠습니까?';
	@override String get renoteToChannel => '채널에 리노트';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: '님이 리노트'),
	]);
	@override String get rotate => '회전';
	@override String get scale => '스케일';
	@override String get selectIcon => '아이콘 선택';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: '님이 셀프-리노트함'),
	]);
	@override String get serverUrl => '서버 URL';
	@override String get settingsFileForAria => 'Aria 설정 파일';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' 설정'),
	]);
	@override String get showAvatarsInNote => '노트 내 아바타 보기';
	@override String get showAvatarsInSubNote => '서브노트 내 아바타 보기';
	@override String get showEntireImage => '전체 이미지 보기';
	@override String get showExpandedImage => '확장된 이미지 보기';
	@override String get showImage => '이미지 표시';
	@override String get showLikeButtonInNoteFooter => '노트 동작에 "좋아요" 추가';
	@override String get showMenuButtonInTabBar => '탭 바에 메뉴버튼 표시';
	@override String get showNoteCreatedAt => '노트 생성일 표시';
	@override String get showNoteFooter => '노트 내 동작 버튼 표시';
	@override String get showNoteReactionsViewer => '노트 내 리액션 뷰어 표시';
	@override String get showPopupOnNewNote => '새 노트 위에 팝업 표시';
	@override String get showQuoteButtonInNoteFooter => '노트 동작에 "인용" 추가';
	@override String get showSelfRenotes => '셀프리노트 표시';
	@override String get showStackTrace => '스택 트레이스 표시';
	@override String get showSubNoteFooter => '서브노트 내 버튼 표시';
	@override String get showSubNoteReactionsViewer => '서브노트 내 리액션 뷰어 표시';
	@override String get showTabHeaderInOneLine => '탭 정보를 한 줄로 표시';
	@override String get showTimelineLastViewedAt => '타임라인 마지막으로 본 날짜 표시';
	@override String get showTimelineTabBarAtBottom => '타임라인 탭 바를 하단에 표시';
	@override String get showTranslateButtonInNoteFooter => '노트 동작에 번역을 추가';
	@override String get sinceDate => '시작 날짜';
	@override String get stackTrace => '스텍 트레이스';
	@override String get streamingChannel => '스트리밍 채널';
	@override String get tabName => '탭 이름';
	@override String get tabType => '탭 타입';
	@override String get tabs => '탭';
	@override String get tapToShow => '탭해서 보기';
	@override String get timeMachine => '타임머신';
	@override String get unfavorited => '즐겨찾기에서 제거됨';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '님을 언팔로우하시겠습니까?'),
	]);
	@override String get untilDate => '종료일';
	@override String get uploaded => '업로드됨';
	@override String get useThisEmoji => '이 이모지 사용하기';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '님이 무언가 말했습니다'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: '의 민감한 파일이 포함된 게시물'),
	]);
	@override String get vibrateNote => '새 노트 시 진동';
	@override String get vibrateNotification => '새 알림 시 진동';
	@override String get webBrowser => '웹 브라우저';
}

// Path: misskey
class _TranslationsMisskeyKoKr extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get lang__ => '한국어';
	@override String get headlineMisskey => '노트로 연결되는 네트워크';
	@override String get introMisskey => '환영합니다! Misskey는 오픈 소스 분산형 마이크로 블로그 서비스입니다.\n\'노트\'를 작성해서 지금 일어나고 있는 일을 공유하거나, 당신만의 이야기를 모두에게 발신하세요📡\n\'리액션\' 기능으로 친구의 노트에 총알같이 반응을 추가할 수도 있습니다👍\n새로운 세계를 탐험해 보세요🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} 서버는 오픈소스 플랫폼 <b>Misskey</b>의 서버 가운데 하나입니다.';
	@override String monthAndDay({required Object month, required Object day}) => '${month}월 ${day}일';
	@override String get search => '검색';
	@override String get notifications => '알림';
	@override String get username => '유저명';
	@override String get password => '비밀번호';
	@override String get initialPasswordForSetup => '초기 설정용 비밀번호';
	@override String get initialPasswordIsIncorrect => '초기 설정용 비밀번호가 올바르지 않습니다.';
	@override String get initialPasswordForSetupDescription => 'Misskey를 직접 설치하는 경우, 설정 파일에 입력해둔 비밀번호를 사용하세요.\nMisskey 설치를 도와주는 호스팅 서비스 등을 사용하는 경우, 서비스 제공자로부터 받은 비밀번호를 사용하세요.\n비밀번호를 따로 설정하지 않은 경우, 아무것도 입력하지 않아도 됩니다.';
	@override String get forgotPassword => '비밀번호 재설정';
	@override String get fetchingAsApObject => '연합에서 찾아보는 중';
	@override String get ok => '확인';
	@override String get gotIt => '알겠어요';
	@override String get cancel => '취소';
	@override String get noThankYou => '나중에';
	@override String get enterUsername => '유저명 입력';
	@override String renotedBy({required Object user}) => '${user}님이 리노트';
	@override String get noNotes => '노트가 없습니다';
	@override String get noNotifications => '표시할 알림이 없습니다';
	@override String get instance => '서버';
	@override String get settings => '설정';
	@override String get notificationSettings => '알림 설정';
	@override String get basicSettings => '기본 설정';
	@override String get otherSettings => '기타 설정';
	@override String get openInWindow => '창으로 열기';
	@override String get profile => '프로필';
	@override String get timeline => '타임라인';
	@override String get noAccountDescription => '자기소개가 없습니다';
	@override String get login => '로그인';
	@override String get loggingIn => '로그인 중';
	@override String get logout => '로그아웃';
	@override String get signup => '회원 가입';
	@override String get uploading => '업로드 중';
	@override String get save => '저장';
	@override String get users => '유저';
	@override String get addUser => '유저 추가';
	@override String get favorite => '즐겨찾기';
	@override String get favorites => '즐겨찾기';
	@override String get unfavorite => '즐겨찾기에서 제거';
	@override String get favorited => '즐겨찾기에 등록했습니다.';
	@override String get alreadyFavorited => '이미 즐겨찾기에 등록되어 있습니다.';
	@override String get cantFavorite => '즐겨찾기에 등록하지 못했습니다.';
	@override String get pin => '프로필에 고정';
	@override String get unpin => '프로필에서 고정 해제';
	@override String get copyContent => '내용 복사';
	@override String get copyLink => '링크 복사';
	@override String get copyLinkRenote => '리노트 링크 복사';
	@override String get delete => '삭제';
	@override String get deleteAndEdit => '삭제 후 편집';
	@override String get deleteAndEditConfirm => '이 노트를 삭제한 뒤 다시 편집하시겠습니까? 이 노트에 대한 리액션, 리노트, 답글 또한 모두 삭제됩니다.';
	@override String get addToList => '리스트에 추가';
	@override String get addToAntenna => '안테나에 추가';
	@override String get sendMessage => '메시지 보내기';
	@override String get copyRSS => 'RSS 복사';
	@override String get copyUsername => '유저명 복사';
	@override String get copyUserId => '유저 ID 복사';
	@override String get copyNoteId => '노트 ID 복사';
	@override String get copyFileId => '파일 ID 복사';
	@override String get copyFolderId => '폴더 ID 복사';
	@override String get copyProfileUrl => '프로필 URL 복사';
	@override String get searchUser => '사용자 검색';
	@override String get searchThisUsersNotes => '사용자의 노트 검색';
	@override String get reply => '답글';
	@override String get loadMore => '더 보기';
	@override String get showMore => '더 보기';
	@override String get showLess => '닫기';
	@override String get youGotNewFollower => '새로운 팔로워가 있습니다';
	@override String get receiveFollowRequest => '새로운 팔로우 요청이 있습니다';
	@override String get followRequestAccepted => '팔로우가 수락되었습니다';
	@override String get mention => '멘션';
	@override String get mentions => '받은 멘션';
	@override String get directNotes => '다이렉트 노트';
	@override String get importAndExport => '가져오기와 내보내기';
	@override String get import => '가져오기';
	@override String get export => '내보내기';
	@override String get files => '파일';
	@override String get download => '다운로드';
	@override String driveFileDeleteConfirm({required Object name}) => '‘${name}’ 파일을 삭제하시겠습니까? 이 파일을 사용하는 일부 콘텐츠도 삭제됩니다.';
	@override String unfollowConfirm({required Object name}) => '${name}님을 언팔로우하시겠습니까?';
	@override String get exportRequested => '내보내기를 요청하였습니다. 이 작업은 시간이 걸릴 수 있습니다. 내보내기가 완료되면 "드라이브"에 추가됩니다.';
	@override String get importRequested => '가져오기를 요청하였습니다. 이 작업에는 시간이 걸릴 수 있습니다.';
	@override String get lists => '리스트';
	@override String get noLists => '리스트가 없습니다';
	@override String get note => '노트';
	@override String get notes => '노트';
	@override String get following => '팔로잉';
	@override String get followers => '팔로워';
	@override String get followsYou => '나를 팔로우 합니다';
	@override String get createList => '리스트 만들기';
	@override String get manageLists => '리스트 관리';
	@override String get error => '오류';
	@override String get somethingHappened => '오류가 발생했습니다';
	@override String get retry => '다시 시도';
	@override String get pageLoadError => '페이지를 불러오지 못했습니다.';
	@override String get pageLoadErrorDescription => '네트워크 연결 또는 브라우저 캐시로 인해 발생했을 가능성이 높습니다. 캐시를 삭제하거나, 잠시 후 다시 시도해 주세요.';
	@override String get serverIsDead => '서버가 응답하지 않습니다. 잠시 후 다시 시도해 주세요.';
	@override String get youShouldUpgradeClient => '이 페이지를 표시하려면 새로고침하여 새로운 버전의 클라이언트를 이용해 주십시오.';
	@override String get enterListName => '리스트 이름을 입력';
	@override String get privacy => '프라이버시';
	@override String get makeFollowManuallyApprove => '팔로우를 수동으로 승인';
	@override String get defaultNoteVisibility => '기본 공개 범위';
	@override String get follow => '팔로우';
	@override String get followRequest => '팔로우 요청';
	@override String get followRequests => '팔로우 요청';
	@override String get unfollow => '팔로우 해제';
	@override String get followRequestPending => '팔로우 허가 대기중';
	@override String get enterEmoji => '이모지 입력';
	@override String get renote => '리노트';
	@override String get unrenote => '리노트 취소';
	@override String get renoted => '리노트했습니다';
	@override String renotedToX({required Object name}) => '${name}명이 리노트했습니다.';
	@override String get cantRenote => '이 게시물은 리노트 할 수 없습니다.';
	@override String get cantReRenote => '리노트를 리노트 할 수 없습니다.';
	@override String get quote => '인용';
	@override String get inChannelRenote => '채널 내 리노트';
	@override String get inChannelQuote => '채널 내 인용';
	@override String get renoteToChannel => '채널에 리노트';
	@override String get renoteToOtherChannel => '다른 채널에 리노트';
	@override String get pinnedNote => '고정된 노트';
	@override String get pinned => '고정하기';
	@override String get you => '나';
	@override String get clickToShow => '클릭하여 보기';
	@override String get sensitive => '열람 주의';
	@override String get add => '추가';
	@override String get reaction => '리액션';
	@override String get reactions => '리액션';
	@override String get emojiPicker => '이모지 선택기';
	@override String get pinnedEmojisForReactionSettingDescription => '리액션을 할 때 이모지 선택기 상단에 표시할 이모지를 설정할 수 있습니다.';
	@override String get pinnedEmojisSettingDescription => '이모지를 입력할 때 이모지 선택기 상단에 표시할 이모지를 설정할 수 있습니다.';
	@override String get emojiPickerDisplay => '선택기 표시';
	@override String get overwriteFromPinnedEmojisForReaction => '리액션 설정을 덮어쓰기';
	@override String get overwriteFromPinnedEmojis => '일반 설정을 덮어쓰기';
	@override String get reactionSettingDescription2 => '끌어서 순서 변경, 클릭해서 삭제, ＋를 눌러서 추가할 수 있습니다.';
	@override String get rememberNoteVisibility => '공개 범위를 기억하기';
	@override String get attachCancel => '첨부 취소';
	@override String get deleteFile => '파일 삭제';
	@override String get markAsSensitive => '열람주의로 설정';
	@override String get unmarkAsSensitive => '열람주의 해제';
	@override String get enterFileName => '파일명을 입력';
	@override String get mute => '뮤트';
	@override String get unmute => '뮤트 해제';
	@override String get renoteMute => '리노트 뮤트';
	@override String get renoteUnmute => '리노트 뮤트 해제';
	@override String get block => '차단';
	@override String get unblock => '차단 해제';
	@override String get suspend => '정지';
	@override String get unsuspend => '정지 해제';
	@override String get blockConfirm => '이 계정을 차단하시겠습니까?';
	@override String get unblockConfirm => '이 계정의 차단을 해제하시겠습니까?';
	@override String get suspendConfirm => '이 계정을 정지하시겠습니까?';
	@override String get unsuspendConfirm => '이 계정의 정지를 해제하시겠습니까?';
	@override String get selectList => '리스트 선택';
	@override String get editList => '리스트 편집';
	@override String get selectChannel => '채널 선택';
	@override String get selectAntenna => '안테나 선택';
	@override String get editAntenna => '안테나 편집';
	@override String get createAntenna => '안테나 만들기';
	@override String get selectWidget => '위젯 선택';
	@override String get editWidgets => '위젯 편집';
	@override String get editWidgetsExit => '편집 종료';
	@override String get customEmojis => '커스텀 이모지';
	@override String get emoji => '이모지';
	@override String get emojis => '이모지';
	@override String get emojiName => '이모지 이름';
	@override String get emojiUrl => '이모지 URL';
	@override String get addEmoji => '이모지 추가';
	@override String get settingGuide => '추천 설정';
	@override String get cacheRemoteFiles => '리모트 파일을 캐시';
	@override String get cacheRemoteFilesDescription => '이 설정을 활성화하면 리모트 파일을 이 서버의 스토리지에 캐시합니다. 미디어의 표시가 빨라지지만, 서버의 저장 용량을 크게 소모합니다. 리모트 유저의 미디어를 얼마나 보관할 지는 역할의 드라이브 용량 제한에 따라 결정되며, 정해진 용량을 넘길 경우 오래된 파일부터 차례대로 삭제한 뒤 링크로 전환합니다. \n비활성화하면 리모트 파일을 직접 링크하며, 이 경우 이미지 썸네일 생성 및 유저 프라이버시 보호를 위해 default.yml에서 proxyRemoteFiles를 true로 설정하는 것을 권장합니다.';
	@override String get youCanCleanRemoteFilesCache => '파일 관리 화면의 🗑️ 버튼을 눌러 모든 캐시를 삭제할 수 있습니다.';
	@override String get cacheRemoteSensitiveFiles => '리모트의 민감한 파일을 캐시';
	@override String get cacheRemoteSensitiveFilesDescription => '이 설정을 비활성화하면 리모트의 민감한 파일은 캐시하지 않고 리모트에서 직접 가져오도록 합니다.';
	@override String get flagAsBot => '나는 봇입니다';
	@override String get flagAsBotDescription => '이 계정을 자동화된 수단으로 운용할 경우에 활성화해 주세요. 이 플래그를 활성화하면, 다른 봇이 이를 참고하여 봇 끼리의 무한 연쇄 반응을 회피하거나, 이 계정의 시스템 상에서의 취급이 Bot 운영에 최적화되는 등의 변화가 생깁니다.';
	@override String get flagAsCat => '미야아아아오오오오오오오오오옹!!!!!!!';
	@override String get flagAsCatDescription => '야옹?(이 계정이 고양이라면 눌러 주세요.)';
	@override String get flagShowTimelineReplies => '타임라인에 노트의 답글을 표시하기';
	@override String get flagShowTimelineRepliesDescription => '이 설정을 활성화하면 타임라인에 다른 유저 간의 답글을 표시합니다.';
	@override String get autoAcceptFollowed => '팔로우 중인 유저로부터의 팔로우 요청을 자동 수락';
	@override String get addAccount => '계정 추가';
	@override String get reloadAccountsList => '계정 목록 새로고침';
	@override String get loginFailed => '로그인에 실패했습니다';
	@override String get showOnRemote => '리모트에서 보기';
	@override String get continueOnRemote => '리모트에서 계속';
	@override String get chooseServerOnMisskeyHub => 'Misskey Hub에서 서버 찾아보기';
	@override String get specifyServerHost => '서버 도메인 직접 지정';
	@override String get inputHostName => '도메인을 입력하세요';
	@override String get general => '일반';
	@override String get wallpaper => '배경';
	@override String get setWallpaper => '배경 설정';
	@override String get removeWallpaper => '배경 제거';
	@override String searchWith({required Object q}) => '검색: ${q}';
	@override String get youHaveNoLists => '리스트가 없습니다';
	@override String followConfirm({required Object name}) => '${name}님을 팔로우 하시겠습니까?';
	@override String get proxyAccount => '프록시 계정';
	@override String get proxyAccountDescription => '프록시 계정은 특정 조건 하에서 유저의 리모트 팔로우를 대행하는 계정입니다. 예를 들면, 유저가 리모트 유저를 리스트에 넣었을 때, 리스트에 들어간 유저를 아무도 팔로우한 적이 없다면 액티비티가 서버로 배달되지 않기 때문에, 대신 프록시 계정이 해당 유저를 팔로우하도록 합니다.';
	@override String get host => '호스트';
	@override String get selectSelf => '본인을 선택';
	@override String get selectUser => '유저 선택';
	@override String get recipient => '수신인';
	@override String get annotation => '내용에 대한 주석';
	@override String get federation => '연합';
	@override String get instances => '서버';
	@override String get registeredAt => '등록 날짜';
	@override String get latestRequestReceivedAt => '마지막으로 요청을 받은 시간';
	@override String get latestStatus => '마지막 상태';
	@override String get storageUsage => '스토리지 사용량';
	@override String get charts => '차트';
	@override String get perHour => '1시간마다';
	@override String get perDay => '1일마다';
	@override String get stopActivityDelivery => '액티비티 보내지 않기';
	@override String get blockThisInstance => '이 서버를 차단';
	@override String get silenceThisInstance => '서버를 사일런스';
	@override String get mediaSilenceThisInstance => '서버의 미디어를 사일런스';
	@override String get operations => '작업';
	@override String get software => '소프트웨어';
	@override String get version => '버전';
	@override String get metadata => '메타데이터';
	@override String withNFiles({required Object n}) => '${n}개의 파일';
	@override String get monitor => '모니터';
	@override String get jobQueue => '작업 대기열';
	@override String get cpuAndMemory => 'CPU와 메모리';
	@override String get network => '네트워크';
	@override String get disk => '디스크';
	@override String get instanceInfo => '서버 정보';
	@override String get statistics => '통계';
	@override String get clearQueue => '대기열 비우기';
	@override String get clearQueueConfirmTitle => '대기열을 비우시겠습니까?';
	@override String get clearQueueConfirmText => '대기열에 남아 있는 노트는 더 이상 연합되지 않습니다. 보통의 경우 이 작업은 필요하지 않습니다.';
	@override String get clearCachedFiles => '캐시 비우기';
	@override String get clearCachedFilesConfirm => '캐시된 리모트 파일을 모두 삭제하시겠습니까?';
	@override String get blockedInstances => '차단된 서버';
	@override String get blockedInstancesDescription => '차단하려는 서버의 호스트 이름을 줄바꿈으로 구분하여 설정합니다. 차단된 인스턴스는 이 인스턴스와 통신할 수 없게 됩니다.';
	@override String get silencedInstances => '사일런스한 서버';
	@override String get silencedInstancesDescription => '사일런스하려는 서버의 호스트명을 한 줄에 하나씩 입력합니다. 사일런스된 서버에 소속된 유저는 모두 \'사일런스\'된 상태로 취급되며, 이 서버로부터의 팔로우가 프로필 설정과 무관하게 승인제로 변경되고, 팔로워가 아닌 로컬 유저에게는 멘션할 수 없게 됩니다. 정지된 서버에는 적용되지 않습니다.';
	@override String get mediaSilencedInstances => '미디어를 사일런스한 서버';
	@override String get mediaSilencedInstancesDescription => '미디어를 사일런스 하려는 서버의 호스트를 한 줄에 하나씩 입력합니다. 미디어가 사일런스된 서버의 유저가 업로드한 파일은 모두 민감한 미디어로 처리되며, 커스텀 이모지를 사용할 수 없게 됩니다. 또한, 차단한 인스턴스에는 적용되지 않습니다.';
	@override String get federationAllowedHosts => '연합을 허가하는 서버';
	@override String get federationAllowedHostsDescription => '연합을 허가하는 서버의 호스트를 엔터로 구분해서 설정합니다.';
	@override String get muteAndBlock => '뮤트 및 차단';
	@override String get mutedUsers => '뮤트한 유저';
	@override String get blockedUsers => '차단한 유저';
	@override String get noUsers => '아무도 없습니다';
	@override String get editProfile => '프로필 수정';
	@override String get noteDeleteConfirm => '이 노트를 삭제하시겠습니까?';
	@override String get pinLimitExceeded => '더 이상 고정할 수 없습니다.';
	@override String get intro => 'Misskey의 설치가 완료되었습니다! 관리자 계정을 생성해주세요.';
	@override String get done => '완료';
	@override String get processing => '처리중';
	@override String get preview => '미리보기';
	@override String get default_ => '기본값';
	@override String defaultValueIs({required Object value}) => '기본값: ${value}';
	@override String get noCustomEmojis => '이모지가 없습니다';
	@override String get noJobs => '작업이 없습니다';
	@override String get federating => '연합 중';
	@override String get blocked => '차단됨';
	@override String get suspended => '정지됨';
	@override String get all => '전체';
	@override String get subscribing => '구독 중';
	@override String get publishing => '배포 중';
	@override String get notResponding => '응답 없음';
	@override String get instanceFollowing => '서버의 팔로잉';
	@override String get instanceFollowers => '서버의 팔로워';
	@override String get instanceUsers => '서버의 사용자';
	@override String get changePassword => '비밀번호 변경';
	@override String get security => '보안';
	@override String get retypedNotMatch => '입력이 일치하지 않습니다.';
	@override String get currentPassword => '현재 비밀번호';
	@override String get newPassword => '새 비밀번호';
	@override String get newPasswordRetype => '새 비밀번호(재입력)';
	@override String get attachFile => '파일 첨부';
	@override String get more => '더 보기!';
	@override String get featured => '유행';
	@override String get usernameOrUserId => '유저명이나 ID';
	@override String get noSuchUser => '유저를 찾을 수 없습니다';
	@override String get lookup => '찾아보기';
	@override String get announcements => '공지사항';
	@override String get imageUrl => '이미지 URL';
	@override String get remove => '삭제';
	@override String get removed => '삭제했습니다';
	@override String removeAreYouSure({required Object x}) => '"${x}" 을(를) 삭제하시겠습니까?';
	@override String deleteAreYouSure({required Object x}) => '"${x}" 을(를) 삭제하시겠습니까?';
	@override String get resetAreYouSure => '초기화 하시겠습니까?';
	@override String get areYouSure => '계속 진행하시겠습니까?';
	@override String get saved => '저장했습니다';
	@override String get messaging => '대화';
	@override String get upload => '업로드';
	@override String get keepOriginalUploading => '원본 이미지를 유지';
	@override String get keepOriginalUploadingDescription => '이미지를 업로드할 때에 원본을 그대로 유지합니다. 비활성화하면 업로드할 때 브라우저에서 웹 공개용 이미지를 생성합니다.';
	@override String get fromDrive => '드라이브에서';
	@override String get fromUrl => 'URL로부터';
	@override String get uploadFromUrl => 'URL 업로드';
	@override String get uploadFromUrlDescription => '업로드하려는 파일의 URL';
	@override String get uploadFromUrlRequested => '업로드를 요청했습니다';
	@override String get uploadFromUrlMayTakeTime => '업로드가 완료될 때까지 시간이 소요될 수 있습니다.';
	@override String get explore => '둘러보기';
	@override String get messageRead => '읽음';
	@override String get noMoreHistory => '이것보다 과거의 기록이 없습니다';
	@override String get startMessaging => '대화 시작하기';
	@override String nUsersRead({required Object n}) => '${n}명이 읽음';
	@override String agreeTo({required Object x0}) => '${x0}에 동의';
	@override String get agree => '동의합니다';
	@override String get agreeBelow => '아래 내용에 동의합니다';
	@override String get basicNotesBeforeCreateAccount => '기본적인 주의사항';
	@override String get termsOfService => '이용 약관';
	@override String get start => '시작하기';
	@override String get home => '홈';
	@override String get remoteUserCaution => '리모트 유저이기 때문에, 정보가 정확하지 않을 수 있습니다.';
	@override String get activity => '활동';
	@override String get images => '이미지';
	@override String get image => '이미지';
	@override String get birthday => '생일';
	@override String yearsOld({required Object age}) => '${age}세';
	@override String get registeredDate => '등록일';
	@override String get location => '장소';
	@override String get theme => '테마';
	@override String get themeForLightMode => '라이트 모드에서 사용할 테마';
	@override String get themeForDarkMode => '다크 모드에서 사용할 테마';
	@override String get light => '라이트';
	@override String get dark => '다크';
	@override String get lightThemes => '밝은 테마';
	@override String get darkThemes => '어두운 테마';
	@override String get syncDeviceDarkMode => '디바이스의 다크 모드 설정과 동기화';
	@override String get drive => '드라이브';
	@override String get fileName => '파일명';
	@override String get selectFile => '파일 선택';
	@override String get selectFiles => '파일 선택';
	@override String get selectFolder => '폴더 선택';
	@override String get selectFolders => '폴더 선택';
	@override String get fileNotSelected => '파일을 선택하지 않았습니다';
	@override String get renameFile => '파일 이름 변경';
	@override String get folderName => '폴더 이름';
	@override String get createFolder => '폴더 만들기';
	@override String get renameFolder => '폴더 이름 바꾸기';
	@override String get deleteFolder => '폴더 삭제';
	@override String get folder => '폴더';
	@override String get addFile => '파일 추가';
	@override String get showFile => '파일 표시하기';
	@override String get emptyDrive => '드라이브가 비어 있습니다';
	@override String get emptyFolder => '폴더가 비어 있습니다';
	@override String get unableToDelete => '삭제할 수 없습니다';
	@override String get inputNewFileName => '바꿀 파일명을 입력해 주세요';
	@override String get inputNewDescription => '새 캡션을 입력해 주세요';
	@override String get inputNewFolderName => '바꿀 폴더명을 입력해 주세요';
	@override String get circularReferenceFolder => '지정한 폴더가 이동할 폴더의 하위 폴더입니다.';
	@override String get hasChildFilesOrFolders => '이 폴더는 비어있지 않기 때문에 삭제할 수 없습니다.';
	@override String get copyUrl => 'URL 복사';
	@override String get rename => '이름 변경';
	@override String get avatar => '아바타';
	@override String get banner => '배너';
	@override String get displayOfSensitiveMedia => '민감한 미디어 표시';
	@override String get whenServerDisconnected => '서버와의 접속이 끊겼을 때';
	@override String get disconnectedFromServer => '서버와의 연결이 끊어졌습니다';
	@override String get reload => '새로고침';
	@override String get doNothing => '무시하기';
	@override String get reloadConfirm => '새로고침 하시겠습니까?';
	@override String get watch => '관심 갖기';
	@override String get unwatch => '관심 해제하기';
	@override String get accept => '수락하기';
	@override String get reject => '거절하기';
	@override String get normal => '일반';
	@override String get instanceName => '서버 이름';
	@override String get instanceDescription => '서버 소개';
	@override String get maintainerName => '관리자 이름';
	@override String get maintainerEmail => '관리자 이메일';
	@override String get tosUrl => '이용약관 URL';
	@override String get thisYear => '올해';
	@override String get thisMonth => '이달';
	@override String get today => '오늘';
	@override String dayX({required Object day}) => '${day}일';
	@override String monthX({required Object month}) => '${month}월';
	@override String yearX({required Object year}) => '${year}년';
	@override String get pages => '페이지';
	@override String get integration => '연동';
	@override String get connectService => '계정 연동';
	@override String get disconnectService => '계정 연동 해제';
	@override String get enableLocalTimeline => '로컬 타임라인 활성화';
	@override String get enableGlobalTimeline => '글로벌 타임라인 활성화';
	@override String get disablingTimelinesInfo => '특정 타임라인을 비활성화하더라도 관리자 및 모더레이터는 계속 사용할 수 있습니다.';
	@override String get registration => '등록';
	@override String get invite => '초대';
	@override String get driveCapacityPerLocalAccount => '로컬 유저 한 명당 드라이브 용량';
	@override String get driveCapacityPerRemoteAccount => '원격 사용자별 드라이브 용량';
	@override String get inMb => '메가바이트 단위';
	@override String get bannerUrl => '배너 이미지 URL';
	@override String get backgroundImageUrl => '배경 이미지 URL';
	@override String get basicInfo => '기본 정보';
	@override String get pinnedUsers => '고정한 사용자';
	@override String get pinnedUsersDescription => '"발견하기" 페이지 등에 고정하고 싶은 유저를 한 줄에 한 명씩 적습니다.';
	@override String get pinnedPages => '고정한 페이지';
	@override String get pinnedPagesDescription => '서버의 대문에 고정하고 싶은 페이지의 경로를 한 줄에 하나씩 적습니다.';
	@override String get pinnedClipId => '고정할 클립의 ID';
	@override String get pinnedNotes => '고정된 노트';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'hCaptcha 활성화';
	@override String get hcaptchaSiteKey => '사이트 키';
	@override String get hcaptchaSecretKey => '시크릿 키';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'mCaptcha 활성화';
	@override String get mcaptchaSiteKey => '사이트 키';
	@override String get mcaptchaSecretKey => '시크릿 키';
	@override String get mcaptchaInstanceUrl => 'mCaptcha 인스턴스 URL';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'reCAPTCHA 활성화';
	@override String get recaptchaSiteKey => '사이트 키';
	@override String get recaptchaSecretKey => '시크릿 키';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Turnstile 활성화';
	@override String get turnstileSiteKey => '사이트 키';
	@override String get turnstileSecretKey => '시크릿 키';
	@override String get avoidMultiCaptchaConfirm => '여러 Captcha를 사용하는 경우 간섭이 발생할 가능성이 있습니다. 다른 Captcha를 비활성화하시겠습니까? 취소를 눌러 여러 Captcha를 활성화한 상태로 두는 것도 가능합니다.';
	@override String get antennas => '안테나';
	@override String get manageAntennas => '안테나 관리';
	@override String get name => '이름';
	@override String get antennaSource => '받을 소스';
	@override String get antennaKeywords => '받을 검색어';
	@override String get antennaExcludeKeywords => '제외할 검색어';
	@override String get antennaExcludeBots => '봇 계정 제외';
	@override String get antennaKeywordsDescription => '공백으로 구분하는 경우 AND, 줄바꿈으로 구분하는 경우 OR로 지정됩니다';
	@override String get notifyAntenna => '새로운 노트를 알림';
	@override String get withFileAntenna => '파일이 첨부된 노트만';
	@override String get enableServiceworker => 'ServiceWorker 사용';
	@override String get antennaUsersDescription => '유저명을 한 줄에 한 명씩 적습니다';
	@override String get caseSensitive => '대소문자를 구분';
	@override String get withReplies => '답글 포함';
	@override String get connectedTo => '다음 계정에 연결되어 있습니다';
	@override String get notesAndReplies => '글과 답글';
	@override String get withFiles => '미디어';
	@override String get silence => '사일런스';
	@override String get silenceConfirm => '이 계정을 사일런스로 설정하시겠습니까?';
	@override String get unsilence => '사일런스 해제';
	@override String get unsilenceConfirm => '이 계정의 사일런스를 해제하시겠습니까?';
	@override String get popularUsers => '인기 사용자';
	@override String get recentlyUpdatedUsers => '최근에 활동한 사용자';
	@override String get recentlyRegisteredUsers => '최근에 가입한 사용자';
	@override String get recentlyDiscoveredUsers => '최근에 발견한 사용자';
	@override String exploreUsersCount({required Object count}) => '${count}명의 사용자가 있습니다';
	@override String get exploreFediverse => '연합우주를 탐색';
	@override String get popularTags => '인기 태그';
	@override String get userList => '리스트';
	@override String get about => '정보';
	@override String get aboutMisskey => 'Misskey에 대하여';
	@override String get administrator => '관리자';
	@override String get token => '토큰';
	@override String get x2fa => '2단계 인증';
	@override String get setupOf2fa => '2단계 인증 설정';
	@override String get totp => '인증 앱';
	@override String get totpDescription => '인증 앱을 사용하여 일회성 비밀번호 입력';
	@override String get moderator => '모더레이터';
	@override String get moderation => '조정';
	@override String get moderationNote => '조정 기록';
	@override String get moderationNoteDescription => '모더레이터 역할을 가진 유저만 보이는 메모를 적을 수 있습니다.';
	@override String get addModerationNote => '조정 기록 추가하기';
	@override String get moderationLogs => '모더레이션 로그';
	@override String nUsersMentioned({required Object n}) => '${n}명이 언급함';
	@override String get securityKeyAndPasskey => '보안 키 또는 패스키';
	@override String get securityKey => '보안 키';
	@override String get lastUsed => '마지막 사용';
	@override String lastUsedAt({required Object t}) => '마지막 사용: ${t}';
	@override String get unregister => '등록 해제';
	@override String get passwordLessLogin => '비밀번호 없이 로그인';
	@override String get passwordLessLoginDescription => '비밀번호 없이 보안 키 또는 패스키만 사용해서 로그인합니다.';
	@override String get resetPassword => '비밀번호 재설정';
	@override String newPasswordIs({required Object password}) => '새로운 비밀번호는 "${password}" 입니다';
	@override String get reduceUiAnimation => 'UI의 애니메이션을 줄이기';
	@override String get share => '공유';
	@override String get notFound => '찾을 수 없습니다';
	@override String get notFoundDescription => '지정한 URL에 해당하는 페이지가 존재하지 않습니다.';
	@override String get uploadFolder => '기본 업로드 위치';
	@override String get markAsReadAllNotifications => '모든 알림을 읽은 상태로 표시';
	@override String get markAsReadAllUnreadNotes => '모든 글을 읽은 상태로 표시';
	@override String get markAsReadAllTalkMessages => '모든 대화를 읽은 상태로 표시';
	@override String get help => '도움말';
	@override String get inputMessageHere => '여기에 메시지를 입력하세요';
	@override String get close => '닫기';
	@override String get invites => '초대';
	@override String get members => '멤버';
	@override String get transfer => '양도';
	@override String get title => '제목';
	@override String get text => '텍스트';
	@override String get enable => '사용';
	@override String get next => '다음';
	@override String get retype => '다시 입력';
	@override String noteOf({required Object user}) => '${user}의 노트';
	@override String get quoteAttached => '인용함';
	@override String get quoteQuestion => '인용해서 작성하시겠습니까?';
	@override String get attachAsFileQuestion => '붙여넣으려는 글이 너무 깁니다. 텍스트 파일로 첨부하시겠습니까?';
	@override String get noMessagesYet => '아직 대화가 없습니다';
	@override String get newMessageExists => '새 메시지가 있습니다';
	@override String get onlyOneFileCanBeAttached => '메시지에 첨부할 수 있는 파일은 하나까지입니다';
	@override String get signinRequired => '진행하기 전에 로그인을 해 주세요';
	@override String get signinOrContinueOnRemote => '계속하려면 사용하는 서버로 이동하거나 이 서버에 로그인해야 합니다.';
	@override String get invitations => '초대';
	@override String get invitationCode => '초대 코드';
	@override String get checking => '확인하는 중입니다';
	@override String get available => '사용 가능합니다';
	@override String get unavailable => '사용할 수 없습니다';
	@override String get usernameInvalidFormat => 'a~z, A~Z, 0-9, _를 사용할 수 있습니다';
	@override String get tooShort => '너무 짧습니다';
	@override String get tooLong => '너무 깁니다';
	@override String get weakPassword => '약한 비밀번호';
	@override String get normalPassword => '좋은 비밀번호';
	@override String get strongPassword => '강한 비밀번호';
	@override String get passwordMatched => '일치합니다';
	@override String get passwordNotMatched => '일치하지 않습니다';
	@override String signinWith({required Object x}) => '${x}로 로그인';
	@override String get signinFailed => '로그인할 수 없습니다. 사용자 이름과 비밀번호를 확인해 주십시오.';
	@override String get or => '혹은';
	@override String get language => '언어';
	@override String get uiLanguage => 'UI 표시 언어';
	@override String aboutX({required Object x}) => '${x}에 대하여';
	@override String get emojiStyle => '이모지 스타일';
	@override String get native => '기본';
	@override String get menuStyle => '메뉴 스타일';
	@override String get style => '스타일';
	@override String get drawer => '서랍';
	@override String get popup => '팝업';
	@override String get showNoteActionsOnlyHover => '마우스가 올라간 때에만 노트 동작 버튼을 표시하기';
	@override String get showReactionsCount => '노트의 반응 수를 표시하기';
	@override String get noHistory => '기록이 없습니다';
	@override String get signinHistory => '로그인 기록';
	@override String get enableAdvancedMfm => '고급 MFM을 활성화';
	@override String get enableAnimatedMfm => '움직임이 있는 MFM을 활성화';
	@override String get doing => '잠시만요';
	@override String get category => '카테고리';
	@override String get tags => '태그';
	@override String get docSource => '이 문서의 소스';
	@override String get createAccount => '계정 만들기';
	@override String get existingAccount => '기존 계정';
	@override String get regenerate => '재생성';
	@override String get fontSize => '글자 크기';
	@override String get mediaListWithOneImageAppearance => '이미지가 1개 뿐인 미디어 목록의 높이';
	@override String limitTo({required Object x}) => '${x}로 제한';
	@override String get noFollowRequests => '처리되지 않은 팔로우 요청이 없습니다';
	@override String get openImageInNewTab => '새 탭에서 이미지 열기';
	@override String get dashboard => '대시보드';
	@override String get local => '로컬';
	@override String get remote => '리모트';
	@override String get total => '합계';
	@override String get weekOverWeekChanges => '지난주보다';
	@override String get dayOverDayChanges => '어제보다';
	@override String get appearance => '모양';
	@override String get clientSettings => '클라이언트 설정';
	@override String get accountSettings => '계정 설정';
	@override String get promotion => '홍보';
	@override String get promote => '프로모션하기';
	@override String get numberOfDays => '며칠동안';
	@override String get hideThisNote => '이 노트를 숨기기';
	@override String get showFeaturedNotesInTimeline => '타임라인에 추천 노트를 표시';
	@override String get objectStorage => '오브젝트 스토리지';
	@override String get useObjectStorage => '오브젝트 스토리지를 사용';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => '오브젝트 (미디어) 참조 URL 을 만들 때 사용되는 URL입니다. CDN 또는 프록시를 사용하는 경우 그 URL을 지정하고, 그 외의 경우 사용할 서비스의 가이드에 따라 공개적으로 액세스 할 수 있는 주소를 지정해 주세요. 예를 들어, AWS S3의 경우 \'https://<bucket>.s3.amazonaws.com\', GCS등의 경우 \'https://storage.googleapis.com/<bucket>\' 와 같이 지정합니다.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => '사용하는 서비스의 bucket 이름을 지정해 주세요.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => '이 Prefix 의 디렉토리 아래에 파일이 저장됩니다.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'AWS S3는 비워 두고 다른 서비스는 각 서비스의 endpoint를 설정해 주세요. ‘<host>’ 혹은 ‘<host>:<port>’처럼 지정합니다.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => '‘xx-east-1’처럼 region을 지정해 주세요. 사용하는 서비스에 region 개념이 없으면 ‘us-east-1’처럼 설정해 주세요. AWS 설정 파일이나 환경 변수가 있으면 비워 주세요.';
	@override String get objectStorageUseSSL => 'SSL 사용';
	@override String get objectStorageUseSSLDesc => 'API 호출시 HTTPS 를 사용하지 않는 경우 OFF 로 설정해 주세요';
	@override String get objectStorageUseProxy => '연결에 프록시를 사용';
	@override String get objectStorageUseProxyDesc => '오브젝트 스토리지 API 호출시 프록시를 사용하지 않는 경우 OFF 로 설정해 주세요';
	@override String get objectStorageSetPublicRead => '업로드할 때 \'public-read\'를 설정하기';
	@override String get s3ForcePathStyleDesc => 's3ForcePathStyle을 활성화하면, 버킷 이름을 URL의 호스트명이 아닌 경로의 일부로써 취급합니다. 셀프 호스트 Minio와 같은 서비스를 사용할 경우 활성화해야 할 수 있습니다.';
	@override String get serverLogs => '서버 로그';
	@override String get deleteAll => '모두 삭제';
	@override String get showFixedPostForm => '타임라인 상단에 글 작성란을 표시';
	@override String get showFixedPostFormInChannel => '채널 타임라인 상단에 글 작성란을 표시';
	@override String get withRepliesByDefaultForNewlyFollowed => '팔로우 할 때 기본적으로 답글을 타임라인에 나오게 하기';
	@override String get newNoteRecived => '새 노트가 있습니다';
	@override String get sounds => '소리';
	@override String get sound => '소리';
	@override String get listen => '듣기';
	@override String get none => '없음';
	@override String get showInPage => '페이지로 보기';
	@override String get popout => '새 창으로 열기';
	@override String get volume => '음량';
	@override String get masterVolume => '마스터 볼륨';
	@override String get notUseSound => '음소거 하기';
	@override String get useSoundOnlyWhenActive => 'Misskey를 활성화한 때에만 소리를 출력하기';
	@override String get details => '자세히';
	@override String get renoteDetails => '리노트 상세 내용';
	@override String get chooseEmoji => '이모지 선택';
	@override String get unableToProcess => '작업을 완료할 수 없습니다';
	@override String get recentUsed => '최근 사용';
	@override String get install => '설치';
	@override String get uninstall => '삭제';
	@override String get installedApps => '인증된 애플리케이션';
	@override String get nothing => '아무것도 없습니다';
	@override String get installedDate => '승인한 날짜';
	@override String get lastUsedDate => '마지막 사용';
	@override String get state => '상태';
	@override String get sort => '정렬';
	@override String get ascendingOrder => '오름차순';
	@override String get descendingOrder => '내림차순';
	@override String get scratchpad => '스크래치 패드';
	@override String get scratchpadDescription => '스크래치 패드는 AiScript 의 테스트 환경을 제공합니다. Misskey 와 상호 작용하는 코드를 작성, 실행 및 결과를 확인할 수 있습니다.';
	@override String get uiInspector => 'UI 인스펙터';
	@override String get uiInspectorDescription => '메모리에 있는 UI 컴포넌트의 인스턴트 목록을 볼 수 있습니다. UI 컴포넌트는 Ui:C: 계열 함수로 만들어집니다.';
	@override String get output => '출력';
	@override String get script => '스크립트';
	@override String get disablePagesScript => 'Pages 에서 AiScript 를 사용하지 않음';
	@override String get updateRemoteUser => '원격 사용자 정보 갱신';
	@override String get unsetUserAvatar => '아바타 제거';
	@override String get unsetUserAvatarConfirm => '아바타를 제거할까요?';
	@override String get unsetUserBanner => '배너 제거';
	@override String get unsetUserBannerConfirm => '배너를 제거할까요?';
	@override String get deleteAllFiles => '모든 파일 삭제';
	@override String get deleteAllFilesConfirm => '모든 파일을 삭제하시겠습니까?';
	@override String get removeAllFollowing => '모든 팔로잉 해제';
	@override String removeAllFollowingDescription({required Object host}) => '${host} 서버의 모든 팔로잉을 해제합니다. 해당 서버가 더 이상 존재하지 않는 경우 등에 실행해 주세요.';
	@override String get userSuspended => '이 사용자는 정지되었습니다.';
	@override String get userSilenced => '이 계정은 사일런스된 상태입니다.';
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
	@override String get addRelay => '릴레이 추가';
	@override String get inboxUrl => 'Inbox 주소';
	@override String get addedRelays => '추가된 릴레이';
	@override String get serviceworkerInfo => '푸시 알림을 수행하려면 활성화해야 합니다.';
	@override String get deletedNote => '삭제된 노트';
	@override String get invisibleNote => '비공개 노트';
	@override String get enableInfiniteScroll => '자동으로 더 보기';
	@override String get visibility => '공개 범위';
	@override String get poll => '투표';
	@override String get useCw => '내용 숨기기';
	@override String get enablePlayer => '플레이어 열기';
	@override String get disablePlayer => '플레이어 닫기';
	@override String get expandTweet => '게시물 확장하기';
	@override String get themeEditor => '테마 에디터';
	@override String get description => '설명';
	@override String get describeFile => '캡션 추가';
	@override String get enterFileDescription => '캡션 입력';
	@override String get author => '작성자';
	@override String get leaveConfirm => '저장하지 않은 변경사항이 있습니다. 취소하시겠습니까?';
	@override String get manage => '관리';
	@override String get plugins => '플러그인';
	@override String get preferencesBackups => '환경설정 백업';
	@override String get deck => '덱';
	@override String get undeck => '덱 해제';
	@override String get useBlurEffectForModal => '모달에 흐림 효과 사용';
	@override String get useFullReactionPicker => '모든 기능이 포함된 리액션 선택기 사용';
	@override String get width => '폭';
	@override String get height => '높이';
	@override String get large => '크게';
	@override String get medium => '보통';
	@override String get small => '작게';
	@override String get generateAccessToken => '액세스 토큰 생성';
	@override String get permission => '권한';
	@override String get adminPermission => '관리자 권한';
	@override String get enableAll => '전체 선택';
	@override String get disableAll => '전체 해제';
	@override String get tokenRequested => '계정 접근 허용';
	@override String get pluginTokenRequestedDescription => '이 플러그인은 여기서 설정한 권한을 사용할 수 있게 됩니다.';
	@override String get notificationType => '알림 유형';
	@override String get edit => '편집';
	@override String get emailServer => '메일 서버';
	@override String get enableEmail => '이메일 송신 기능 활성화';
	@override String get emailConfigInfo => '가입 시 메일 주소 확인이나 비밀번호 초기화 시에 사용합니다.';
	@override String get email => '이메일';
	@override String get emailAddress => '메일 주소';
	@override String get smtpConfig => 'SMTP 서버 설정';
	@override String get smtpHost => '호스트';
	@override String get smtpPort => '포트';
	@override String get smtpUser => '사용자 이름';
	@override String get smtpPass => '비밀번호';
	@override String get emptyToDisableSmtpAuth => 'SMTP 인증을 사용하지 않으려면 공란으로 비워둡니다.';
	@override String get smtpSecure => 'SMTP 연결에 Implicit SSL/TTS 사용';
	@override String get smtpSecureInfo => 'STARTTLS 사용 시에는 해제합니다.';
	@override String get testEmail => '이메일 전송 테스트';
	@override String get wordMute => '단어 뮤트';
	@override String get wordMuteDescription => '정해진 단어가 포함된 노트를 최소화 한 상태로 표시합니다. 최소화 된 노트는 클릭해서 표시할 수 있습니다.';
	@override String get hardWordMute => '하드 단어 뮤트';
	@override String get hardWordMuteDescription => '정한 단어가 들어간 노트를 숨깁니다. 단어 뮤트와 차이점은 노트가 아예 보이지 않습니다.';
	@override String get regexpError => '정규 표현식 오류';
	@override String regexpErrorDescription({required Object tab, required Object line}) => '${tab}단어 뮤트 ${line}행의 정규 표현식에 오류가 발생했습니다:';
	@override String get instanceMute => '서버 뮤트';
	@override String userSaysSomething({required Object name}) => '${name}님이 무언가를 말했습니다';
	@override String get makeActive => '활성화';
	@override String get display => '보기';
	@override String get copy => '복사';
	@override String get metrics => '통계';
	@override String get overview => '요약';
	@override String get logs => '로그';
	@override String get delayed => '지연';
	@override String get database => '데이터베이스';
	@override String get channel => '채널';
	@override String get create => '생성';
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
	@override String get abuseReports => '신고';
	@override String get reportAbuse => '신고';
	@override String get reportAbuseRenote => '리노트 신고하기';
	@override String reportAbuseOf({required Object name}) => '${name} 신고하기';
	@override String get fillAbuseReportDescription => '신고하려는 이유를 자세히 알려주세요. 특정 게시물을 신고할 때에는 게시물의 URL도 포함해 주세요.';
	@override String get abuseReported => '신고를 보냈습니다. 신고해 주셔서 감사합니다.';
	@override String get reporter => '신고자';
	@override String get reporteeOrigin => '피신고자';
	@override String get reporterOrigin => '신고자';
	@override String get send => '전송';
	@override String get openInNewTab => '새 탭에서 열기';
	@override String get openInSideView => '사이드뷰로 열기';
	@override String get defaultNavigationBehaviour => '기본 탐색 동작';
	@override String get editTheseSettingsMayBreakAccount => '이 설정을 변경하면 계정이 손상될 수 있습니다.';
	@override String get instanceTicker => '노트의 서버 정보';
	@override String waitingFor({required Object x}) => '${x}을(를) 기다리고 있습니다';
	@override String get random => '무작위';
	@override String get system => '시스템';
	@override String get switchUi => 'UI 전환';
	@override String get desktop => '데스크탑';
	@override String get clip => '클립';
	@override String get createNew => '새로 만들기';
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
	@override String get renotesCount => '리노트 수';
	@override String get repliedCount => '받은 답글 수';
	@override String get renotedCount => '받은 리노트 수';
	@override String get followingCount => '팔로우 수';
	@override String get followersCount => '팔로워 수';
	@override String get sentReactionsCount => '반응 수';
	@override String get receivedReactionsCount => '받은 반응 수';
	@override String get pollVotesCount => '투표 수';
	@override String get pollVotedCount => '받은 투표 수';
	@override String get yes => '예';
	@override String get no => '아니오';
	@override String get driveFilesCount => '드라이브에 있는 파일 수';
	@override String get driveUsage => '드라이브 사용량';
	@override String get noCrawle => '검색엔진의 인덱싱 거부';
	@override String get noCrawleDescription => '검색엔진에 사용자 페이지, 노트, 페이지 등의 콘텐츠를 인덱싱되지 않게 합니다.';
	@override String get lockedAccountInfo => '팔로우를 승인으로 승인받더라도 노트의 공개 범위를 \'팔로워\'로 하지 않는 한 누구나 당신의 노트를 볼 수 있습니다.';
	@override String get alwaysMarkSensitive => '미디어를 항상 열람 주의로 설정';
	@override String get loadRawImages => '첨부한 이미지의 썸네일을 원본화질로 표시';
	@override String get disableShowingAnimatedImages => '움직이는 이미지를 자동으로 재생하지 않음';
	@override String get highlightSensitiveMedia => '미디어가 민감한 내용이라는 것을 알기 쉽게 표시';
	@override String get verificationEmailSent => '확인 메일을 발송하였습니다. 설정을 완료하려면 메일에 첨부된 링크를 확인해 주세요.';
	@override String get notSet => '설정되지 않음';
	@override String get emailVerified => '메일 주소가 확인되었습니다.';
	@override String get noteFavoritesCount => '즐겨찾기한 노트 수';
	@override String get pageLikesCount => '좋아요 한 Page 수';
	@override String get pageLikedCount => 'Page에 받은 좋아요 수';
	@override String get contact => '연락처';
	@override String get useSystemFont => '시스템 기본 글꼴을 사용';
	@override String get clips => '클립';
	@override String get experimentalFeatures => '실험실';
	@override String get experimental => '실험실';
	@override String get thisIsExperimentalFeature => '이 기능은 실험적인 기능입니다. 사양이 변경되거나 정상적으로 동작하지 않을 가능성이 있습니다.';
	@override String get developer => '개발자';
	@override String get makeExplorable => '계정을 쉽게 발견하도록 하기';
	@override String get makeExplorableDescription => '비활성화하면 "발견하기"에 나의 계정을 표시하지 않습니다.';
	@override String get showGapBetweenNotesInTimeline => '타임라인의 노트 사이를 띄워서 표시';
	@override String get duplicate => '복제';
	@override String get left => '왼쪽';
	@override String get center => '가운데';
	@override String get wide => '넓게';
	@override String get narrow => '좁게';
	@override String get reloadToApplySetting => '이 설정을 적용하려면 페이지를 새로고침해야 합니다. 바로 새로고침하시겠습니까?';
	@override String get needReloadToApply => '변경 사항은 새로고침하면 적용됩니다.';
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
	@override String get publish => '게시';
	@override String get inChannelSearch => '채널에서 검색';
	@override String get useReactionPickerForContextMenu => '우클릭하여 리액션 선택기 열기';
	@override String typingUsers({required Object users}) => '${users}님이 입력 중';
	@override String get jumpToSpecifiedDate => '특정 날짜로 이동';
	@override String get showingPastTimeline => '과거의 타임라인을 표시하고 있어요';
	@override String get clear => '지우기';
	@override String get markAllAsRead => '모두 읽은 상태로 표시';
	@override String get goBack => '뒤로';
	@override String get unlikeConfirm => '좋아요를 취소할까요?';
	@override String get fullView => '전체 화면';
	@override String get quitFullView => '전체 화면 해제';
	@override String get addDescription => '설명 추가';
	@override String get userPagePinTip => '각 노트의 메뉴에서 「프로필에 고정」을 선택하는 것으로, 여기에 노트를 표시해 둘 수 있어요.';
	@override String get notSpecifiedMentionWarning => '수신자가 선택되지 않은 멘션이 있어요';
	@override String get info => '정보';
	@override String get userInfo => '사용자 정보';
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
	@override String get selectAccount => '계정 선택';
	@override String get switchAccount => '계정 바꾸기';
	@override String get enabled => '활성화';
	@override String get disabled => '비활성화';
	@override String get quickAction => '빠른 동작';
	@override String get user => '사용자';
	@override String get administration => '관리';
	@override String get accounts => '계정';
	@override String get switch_ => '전환';
	@override String get noMaintainerInformationWarning => '관리자 정보가 설정되어 있지 않습니다.';
	@override String get noInquiryUrlWarning => '문의처 주소를 설정하지 않았습니다.';
	@override String get noBotProtectionWarning => 'Bot 방어가 설정되어 있지 않습니다.';
	@override String get configure => '설정하기';
	@override String get postToGallery => '갤러리에 업로드';
	@override String get postToHashtag => '이 해시태그에 게시';
	@override String get gallery => '갤러리';
	@override String get recentPosts => '최근 포스트';
	@override String get popularPosts => '인기 포스트';
	@override String get shareWithNote => '노트로 공유';
	@override String get ads => '광고';
	@override String get expiration => '기한';
	@override String get startingperiod => '시작 기간';
	@override String get memo => '메모';
	@override String get priority => '우선순위';
	@override String get high => '높음';
	@override String get middle => '보통';
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
	@override String translatedFrom({required Object x}) => '${x}에서 번역';
	@override String get accountDeletionInProgress => '계정 삭제 작업을 진행하고 있습니다';
	@override String get usernameInfo => '서버상에서 계정을 식별하기 위한 이름. 알파벳(a~z, A~Z), 숫자(0~9) 및 언더바(_)를 사용할 수 있습니다. 사용자명은 나중에 변경할 수 없습니다.';
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
	@override String get on => '켜짐';
	@override String get off => '꺼짐';
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
	@override String get hide => '숨기기';
	@override String get useDrawerReactionPickerForMobile => '모바일에서 드로어 메뉴로 표시';
	@override String welcomeBackWithName({required Object name}) => '${name}님, 환영합니다.';
	@override String clickToFinishEmailVerification({required Object ok}) => '[${ok}]를 눌러 이메일 인증을 완료하세요.';
	@override String get overridedDeviceKind => '장치 유형';
	@override String get smartphone => '스마트폰';
	@override String get tablet => '태블릿';
	@override String get auto => '자동';
	@override String get themeColor => '테마 컬러';
	@override String get size => '크기';
	@override String get numberOfColumn => '한 줄에 보일 리액션의 수';
	@override String get searchByGoogle => '검색';
	@override String get instanceDefaultLightTheme => '서버 기본 라이트 테마';
	@override String get instanceDefaultDarkTheme => '서버 기본 다크 테마';
	@override String get instanceDefaultThemeDescription => '객체 형식({}로 감싼 형태)의 테마 코드를 입력해 주세요.';
	@override String get mutePeriod => '뮤트할 기간';
	@override String get period => '기간';
	@override String get indefinitely => '무기한';
	@override String get tenMinutes => '10분';
	@override String get oneHour => '1시간';
	@override String get oneDay => '1일';
	@override String get oneWeek => '일주일';
	@override String get oneMonth => '1개월';
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
	@override String typeToConfirm({required Object x}) => '계속하시려면 ${x} 을 입력하세요';
	@override String get deleteAccount => '계정 삭제';
	@override String get document => '문서';
	@override String get numberOfPageCache => '페이지 캐시 수';
	@override String get numberOfPageCacheDescription => '숫자가 클 수록 편리성이 높아지지만, 시스템 자원과 메모리를 더 많이 사용합니다.';
	@override String get logoutConfirm => '로그아웃 하시겠습니까?';
	@override String get lastActiveDate => '마지막 이용';
	@override String get statusbar => '상태바';
	@override String get pleaseSelect => '선택해 주세요';
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
	@override String get remoteOnly => '리모트만';
	@override String get failedToUpload => '업로드 실패';
	@override String get cannotUploadBecauseInappropriate => '이 파일은 부적절한 내용을 포함한다고 판단되어 업로드할 수 없습니다.';
	@override String get cannotUploadBecauseNoFreeSpace => '드라이브 용량이 부족하여 업로드할 수 없습니다.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => '파일 크기가 너무 크기 때문에 업로드할 수 없습니다.';
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
	@override String get like => '좋아요!';
	@override String get unlike => '좋아요 취소';
	@override String get numberOfLikes => '좋아요 수';
	@override String get show => '표시';
	@override String get neverShow => '다시 보지 않기';
	@override String get remindMeLater => '나중에 알림';
	@override String get didYouLikeMisskey => 'Misskey가 마음에 드시나요?';
	@override String pleaseDonate({required Object host}) => 'Misskey는 ${host} 서버의 무료 소프트웨어입니다. 앞으로도 개발을 이어 나가려면 후원이 절실히 필요합니다!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => '소스 코드는 ${anchor}에서 받아보실 수 있습니다.';
	@override String get roles => '역할';
	@override String get role => '역할';
	@override String get noRole => '역할이 없습니다';
	@override String get normalUser => '일반 사용자';
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
	@override String get thisPostMayBeAnnoyingCancel => '그만두기';
	@override String get thisPostMayBeAnnoyingIgnore => '이대로 게시';
	@override String get collapseRenotes => '이미 본 리노트를 간략화하기';
	@override String get collapseRenotesDescription => '반응이나 리노트를 한 노트를 접어서 표시합니다.';
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
	@override String get likeOnly => '좋아요만 받기';
	@override String get likeOnlyForRemote => '리모트에서는 좋아요만 받기';
	@override String get nonSensitiveOnly => '민감한 이모지를 제외하고 받기';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => '민감한 이모지를 제외하고 받기(리모트에서는 좋아요만 받기)';
	@override String get rolesAssignedToMe => '나에게 할당된 역할';
	@override String get resetPasswordConfirm => '비밀번호를 재설정하시겠습니까?';
	@override String get sensitiveWords => '민감한 단어';
	@override String get sensitiveWordsDescription => '설정한 단어가 포함된 노트의 공개 범위를 \'홈\'으로 강제합니다. 개행으로 구분하여 여러 개를 지정할 수 있습니다.';
	@override String get sensitiveWordsDescription2 => '공백으로 구분하면 AND 지정이 되며, 키워드를 슬래시로 둘러싸면 정규 표현식이 됩니다.';
	@override String get prohibitedWords => '금지 워드';
	@override String get prohibitedWordsDescription => '설정된 워드가 포함되는 노트를 작성하려고 하면, 에러가 발생하도록 합니다. 줄바꿈으로 구분지어 복수 설정할 수 있습니다.';
	@override String get prohibitedWordsDescription2 => '공백으로 구분하면 AND 지정이 되며, 키워드를 슬래시로 둘러싸면 정규 표현식이 됩니다.';
	@override String get hiddenTags => '숨긴 해시태그';
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
	@override String get accountMoved => '이 사용자는 다음 계정으로 이사했습니다:';
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
	@override String get preservedUsernames => '예약한 사용자 이름';
	@override String get preservedUsernamesDescription => '예약할 사용자명을 한 줄에 하나씩 입력합니다. 여기에서 지정한 사용자명으로는 계정을 생성할 수 없게 됩니다. 단, 관리자 권한으로 계정을 생성할 때에는 해당되지 않으며, 이미 존재하는 계정도 영향을 받지 않습니다.';
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
	@override String get replies => '답글';
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
	@override String get attach => '붙이기';
	@override String get detach => '빼기';
	@override String get detachAll => '모두 빼기';
	@override String get angle => '각도';
	@override String get flip => '플립';
	@override String get showAvatarDecorations => '아바타 장식 표시';
	@override String get releaseToRefresh => '놓아서 새로고침';
	@override String get refreshing => '새로고침 중';
	@override String get pullDownToRefresh => '아래로 내려서 새로고침';
	@override String get disableStreamingTimeline => '타임라인의 실시간 갱신을 무효화하기';
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
	@override String get surrender => '그만두기';
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
	@override String fromX({required Object x}) => '${x}부터';
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
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => '패스키를 검증했으나, 비밀번호 없이 로그인하기가 꺼져 있습니다.';
	@override String get messageToFollower => '팔로워에게 보낼 메시지';
	@override String get target => '대상';
	@override String get testCaptchaWarning => 'CAPTCHA를 테스트하기 위한 기능입니다. <strong>실제 환경에서는 사용하지 마세요.</strong>';
	@override String get prohibitedWordsForNameOfUser => '금지 단어 (사용자 이름)';
	@override String get prohibitedWordsForNameOfUserDescription => '이 목록에 포함되는 키워드가 사용자 이름에 있는 경우, 일반 사용자는 이름을 바꿀 수 없습니다. 모더레이터 권한을 가진 사용자는 제한 대상에서 제외됩니다.';
	@override String get yourNameContainsProhibitedWords => '바꾸려는 이름에 금지된 키워드가 포함되어 있습니다.';
	@override String get yourNameContainsProhibitedWordsDescription => '이름에 금지된 키워드가 있습니다. 이름을 사용해야 하는 경우, 서버 관리자에 문의하세요.';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => '게시자에 의해 로그인해야 볼 수 있도록 설정되어 있습니다.';
	@override String get lockdown => '잠금';
	@override String get pleaseSelectAccount => '계정을 선택해주세요.';
	@override String get availableRoles => '사용 가능한 역할';
	@override String get acknowledgeNotesAndEnable => '활성화 하기 전에 주의 사항을 확인했습니다.';
	@override late final _TranslationsMisskeyAccountSettingsKoKr accountSettings_ = _TranslationsMisskeyAccountSettingsKoKr._(_root);
	@override late final _TranslationsMisskeyAbuseUserReportKoKr abuseUserReport_ = _TranslationsMisskeyAbuseUserReportKoKr._(_root);
	@override late final _TranslationsMisskeyDeliveryKoKr delivery_ = _TranslationsMisskeyDeliveryKoKr._(_root);
	@override late final _TranslationsMisskeyBubbleGameKoKr bubbleGame_ = _TranslationsMisskeyBubbleGameKoKr._(_root);
	@override late final _TranslationsMisskeyAnnouncementKoKr announcement_ = _TranslationsMisskeyAnnouncementKoKr._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingKoKr initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialKoKr initialTutorial_ = _TranslationsMisskeyInitialTutorialKoKr._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionKoKr timelineDescription_ = _TranslationsMisskeyTimelineDescriptionKoKr._(_root);
	@override late final _TranslationsMisskeyServerRulesKoKr serverRules_ = _TranslationsMisskeyServerRulesKoKr._(_root);
	@override late final _TranslationsMisskeyServerSettingsKoKr serverSettings_ = _TranslationsMisskeyServerSettingsKoKr._(_root);
	@override late final _TranslationsMisskeyAccountMigrationKoKr accountMigration_ = _TranslationsMisskeyAccountMigrationKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsKoKr achievements_ = _TranslationsMisskeyAchievementsKoKr._(_root);
	@override late final _TranslationsMisskeyRoleKoKr role_ = _TranslationsMisskeyRoleKoKr._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionKoKr sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionKoKr._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableKoKr emailUnavailable_ = _TranslationsMisskeyEmailUnavailableKoKr._(_root);
	@override late final _TranslationsMisskeyFfVisibilityKoKr ffVisibility_ = _TranslationsMisskeyFfVisibilityKoKr._(_root);
	@override late final _TranslationsMisskeySignupKoKr signup_ = _TranslationsMisskeySignupKoKr._(_root);
	@override late final _TranslationsMisskeyAccountDeleteKoKr accountDelete_ = _TranslationsMisskeyAccountDeleteKoKr._(_root);
	@override late final _TranslationsMisskeyAdKoKr ad_ = _TranslationsMisskeyAdKoKr._(_root);
	@override late final _TranslationsMisskeyForgotPasswordKoKr forgotPassword_ = _TranslationsMisskeyForgotPasswordKoKr._(_root);
	@override late final _TranslationsMisskeyGalleryKoKr gallery_ = _TranslationsMisskeyGalleryKoKr._(_root);
	@override late final _TranslationsMisskeyEmailKoKr email_ = _TranslationsMisskeyEmailKoKr._(_root);
	@override late final _TranslationsMisskeyPluginKoKr plugin_ = _TranslationsMisskeyPluginKoKr._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsKoKr preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsKoKr._(_root);
	@override late final _TranslationsMisskeyRegistryKoKr registry_ = _TranslationsMisskeyRegistryKoKr._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyKoKr aboutMisskey_ = _TranslationsMisskeyAboutMisskeyKoKr._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaKoKr displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaKoKr._(_root);
	@override late final _TranslationsMisskeyInstanceTickerKoKr instanceTicker_ = _TranslationsMisskeyInstanceTickerKoKr._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorKoKr serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorKoKr._(_root);
	@override late final _TranslationsMisskeyChannelKoKr channel_ = _TranslationsMisskeyChannelKoKr._(_root);
	@override late final _TranslationsMisskeyMenuDisplayKoKr menuDisplay_ = _TranslationsMisskeyMenuDisplayKoKr._(_root);
	@override late final _TranslationsMisskeyWordMuteKoKr wordMute_ = _TranslationsMisskeyWordMuteKoKr._(_root);
	@override late final _TranslationsMisskeyInstanceMuteKoKr instanceMute_ = _TranslationsMisskeyInstanceMuteKoKr._(_root);
	@override late final _TranslationsMisskeyThemeKoKr theme_ = _TranslationsMisskeyThemeKoKr._(_root);
	@override late final _TranslationsMisskeySfxKoKr sfx_ = _TranslationsMisskeySfxKoKr._(_root);
	@override late final _TranslationsMisskeySoundSettingsKoKr soundSettings_ = _TranslationsMisskeySoundSettingsKoKr._(_root);
	@override late final _TranslationsMisskeyAgoKoKr ago_ = _TranslationsMisskeyAgoKoKr._(_root);
	@override late final _TranslationsMisskeyTimeInKoKr timeIn_ = _TranslationsMisskeyTimeInKoKr._(_root);
	@override late final _TranslationsMisskeyTimeKoKr time_ = _TranslationsMisskeyTimeKoKr._(_root);
	@override late final _TranslationsMisskeyX2faKoKr x2fa_ = _TranslationsMisskeyX2faKoKr._(_root);
	@override late final _TranslationsMisskeyPermissionsKoKr permissions_ = _TranslationsMisskeyPermissionsKoKr._(_root);
	@override late final _TranslationsMisskeyAuthKoKr auth_ = _TranslationsMisskeyAuthKoKr._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesKoKr antennaSources_ = _TranslationsMisskeyAntennaSourcesKoKr._(_root);
	@override late final _TranslationsMisskeyWeekdayKoKr weekday_ = _TranslationsMisskeyWeekdayKoKr._(_root);
	@override late final _TranslationsMisskeyWidgetsKoKr widgets_ = _TranslationsMisskeyWidgetsKoKr._(_root);
	@override late final _TranslationsMisskeyCwKoKr cw_ = _TranslationsMisskeyCwKoKr._(_root);
	@override late final _TranslationsMisskeyPollKoKr poll_ = _TranslationsMisskeyPollKoKr._(_root);
	@override late final _TranslationsMisskeyVisibilityKoKr visibility_ = _TranslationsMisskeyVisibilityKoKr._(_root);
	@override late final _TranslationsMisskeyPostFormKoKr postForm_ = _TranslationsMisskeyPostFormKoKr._(_root);
	@override late final _TranslationsMisskeyProfileKoKr profile_ = _TranslationsMisskeyProfileKoKr._(_root);
	@override late final _TranslationsMisskeyExportOrImportKoKr exportOrImport_ = _TranslationsMisskeyExportOrImportKoKr._(_root);
	@override late final _TranslationsMisskeyChartsKoKr charts_ = _TranslationsMisskeyChartsKoKr._(_root);
	@override late final _TranslationsMisskeyInstanceChartsKoKr instanceCharts_ = _TranslationsMisskeyInstanceChartsKoKr._(_root);
	@override late final _TranslationsMisskeyTimelinesKoKr timelines_ = _TranslationsMisskeyTimelinesKoKr._(_root);
	@override late final _TranslationsMisskeyPlayKoKr play_ = _TranslationsMisskeyPlayKoKr._(_root);
	@override late final _TranslationsMisskeyPagesKoKr pages_ = _TranslationsMisskeyPagesKoKr._(_root);
	@override late final _TranslationsMisskeyRelayStatusKoKr relayStatus_ = _TranslationsMisskeyRelayStatusKoKr._(_root);
	@override late final _TranslationsMisskeyNotificationKoKr notification_ = _TranslationsMisskeyNotificationKoKr._(_root);
	@override late final _TranslationsMisskeyDeckKoKr deck_ = _TranslationsMisskeyDeckKoKr._(_root);
	@override late final _TranslationsMisskeyDialogKoKr dialog_ = _TranslationsMisskeyDialogKoKr._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineKoKr disabledTimeline_ = _TranslationsMisskeyDisabledTimelineKoKr._(_root);
	@override late final _TranslationsMisskeyDrivecleanerKoKr drivecleaner_ = _TranslationsMisskeyDrivecleanerKoKr._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsKoKr webhookSettings_ = _TranslationsMisskeyWebhookSettingsKoKr._(_root);
	@override late final _TranslationsMisskeyAbuseReportKoKr abuseReport_ = _TranslationsMisskeyAbuseReportKoKr._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesKoKr moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesKoKr._(_root);
	@override late final _TranslationsMisskeyFileViewerKoKr fileViewer_ = _TranslationsMisskeyFileViewerKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerKoKr externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerKoKr._(_root);
	@override late final _TranslationsMisskeyDataSaverKoKr dataSaver_ = _TranslationsMisskeyDataSaverKoKr._(_root);
	@override late final _TranslationsMisskeyHemisphereKoKr hemisphere_ = _TranslationsMisskeyHemisphereKoKr._(_root);
	@override late final _TranslationsMisskeyReversiKoKr reversi_ = _TranslationsMisskeyReversiKoKr._(_root);
	@override late final _TranslationsMisskeyOfflineScreenKoKr offlineScreen_ = _TranslationsMisskeyOfflineScreenKoKr._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingKoKr urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingKoKr._(_root);
	@override late final _TranslationsMisskeyMediaControlsKoKr mediaControls_ = _TranslationsMisskeyMediaControlsKoKr._(_root);
	@override late final _TranslationsMisskeyContextMenuKoKr contextMenu_ = _TranslationsMisskeyContextMenuKoKr._(_root);
	@override late final _TranslationsMisskeyEmbedCodeGenKoKr embedCodeGen_ = _TranslationsMisskeyEmbedCodeGenKoKr._(_root);
	@override late final _TranslationsMisskeySelfXssPreventionKoKr selfXssPrevention_ = _TranslationsMisskeySelfXssPreventionKoKr._(_root);
	@override late final _TranslationsMisskeyFollowRequestKoKr followRequest_ = _TranslationsMisskeyFollowRequestKoKr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsKoKr remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsKoKr._(_root);
}

// Path: misskeyIO
class _TranslationsMisskeyIOKoKr extends TranslationsMisskeyIOEnUs {
	_TranslationsMisskeyIOKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusKoKr skebStatus_ = _TranslationsMisskeyIOSkebStatusKoKr._(_root);
}

// Path: misskey.accountSettings_
class _TranslationsMisskeyAccountSettingsKoKr extends TranslationsMisskeyAccountSettingsEnUs {
	_TranslationsMisskeyAccountSettingsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get requireSigninToViewContents => '콘텐츠 열람을 위해 로그인을 필수로 설정하기';
	@override String get requireSigninToViewContentsDescription1 => '자신이 작성한 모든 노트 등의 콘텐츠를 보기 위해 로그인을 필수로 설정합니다. 크롤러가 정보 수집하는 것을 방지하는 효과를 기대할 수 있습니다.';
	@override String get requireSigninToViewContentsDescription2 => 'URL 미리보기(OGP), 웹페이지에 삽입, 노트 인용을 지원하지 않는 서버에서 볼 수 없게 됩니다.';
	@override String get requireSigninToViewContentsDescription3 => '원격 서버에 연합된 콘텐츠에는 이러한 제한이 적용되지 않을 수 있습니다.';
	@override String get makeNotesFollowersOnlyBefore => '과거 노트는 팔로워만 볼 수 있도록 설정하기';
	@override String get makeNotesFollowersOnlyBeforeDescription => '이 기능이 활성화되어 있는 동안, 설정된 날짜 및 시간보다 과거 또는 설정된 시간이 지난 노트는 팔로워만 볼 수 있게 됩니다. 비활성화하면 노트의 공개 상태도 원래대로 돌아갑니다.';
	@override String get makeNotesHiddenBefore => '과거 노트 비공개로 전환하기';
	@override String get makeNotesHiddenBeforeDescription => '이 기능이 활성화되어 있는 동안 설정한 날짜 및 시간보다 과거 또는 설정한 시간이 지난 노트는 본인만 볼 수 있게(비공개로 전환) 됩니다. 비활성화하면 노트의 공개 상태도 원래대로 돌아갑니다.';
	@override String get mayNotEffectForFederatedNotes => '원격 서버에 연합된 노트에는 효과가 없을 수도 있습니다.';
	@override String get notesHavePassedSpecifiedPeriod => '지정한 시간이 경과된 노트';
	@override String get notesOlderThanSpecifiedDateAndTime => '지정된 날짜 및 시간 이전의 노트';
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportKoKr extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get forward => '전달';
	@override String get forwardDescription => '익명 시스템 계정을 사용하여 리모트 서버에 신고 내용을 전달할 수 있습니다.';
	@override String get resolve => '해결됨';
	@override String get accept => '인용';
	@override String get reject => '기각';
	@override String get resolveTutorial => '적절한 신고 내용에 대응한 경우, "인용"을 선택하여 "해결됨"으로 기록합니다.\n적절하지 않은 신고를 받은 경우, "기각"을 선택하여 "기각"으로 기록합니다.';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryKoKr extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get status => '전송 상태';
	@override String get stop => '정지됨';
	@override String get resume => '전송 다시 시작';
	@override late final _TranslationsMisskeyDeliveryTypeKoKr type_ = _TranslationsMisskeyDeliveryTypeKoKr._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameKoKr extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => '설명';
	@override String get hold => '홀드';
	@override late final _TranslationsMisskeyBubbleGameScoreKoKr score_ = _TranslationsMisskeyBubbleGameScoreKoKr._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayKoKr howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayKoKr._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementKoKr extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => '기존 유저에게만 알림';
	@override String get forExistingUsersDescription => '활성화하면 이 공지사항을 게시한 시점에서 이미 가입한 유저에게만 표시합니다. 비활성화하면 게시 후에 가입한 유저에게도 표시합니다.';
	@override String get needConfirmationToRead => '읽음으로 표시하기 전에 확인하기';
	@override String get needConfirmationToReadDescription => '활성화하면 이 공지사항을 읽음으로 표시하기 전에 확인 알림창을 띄웁니다. \'모두 읽음\'의 대상에서도 제외됩니다.';
	@override String get end => '공지에서 내리기';
	@override String get tooManyActiveAnnouncementDescription => '공지사항이 너무 많을 경우, 사용자 경험에 영향을 끼칠 가능성이 있습니다. 오래된 공지사항은 아카이브하시는 것을 권장드립니다.';
	@override String get readConfirmTitle => '읽음으로 표시합니까?';
	@override String readConfirmText({required Object title}) => '〈${title}〉의 내용을 읽음으로 표시합니다.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => '신규 유저의 이용 경험에 악영향을 끼칠 수 있으므로, 일시적인 알림 수단으로만 사용하고 고정된 정보에는 사용을 지양하는 것을 추천합니다.';
	@override String get dialogAnnouncementUxWarn => '다이얼로그 형태의 알림이 동시에 2개 이상 존재하는 경우, 사용자 경험에 악영향을 끼칠 수 있으므로 신중히 결정하십시오.';
	@override String get silence => '조용히 알림';
	@override String get silenceDescription => '활성화하면 공지사항에 대한 알림이 가지 않게 되며, 확인 버튼을 누를 필요가 없게 됩니다.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingKoKr extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
	@override String get startTutorial => '튜토리얼 시작';
	@override String get skipAreYouSure => '초기 설정을 중단하시겠습니까?';
	@override String get laterAreYouSure => '초기 설정을 나중에 진행하시겠습니까?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialKoKr extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => '튜토리얼 보기';
	@override String get title => '튜토리얼';
	@override String get wellDone => '잘 하셨습니다';
	@override String get skipAreYouSure => '튜토리얼을 종료하시겠습니까?';
	@override late final _TranslationsMisskeyInitialTutorialLandingKoKr landing_ = _TranslationsMisskeyInitialTutorialLandingKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteKoKr note_ = _TranslationsMisskeyInitialTutorialNoteKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionKoKr reaction_ = _TranslationsMisskeyInitialTutorialReactionKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineKoKr timeline_ = _TranslationsMisskeyInitialTutorialTimelineKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteKoKr postNote_ = _TranslationsMisskeyInitialTutorialPostNoteKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoKr howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneKoKr done_ = _TranslationsMisskeyInitialTutorialDoneKoKr._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionKoKr extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get home => '홈 타임라인에서는, 내가 팔로우한 계정의 게시물을 볼 수 있습니다.';
	@override String get local => '로컬 타임라인에서는, 이 서버의 모든 유저의 게시물을 볼 수 있습니다.';
	@override String get social => '소셜 타임라인에서는, 홈 타임라인과 로컬 타임라인의 게시물을 모두 볼 수 있습니다.';
	@override String get global => '글로벌 타임라인에서는, 여기와 연결된 다른 모든 서버의 게시물을 볼 수 있습니다.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesKoKr extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get description => '회원 가입 이전에 간단하게 표시할 서버 규칙입니다. 이용 약관의 요약으로 구성하는 것을 추천합니다.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsKoKr extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationKoKr extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyAchievementsKoKr extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => '달성 일시';
	@override late final _TranslationsMisskeyAchievementsTypesKoKr types_ = _TranslationsMisskeyAchievementsTypesKoKr._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleKoKr extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get new_ => '새 역할 생성';
	@override String get edit => '역할 수정';
	@override String get name => '역할 이름';
	@override String get description => '역할 설명';
	@override String get permission => '역할 권한';
	@override String get descriptionOfPermission => '<b>조정자</b>는 기본적인 조정 작업을 진행할 수 있습니다.\n<b>관리자</b>는 서버의 모든 설정을 변경할 수 있습니다.';
	@override String get assignTarget => '할당 대상';
	@override String get descriptionOfAssignTarget => '<b>수동</b>을 선택하면 누가 이 역할에 포함되는지를 수동으로 관리할 수 있습니다.\n<b>조건부</b>를 선택하면 조건을 설정해 일치하는 사용자를 자동으로 포함되게 할 수 있습니다.';
	@override String get manual => '수동';
	@override String get manualRoles => '수동 역할';
	@override String get conditional => '조건부';
	@override String get conditionalRoles => '조건부 역할';
	@override String get condition => '조건';
	@override String get isConditionalRole => '조건부 역할입니다.';
	@override String get isPublic => '역할 공개';
	@override String get descriptionOfIsPublic => '역할에 할당된 사용자를 누구나 볼 수 있습니다. 또한 사용자 프로필에 이 역할이 표시됩니다.';
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
	@override String get displayOrder => '표시 순서';
	@override String get descriptionOfDisplayOrder => '값이 클 수록 UI에서 먼저 표시됩니다.';
	@override String get canEditMembersByModerator => '모더레이터의 역할 수정 허용';
	@override String get descriptionOfCanEditMembersByModerator => '이 옵션을 켜면 모더레이터도 이 역할에 사용자를 할당하거나 삭제할 수 있습니다. 꺼져 있으면 관리자만 할당이 가능합니다.';
	@override String get priority => '우선순위';
	@override late final _TranslationsMisskeyRolePriorityKoKr priority_ = _TranslationsMisskeyRolePriorityKoKr._(_root);
	@override late final _TranslationsMisskeyRoleOptionsKoKr options_ = _TranslationsMisskeyRoleOptionsKoKr._(_root);
	@override late final _TranslationsMisskeyRoleConditionKoKr condition_ = _TranslationsMisskeyRoleConditionKoKr._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionKoKr extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyEmailUnavailableKoKr extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get used => '이 메일 주소는 사용중입니다';
	@override String get format => '형식이 올바르지 않습니다';
	@override String get disposable => '임시 이메일 주소는 사용할 수 없습니다';
	@override String get mx => '메일 서버가 올바르지 않습니다';
	@override String get smtp => '메일 서버가 응답하지 않습니다';
	@override String get banned => '이 메일 주소는 사용할 수 없습니다';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityKoKr extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get public => '공개';
	@override String get followers => '팔로워에게만 공개';
	@override String get private => '비공개';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupKoKr extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get almostThere => '거의 다 끝났습니다';
	@override String get emailAddressInfo => '당신이 사용하고 있는 이메일 주소를 입력해 주세요. 이메일 주소는 다른 유저에게 공개되지 않습니다.';
	@override String emailSent({required Object email}) => '입력하신 메일 주소(${email})로 확인 메일을 보내드렸습니다. 가입을 완료하시려면 보내드린 메일에 있는 링크로 접속해 주세요.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteKoKr extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => '계정 삭제';
	@override String get mayTakeTime => '계정 삭제는 서버에 부하를 가하기 때문에, 작성한 콘텐츠나 업로드한 파일의 수가 많으면 완료까지 시간이 걸릴 수 있습니다.';
	@override String get sendEmail => '계정 삭제가 완료되면 등록된 이메일 주소로 알림을 보냅니다.';
	@override String get requestAccountDelete => '계정 삭제 요청';
	@override String get started => '삭제 작업이 시작되었습니다.';
	@override String get inProgress => '삭제 진행 중';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdKoKr extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get back => '뒤로';
	@override String get reduceFrequencyOfThisAd => '이 광고의 표시 빈도 낮추기';
	@override String get hide => '보이지 않음';
	@override String get timezoneinfo => '요일은 서버의 표준 시간대에 따라 결정됩니다.';
	@override String get adsSettings => '광고 표시 설정';
	@override String get notesPerOneAd => '실시간으로 갱신되는 타임라인에서 광고를 노출시키는 간격 (노트 당)';
	@override String get setZeroToDisable => '0으로 지정하면 실시간 타임라인에서의 광고를 비활성화합니다';
	@override String get adsTooClose => '광고의 표시 간격이 매우 작아, 사용자 경험에 부정적인 영향을 미칠 수 있습니다.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordKoKr extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => '여기에 계정에 등록한 메일 주소를 입력해 주세요. 입력한 메일 주소로 비밀번호 재설정 링크를 발송합니다.';
	@override String get ifNoEmail => '메일 주소를 등록하지 않은 경우, 관리자에 문의해 주십시오.';
	@override String get contactAdmin => '이 서버에서는 메일 기능이 지원되지 않습니다. 비밀번호를 재설정하려면 관리자에게 문의해 주십시오.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryKoKr extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get my => '내 갤러리';
	@override String get liked => '좋아요 한 갤러리';
	@override String get like => '좋아요!';
	@override String get unlike => '좋아요 취소';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailKoKr extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowKoKr follow_ = _TranslationsMisskeyEmailFollowKoKr._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestKoKr receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestKoKr._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginKoKr extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get install => '플러그인 설치';
	@override String get installWarn => '신뢰할 수 없는 플러그인은 설치하지 않는 것이 좋습니다.';
	@override String get manage => '플러그인 관리';
	@override String get viewSource => '소스 보기';
	@override String get viewLog => '로그 보기';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsKoKr extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyRegistryKoKr extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get scope => '범위';
	@override String get key => '키';
	@override String get keys => '키';
	@override String get domain => '도메인';
	@override String get createKey => '키 생성';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyKoKr extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyDisplayOfSensitiveMediaKoKr extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get respect => '민감한 콘텐츠로 표시된 미디어 숨기기';
	@override String get ignore => '민감한 콘텐츠로 표시된 미디어 보이기';
	@override String get force => '미디어 항상 숨기기';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerKoKr extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get none => '보이지 않음';
	@override String get remote => '리모트 유저에게만 보이기';
	@override String get always => '항상 보이기';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorKoKr extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get reload => '자동으로 새로고침';
	@override String get dialog => '경고창 표시';
	@override String get quiet => '조용히 경고';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelKoKr extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get create => '채널 생성';
	@override String get edit => '채널 편집';
	@override String get setBanner => '배너 설정';
	@override String get removeBanner => '배너 삭제';
	@override String get featured => '트렌드';
	@override String get owned => '관리중';
	@override String get following => '팔로잉';
	@override String usersCount({required Object n}) => '${n}명 참여 중';
	@override String notesCount({required Object n}) => '${n}노트';
	@override String get nameAndDescription => '이름과 설명';
	@override String get nameOnly => '이름만';
	@override String get allowRenoteToExternal => '채널 외부로의 리노트와 인용 리노트를 허가';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayKoKr extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get sideFull => '가로';
	@override String get sideIcon => '가로(아이콘)';
	@override String get top => '상단';
	@override String get hide => '숨기기';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteKoKr extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get muteWords => '뮤트할 단어';
	@override String get muteWordsDescription => '공백으로 구분하는 경우 AND, 줄바꿈으로 구분하는 경우 OR로 지정됩니다.';
	@override String get muteWordsDescription2 => '정규 표현식을 사용하려면 키워드를 빗금표(/)로 감싸 주세요.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteKoKr extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => '뮤트한 서버에서 오는 답글을 포함한 모든 노트와 Renote를 뮤트합니다.';
	@override String get instanceMuteDescription2 => '한 줄에 하나씩 입력해 주세요';
	@override String get title => '지정한 서버의 노트를 숨깁니다.';
	@override String get heading => '뮤트할 서버';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeKoKr extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get explore => '테마 둘러보기';
	@override String get install => '테마 설치';
	@override String get manage => '테마 관리';
	@override String get code => '테마 코드';
	@override String get description => '설명';
	@override String installed({required Object name}) => '${name} 테마가 설치되었습니다';
	@override String get installedThemes => '설치된 테마';
	@override String get builtinThemes => '표준 테마';
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
	@override late final _TranslationsMisskeyThemeKeysKoKr keys = _TranslationsMisskeyThemeKeysKoKr._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxKoKr extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get note => '새 노트';
	@override String get noteMy => '내 노트';
	@override String get notification => '알림';
	@override String get reaction => '리액션 선택';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsKoKr extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyAgoKoKr extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeInKoKr extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyTimeKoKr extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get second => '초';
	@override String get minute => '분';
	@override String get hour => '시간';
	@override String get day => '일';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faKoKr extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => '이미 설정이 완료되었습니다.';
	@override String get registerTOTP => '인증 앱 설정 시작';
	@override String step1({required Object a, required Object b}) => '먼저, ${a}나 ${b}등의 인증 앱을 사용 중인 디바이스에 설치합니다.';
	@override String get step2 => '그 후, 표시되어 있는 QR코드를 앱으로 스캔합니다.';
	@override String get step2Uri => '데스크톱 앱을 사용하려면 다음 URI를 입력하십시오';
	@override String get step3Title => '인증 코드 입력';
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
	@override String get renewTOTPCancel => '취소';
	@override String get checkBackupCodesBeforeCloseThisWizard => '이 위자드를 닫기 전에 아래 백업 코드를 확인하십시오';
	@override String get backupCodes => '백업 코드';
	@override String get backupCodesDescription => '인증 앱을 사용할 수 없게 된 경우 아래 백업 코드를 사용하여 계정에 액세스 할 수 있습니다.이 코드들은 반드시 안전한 장소에 보관하십시오.각 코드는 한 번만 사용할 수 있습니다.';
	@override String get backupCodeUsedWarning => '백업 코드가 사용되었습니다.인증 앱을 사용할 수 없게 된 경우, 조속히 인증 앱을 다시 설정해 주십시오.';
	@override String get backupCodesExhaustedWarning => '백업 코드가 모두 사용되었습니다.인증 앱을 사용할 수 없는 경우 더 이상 계정에 액세스하는 것이 불가능합니다.인증 앱을 다시 등록해 주세요.';
	@override String get moreDetailedGuideHere => '여기에 자세한 설명이 있습니다';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsKoKr extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get readAccount => '계정의 정보를 봅니다';
	@override String get writeAccount => '계정의 정보를 변경합니다';
	@override String get readBlocks => '차단 여부를 확인합니다';
	@override String get writeBlocks => '차단을 하거나 해제합니다';
	@override String get readDrive => '드라이브 보기';
	@override String get writeDrive => '드라이브에 파일을 올리거나, 이름을 변경하거나, 삭제합니다';
	@override String get readFavorites => '즐겨찾기 보기';
	@override String get writeFavorites => '즐겨찾기에 추가하거나 삭제합니다';
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
	@override String get readUserGroups => '사용자 그룹 보기';
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
	@override String get readAdminAbuseUserReports => '사용자 신고 보기';
	@override String get writeAdminDeleteAccount => '사용자 계정 삭제하기';
	@override String get writeAdminDeleteAllFilesOfAUser => '모든 사용자 파일 삭제하기';
	@override String get readAdminIndexStats => '데이터베이스 색인 정보 보기';
	@override String get readAdminTableStats => '데이터베이스 테이블 정보 보기';
	@override String get readAdminUserIps => '사용자 IP 주소 보기';
	@override String get readAdminMeta => '인스턴스 메타데이터 보기';
	@override String get writeAdminResetPassword => '사용자 비밀번호 재설정하기';
	@override String get writeAdminResolveAbuseUserReport => '사용자 신고 처리하기';
	@override String get writeAdminSendEmail => '이메일 보내기';
	@override String get readAdminServerInfo => '서버 정보 보기';
	@override String get readAdminShowModerationLog => '조정 기록 보기';
	@override String get readAdminShowUser => '사용자 개인정보 보기';
	@override String get writeAdminSuspendUser => '사용자 정지하기';
	@override String get writeAdminUnsetUserAvatar => '사용자 아바타 삭제하기';
	@override String get writeAdminUnsetUserBanner => '사용자 배너 삭제하기';
	@override String get writeAdminUnsuspendUser => '사용자 정지 해제하기';
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
	@override String get writeAdminAccount => '사용자 계정 수정하기';
	@override String get readAdminAccount => '사용자 정보 보기';
	@override String get writeAdminEmoji => '이모지 수정하기';
	@override String get readAdminEmoji => '이모지 보기';
	@override String get writeAdminQueue => '작업 대기열 수정하기';
	@override String get readAdminQueue => '작업 대기열 정보 보기';
	@override String get writeAdminPromo => '홍보 기록 수정하기';
	@override String get writeAdminDrive => '사용자 드라이브 수정하기';
	@override String get readAdminDrive => '사용자 드라이브 정보 보기';
	@override String get readAdminStream => '관리자용 Websocket API 사용하기';
	@override String get writeAdminAd => '광고 수정하기';
	@override String get readAdminAd => '광고 보기';
	@override String get writeInviteCodes => '초대 코드 만들기';
	@override String get readInviteCodes => '초대 코드 불러오기';
	@override String get writeClipFavorite => '클립의 좋아요 수정하기';
	@override String get readClipFavorite => '클립의 좋아요 보기';
	@override String get readFederation => '연합 정보 불러오기';
	@override String get writeReportAbuse => '위반 내용 신고하기';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthKoKr extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
	@override String get scopeUser => '다음 사용자로 활동하고 있습니다.';
	@override String get pleaseLogin => '어플리케이션의 접근을 허가하려면 로그인하십시오.';
	@override String get byClickingYouWillBeRedirectedToThisUrl => '접근을 허용하면 자동으로 다음 URL로 이동합니다.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesKoKr extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get all => '모든 노트';
	@override String get homeTimeline => '팔로우중인 유저의 노트';
	@override String get users => '지정한 유저의 노트';
	@override String get userList => '지정한 리스트에 속한 유저의 노트';
	@override String get userBlacklist => '지정한 유저를 제외한 모든 노트';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayKoKr extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyWidgetsKoKr extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
	@override String get activity => '활동';
	@override String get photos => '사진';
	@override String get digitalClock => '디지털 시계';
	@override String get unixClock => 'UNIX 시계';
	@override String get federation => '연합';
	@override String get instanceCloud => '서버 구름';
	@override String get postForm => '글 입력란';
	@override String get slideshow => '슬라이드 쇼';
	@override String get button => '버튼';
	@override String get onlineUsers => '온라인 사용자';
	@override String get jobQueue => '작업 대기열';
	@override String get serverMetric => '서버 통계';
	@override String get aiscript => 'AiScript 콘솔';
	@override String get aiscriptApp => 'AiScript 앱';
	@override String get aichan => '아이';
	@override String get userList => '유저 리스트';
	@override late final _TranslationsMisskeyWidgetsUserListKoKr userList_ = _TranslationsMisskeyWidgetsUserListKoKr._(_root);
	@override String get clicker => '클리커';
	@override String get birthdayFollowings => '오늘이 생일인 사용자';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwKoKr extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get hide => '숨기기';
	@override String get show => '더 보기';
	@override String chars({required Object count}) => '${count} 문자';
	@override String files({required Object count}) => '${count} 파일';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollKoKr extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyVisibilityKoKr extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get public => '공개';
	@override String get publicDescription => '모든 유저에게 공개';
	@override String get home => '홈';
	@override String get homeDescription => '홈 타임라인에만 공개';
	@override String get followers => '팔로워';
	@override String get followersDescription => '팔로워에게만 공개';
	@override String get specified => '다이렉트';
	@override String get specifiedDescription => '지정한 유저에게만 공개';
	@override String get disableFederation => '연합에 보내지 않기';
	@override String get disableFederationDescription => '다른 서버로 보내지 않습니다';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormKoKr extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => '이 노트에 답글...';
	@override String get quotePlaceholder => '이 노트를 인용...';
	@override String get channelPlaceholder => '채널에 게시하기...';
	@override late final _TranslationsMisskeyPostFormPlaceholdersKoKr placeholders_ = _TranslationsMisskeyPostFormPlaceholdersKoKr._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileKoKr extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get name => '이름';
	@override String get username => '사용자 이름';
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
class _TranslationsMisskeyExportOrImportKoKr extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get allNotes => '모든 노트';
	@override String get favoritedNotes => '즐겨찾기한 노트';
	@override String get clips => '클립';
	@override String get followingList => '팔로잉';
	@override String get muteList => '뮤트';
	@override String get blockingList => '차단';
	@override String get userLists => '리스트';
	@override String get excludeMutingUsers => '뮤트한 유저 제외하기';
	@override String get excludeInactiveUsers => '휴면 중인 계정 제외하기';
	@override String get withReplies => '가져오기한 유저에 의한 답글을 타임라인에 포함';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsKoKr extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get federation => '연합';
	@override String get apRequest => '요청';
	@override String get usersIncDec => '유저 수 증감';
	@override String get usersTotal => '유저 수 합계';
	@override String get activeUsers => '활동 사용자 수';
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
class _TranslationsMisskeyInstanceChartsKoKr extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get requests => '요청';
	@override String get users => '사용자 수 차이';
	@override String get usersTotal => '누적 사용자 수';
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
class _TranslationsMisskeyTimelinesKoKr extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get home => '홈';
	@override String get local => '로컬';
	@override String get social => '소셜';
	@override String get global => '글로벌';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayKoKr extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Play 만들기';
	@override String get edit => 'Play 수정하기';
	@override String get created => 'Play를 생성했습니다';
	@override String get updated => 'Play를 갱신했습니다';
	@override String get deleted => 'Play를 삭제했습니다';
	@override String get pageSetting => 'Play 설정';
	@override String get editThisPage => '이 Play를 수정';
	@override String get viewSource => '소스 보기';
	@override String get my => '나의 Play';
	@override String get liked => '좋아요 한 Play';
	@override String get featured => '인기';
	@override String get title => '제목';
	@override String get script => '스크립트';
	@override String get summary => '설명';
	@override String get visibilityDescription => '비공개로 설정하면 프로필에 표시하지 않지만 URL을 아는 사람은 계속해서 접속할 수 있습니다.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesKoKr extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get newPage => '페이지 만들기';
	@override String get editPage => '페이지 수정';
	@override String get readPage => '소스 표시 중';
	@override String get created => '페이지를 만들었습니다';
	@override String get updated => '페이지를 수정했습니다';
	@override String get deleted => '페이지가 삭제되었습니다';
	@override String get pageSetting => '페이지 설정';
	@override String get nameAlreadyExists => '지정한 페이지 URL이 이미 존재합니다';
	@override String get invalidNameTitle => '유효하지 않은 페이지 URL입니다';
	@override String get invalidNameText => '비어있는지 확인해 주세요';
	@override String get editThisPage => '이 페이지를 편집';
	@override String get viewSource => '소스 보기';
	@override String get viewPage => '페이지 보기';
	@override String get like => '좋아요';
	@override String get unlike => '좋아요 해제';
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
	@override late final _TranslationsMisskeyPagesBlocksKoKr blocks = _TranslationsMisskeyPagesBlocksKoKr._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusKoKr extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get requesting => '대기 중';
	@override String get accepted => '승인됨';
	@override String get rejected => '거절됨';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationKoKr extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => '파일이 업로드되었습니다';
	@override String youGotMention({required Object name}) => '${name}님이 멘션함';
	@override String youGotReply({required Object name}) => '${name}님이 답글함';
	@override String youGotQuote({required Object name}) => '${name}님이 인용함';
	@override String youRenoted({required Object name}) => '${name}님이 리노트했습니다';
	@override String get youWereFollowed => '새로운 팔로워가 있습니다';
	@override String get youReceivedFollowRequest => '새로운 팔로우 요청이 있습니다';
	@override String get yourFollowRequestAccepted => '팔로우 요청이 수락되었습니다';
	@override String get pollEnded => '투표 결과가 발표되었습니다';
	@override String get newNote => '새 게시물';
	@override String unreadAntennaNote({required Object name}) => '안테나 ${name}';
	@override String get roleAssigned => '역할이 부여 되었습니다.';
	@override String get emptyPushNotificationMessage => '푸시 알림이 갱신되었습니다';
	@override String get achievementEarned => '도전 과제를 달성했습니다';
	@override String get testNotification => '알림 테스트';
	@override String get checkNotificationBehavior => '알림 표시를 체크하기';
	@override String get sendTestNotification => '테스트 알림 보내기';
	@override String get notificationWillBeDisplayedLikeThis => '알림이 이렇게 표시됩니다';
	@override String reactedBySomeUsers({required Object n}) => '${n}명이 반응했습니다';
	@override String likedBySomeUsers({required Object n}) => '${n}명이 좋아요를 했습니다';
	@override String renotedBySomeUsers({required Object n}) => '${n}명이 리노트했습니다';
	@override String followedBySomeUsers({required Object n}) => '${n}명에게 팔로우됨';
	@override String get flushNotification => '알림 이력을 초기화';
	@override String exportOfXCompleted({required Object x}) => '${x} 추출에 성공했습니다.';
	@override String get login => '로그인 알림이 있습니다';
	@override late final _TranslationsMisskeyNotificationTypesKoKr types_ = _TranslationsMisskeyNotificationTypesKoKr._(_root);
	@override late final _TranslationsMisskeyNotificationActionsKoKr actions_ = _TranslationsMisskeyNotificationActionsKoKr._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckKoKr extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => '메인 칼럼 항상 표시';
	@override String get columnAlign => '칼럼 정렬';
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
	@override late final _TranslationsMisskeyDeckColumnsKoKr columns_ = _TranslationsMisskeyDeckColumnsKoKr._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogKoKr extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => '최대 글자수를 초과하였습니다! 현재 ${current} / 최대 ${max}';
	@override String charactersBelow({required Object current, required Object min}) => '최소 글자수 미만입니다! 현재 ${current} / 최소 ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineKoKr extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '비활성화된 타임라인';
	@override String get description => '현재 역할에서는 이 타임라인을 이용할 수 없습니다.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerKoKr extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => '크기가 큰 순';
	@override String get orderByCreatedAtAsc => '등록일이 오래된 순';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsKoKr extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Webhook 생성';
	@override String get modifyWebhook => 'Webhook 수정';
	@override String get name => '이름';
	@override String get secret => '시크릿';
	@override String get trigger => '트리거';
	@override String get active => '활성화';
	@override late final _TranslationsMisskeyWebhookSettingsEventsKoKr events_ = _TranslationsMisskeyWebhookSettingsEventsKoKr._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsKoKr systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsKoKr._(_root);
	@override String get deleteConfirm => 'Webhook을 삭제할까요?';
	@override String get testRemarks => '스위치 오른쪽에 있는 버튼을 클릭하여 더미 데이터를 사용한 테스트용 웹 훅을 보낼 수 있습니다.';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportKoKr extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientKoKr notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientKoKr._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesKoKr extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get createRole => '역할 생성';
	@override String get deleteRole => '역할 삭제';
	@override String get updateRole => '역할 수정';
	@override String get assignRole => '역할 할당';
	@override String get unassignRole => '역할 해제';
	@override String get suspend => '정지';
	@override String get unsuspend => '정지 해제';
	@override String get addCustomEmoji => '커스텀 이모지 추가';
	@override String get updateCustomEmoji => '커스텀 이모지 수정';
	@override String get deleteCustomEmoji => '커스텀 이모지 삭제';
	@override String get updateServerSettings => '서버 설정 갱신';
	@override String get updateUserNote => '조정 기록 갱신';
	@override String get deleteDriveFile => '파일 삭제';
	@override String get deleteNote => '노트 삭제';
	@override String get createGlobalAnnouncement => '전역 공지사항 생성';
	@override String get createUserAnnouncement => '사용자 공지사항 만들기';
	@override String get updateGlobalAnnouncement => '모든 공지사항 수정';
	@override String get updateUserAnnouncement => '사용자 공지사항 수정';
	@override String get deleteGlobalAnnouncement => '모든 공지사항 삭제';
	@override String get deleteUserAnnouncement => '사용자 공지사항 삭제';
	@override String get resetPassword => '비밀번호 재설정';
	@override String get suspendRemoteInstance => '리모트 서버를 정지';
	@override String get unsuspendRemoteInstance => '리모트 서버의 정지를 해제';
	@override String get updateRemoteInstanceNote => '리모트 서버의 조정 기록 갱신';
	@override String get markSensitiveDriveFile => '파일에 열람주의를 설정';
	@override String get unmarkSensitiveDriveFile => '파일에 열람주의를 해제';
	@override String get resolveAbuseReport => '신고 처리';
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
	@override String get deleteGalleryPost => '갤러리 포스트를 삭제';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerKoKr extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '파일 상세';
	@override String get type => '파일 유형';
	@override String get size => '파일 크기';
	@override String get url => 'URL';
	@override String get uploadedAt => '업로드 날짜';
	@override String get attachedNotes => '첨부된 노트';
	@override String get thisPageCanBeSeenFromTheAuthor => '이 페이지는 파일 소유자만 열람할 수 있습니다';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerKoKr extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '외부 사이트로부터 설치';
	@override String get checkVendorBeforeInstall => '제공자를 신뢰할 수 있는 경우에만 설치하십시오.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginKoKr plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeKoKr theme_ = _TranslationsMisskeyExternalResourceInstallerThemeKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaKoKr meta_ = _TranslationsMisskeyExternalResourceInstallerMetaKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoKoKr vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsKoKr errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsKoKr._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverKoKr extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaKoKr media_ = _TranslationsMisskeyDataSaverMediaKoKr._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarKoKr avatar_ = _TranslationsMisskeyDataSaverAvatarKoKr._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewKoKr urlPreview_ = _TranslationsMisskeyDataSaverUrlPreviewKoKr._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeKoKr code_ = _TranslationsMisskeyDataSaverCodeKoKr._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereKoKr extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get N => '북반구';
	@override String get S => '남반구';
	@override String get caption => '일부 클라이언트 설정에서 계절을 판단하려고 사용합니다.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiKoKr extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get reversi => '리버시';
	@override String get gameSettings => '대국 설정';
	@override String get chooseBoard => '보드 선택';
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
	@override String get black => '흑';
	@override String get white => '백';
	@override String get total => '합계';
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
class _TranslationsMisskeyOfflineScreenKoKr extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '오프라인 - 서버에 접속할 수 없습니다';
	@override String get header => '서버에 접속할 수 없습니다';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingKoKr extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL 미리보기 설정';
	@override String get enable => 'URL 미리보기 활성화';
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
class _TranslationsMisskeyMediaControlsKoKr extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get pip => '화면 속 화면';
	@override String get playbackRate => '재생 속도';
	@override String get loop => '반복 재생';
}

// Path: misskey.contextMenu_
class _TranslationsMisskeyContextMenuKoKr extends TranslationsMisskeyContextMenuEnUs {
	_TranslationsMisskeyContextMenuKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '컨텍스트 메뉴';
	@override String get app => '애플리케이션';
	@override String get appWithShift => 'Shift 키로 애플리케이션';
	@override String get native => '브라우저의 UI';
}

// Path: misskey.embedCodeGen_
class _TranslationsMisskeyEmbedCodeGenKoKr extends TranslationsMisskeyEmbedCodeGenEnUs {
	_TranslationsMisskeyEmbedCodeGenKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeySelfXssPreventionKoKr extends TranslationsMisskeySelfXssPreventionEnUs {
	_TranslationsMisskeySelfXssPreventionKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get warning => '경고';
	@override String get title => '“이 화면에 뭔가를 붙여넣어라"는 것은 모두 사기입니다.';
	@override String get description1 => '여기에 무언가를 붙여넣으면 악의적인 사용자에게 계정을 탈취당하거나 개인정보를 도용당할 수 있습니다.';
	@override String get description2 => '붙여 넣으려는 항목이 무엇인지 정확히 이해하지 못하는 경우, %c지금 바로 작업을 중단하고 이 창을 닫으십시오.';
	@override String description3({required Object link}) => '자세한 내용은 여기를 확인해 주세요.  ${link}';
}

// Path: misskey.followRequest_
class _TranslationsMisskeyFollowRequestKoKr extends TranslationsMisskeyFollowRequestEnUs {
	_TranslationsMisskeyFollowRequestKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get recieved => '받은 신청';
	@override String get sent => '보낸 신청';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsKoKr extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoKr federationNotAllowed_ = _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoKr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUriInvalidKoKr uriInvalid_ = _TranslationsMisskeyRemoteLookupErrorsUriInvalidKoKr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRequestFailedKoKr requestFailed_ = _TranslationsMisskeyRemoteLookupErrorsRequestFailedKoKr._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoKr noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoKr._(_root);
}

// Path: misskeyIO.skebStatus_
class _TranslationsMisskeyIOSkebStatusKoKr extends TranslationsMisskeyIOSkebStatusEnUs {
	_TranslationsMisskeyIOSkebStatusKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyIOSkebStatusGenresKoKr genres_ = _TranslationsMisskeyIOSkebStatusGenresKoKr._(_root);
	@override String get seeking => '모집 중';
	@override String get stopped => '정지 중';
	@override String get client => '클라이언트';
	@override String yenX({required Object x}) => 'JPY ${x}';
	@override String nWorks({required Object n}) => '납품 실적 ${n}건';
	@override String nRequests({required Object n}) => '거래 실적 ${n}건';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeKoKr extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get none => '배포 중';
	@override String get manuallySuspended => '수동 정지 중';
	@override String get goneSuspended => '서버 삭제를 이유로 정지 중';
	@override String get autoSuspendedForNotResponding => '서버 응답 없음을 이유로 정지 중';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreKoKr extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyBubbleGameHowToPlayKoKr extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get section1 => '위치를 조정하여 상자에 물건을 떨어뜨립니다.';
	@override String get section2 => '같은 종류의 물건이 붙으면 다른 물건으로 바뀌면서 점수를 얻게 됩니다.';
	@override String get section3 => '상자에서 물건이 넘치면 게임 오버입니다. 상자에서 물건이 넘치지 않도록 하면서 물건을 융합하여 높은 점수를 획득하세요!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingKoKr extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '튜토리얼에 오신 걸 환영합니다';
	@override String get description => '여기서는 미스키의 기본적인 사용법이나 기능을 확인할 수 있습니다.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteKoKr extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '\'노트\'가 무엇인가요?';
	@override String get description => '미스키에서는 게시물을 \'노트\'라고 합니다. 노트는 타임라인에 시간순으로 정렬되어 있고, 실시간으로 갱신됩니다.';
	@override String get reply => '답글을 달 수 있습니다. 답글에 답글을 달 수도 있고 글타래처럼 대화를 이어갈 수도 있습니다.';
	@override String get renote => '그 노트를 자기 타임라인에 가져와서 공유하는 것이 가능합니다. 글을 추가해서 인용하는 것도 가능합니다.';
	@override String get reaction => '리액션을 다는 것이 가능합니다. 다음 페이지에서 자세한 설명을 볼 수 있습니다.';
	@override String get menu => '노트의 상세 정보를 표시하거나, 링크를 복사하는 등의 다양한 조작을 할 수 있습니다.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionKoKr extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '\'리액션\'이 무엇인가요?';
	@override String get description => '노트에 \'리액션\'을 보낼 수 있습니다. \'좋아요\'만으로는 충분히 전해지지 않는 감정을, 이모지에 실어서 가볍게 보낼 수 있습니다.';
	@override String get letsTryReacting => '리액션은 노트의 \'+\' 버튼을 클릭하여 붙일 수 있습니다. 지금 표시되는 샘플 노트에 리액션을 달아 보세요!';
	@override String get reactToContinue => '다음으로 진행하려면 리액션을 보내세요.';
	@override String get reactNotification => '누군가가 나의 노트에 리액션을 보내면 실시간으로 알림을 받게 됩니다.';
	@override String get reactDone => '\'-\' 버튼을 눌러서 리액션을 취소할 수 있습니다.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineKoKr extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteKoKr extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 게시 설정';
	@override String get description1 => 'Misskey에 노트를 쓸 때에는 다양한 옵션을 설정할 수 있습니다. 노트를 작성하는 화면은 이렇게 생겼습니다.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityKoKr visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityKoKr._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwKoKr cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwKoKr._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoKr extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '첨부 파일을 열람주의로 설정하려면?';
	@override String get description => '서버의 가이드라인에 따라 필요한 이미지, 또는 그대로 노출되기에 부적절한 미디어는 \'열람 주의\'를 설정해 주세요.';
	@override String get tryThisFile => '이 작성 창에 첨부된 이미지를 열람 주의로 설정해 보세요!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoKr exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoKr._(_root);
	@override String get method => '첨부 파일을 열람 주의로 설정하려면, 해당 파일을 클릭하여 메뉴를 열고, \'열람주의로 설정\'을 클릭합니다.';
	@override String get sensitiveSucceeded => '파일을 첨부할 때에는 서버의 가이드라인에 따라 적절히 열람주의를 설정해 주시기 바랍니다.';
	@override String get doItToContinue => '이미지를 열람 주의로 설정하면 다음으로 넘어갈 수 있게 됩니다.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneKoKr extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '튜토리얼이 끝났습니다! 🎉';
	@override String description({required Object link}) => '여기에서 소개한 기능은 극히 일부에 지나지 않습니다. Misskey의 사용 방법을 더 자세히 알아보려면 ${link}를 확인해 주세요!';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesKoKr extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1KoKr notes1_ = _TranslationsMisskeyAchievementsTypesNotes1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10KoKr notes10_ = _TranslationsMisskeyAchievementsTypesNotes10KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100KoKr notes100_ = _TranslationsMisskeyAchievementsTypesNotes100KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500KoKr notes500_ = _TranslationsMisskeyAchievementsTypesNotes500KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000KoKr notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000KoKr notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000KoKr notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000KoKr notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000KoKr notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000KoKr notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000KoKr notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000KoKr notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000KoKr notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000KoKr notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000KoKr notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000KoKr notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3KoKr login3_ = _TranslationsMisskeyAchievementsTypesLogin3KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7KoKr login7_ = _TranslationsMisskeyAchievementsTypesLogin7KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15KoKr login15_ = _TranslationsMisskeyAchievementsTypesLogin15KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30KoKr login30_ = _TranslationsMisskeyAchievementsTypesLogin30KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60KoKr login60_ = _TranslationsMisskeyAchievementsTypesLogin60KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100KoKr login100_ = _TranslationsMisskeyAchievementsTypesLogin100KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200KoKr login200_ = _TranslationsMisskeyAchievementsTypesLogin200KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300KoKr login300_ = _TranslationsMisskeyAchievementsTypesLogin300KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400KoKr login400_ = _TranslationsMisskeyAchievementsTypesLogin400KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500KoKr login500_ = _TranslationsMisskeyAchievementsTypesLogin500KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600KoKr login600_ = _TranslationsMisskeyAchievementsTypesLogin600KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700KoKr login700_ = _TranslationsMisskeyAchievementsTypesLogin700KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800KoKr login800_ = _TranslationsMisskeyAchievementsTypesLogin800KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900KoKr login900_ = _TranslationsMisskeyAchievementsTypesLogin900KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000KoKr login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1KoKr noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1KoKr noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoKr myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledKoKr profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatKoKr markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1KoKr following1_ = _TranslationsMisskeyAchievementsTypesFollowing1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10KoKr following10_ = _TranslationsMisskeyAchievementsTypesFollowing10KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50KoKr following50_ = _TranslationsMisskeyAchievementsTypesFollowing50KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100KoKr following100_ = _TranslationsMisskeyAchievementsTypesFollowing100KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300KoKr following300_ = _TranslationsMisskeyAchievementsTypesFollowing300KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1KoKr followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10KoKr followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50KoKr followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100KoKr followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300KoKr followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500KoKr followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000KoKr followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30KoKr collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minKoKr viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyKoKr iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureKoKr foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minKoKr client30min_ = _TranslationsMisskeyAchievementsTypesClient30minKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minKoKr client60min_ = _TranslationsMisskeyAchievementsTypesClient60minKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoKr noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightKoKr postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secKoKr postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteKoKr selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmKoKr htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartKoKr viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoKr outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsKoKr open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoKr driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadKoKr reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereKoKr clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyKoKr justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoKr setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoKr passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoKr passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoKr passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoKr loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoKr loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedKoKr cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverKoKr brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoKr smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedKoKr tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoKr bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoKr._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoKr bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoKr._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityKoKr extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get low => '낮음';
	@override String get middle => '보통';
	@override String get high => '높음';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsKoKr extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
	@override String get alwaysMarkNsfw => '파일을 항상 NSFW로 지정';
	@override String get canUpdateBioMedia => '아바타 및 배너 이미지 변경 허용';
	@override String get pinMax => '고정할 수 있는 노트 수';
	@override String get antennaMax => '만들 수 있는 안테나 수';
	@override String get wordMuteMax => '단어 뮤트할 수 있는 문자 수';
	@override String get webhookMax => '만들 수 있는 Webhook 수';
	@override String get clipMax => '만들 수 있는 클립 수';
	@override String get noteEachClipsMax => '클립에 넣을 수 있는 노트 수';
	@override String get userListMax => '만들 수 있는 사용자 리스트 수';
	@override String get userEachUserListsMax => '사용자 리스트에 넣을 수 있는 사용자 수';
	@override String get rateLimitFactor => '요청 빈도 제한';
	@override String get descriptionOfRateLimitFactor => '작을수록 제한이 완화되고, 클수록 제한이 강화됩니다.';
	@override String get canHideAds => '광고 숨기기';
	@override String get canSearchNotes => '노트 검색 이용 가능 여부';
	@override String get canUseTranslator => '번역 기능의 사용';
	@override String get avatarDecorationLimit => '아바타 장식의 최대 붙임 개수';
	@override String get canImportAntennas => '안테나 가져오기 허용';
	@override String get canImportBlocking => '차단 목록 가져오기 허용';
	@override String get canImportFollowing => '팔로우 가져오기 허용';
	@override String get canImportMuting => '뮤트 목록 가져오기 허용';
	@override String get canImportUserLists => '리스트 목록 가져오기 허용';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionKoKr extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => '수동 역할에 이미 할당됨';
	@override String get isLocal => '로컬 사용자';
	@override String get isRemote => '원격 사용자';
	@override String get isCat => '고양이 사용자';
	@override String get isBot => '봇 사용자';
	@override String get isSuspended => '정지된 사용자';
	@override String get isLocked => '잠금 계정 사용자';
	@override String get isExplorable => '‘계정을 쉽게 발견하도록 하기’를 활성화한 사용자';
	@override String get createdLessThan => '가입한 지 다음 일수 이내인 유저';
	@override String get createdMoreThan => '가입한 지 다음 일수 이상인 유저';
	@override String get followersLessThanOrEq => '팔로워 수가 다음 이하인 유저';
	@override String get followersMoreThanOrEq => '팔로워 수가 다음보다 많은 사용자';
	@override String get followingLessThanOrEq => '팔로잉 수가 다음 이하인 유저';
	@override String get followingMoreThanOrEq => '팔로잉 수가 다음보다 많은 사용자';
	@override String get notesLessThanOrEq => '노트 수가 다음 이하인 유저';
	@override String get notesMoreThanOrEq => '노트 수가 다음보다 많은 사용자';
	@override String get and => '다음을 모두 만족';
	@override String get or => '다음을 하나라도 만족';
	@override String get not => '다음을 만족하지 않음';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowKoKr extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '새로운 팔로워가 있습니다';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestKoKr extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '팔로우 요청을 받았습니다';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysKoKr extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
	@override String get navHoverFg => '사이드바 텍스트 (호버)';
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
	@override String get driveFolderBg => '드라이브 폴더 배경';
	@override String get wallpaperOverlay => '배경화면 오버레이';
	@override String get badge => '배지';
	@override String get messageBg => '대화 배경';
	@override String get accentDarken => '강조 색상 (어두움)';
	@override String get accentLighten => '강조 색상 (밝음)';
	@override String get fgHighlighted => '강조된 텍스트';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListKoKr extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get chooseList => '리스트 선택';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersKoKr extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get a => '지금 무엇을 하고 있나요?';
	@override String get b => '무슨 일이 일어나고 있나요?';
	@override String get c => '무엇을 생각하고 있나요?';
	@override String get d => '말하고 싶은 게 있나요?';
	@override String get e => '여기에 적어 주세요';
	@override String get f => '작성해주시길 기다리고 있어요...';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksKoKr extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get text => '텍스트';
	@override String get textarea => '텍스트 영역';
	@override String get section => '섹션';
	@override String get image => '이미지';
	@override String get button => '버튼';
	@override String get dynamic => '동적 블록';
	@override String dynamicDescription({required Object play}) => '이 블록은 폐지되었습니다. 이제부터 ${play}에서 이용해 주세요.';
	@override String get note => '노트필기';
	@override late final _TranslationsMisskeyPagesBlocksNoteKoKr note_ = _TranslationsMisskeyPagesBlocksNoteKoKr._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesKoKr extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get all => '전부';
	@override String get note => '사용자의 새 글';
	@override String get follow => '팔로잉';
	@override String get mention => '멘션';
	@override String get reply => '답글';
	@override String get renote => '리노트';
	@override String get quote => '인용';
	@override String get reaction => '반응';
	@override String get pollEnded => '투표가 종료됨';
	@override String get receiveFollowRequest => '팔로우 요청을 받았을 때';
	@override String get followRequestAccepted => '팔로우 요청이 승인되었을 때';
	@override String get roleAssigned => '역할이 부여 됨';
	@override String get achievementEarned => '도전 과제 획득';
	@override String get exportCompleted => '추출을 성공함';
	@override String get login => '로그인';
	@override String get test => '알림 테스트';
	@override String get app => '연동된 앱을 통한 알림';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsKoKr extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get followBack => '팔로우';
	@override String get reply => '답글';
	@override String get renote => '리노트';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsKoKr extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get main => '메인';
	@override String get widgets => '위젯';
	@override String get notifications => '알림';
	@override String get tl => '타임라인';
	@override String get antenna => '안테나';
	@override String get list => '리스트';
	@override String get channel => '채널';
	@override String get mentions => '받은 멘션';
	@override String get direct => '다이렉트';
	@override String get roleTimeline => '역할 타임라인';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsKoKr extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyWebhookSettingsSystemEventsKoKr extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => '유저로부터 신고를 받았을 때';
	@override String get abuseReportResolved => '받은 신고를 처리했을 때';
	@override String get userCreated => '유저가 생성되었을 때';
	@override String get inactiveModeratorsWarning => '모더레이터가 일정 기간동안 활동하지 않은 경우';
	@override String get inactiveModeratorsInvitationOnlyChanged => '모더레이터가 일정 기간 활동하지 않아 시스템에 의해 초대제로 바뀐 경우';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientKoKr extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get createRecipient => '신고 수신자 추가';
	@override String get modifyRecipient => '신고 수신자 편집';
	@override String get recipientType => '알림 종류';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoKr recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoKr._(_root);
	@override String get keywords => '키워드';
	@override String get notifiedUser => '알릴 사용자';
	@override String get notifiedWebhook => '사용할 Webhook';
	@override String get deleteConfirm => '수신자를 삭제하시겠습니까?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginKoKr extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '이 플러그인을 설치하시겠습니까?';
	@override String get metaTitle => '플러그인 정보';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeKoKr extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '이 테마를 설치하시겠습니까?';
	@override String get metaTitle => '테마 정보';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaKoKr extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get base => '기본 컬러 스키마';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoKoKr extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '제공자 정보';
	@override String get endpoint => '참조한 엔드포인트';
	@override String get hashVerify => '파일 무결성 확인';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoKr invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoKr resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoKr failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoKr hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoKr pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoKr pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoKr themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoKr._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoKr themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoKr._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaKoKr extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '미디어 불러오기';
	@override String get description => '사진이나 동영상을 자동으로 불러오지 않습니다. 숨겨 놓은 사진이나 동영상은 누르면 불러옵니다.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarKoKr extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '아이콘 이미지';
	@override String get description => '아이콘 이미지의 애니메이션을 멈춥니다. 애니메이션 이미지는 일반 이미지보다 파일 크기가 클 수 있으므로 데이터 사용량을 더 줄일 수 있습니다.';
}

// Path: misskey.dataSaver_.urlPreview_
class _TranslationsMisskeyDataSaverUrlPreviewKoKr extends TranslationsMisskeyDataSaverUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URL 미리보기의 섬네일';
	@override String get description => 'URL 미리보기의 섬네일 이미지를 불러오지 않게 됩니다.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeKoKr extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '문자열 강조';
	@override String get description => 'MFM 등으로 문자열 강조 기법을 사용할 때 누르기 전에는 불러오지 않습니다. 문자열 강조에서는 강조할 언어마다 그 정의 파일을 불러와야 하지만 이를 자동으로 불러오지 않으므로 데이터 사용량을 줄일 수 있습니다.';
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class _TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoKr extends TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '이 서버와 통신할 수 없음';
	@override String get description => '이 서버와의 통신이 비활성화 되었거나, 이 서버를 차단 중이거나 서버에게 차단되었을 수 있습니다.\n서버 관리자에게 문의하세요.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class _TranslationsMisskeyRemoteLookupErrorsUriInvalidKoKr extends TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUriInvalidKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'URI가 잘못되었습니다.';
	@override String get description => '입력한 URI에 문제가 있습니다. URI에 쓸 수 없는 문자를 넣었는지 확인해보세요.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class _TranslationsMisskeyRemoteLookupErrorsRequestFailedKoKr extends TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRequestFailedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '요청을 실패했습니다.';
	@override String get description => '해당 서버와 통신을 실패했습니다. 상대방 서버에 접속 불가능한 상태일 수도 있습니다. 또는 잘못된 URI 또는 없는 URI를 입력했는지 확인해보세요.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoKr extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '찾을 수 없습니다';
}

// Path: misskeyIO.skebStatus_.genres_
class _TranslationsMisskeyIOSkebStatusGenresKoKr extends TranslationsMisskeyIOSkebStatusGenresEnUs {
	_TranslationsMisskeyIOSkebStatusGenresKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityKoKr extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

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
class _TranslationsMisskeyInitialTutorialPostNoteCwKoKr extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '내용 가리기 (CW)';
	@override String get description => '본문 대신에 \'내용에 대한 주석\'에 입력한 텍스트가 먼저 표시됩니다. \'더 보기\' 버튼을 누르면 본문이 표시됩니다.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoKr exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoKr._(_root);
	@override String get useCases => '서버의 가이드라인에 따라 특정 주제를 다룰 때에 사용하거나, 스포일러 및 민감한 화제를 다룰 때에 자율적으로 사용하기도 합니다.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoKr extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get note => '낫또 뚜껑 뜯다가 실수했다…';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1KoKr extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키 계정 만들었어요';
	@override String get description => '첫 노트를 작성했습니다';
	@override String get flavor => 'Misskey에 어서 오세요!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10KoKr extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '몇 가지 노트';
	@override String get description => '10개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100KoKr extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '많은 노트';
	@override String get description => '100개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500KoKr extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 범벅';
	@override String get description => '500개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000KoKr extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트가 산더미';
	@override String get description => '1,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000KoKr extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '솟아나는 노트';
	@override String get description => '5,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000KoKr extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '슈퍼 노트';
	@override String get description => '10,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000KoKr extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트가 필요해요';
	@override String get description => '20,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000KoKr extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트노트노트';
	@override String get description => '30,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000KoKr extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 공장';
	@override String get description => '40,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000KoKr extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 행성';
	@override String get description => '50,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000KoKr extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 퀘이사';
	@override String get description => '60,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000KoKr extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 블랙홀';
	@override String get description => '70,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000KoKr extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 은하';
	@override String get description => '80,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000KoKr extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 우주';
	@override String get description => '90,000개의 노트를 작성했습니다';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000KoKr extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100,000개의 노트를 작성했습니다';
	@override String get flavor => '이렇게나 쓸 게 있어요?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3KoKr extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '초보자 I';
	@override String get description => '총 로그인한 날이 3일';
	@override String get flavor => '오늘부터 여러분도 미스키스트랍니다';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7KoKr extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '초보자 II';
	@override String get description => '총 로그인한 날이 7일';
	@override String get flavor => '슬슬 익숙해지셨나요?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15KoKr extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '초보자 III';
	@override String get description => '총 로그인한 날이 15일';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30KoKr extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키스트 I';
	@override String get description => '총 로그인한 날이 30일';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60KoKr extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키스트 II';
	@override String get description => '총 로그인한 날이 60일';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100KoKr extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '미스키스트 III';
	@override String get description => '총 로그인한 날이 100일';
	@override String get flavor => '그 유저, 미스키스트이다';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200KoKr extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '단골 I';
	@override String get description => '총 200일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300KoKr extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '단골 II';
	@override String get description => '총 300일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400KoKr extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '단골 III';
	@override String get description => '총 400일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500KoKr extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '베테랑 I';
	@override String get description => '총 500일간 로그인했습니다';
	@override String get flavor => '제군, 나는 노트가 좋다';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600KoKr extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '베테랑 II';
	@override String get description => '총 600일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700KoKr extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '베테랑 III';
	@override String get description => '총 700일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800KoKr extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 마스터 I';
	@override String get description => '총 800일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900KoKr extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 마스터 II';
	@override String get description => '총 900일간 로그인했습니다';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000KoKr extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '노트 마스터 III';
	@override String get description => '총 1,000일간 로그인했습니다';
	@override String get flavor => 'Misskey를 사용해 주셔서 감사합니다!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1KoKr extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '클립할 수밖에 없었어';
	@override String get description => '처음으로 노트를 클립했습니다';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1KoKr extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '별을 바라보는 자';
	@override String get description => '처음으로 노트를 즐겨찾기했습니다';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoKr extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '별을 원하는 자';
	@override String get description => '다른 사람이 당신의 노트를 즐겨찾기했습니다';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledKoKr extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '준비 완료';
	@override String get description => '프로필 설정을 완료했습니다';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatKoKr extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '나는 고양이다냥!';
	@override String get description => '계정을 고양이로 설정했습니다냥';
	@override String get flavor => '냐냐냐냐냐냐아아아아앙!';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1KoKr extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '첫 팔로우';
	@override String get description => '사용자를 처음으로 팔로우했습니다';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10KoKr extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '팔로우, 팔로우';
	@override String get description => '10명의 사용자를 팔로우했습니다';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50KoKr extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '친구 잔뜩';
	@override String get description => '50명의 사용자를 팔로우했습니다';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100KoKr extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '주소록 한 권으론 부족해';
	@override String get description => '100명의 사용자를 팔로우했습니다';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300KoKr extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '친구가 넘쳐나';
	@override String get description => '300명의 사용자를 팔로우했습니다';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1KoKr extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '첫 팔로워';
	@override String get description => '사용자가 처음으로 팔로잉했습니다';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10KoKr extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '팔로우 미!';
	@override String get description => '10명의 사용자가 팔로우했습니다';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50KoKr extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '이곳저곳';
	@override String get description => '50명의 사용자가 팔로우했습니다';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100KoKr extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '인기왕';
	@override String get description => '100명의 사용자가 팔로우했습니다';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300KoKr extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '줄 좀 서봐요';
	@override String get description => '100명의 사용자가 팔로우했습니다';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500KoKr extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '기지국';
	@override String get description => '500명의 사용자가 팔로우했습니다';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000KoKr extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '유명인사';
	@override String get description => '1,000명의 사용자가 팔로우했습니다';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30KoKr extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '도전 과제 콜렉터';
	@override String get description => '30개의 도전과제를 획득했습니다';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minKoKr extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '저 도전과제 좋아해요';
	@override String get description => '도전 과제 목록을 3분 이상 쳐다봤습니다';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyKoKr extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => '"I ❤ #Misskey"를 포스트했습니다';
	@override String get flavor => 'Misskey를 이용해 주셔서 감사합니다! ― 개발 팀';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureKoKr extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '보물찾기';
	@override String get description => '숨겨진 보물을 발견했습니다';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minKoKr extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '잠시 쉬어요';
	@override String get description => '클라이언트를 시작하고 30분이 경과하였습니다';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minKoKr extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'No "Miss" in Misskey';
	@override String get description => '클라이언트를 시작하고 60분이 경과하였습니다';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoKr extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '있었는데요 없었습니다';
	@override String get description => '노트를 포스트한 후 1분 이내에 삭제했습니다';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightKoKr extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '올빼미';
	@override String get description => '한밤중에 노트를 포스트했습니다';
	@override String get flavor => '잠 좀 자세요. 걱정돼요.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secKoKr extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '정각';
	@override String get description => '0분 0초 정각에 노트를 작성했습니다';
	@override String get flavor => '째깍 째깍 째깍 땡!';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteKoKr extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '혼잣말';
	@override String get description => '자기 노트를 인용했습니다';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmKoKr extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '타임라인 폭주 중';
	@override String get description => '1분 사이에 홈 타임라인에 노트가 20개 넘게 생성되었습니다';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartKoKr extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '애널리스트';
	@override String get description => '서버의 차트를 열었습니다';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoKr extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => '스크래치패드에서 hello world를 출력했습니다';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsKoKr extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '멀티 윈도우';
	@override String get description => '3개 이상의 창을 열었습니다';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoKr extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '순환 참조';
	@override String get description => '드라이브 폴더에 스스로를 넣게 했습니다';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadKoKr extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '읽고 답하긴 하시는 건가요?';
	@override String get description => '100자가 넘는 노트를 작성한 지 3초 안에 반응했어요';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereKoKr extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '여기를 누르세요';
	@override String get description => '여기를 눌렀습니다';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyKoKr extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '그냥 운이 좋았어';
	@override String get description => '매 10초마다 0.01%의 확률로 달성됩니다';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoKr extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '신 콤플렉스';
	@override String get description => '이름을 syuilo로 설정했습니다';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoKr extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '1주년';
	@override String get description => '계정을 생성하고 1년이 지났습니다';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoKr extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '2주년';
	@override String get description => '계정을 생성하고 2년이 지났습니다';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoKr extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3KoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '3주년';
	@override String get description => '계정을 생성하고 3년이 지났습니다';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoKr extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '생일 축하합니다!';
	@override String get description => '생일에 로그인했습니다';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoKr extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '새해 복 많이 받으세요';
	@override String get description => '새해 첫 날에 로그인했습니다';
	@override String get flavor => '올해에도 저희 서버에 관심을 가져 주셔서 감사합니다';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedKoKr extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '쿠키를 클릭하는 게임';
	@override String get description => '쿠키를 클릭했습니다';
	@override String get flavor => '소프트웨어 착각하지 않으셨나요?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverKoKr extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Brain Diver로의 링크를 첨부했습니다';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoKr extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '테스트 과잉';
	@override String get description => '매우 짧은 시간 안에 알림 테스트를 여러 번 수행했습니다';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedKoKr extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskey 입문자 과정 수료증';
	@override String get description => '튜토리얼을 완료했습니다';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoKr extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => '버블 게임에서 가장 큰 물건을 내놓았다';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoKr extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '더블 🤯';
	@override String get description => '버블게임에서 가장 큰 물건 2개를 동시에 내놓았다.';
	@override String get flavor => '이 정도만　도시락통에　🤯　🤯　조금만 더';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteKoKr extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get id => '노트 ID';
	@override String get idDescription => '노트 URL을 붙여넣어 설정할 수도 있습니다.';
	@override String get detailed => '세부 정보 보기';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoKr extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get mail => '이메일';
	@override String get webhook => 'Webhook';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoKr captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoKr._(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '파라미터가 부족합니다';
	@override String get description => '외부 사이트로부터 데이터를 불러오기 위해 필요한 정보가 부족합니다. URL을 다시 한 번 확인하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '해당하는 외부 리소스는 지원되지 않습니다.';
	@override String get description => '외부 사이트의 해당 리소스는 지원되지 않습니다. 사이트 관리자에게 문의하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터를 불러올 수 없습니다';
	@override String get fetchErrorDescription => '외부 사이트와의 통신에 실패하였습니다. 여러 번 시도해도 동일한 오류가 표시되는 경우 사이트 관리자에게 문의하십시오.';
	@override String get parseErrorDescription => '외부 사이트에서 불러온 데이터를 읽어들일 수 없습니다. 사이트 관리자에게 문의하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터가 올바르지 않습니다.';
	@override String get description => '데이터의 무결성 확인에 실패하여, 보안을 위해 설치가 중단되었습니다. 사이트 관리자에게 문의하십시오.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AiScript 오류';
	@override String get description => '데이터를 성공적으로 불러왔으나, AiScript 분석 과정에서 오류가 발생하여 읽어들일 수 없습니다. 플러그인 작성자에게 문의하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '플러그인 설치에 실패했습니다';
	@override String get description => '플러그인을 설치하는 도중 문제가 발생하였습니다. 다시 한 번 시도하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '테마 코드 분석 오류';
	@override String get description => '데이터를 성공적으로 불러왔으나, 테마 코드 분석 과정에서 오류가 발생하여 읽어들일 수 없습니다. 테마 작성자에게 문의하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoKr extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get title => '테마를 설치하지 못했습니다';
	@override String get description => '테마를 설치하는 도중 문제가 발생하였습니다. 다시 한 번 시도하십시오. 자세한 사항은 브라우저에 내장된 개발자 도구의 Javascript 콘솔에서 확인하실 수 있습니다.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoKr extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get cw => '배고픈 사람 주의';
	@override String get note => '방금 초코도넛을 먹었어요 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoKr extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsKoKr._(TranslationsKoKr root) : this._root = root, super.internal(root);

	final TranslationsKoKr _root; // ignore: unused_field

	// Translations
	@override String get mail => '모더레이터 권한을 가진 사용자의 이메일 주소에 알림을 보냅니다 (신고를 받은 때에만)';
	@override String get webhook => '지정한 SystemWebhook에 알림을 보냅니다 (신고를 받은 때와 해결했을 때에 송신)';
}
