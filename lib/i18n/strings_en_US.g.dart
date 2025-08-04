///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEnUs = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAriaEnUs aria = TranslationsAriaEnUs.internal(_root);
	late final TranslationsMisskeyEnUs misskey = TranslationsMisskeyEnUs.internal(_root);
	late final TranslationsMisskeyIOEnUs misskeyIO = TranslationsMisskeyIOEnUs.internal(_root);
}

// Path: aria
class TranslationsAriaEnUs {
	TranslationsAriaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'About Aria'
	String get aboutAria => 'About Aria';

	/// en-US: 'Access token'
	String get accessToken => 'Access token';

	/// en-US: 'Successfully updated an access token'
	String get accessTokenUpdated => 'Successfully updated an access token';

	/// en-US: 'Successfully added an account'
	String get accountAdded => 'Successfully added an account';

	/// en-US: 'Aria is a fork of {miria}. Localization of Aria is based on localization files of {misskey}. We would like to show our appreciation to all contributers of these projects.'
	TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Aria is a fork of '),
		miria,
		const TextSpan(text: '.\nLocalization of Aria is based on localization files of '),
		misskey,
		const TextSpan(text: '.\nWe would like to show our appreciation to all contributers of these projects.'),
	]);

	/// en-US: 'Add tab'
	String get addTab => 'Add tab';

	/// en-US: 'Always expand content warning'
	String get alwaysExpandCw => 'Always expand content warning';

	/// en-US: 'Always expand long note'
	String get alwaysExpandLongNote => 'Always expand long note';

	/// en-US: 'Always expand media in sub note'
	String get alwaysExpandMediaInSubNote => 'Always expand media in sub note';

	/// en-US: 'Always show all reactions'
	String get alwaysShowAllReactions => 'Always show all reactions';

	/// en-US: 'Always show tab info'
	String get alwaysShowTabHeader => 'Always show tab info';

	/// en-US: 'Authenticate'
	String get authenticate => 'Authenticate';

	/// en-US: 'Authenticated'
	String get authenticated => 'Authenticated';

	/// en-US: 'Avatar size'
	String get avatarSize => 'Avatar size';

	/// en-US: 'Background'
	String get background => 'Background';

	/// en-US: 'Button types'
	String get buttonTypes => 'Button types';

	/// en-US: 'Calculating...'
	String get calculating => 'Calculating...';

	/// en-US: 'Client info'
	String get clientInfo => 'Client info';

	/// en-US: 'Confirm before follow'
	String get confirmBeforeFollow => 'Confirm before follow';

	/// en-US: 'Confirm before post'
	String get confirmBeforePost => 'Confirm before post';

	/// en-US: 'Confirm before react'
	String get confirmBeforeReact => 'Confirm before react';

	/// en-US: 'Confirm before renote'
	String get confirmBeforeRenote => 'Confirm before renote';

	/// en-US: 'Copied to clipboard'
	String get copied => 'Copied to clipboard';

	/// en-US: 'Copy name'
	String get copyName => 'Copy name';

	/// en-US: 'Crop'
	String get crop => 'Crop';

	/// en-US: 'Custom'
	String get custom => 'Custom';

	/// en-US: 'Default reaction'
	String get defaultReaction => 'Default reaction';

	/// en-US: '(one) {Do you want to delete {n} tab related to this account?} (other) {Do you want to delete {n} tabs related to this account?}'
	String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Do you want to delete ${n} tab related to this account?',
		other: 'Do you want to delete ${n} tabs related to this account?',
	);

	/// en-US: '(one) {Are you sure you want to delete {n} file?} (other) {Are you sure you want to delete {n} files?}'
	String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Are you sure you want to delete ${n} file?',
		other: 'Are you sure you want to delete ${n} files?',
	);

	/// en-US: 'Are you sure you want to delete this tab?'
	String get deleteTabConfirm => 'Are you sure you want to delete this tab?';

	/// en-US: 'Device'
	String get device => 'Device';

	/// en-US: 'Disable data saver when on Wi-Fi'
	String get disableDataSaverWhenOnWifi => 'Disable data saver when on Wi-Fi';

	/// en-US: 'Disable real-time timeline updates'
	String get disableStreamingTimeline => 'Disable real-time timeline updates';

	/// en-US: 'Disable real-time reaction updates'
	String get disableSubscribingNotes => 'Disable real-time reaction updates';

	/// en-US: 'Are you sure you want to discard changes and back?'
	String get discardChangesConfirm => 'Are you sure you want to discard changes and back?';

	/// en-US: 'Display of thumbnail'
	String get displayOfThumbnail => 'Display of thumbnail';

	/// en-US: 'Double tap to show'
	String get doubleTapToShow => 'Double tap to show';

	/// en-US: 'Downloaded'
	String get downloaded => 'Downloaded';

	/// en-US: 'Draw'
	String get draw => 'Draw';

	/// en-US: 'Edit image'
	String get editImage => 'Edit image';

	/// en-US: 'Expand keyboard on opening emoji picker'
	String get emojiPickerAutofocus => 'Expand keyboard on opening emoji picker';

	/// en-US: 'Emoji picker scale'
	String get emojiPickerScale => 'Emoji picker scale';

	/// en-US: 'Display emoji picker as dialog'
	String get emojiPickerUseDialog => 'Display emoji picker as dialog';

	/// en-US: 'Enable fade-in animations for custom emojis'
	String get enableEmojiFadeIn => 'Enable fade-in animations for custom emojis';

	/// en-US: 'Enable federation'
	String get enableFederation => 'Enable federation';

	/// en-US: 'Enable predictive back animations'
	String get enablePredictiveBack => 'Enable predictive back animations';

	/// en-US: 'Enable spell check'
	String get enableSpellCheck => 'Enable spell check';

	/// en-US: 'Endpoint'
	String get endpoint => 'Endpoint';

	/// en-US: 'Are you sure you want to exit the Play?'
	String get exitPlayConfirm => 'Are you sure you want to exit the Play?';

	/// en-US: 'Expand note'
	String get expandNote => 'Expand note';

	/// en-US: 'This note includes mentions that are not included in the target note of reply'
	String get extraMentionsWarning => 'This note includes mentions that are not included in the target note of reply';

	/// en-US: 'File not found'
	String get fileNotFound => 'File not found';

	/// en-US: 'Find a Misskey server'
	String get findServer => 'Find a Misskey server';

	/// en-US: 'Are you sure that you want to follow {name}?'
	TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Are you sure that you want to follow '),
		name,
		const TextSpan(text: '?'),
	]);

	/// en-US: 'Font'
	String get font => 'Font';

	/// en-US: 'From device'
	String get fromDevice => 'From device';

	/// en-US: 'Guest'
	String get guest => 'Guest';

	/// en-US: 'Aria is being translated into various languages by volunteers. You can help at {link}.'
	TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria is being translated into various languages by volunteers. You can help at '),
		link,
		const TextSpan(text: '.'),
	]);

	/// en-US: 'The icon of Aria was created by {sevenc_nanashi} and is licensed under {cc_by}.'
	TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'The icon of Aria was created by '),
		sevenc_nanashi,
		const TextSpan(text: ' and is licensed under '),
		cc_by,
		const TextSpan(text: '.'),
	]);

	/// en-US: 'Import completed'
	String get importCompleted => 'Import completed';

	/// en-US: 'Are you sure you want to import settings? Existing settings will be overwritten.'
	String get importConfirm => 'Are you sure you want to import settings? Existing settings will be overwritten.';

	/// en-US: 'List format is invalid'
	String get invalidListFormat => 'List format is invalid';

	/// en-US: 'Jump to {x}'
	String jumpTo({required Object x}) => 'Jump to ${x}';

	/// en-US: 'Keep open'
	String get keepOpen => 'Keep open';

	/// en-US: 'Keep timeline position'
	String get keepTimelinePosition => 'Keep timeline position';

	/// en-US: 'Line height'
	String get lineHeight => 'Line height';

	/// en-US: 'Sign in with an access token'
	String get loginWithAccessToken => 'Sign in with an access token';

	/// en-US: 'Margin'
	String get margin => 'Margin';

	/// en-US: 'Media'
	String get media => 'Media';

	/// en-US: 'This note includes mentions to remote users'
	String get mentionToRemoteWarning => 'This note includes mentions to remote users';

	/// en-US: 'Merge reactions with the same name'
	String get mergeReactionsByName => 'Merge reactions with the same name';

	/// en-US: 'Moved'
	String get moved => 'Moved';

	/// en-US: 'Muted'
	String get muted => 'Muted';

	/// en-US: 'Muted emojis'
	String get mutedEmojis => 'Muted emojis';

	/// en-US: '(one) {{n} file} (other) {{n} files}'
	String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} file',
		other: '${n} files',
	);

	/// en-US: 'There are new follow requests'
	String get newFollowRequestReceived => 'There are new follow requests';

	/// en-US: 'New notes'
	String get newNotes => 'New notes';

	/// en-US: 'There are new notifications'
	String get newNotificationReceived => 'There are new notifications';

	/// en-US: 'New notifications'
	String get newNotifications => 'New notifications';

	/// en-US: 'No accounts'
	String get noAccounts => 'No accounts';

	/// en-US: 'No tabs'
	String get noTabs => 'No tabs';

	/// en-US: 'No themes'
	String get noThemes => 'No themes';

	/// en-US: 'Note double tap action'
	String get noteDoubleTapAction => 'Note double tap action';

	/// en-US: 'Note action buttons size'
	String get noteFooterSize => 'Note action buttons size';

	/// en-US: 'Note long press action'
	String get noteLongPressAction => 'Note long press action';

	/// en-US: 'Note has been scheduled'
	String get noteScheduled => 'Note has been scheduled';

	/// en-US: 'Note tap action'
	String get noteTapAction => 'Note tap action';

	/// en-US: 'Notes after renotes'
	String get notesAfterRenotes => 'Notes after renotes';

	/// en-US: '{n} users are online'
	TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' users are online'),
	]);

	/// en-US: 'Opacity'
	String get opacity => 'Opacity';

	/// en-US: 'Open as guest'
	String get openAsGuest => 'Open as guest';

	/// en-US: 'Open in another account'
	String get openInAnotherAccount => 'Open in another account';

	/// en-US: 'Open in browser'
	String get openInBrowser => 'Open in browser';

	/// en-US: 'Open in external browser'
	String get openInExternalBrowser => 'Open in external browser';

	/// en-US: 'Open in internal browser'
	String get openInInternalBrowser => 'Open in internal browser';

	/// en-US: 'Open menu'
	String get openMenu => 'Open menu';

	/// en-US: 'Open {scratchpad} in your browser, then enter the following code and run it.'
	TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		const TextSpan(text: 'Open '),
		scratchpad,
		const TextSpan(text: ' in your browser, then enter the following code and run it.'),
	]);

	/// en-US: 'Open sensitive media on double tap'
	String get openSensitiveMediaOnDoubleTap => 'Open sensitive media on double tap';

	/// en-US: 'Owner'
	String get owner => 'Owner';

	/// en-US: 'Parameters'
	String get parameters => 'Parameters';

	/// en-US: 'Paste'
	String get paste => 'Paste';

	/// en-US: 'Paste emoji list to pin the emojis. You can copy your pinned emojis for Misskey Web from {url}.'
	TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: 'Paste emoji list to pin the emojis.\nYou can copy your pinned emojis for Misskey Web from '),
		url,
		const TextSpan(text: '.'),
	]);

	/// en-US: 'Paste the response below.'
	String get pasteResponseBelow => 'Paste the response below.';

	/// en-US: 'The access token does not have the permission to perform this action. Please sign in again.'
	String get permissionDeniedErrorDescription => 'The access token does not have the permission to perform this action. Please sign in again.';

	/// en-US: 'Pin to emoji picker'
	String get pinToEmojiPicker => 'Pin to emoji picker';

	/// en-US: 'Play audio'
	String get playAudio => 'Play audio';

	/// en-US: 'Play video'
	String get playVideo => 'Play video';

	/// en-US: 'Please copy this response'
	String get pleaseCopyResponse => 'Please copy this response';

	/// en-US: 'Please sign in as {user}'
	String pleaseLoginAs({required Object user}) => 'Please sign in as ${user}';

	/// en-US: 'Are you sure you want to post this note?'
	String get postConfirm => 'Are you sure you want to post this note?';

	/// en-US: 'Are you sure you want to add a reaction?'
	String get reactionConfirm => 'Are you sure you want to add a reaction?';

	/// en-US: 'Recently used emojis'
	String get recentlyUsedEmojis => 'Recently used emojis';

	/// en-US: 'Are you sure you want to renote this note?'
	String get renoteConfirm => 'Are you sure you want to renote this note?';

	/// en-US: 'Renote to a channel'
	String get renoteToChannel => 'Renote to a channel';

	/// en-US: 'Renoted by {user}'
	TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renoted by '),
		user,
	]);

	/// en-US: 'Reset'
	String get reset => 'Reset';

	/// en-US: 'Rotate'
	String get rotate => 'Rotate';

	/// en-US: 'Schedule'
	String get schedule => 'Schedule';

	/// en-US: 'Scheduled note posting has failed'
	String get scheduledNoteError => 'Scheduled note posting has failed';

	/// en-US: 'Scheduled note has been posted'
	String get scheduledNotePosted => 'Scheduled note has been posted';

	/// en-US: 'Scheduled notes'
	String get scheduledNotes => 'Scheduled notes';

	/// en-US: 'Select an icon'
	String get selectIcon => 'Select an icon';

	/// en-US: 'Self-renoted by {user}'
	TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Self-renoted by '),
		user,
	]);

	/// en-US: 'Are you sure you want to send this message?'
	String get sendMessageConfirm => 'Are you sure you want to send this message?';

	/// en-US: 'Server URL'
	String get serverUrl => 'Server URL';

	/// en-US: 'Settings file for Aria'
	String get settingsFileForAria => 'Settings file for Aria';

	/// en-US: 'Settings for {user}'
	TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Settings for '),
		user,
	]);

	/// en-US: 'Show avatars in notes'
	String get showAvatarsInNote => 'Show avatars in notes';

	/// en-US: 'Show avatars in sub notes'
	String get showAvatarsInSubNote => 'Show avatars in sub notes';

	/// en-US: 'Show alt text'
	String get showCaption => 'Show alt text';

	/// en-US: 'Show entire image'
	String get showEntireImage => 'Show entire image';

	/// en-US: 'Show expanded image'
	String get showExpandedImage => 'Show expanded image';

	/// en-US: 'Show a gap between posts on the timeline'
	String get showGapBetweenNotesInTimeline => 'Show a gap between posts on the timeline';

	/// en-US: 'Show image'
	String get showImage => 'Show image';

	/// en-US: 'Add "Like" to note action menu'
	String get showLikeButtonInNoteFooter => 'Add "Like" to note action menu';

	/// en-US: 'Show menu button in tab bar'
	String get showMenuButtonInTabBar => 'Show menu button in tab bar';

	/// en-US: 'Show note'
	String get showNote => 'Show note';

	/// en-US: 'Show creation date of notes'
	String get showNoteCreatedAt => 'Show creation date of notes';

	/// en-US: 'Show action buttons in notes'
	String get showNoteFooter => 'Show action buttons in notes';

	/// en-US: 'Show reactions viewers in notes'
	String get showNoteReactionsViewer => 'Show reactions viewers in notes';

	/// en-US: 'Show online status'
	String get showOnlineStatus => 'Show online status';

	/// en-US: 'Show popup on new note'
	String get showPopupOnNewNote => 'Show popup on new note';

	/// en-US: 'Add "Quote" to note action menu'
	String get showQuoteButtonInNoteFooter => 'Add "Quote" to note action menu';

	/// en-US: 'See the number of reactions for each reaction types'
	String get showReactionsCountForEachTypes => 'See the number of reactions for each reaction types';

	/// en-US: 'See the number of renotes in notes'
	String get showRenotesCount => 'See the number of renotes in notes';

	/// en-US: 'See the number of replies in notes'
	String get showRepliesCount => 'See the number of replies in notes';

	/// en-US: 'Show self-renotes'
	String get showSelfRenotes => 'Show self-renotes';

	/// en-US: 'Show small buttons'
	String get showSmallButtons => 'Show small buttons';

	/// en-US: 'Show squared buttons'
	String get showSquaredButtons => 'Show squared buttons';

	/// en-US: 'Show stack trace'
	String get showStackTrace => 'Show stack trace';

	/// en-US: 'Show action buttons in subnotes'
	String get showSubNoteFooter => 'Show action buttons in subnotes';

	/// en-US: 'Show reactions viewers in subnotes'
	String get showSubNoteReactionsViewer => 'Show reactions viewers in subnotes';

	/// en-US: 'Show tab info in one line'
	String get showTabHeaderInOneLine => 'Show tab info in one line';

	/// en-US: 'Show last viewed date of timelines'
	String get showTimelineLastViewedAt => 'Show last viewed date of timelines';

	/// en-US: 'Show timeline tab bar at the bottom'
	String get showTimelineTabBarAtBottom => 'Show timeline tab bar at the bottom';

	/// en-US: 'Add "Translate" to note action menu'
	String get showTranslateButtonInNoteFooter => 'Add "Translate" to note action menu';

	/// en-US: 'Since'
	String get sinceDate => 'Since';

	/// en-US: 'Stack trace'
	String get stackTrace => 'Stack trace';

	/// en-US: 'Streaming channel'
	String get streamingChannel => 'Streaming channel';

	/// en-US: 'Swap comments with the body'
	String get swapCw => 'Swap comments with the body';

	/// en-US: 'Tab name'
	String get tabName => 'Tab name';

	/// en-US: 'Tab type'
	String get tabType => 'Tab type';

	/// en-US: 'Tabs'
	String get tabs => 'Tabs';

	/// en-US: 'Tap to show'
	String get tapToShow => 'Tap to show';

	/// en-US: 'Time machine'
	String get timeMachine => 'Time machine';

	/// en-US: 'Timelines page buttons'
	String get timelinesPageButtons => 'Timelines page buttons';

	/// en-US: 'Removed from favorites'
	String get unfavorited => 'Removed from favorites';

	/// en-US: 'Are you sure you want to unfollow {name}?'
	TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Are you sure you want to unfollow '),
		name,
		const TextSpan(text: '?'),
	]);

	/// en-US: 'Until'
	String get untilDate => 'Until';

	/// en-US: 'Uploaded'
	String get uploaded => 'Uploaded';

	/// en-US: 'Use this emoji'
	String get useThisEmoji => 'Use this emoji';

	/// en-US: '{name} said something'
	TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' said something'),
	]);

	/// en-US: 'Post by {name} contains sensitive content'
	TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Post by '),
		name,
		const TextSpan(text: ' contains sensitive content'),
	]);

	/// en-US: 'Vibrate on new note'
	String get vibrateNote => 'Vibrate on new note';

	/// en-US: 'Vibrate on new notification'
	String get vibrateNotification => 'Vibrate on new notification';

	/// en-US: 'Web browser'
	String get webBrowser => 'Web browser';

	/// en-US: 'Will be posted on {date}'
	String willBePostedOn({required Object date}) => 'Will be posted on ${date}';
}

// Path: misskey
class TranslationsMisskeyEnUs {
	TranslationsMisskeyEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'English'
	String get lang__ => 'English';

	/// en-US: 'A network connected by notes'
	String get headlineMisskey => 'A network connected by notes';

	/// en-US: 'Welcome! Misskey is an open source, decentralized microblogging service. Create "notes" to share your thoughts with everyone around you. 📡 With "reactions", you can also quickly express your feelings about everyone's notes. 👍 Let's explore a new world! 🚀'
	String get introMisskey => 'Welcome! Misskey is an open source, decentralized microblogging service.\nCreate "notes" to share your thoughts with everyone around you. 📡\nWith "reactions", you can also quickly express your feelings about everyone\'s notes. 👍\nLet\'s explore a new world! 🚀';

	/// en-US: '{name} is one of the services powered by the open source platform <b>Misskey</b> (referred to as a "Misskey instance").'
	String poweredByMisskeyDescription({required Object name}) => '${name} is one of the services powered by the open source platform <b>Misskey</b> (referred to as a "Misskey instance").';

	/// en-US: '{month}/{day}'
	String monthAndDay({required Object month, required Object day}) => '${month}/${day}';

	/// en-US: 'Search'
	String get search => 'Search';

	/// en-US: 'Reset'
	String get reset => 'Reset';

	/// en-US: 'Notifications'
	String get notifications => 'Notifications';

	/// en-US: 'Username'
	String get username => 'Username';

	/// en-US: 'Password'
	String get password => 'Password';

	/// en-US: 'Initial password for setup'
	String get initialPasswordForSetup => 'Initial password for setup';

	/// en-US: 'Initial password for setup is incorrect'
	String get initialPasswordIsIncorrect => 'Initial password for setup is incorrect';

	/// en-US: 'Use the password you entered in the configuration file if you installed Misskey yourself. If you are using a Misskey hosting service, use the password provided. If you have not set a password, leave it blank to continue.'
	String get initialPasswordForSetupDescription => 'Use the password you entered in the configuration file if you installed Misskey yourself.\n If you are using a Misskey hosting service, use the password provided.\n If you have not set a password, leave it blank to continue.';

	/// en-US: 'Forgot password'
	String get forgotPassword => 'Forgot password';

	/// en-US: 'Fetching from the Fediverse...'
	String get fetchingAsApObject => 'Fetching from the Fediverse...';

	/// en-US: 'OK'
	String get ok => 'OK';

	/// en-US: 'Got it!'
	String get gotIt => 'Got it!';

	/// en-US: 'Cancel'
	String get cancel => 'Cancel';

	/// en-US: 'Not now'
	String get noThankYou => 'Not now';

	/// en-US: 'Enter username'
	String get enterUsername => 'Enter username';

	/// en-US: 'Renoted by {user}'
	String renotedBy({required Object user}) => 'Renoted by ${user}';

	/// en-US: 'No notes'
	String get noNotes => 'No notes';

	/// en-US: 'No notifications'
	String get noNotifications => 'No notifications';

	/// en-US: 'Instance'
	String get instance => 'Instance';

	/// en-US: 'Settings'
	String get settings => 'Settings';

	/// en-US: 'Notification Settings'
	String get notificationSettings => 'Notification Settings';

	/// en-US: 'Basic Settings'
	String get basicSettings => 'Basic Settings';

	/// en-US: 'Other Settings'
	String get otherSettings => 'Other Settings';

	/// en-US: 'Open in window'
	String get openInWindow => 'Open in window';

	/// en-US: 'Profile'
	String get profile => 'Profile';

	/// en-US: 'Timeline'
	String get timeline => 'Timeline';

	/// en-US: 'This user has not written their bio yet.'
	String get noAccountDescription => 'This user has not written their bio yet.';

	/// en-US: 'Sign In'
	String get login => 'Sign In';

	/// en-US: 'Signing In'
	String get loggingIn => 'Signing In';

	/// en-US: 'Sign Out'
	String get logout => 'Sign Out';

	/// en-US: 'Sign Up'
	String get signup => 'Sign Up';

	/// en-US: 'Uploading...'
	String get uploading => 'Uploading...';

	/// en-US: 'Save'
	String get save => 'Save';

	/// en-US: 'Users'
	String get users => 'Users';

	/// en-US: 'Add a user'
	String get addUser => 'Add a user';

	/// en-US: 'Add to favorites'
	String get favorite => 'Add to favorites';

	/// en-US: 'Favorites'
	String get favorites => 'Favorites';

	/// en-US: 'Remove from favorites'
	String get unfavorite => 'Remove from favorites';

	/// en-US: 'Added to favorites.'
	String get favorited => 'Added to favorites.';

	/// en-US: 'Already added to favorites.'
	String get alreadyFavorited => 'Already added to favorites.';

	/// en-US: 'Couldn't add to favorites.'
	String get cantFavorite => 'Couldn\'t add to favorites.';

	/// en-US: 'Pin to profile'
	String get pin => 'Pin to profile';

	/// en-US: 'Unpin from profile'
	String get unpin => 'Unpin from profile';

	/// en-US: 'Copy contents'
	String get copyContent => 'Copy contents';

	/// en-US: 'Copy link'
	String get copyLink => 'Copy link';

	/// en-US: 'Copy remote link'
	String get copyRemoteLink => 'Copy remote link';

	/// en-US: 'Copy renote link'
	String get copyLinkRenote => 'Copy renote link';

	/// en-US: 'Delete'
	String get delete => 'Delete';

	/// en-US: 'Delete and edit'
	String get deleteAndEdit => 'Delete and edit';

	/// en-US: 'Are you sure you want to redraft this note? This means you will lose all reactions, renotes, and replies to it.'
	String get deleteAndEditConfirm => 'Are you sure you want to redraft this note? This means you will lose all reactions, renotes, and replies to it.';

	/// en-US: 'Add to list'
	String get addToList => 'Add to list';

	/// en-US: 'Add to antenna'
	String get addToAntenna => 'Add to antenna';

	/// en-US: 'Send a message'
	String get sendMessage => 'Send a message';

	/// en-US: 'Copy RSS'
	String get copyRSS => 'Copy RSS';

	/// en-US: 'Copy username'
	String get copyUsername => 'Copy username';

	/// en-US: 'Copy user ID'
	String get copyUserId => 'Copy user ID';

	/// en-US: 'Copy note ID'
	String get copyNoteId => 'Copy note ID';

	/// en-US: 'Copy file ID'
	String get copyFileId => 'Copy file ID';

	/// en-US: 'Copy folder ID'
	String get copyFolderId => 'Copy folder ID';

	/// en-US: 'Copy profile URL'
	String get copyProfileUrl => 'Copy profile URL';

	/// en-US: 'Search for a user'
	String get searchUser => 'Search for a user';

	/// en-US: 'Search this user’s notes'
	String get searchThisUsersNotes => 'Search this user’s notes';

	/// en-US: 'Reply'
	String get reply => 'Reply';

	/// en-US: 'Load more'
	String get loadMore => 'Load more';

	/// en-US: 'Show more'
	String get showMore => 'Show more';

	/// en-US: 'Close'
	String get showLess => 'Close';

	/// en-US: 'followed you'
	String get youGotNewFollower => 'followed you';

	/// en-US: 'Follow request received'
	String get receiveFollowRequest => 'Follow request received';

	/// en-US: 'Follow request accepted'
	String get followRequestAccepted => 'Follow request accepted';

	/// en-US: 'Mention'
	String get mention => 'Mention';

	/// en-US: 'Mentions'
	String get mentions => 'Mentions';

	/// en-US: 'Direct notes'
	String get directNotes => 'Direct notes';

	/// en-US: 'Import / Export'
	String get importAndExport => 'Import / Export';

	/// en-US: 'Import'
	String get import => 'Import';

	/// en-US: 'Export'
	String get export => 'Export';

	/// en-US: 'Files'
	String get files => 'Files';

	/// en-US: 'Download'
	String get download => 'Download';

	/// en-US: 'Do you want to remove the file "{name}"? Some content using this file will also be removed.'
	String driveFileDeleteConfirm({required Object name}) => 'Do you want to remove the file "${name}"? Some content using this file will also be removed.';

	/// en-US: 'Are you sure you want to unfollow {name}?'
	String unfollowConfirm({required Object name}) => 'Are you sure you want to unfollow ${name}?';

	/// en-US: 'You've requested an export. This may take a while. It will be added to your Drive once completed.'
	String get exportRequested => 'You\'ve requested an export. This may take a while. It will be added to your Drive once completed.';

	/// en-US: 'You've requested an import. This may take a while.'
	String get importRequested => 'You\'ve requested an import. This may take a while.';

	/// en-US: 'Lists'
	String get lists => 'Lists';

	/// en-US: 'You don't have any lists'
	String get noLists => 'You don\'t have any lists';

	/// en-US: 'Note'
	String get note => 'Note';

	/// en-US: 'Notes'
	String get notes => 'Notes';

	/// en-US: 'Following'
	String get following => 'Following';

	/// en-US: 'Followers'
	String get followers => 'Followers';

	/// en-US: 'Follows you'
	String get followsYou => 'Follows you';

	/// en-US: 'Create list'
	String get createList => 'Create list';

	/// en-US: 'Manage lists'
	String get manageLists => 'Manage lists';

	/// en-US: 'Error'
	String get error => 'Error';

	/// en-US: 'An error has occurred'
	String get somethingHappened => 'An error has occurred';

	/// en-US: 'Retry'
	String get retry => 'Retry';

	/// en-US: 'An error occurred while loading the page.'
	String get pageLoadError => 'An error occurred while loading the page.';

	/// en-US: 'This is normally caused by network errors or the browser's cache. Try clearing the cache and then try again after waiting a little while.'
	String get pageLoadErrorDescription => 'This is normally caused by network errors or the browser\'s cache. Try clearing the cache and then try again after waiting a little while.';

	/// en-US: 'This server is not responding. Please wait for a while and try again.'
	String get serverIsDead => 'This server is not responding. Please wait for a while and try again.';

	/// en-US: 'To view this page, please refresh to update your client.'
	String get youShouldUpgradeClient => 'To view this page, please refresh to update your client.';

	/// en-US: 'Enter a name for the list'
	String get enterListName => 'Enter a name for the list';

	/// en-US: 'Privacy'
	String get privacy => 'Privacy';

	/// en-US: 'Follow requests require approval'
	String get makeFollowManuallyApprove => 'Follow requests require approval';

	/// en-US: 'Default visibility'
	String get defaultNoteVisibility => 'Default visibility';

	/// en-US: 'Follow'
	String get follow => 'Follow';

	/// en-US: 'Send follow request'
	String get followRequest => 'Send follow request';

	/// en-US: 'Follow requests'
	String get followRequests => 'Follow requests';

	/// en-US: 'Unfollow'
	String get unfollow => 'Unfollow';

	/// en-US: 'Follow request pending'
	String get followRequestPending => 'Follow request pending';

	/// en-US: 'Enter an emoji'
	String get enterEmoji => 'Enter an emoji';

	/// en-US: 'Renote'
	String get renote => 'Renote';

	/// en-US: 'Remove renote'
	String get unrenote => 'Remove renote';

	/// en-US: 'Renoted.'
	String get renoted => 'Renoted.';

	/// en-US: 'Renoted to {name}.'
	String renotedToX({required Object name}) => 'Renoted to ${name}.';

	/// en-US: 'This post can't be renoted.'
	String get cantRenote => 'This post can\'t be renoted.';

	/// en-US: 'A renote can't be renoted.'
	String get cantReRenote => 'A renote can\'t be renoted.';

	/// en-US: 'Quote'
	String get quote => 'Quote';

	/// en-US: 'Channel-only Renote'
	String get inChannelRenote => 'Channel-only Renote';

	/// en-US: 'Channel-only Quote'
	String get inChannelQuote => 'Channel-only Quote';

	/// en-US: 'Renote to channel'
	String get renoteToChannel => 'Renote to channel';

	/// en-US: 'Renote to other channel'
	String get renoteToOtherChannel => 'Renote to other channel';

	/// en-US: 'Pinned note'
	String get pinnedNote => 'Pinned note';

	/// en-US: 'Pin to profile'
	String get pinned => 'Pin to profile';

	/// en-US: 'You'
	String get you => 'You';

	/// en-US: 'Click to show'
	String get clickToShow => 'Click to show';

	/// en-US: 'Sensitive'
	String get sensitive => 'Sensitive';

	/// en-US: 'Add'
	String get add => 'Add';

	/// en-US: 'Reactions'
	String get reaction => 'Reactions';

	/// en-US: 'Reactions'
	String get reactions => 'Reactions';

	/// en-US: 'Emoji picker'
	String get emojiPicker => 'Emoji picker';

	/// en-US: 'Set the emojis to be pinned and displayed when reacting.'
	String get pinnedEmojisForReactionSettingDescription => 'Set the emojis to be pinned and displayed when reacting.';

	/// en-US: 'Set the emojis to be pinned and displayed when viewing emoji picker'
	String get pinnedEmojisSettingDescription => 'Set the emojis to be pinned and displayed when viewing emoji picker';

	/// en-US: 'Emoji picker display'
	String get emojiPickerDisplay => 'Emoji picker display';

	/// en-US: 'Override from reaction settings'
	String get overwriteFromPinnedEmojisForReaction => 'Override from reaction settings';

	/// en-US: 'Override from general settings'
	String get overwriteFromPinnedEmojis => 'Override from general settings';

	/// en-US: 'Drag to reorder, click to delete, press "+" to add.'
	String get reactionSettingDescription2 => 'Drag to reorder, click to delete, press "+" to add.';

	/// en-US: 'Remember note visibility settings'
	String get rememberNoteVisibility => 'Remember note visibility settings';

	/// en-US: 'Remove attachment'
	String get attachCancel => 'Remove attachment';

	/// en-US: 'Delete file'
	String get deleteFile => 'Delete file';

	/// en-US: 'Mark as sensitive'
	String get markAsSensitive => 'Mark as sensitive';

	/// en-US: 'Unmark as sensitive'
	String get unmarkAsSensitive => 'Unmark as sensitive';

	/// en-US: 'Enter filename'
	String get enterFileName => 'Enter filename';

	/// en-US: 'Mute'
	String get mute => 'Mute';

	/// en-US: 'Unmute'
	String get unmute => 'Unmute';

	/// en-US: 'Mute Renotes'
	String get renoteMute => 'Mute Renotes';

	/// en-US: 'Unmute Renotes'
	String get renoteUnmute => 'Unmute Renotes';

	/// en-US: 'Block'
	String get block => 'Block';

	/// en-US: 'Unblock'
	String get unblock => 'Unblock';

	/// en-US: 'Suspend'
	String get suspend => 'Suspend';

	/// en-US: 'Unsuspend'
	String get unsuspend => 'Unsuspend';

	/// en-US: 'Are you sure that you want to block this account?'
	String get blockConfirm => 'Are you sure that you want to block this account?';

	/// en-US: 'Are you sure that you want to unblock this account?'
	String get unblockConfirm => 'Are you sure that you want to unblock this account?';

	/// en-US: 'Are you sure that you want to suspend this account?'
	String get suspendConfirm => 'Are you sure that you want to suspend this account?';

	/// en-US: 'Are you sure that you want to unsuspend this account?'
	String get unsuspendConfirm => 'Are you sure that you want to unsuspend this account?';

	/// en-US: 'Select a list'
	String get selectList => 'Select a list';

	/// en-US: 'Edit list'
	String get editList => 'Edit list';

	/// en-US: 'Select a channel'
	String get selectChannel => 'Select a channel';

	/// en-US: 'Select an antenna'
	String get selectAntenna => 'Select an antenna';

	/// en-US: 'Edit antenna'
	String get editAntenna => 'Edit antenna';

	/// en-US: 'Create an antenna'
	String get createAntenna => 'Create an antenna';

	/// en-US: 'Select a widget'
	String get selectWidget => 'Select a widget';

	/// en-US: 'Edit widgets'
	String get editWidgets => 'Edit widgets';

	/// en-US: 'Done'
	String get editWidgetsExit => 'Done';

	/// en-US: 'Custom Emoji'
	String get customEmojis => 'Custom Emoji';

	/// en-US: 'Emoji'
	String get emoji => 'Emoji';

	/// en-US: 'Emoji'
	String get emojis => 'Emoji';

	/// en-US: 'Emoji name'
	String get emojiName => 'Emoji name';

	/// en-US: 'Emoji URL'
	String get emojiUrl => 'Emoji URL';

	/// en-US: 'Add an emoji'
	String get addEmoji => 'Add an emoji';

	/// en-US: 'Recommended settings'
	String get settingGuide => 'Recommended settings';

	/// en-US: 'Cache remote files'
	String get cacheRemoteFiles => 'Cache remote files';

	/// en-US: 'When this setting is disabled, remote files are loaded directly from the remote servers. Disabling this will decrease storage usage, but increase traffic, as thumbnails will not be generated.'
	String get cacheRemoteFilesDescription => 'When this setting is disabled, remote files are loaded directly from the remote servers. Disabling this will decrease storage usage, but increase traffic, as thumbnails will not be generated.';

	/// en-US: 'You can clear the cache by clicking the 🗑️ button in the file management view.'
	String get youCanCleanRemoteFilesCache => 'You can clear the cache by clicking the 🗑️ button in the file management view.';

	/// en-US: 'Cache sensitive remote files'
	String get cacheRemoteSensitiveFiles => 'Cache sensitive remote files';

	/// en-US: 'When this setting is disabled, sensitive remote files are loaded directly from the remote instance without caching.'
	String get cacheRemoteSensitiveFilesDescription => 'When this setting is disabled, sensitive remote files are loaded directly from the remote instance without caching.';

	/// en-US: 'Mark this account as a bot'
	String get flagAsBot => 'Mark this account as a bot';

	/// en-US: 'Enable this option if this account is controlled by a program. If enabled, it will act as a flag for other developers to prevent endless interaction chains with other bots and adjust Misskey's internal systems to treat this account as a bot.'
	String get flagAsBotDescription => 'Enable this option if this account is controlled by a program. If enabled, it will act as a flag for other developers to prevent endless interaction chains with other bots and adjust Misskey\'s internal systems to treat this account as a bot.';

	/// en-US: 'Mark this account as a cat'
	String get flagAsCat => 'Mark this account as a cat';

	/// en-US: 'Enable this option to mark this account as a cat.'
	String get flagAsCatDescription => 'Enable this option to mark this account as a cat.';

	/// en-US: 'Show replies in timeline'
	String get flagShowTimelineReplies => 'Show replies in timeline';

	/// en-US: 'Shows replies of users to notes of other users in the timeline if turned on.'
	String get flagShowTimelineRepliesDescription => 'Shows replies of users to notes of other users in the timeline if turned on.';

	/// en-US: 'Automatically approve follow requests from users you're following'
	String get autoAcceptFollowed => 'Automatically approve follow requests from users you\'re following';

	/// en-US: 'Add account'
	String get addAccount => 'Add account';

	/// en-US: 'Reload account list'
	String get reloadAccountsList => 'Reload account list';

	/// en-US: 'Failed to sign in'
	String get loginFailed => 'Failed to sign in';

	/// en-US: 'View on remote instance'
	String get showOnRemote => 'View on remote instance';

	/// en-US: 'Continue on a remote server'
	String get continueOnRemote => 'Continue on a remote server';

	/// en-US: 'Choose a server from the Misskey Hub'
	String get chooseServerOnMisskeyHub => 'Choose a server from the Misskey Hub';

	/// en-US: 'Specify a server host directly'
	String get specifyServerHost => 'Specify a server host directly';

	/// en-US: 'Enter the domain'
	String get inputHostName => 'Enter the domain';

	/// en-US: 'General'
	String get general => 'General';

	/// en-US: 'Wallpaper'
	String get wallpaper => 'Wallpaper';

	/// en-US: 'Set wallpaper'
	String get setWallpaper => 'Set wallpaper';

	/// en-US: 'Remove wallpaper'
	String get removeWallpaper => 'Remove wallpaper';

	/// en-US: 'Search: {q}'
	String searchWith({required Object q}) => 'Search: ${q}';

	/// en-US: 'You don't have any lists'
	String get youHaveNoLists => 'You don\'t have any lists';

	/// en-US: 'Are you sure that you want to follow {name}?'
	String followConfirm({required Object name}) => 'Are you sure that you want to follow ${name}?';

	/// en-US: 'Proxy account'
	String get proxyAccount => 'Proxy account';

	/// en-US: 'A proxy account is an account that acts as a remote follower for users under certain conditions. For example, when a user adds a remote user to the list, the remote user's activity will not be delivered to the instance if no local user is following that user, so the proxy account will follow instead.'
	String get proxyAccountDescription => 'A proxy account is an account that acts as a remote follower for users under certain conditions. For example, when a user adds a remote user to the list, the remote user\'s activity will not be delivered to the instance if no local user is following that user, so the proxy account will follow instead.';

	/// en-US: 'Host'
	String get host => 'Host';

	/// en-US: 'Select myself'
	String get selectSelf => 'Select myself';

	/// en-US: 'Select a user'
	String get selectUser => 'Select a user';

	/// en-US: 'Recipient'
	String get recipient => 'Recipient';

	/// en-US: 'Comments'
	String get annotation => 'Comments';

	/// en-US: 'Federation'
	String get federation => 'Federation';

	/// en-US: 'Instances'
	String get instances => 'Instances';

	/// en-US: 'Registered at'
	String get registeredAt => 'Registered at';

	/// en-US: 'Last request received'
	String get latestRequestReceivedAt => 'Last request received';

	/// en-US: 'Latest status'
	String get latestStatus => 'Latest status';

	/// en-US: 'Storage usage'
	String get storageUsage => 'Storage usage';

	/// en-US: 'Charts'
	String get charts => 'Charts';

	/// en-US: 'Per Hour'
	String get perHour => 'Per Hour';

	/// en-US: 'Per Day'
	String get perDay => 'Per Day';

	/// en-US: 'Stop sending activities'
	String get stopActivityDelivery => 'Stop sending activities';

	/// en-US: 'Block this instance'
	String get blockThisInstance => 'Block this instance';

	/// en-US: 'Silence this instance'
	String get silenceThisInstance => 'Silence this instance';

	/// en-US: 'Media-silence this server'
	String get mediaSilenceThisInstance => 'Media-silence this server';

	/// en-US: 'Operations'
	String get operations => 'Operations';

	/// en-US: 'Software'
	String get software => 'Software';

	/// en-US: 'Software'
	String get softwareName => 'Software';

	/// en-US: 'Version'
	String get version => 'Version';

	/// en-US: 'Metadata'
	String get metadata => 'Metadata';

	/// en-US: '{n} file(s)'
	String withNFiles({required Object n}) => '${n} file(s)';

	/// en-US: 'Monitor'
	String get monitor => 'Monitor';

	/// en-US: 'Job Queue'
	String get jobQueue => 'Job Queue';

	/// en-US: 'CPU and Memory'
	String get cpuAndMemory => 'CPU and Memory';

	/// en-US: 'Network'
	String get network => 'Network';

	/// en-US: 'Disk'
	String get disk => 'Disk';

	/// en-US: 'Instance Information'
	String get instanceInfo => 'Instance Information';

	/// en-US: 'Statistics'
	String get statistics => 'Statistics';

	/// en-US: 'Clear queue'
	String get clearQueue => 'Clear queue';

	/// en-US: 'Are you sure that you want to clear the queue?'
	String get clearQueueConfirmTitle => 'Are you sure that you want to clear the queue?';

	/// en-US: 'Any undelivered notes remaining in the queue will not be federated. Usually this operation is not needed.'
	String get clearQueueConfirmText => 'Any undelivered notes remaining in the queue will not be federated. Usually this operation is not needed.';

	/// en-US: 'Clear cache'
	String get clearCachedFiles => 'Clear cache';

	/// en-US: 'Are you sure that you want to delete all cached remote files?'
	String get clearCachedFilesConfirm => 'Are you sure that you want to delete all cached remote files?';

	/// en-US: 'Blocked Instances'
	String get blockedInstances => 'Blocked Instances';

	/// en-US: 'List the hostnames of the instances you want to block separated by linebreaks. Listed instances will no longer be able to communicate with this instance.'
	String get blockedInstancesDescription => 'List the hostnames of the instances you want to block separated by linebreaks. Listed instances will no longer be able to communicate with this instance.';

	/// en-US: 'Silenced instances'
	String get silencedInstances => 'Silenced instances';

	/// en-US: 'List the host names of the servers that you want to silence, separated by a new line. All accounts belonging to the listed servers will be treated as silenced, and can only make follow requests, and cannot mention local accounts if not followed. This will not affect the blocked servers.'
	String get silencedInstancesDescription => 'List the host names of the servers that you want to silence, separated by a new line. All accounts belonging to the listed servers will be treated as silenced, and can only make follow requests, and cannot mention local accounts if not followed. This will not affect the blocked servers.';

	/// en-US: 'Media-silenced servers'
	String get mediaSilencedInstances => 'Media-silenced servers';

	/// en-US: 'List the host names of the servers that you want to media-silence, separated by a new line. All accounts belonging to the listed servers will be treated as sensitive, and can't use custom emojis. This will not affect the blocked servers.'
	String get mediaSilencedInstancesDescription => 'List the host names of the servers that you want to media-silence, separated by a new line. All accounts belonging to the listed servers will be treated as sensitive, and can\'t use custom emojis. This will not affect the blocked servers.';

	/// en-US: 'Federation allowed servers'
	String get federationAllowedHosts => 'Federation allowed servers';

	/// en-US: 'Specify the hostnames of the servers you want to allow federation separated by line breaks.'
	String get federationAllowedHostsDescription => 'Specify the hostnames of the servers you want to allow federation separated by line breaks.';

	/// en-US: 'Mutes and Blocks'
	String get muteAndBlock => 'Mutes and Blocks';

	/// en-US: 'Muted users'
	String get mutedUsers => 'Muted users';

	/// en-US: 'Blocked users'
	String get blockedUsers => 'Blocked users';

	/// en-US: 'There are no users'
	String get noUsers => 'There are no users';

	/// en-US: 'Edit profile'
	String get editProfile => 'Edit profile';

	/// en-US: 'Are you sure you want to delete this note?'
	String get noteDeleteConfirm => 'Are you sure you want to delete this note?';

	/// en-US: 'You cannot pin any more notes'
	String get pinLimitExceeded => 'You cannot pin any more notes';

	/// en-US: 'Done'
	String get done => 'Done';

	/// en-US: 'Processing...'
	String get processing => 'Processing...';

	/// en-US: 'Preview'
	String get preview => 'Preview';

	/// en-US: 'Default'
	String get default_ => 'Default';

	/// en-US: 'Default: {value}'
	String defaultValueIs({required Object value}) => 'Default: ${value}';

	/// en-US: 'There are no emoji'
	String get noCustomEmojis => 'There are no emoji';

	/// en-US: 'There are no jobs'
	String get noJobs => 'There are no jobs';

	/// en-US: 'Federating'
	String get federating => 'Federating';

	/// en-US: 'Blocked'
	String get blocked => 'Blocked';

	/// en-US: 'Suspended'
	String get suspended => 'Suspended';

	/// en-US: 'All'
	String get all => 'All';

	/// en-US: 'Subscribing'
	String get subscribing => 'Subscribing';

	/// en-US: 'Publishing'
	String get publishing => 'Publishing';

	/// en-US: 'Not responding'
	String get notResponding => 'Not responding';

	/// en-US: 'Following on instance'
	String get instanceFollowing => 'Following on instance';

	/// en-US: 'Instance followers'
	String get instanceFollowers => 'Instance followers';

	/// en-US: 'Users of this instance'
	String get instanceUsers => 'Users of this instance';

	/// en-US: 'Change password'
	String get changePassword => 'Change password';

	/// en-US: 'Security'
	String get security => 'Security';

	/// en-US: 'The inputs do not match.'
	String get retypedNotMatch => 'The inputs do not match.';

	/// en-US: 'Current password'
	String get currentPassword => 'Current password';

	/// en-US: 'New password'
	String get newPassword => 'New password';

	/// en-US: 'Retype new password'
	String get newPasswordRetype => 'Retype new password';

	/// en-US: 'Attach files'
	String get attachFile => 'Attach files';

	/// en-US: 'More!'
	String get more => 'More!';

	/// en-US: 'Featured'
	String get featured => 'Featured';

	/// en-US: 'Username or user id'
	String get usernameOrUserId => 'Username or user id';

	/// en-US: 'User not found'
	String get noSuchUser => 'User not found';

	/// en-US: 'Lookup'
	String get lookup => 'Lookup';

	/// en-US: 'Announcements'
	String get announcements => 'Announcements';

	/// en-US: 'Image URL'
	String get imageUrl => 'Image URL';

	/// en-US: 'Delete'
	String get remove => 'Delete';

	/// en-US: 'Successfully deleted'
	String get removed => 'Successfully deleted';

	/// en-US: 'Are you sure that you want to remove "{x}"?'
	String removeAreYouSure({required Object x}) => 'Are you sure that you want to remove "${x}"?';

	/// en-US: 'Are you sure that you want to delete "{x}"?'
	String deleteAreYouSure({required Object x}) => 'Are you sure that you want to delete "${x}"?';

	/// en-US: 'Really reset?'
	String get resetAreYouSure => 'Really reset?';

	/// en-US: 'Are you sure?'
	String get areYouSure => 'Are you sure?';

	/// en-US: 'Saved'
	String get saved => 'Saved';

	/// en-US: 'Upload'
	String get upload => 'Upload';

	/// en-US: 'Keep original image'
	String get keepOriginalUploading => 'Keep original image';

	/// en-US: 'Saves the originally uploaded image as-is. If turned off, a version to display on the web will be generated on upload.'
	String get keepOriginalUploadingDescription => 'Saves the originally uploaded image as-is. If turned off, a version to display on the web will be generated on upload.';

	/// en-US: 'From Drive'
	String get fromDrive => 'From Drive';

	/// en-US: 'From URL'
	String get fromUrl => 'From URL';

	/// en-US: 'Upload from a URL'
	String get uploadFromUrl => 'Upload from a URL';

	/// en-US: 'URL of the file you want to upload'
	String get uploadFromUrlDescription => 'URL of the file you want to upload';

	/// en-US: 'Upload requested'
	String get uploadFromUrlRequested => 'Upload requested';

	/// en-US: 'It may take some time until the upload is complete.'
	String get uploadFromUrlMayTakeTime => 'It may take some time until the upload is complete.';

	/// en-US: 'Upload {n} files'
	String uploadNFiles({required Object n}) => 'Upload ${n} files';

	/// en-US: 'Explore'
	String get explore => 'Explore';

	/// en-US: 'Read'
	String get messageRead => 'Read';

	/// en-US: 'There is no further history'
	String get noMoreHistory => 'There is no further history';

	/// en-US: 'Start chat'
	String get startChat => 'Start chat';

	/// en-US: 'read by {n}'
	String nUsersRead({required Object n}) => 'read by ${n}';

	/// en-US: 'I agree to {x0}'
	String agreeTo({required Object x0}) => 'I agree to ${x0}';

	/// en-US: 'Agree'
	String get agree => 'Agree';

	/// en-US: 'I agree to the below'
	String get agreeBelow => 'I agree to the below';

	/// en-US: 'Important notes'
	String get basicNotesBeforeCreateAccount => 'Important notes';

	/// en-US: 'Terms of Service'
	String get termsOfService => 'Terms of Service';

	/// en-US: 'Begin'
	String get start => 'Begin';

	/// en-US: 'Home'
	String get home => 'Home';

	/// en-US: 'As this user is from a remote instance, the shown information may be incomplete.'
	String get remoteUserCaution => 'As this user is from a remote instance, the shown information may be incomplete.';

	/// en-US: 'Activity'
	String get activity => 'Activity';

	/// en-US: 'Images'
	String get images => 'Images';

	/// en-US: 'Image'
	String get image => 'Image';

	/// en-US: 'Birthday'
	String get birthday => 'Birthday';

	/// en-US: '{age} years old'
	String yearsOld({required Object age}) => '${age} years old';

	/// en-US: 'Joined on'
	String get registeredDate => 'Joined on';

	/// en-US: 'Location'
	String get location => 'Location';

	/// en-US: 'Themes'
	String get theme => 'Themes';

	/// en-US: 'Theme to use in Light Mode'
	String get themeForLightMode => 'Theme to use in Light Mode';

	/// en-US: 'Theme to use in Dark Mode'
	String get themeForDarkMode => 'Theme to use in Dark Mode';

	/// en-US: 'Light'
	String get light => 'Light';

	/// en-US: 'Dark'
	String get dark => 'Dark';

	/// en-US: 'Light themes'
	String get lightThemes => 'Light themes';

	/// en-US: 'Dark themes'
	String get darkThemes => 'Dark themes';

	/// en-US: 'Sync Dark Mode with your device settings'
	String get syncDeviceDarkMode => 'Sync Dark Mode with your device settings';

	/// en-US: '"{x}" is turned on. Would you like to turn off synchronization and switch modes manually?'
	String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => '"${x}" is turned on. Would you like to turn off synchronization and switch modes manually?';

	/// en-US: 'Drive'
	String get drive => 'Drive';

	/// en-US: 'Filename'
	String get fileName => 'Filename';

	/// en-US: 'Select a file'
	String get selectFile => 'Select a file';

	/// en-US: 'Select files'
	String get selectFiles => 'Select files';

	/// en-US: 'Select a folder'
	String get selectFolder => 'Select a folder';

	/// en-US: 'Select folders'
	String get selectFolders => 'Select folders';

	/// en-US: 'No file selected'
	String get fileNotSelected => 'No file selected';

	/// en-US: 'Rename file'
	String get renameFile => 'Rename file';

	/// en-US: 'Folder name'
	String get folderName => 'Folder name';

	/// en-US: 'Create a folder'
	String get createFolder => 'Create a folder';

	/// en-US: 'Rename this folder'
	String get renameFolder => 'Rename this folder';

	/// en-US: 'Delete this folder'
	String get deleteFolder => 'Delete this folder';

	/// en-US: 'Folder'
	String get folder => 'Folder';

	/// en-US: 'Add a file'
	String get addFile => 'Add a file';

	/// en-US: 'Show files'
	String get showFile => 'Show files';

	/// en-US: 'Your Drive is empty'
	String get emptyDrive => 'Your Drive is empty';

	/// en-US: 'This folder is empty'
	String get emptyFolder => 'This folder is empty';

	/// en-US: 'Unable to delete'
	String get unableToDelete => 'Unable to delete';

	/// en-US: 'Enter a new filename'
	String get inputNewFileName => 'Enter a new filename';

	/// en-US: 'Enter new alt text'
	String get inputNewDescription => 'Enter new alt text';

	/// en-US: 'Enter a new folder name'
	String get inputNewFolderName => 'Enter a new folder name';

	/// en-US: 'The destination folder is a subfolder of the folder you wish to move.'
	String get circularReferenceFolder => 'The destination folder is a subfolder of the folder you wish to move.';

	/// en-US: 'Since this folder is not empty, it can not be deleted.'
	String get hasChildFilesOrFolders => 'Since this folder is not empty, it can not be deleted.';

	/// en-US: 'Copy URL'
	String get copyUrl => 'Copy URL';

	/// en-US: 'Rename'
	String get rename => 'Rename';

	/// en-US: 'Avatar'
	String get avatar => 'Avatar';

	/// en-US: 'Banner'
	String get banner => 'Banner';

	/// en-US: 'Display of sensitive media'
	String get displayOfSensitiveMedia => 'Display of sensitive media';

	/// en-US: 'When losing connection to the server'
	String get whenServerDisconnected => 'When losing connection to the server';

	/// en-US: 'Connection to server has been lost'
	String get disconnectedFromServer => 'Connection to server has been lost';

	/// en-US: 'Refresh'
	String get reload => 'Refresh';

	/// en-US: 'Ignore'
	String get doNothing => 'Ignore';

	/// en-US: 'Would you like to refresh the timeline?'
	String get reloadConfirm => 'Would you like to refresh the timeline?';

	/// en-US: 'Watch'
	String get watch => 'Watch';

	/// en-US: 'Stop watching'
	String get unwatch => 'Stop watching';

	/// en-US: 'Accept'
	String get accept => 'Accept';

	/// en-US: 'Reject'
	String get reject => 'Reject';

	/// en-US: 'Normal'
	String get normal => 'Normal';

	/// en-US: 'Instance name'
	String get instanceName => 'Instance name';

	/// en-US: 'Instance description'
	String get instanceDescription => 'Instance description';

	/// en-US: 'Maintainer'
	String get maintainerName => 'Maintainer';

	/// en-US: 'Maintainer email'
	String get maintainerEmail => 'Maintainer email';

	/// en-US: 'Terms of Service URL'
	String get tosUrl => 'Terms of Service URL';

	/// en-US: 'Year'
	String get thisYear => 'Year';

	/// en-US: 'Month'
	String get thisMonth => 'Month';

	/// en-US: 'Today'
	String get today => 'Today';

	/// en-US: '{day}'
	String dayX({required Object day}) => '${day}';

	/// en-US: '{month}'
	String monthX({required Object month}) => '${month}';

	/// en-US: '{year}'
	String yearX({required Object year}) => '${year}';

	/// en-US: 'Pages'
	String get pages => 'Pages';

	/// en-US: 'Integration'
	String get integration => 'Integration';

	/// en-US: 'Connect'
	String get connectService => 'Connect';

	/// en-US: 'Disconnect'
	String get disconnectService => 'Disconnect';

	/// en-US: 'Enable local timeline'
	String get enableLocalTimeline => 'Enable local timeline';

	/// en-US: 'Enable global timeline'
	String get enableGlobalTimeline => 'Enable global timeline';

	/// en-US: 'Adminstrators and Moderators will always have access to all timelines, even if they are not enabled.'
	String get disablingTimelinesInfo => 'Adminstrators and Moderators will always have access to all timelines, even if they are not enabled.';

	/// en-US: 'Register'
	String get registration => 'Register';

	/// en-US: 'Invite'
	String get invite => 'Invite';

	/// en-US: 'Drive capacity per local user'
	String get driveCapacityPerLocalAccount => 'Drive capacity per local user';

	/// en-US: 'Drive capacity per remote user'
	String get driveCapacityPerRemoteAccount => 'Drive capacity per remote user';

	/// en-US: 'In megabytes'
	String get inMb => 'In megabytes';

	/// en-US: 'Banner image URL'
	String get bannerUrl => 'Banner image URL';

	/// en-US: 'Background image URL'
	String get backgroundImageUrl => 'Background image URL';

	/// en-US: 'Basic info'
	String get basicInfo => 'Basic info';

	/// en-US: 'Pinned users'
	String get pinnedUsers => 'Pinned users';

	/// en-US: 'List usernames separated by line breaks to be pinned in the "Explore" tab.'
	String get pinnedUsersDescription => 'List usernames separated by line breaks to be pinned in the "Explore" tab.';

	/// en-US: 'Pinned Pages'
	String get pinnedPages => 'Pinned Pages';

	/// en-US: 'Enter the paths of the Pages you want to pin to the top page of this instance, separated by line breaks.'
	String get pinnedPagesDescription => 'Enter the paths of the Pages you want to pin to the top page of this instance, separated by line breaks.';

	/// en-US: 'ID of the clip to pin'
	String get pinnedClipId => 'ID of the clip to pin';

	/// en-US: 'Pinned notes'
	String get pinnedNotes => 'Pinned notes';

	/// en-US: 'hCaptcha'
	String get hcaptcha => 'hCaptcha';

	/// en-US: 'Enable hCaptcha'
	String get enableHcaptcha => 'Enable hCaptcha';

	/// en-US: 'Site key'
	String get hcaptchaSiteKey => 'Site key';

	/// en-US: 'Secret key'
	String get hcaptchaSecretKey => 'Secret key';

	/// en-US: 'mCaptcha'
	String get mcaptcha => 'mCaptcha';

	/// en-US: 'Enable mCaptcha'
	String get enableMcaptcha => 'Enable mCaptcha';

	/// en-US: 'Site key'
	String get mcaptchaSiteKey => 'Site key';

	/// en-US: 'Secret key'
	String get mcaptchaSecretKey => 'Secret key';

	/// en-US: 'mCaptcha server URL'
	String get mcaptchaInstanceUrl => 'mCaptcha server URL';

	/// en-US: 'reCAPTCHA'
	String get recaptcha => 'reCAPTCHA';

	/// en-US: 'Enable reCAPTCHA'
	String get enableRecaptcha => 'Enable reCAPTCHA';

	/// en-US: 'Site key'
	String get recaptchaSiteKey => 'Site key';

	/// en-US: 'Secret key'
	String get recaptchaSecretKey => 'Secret key';

	/// en-US: 'Turnstile'
	String get turnstile => 'Turnstile';

	/// en-US: 'Enable Turnstile'
	String get enableTurnstile => 'Enable Turnstile';

	/// en-US: 'Site key'
	String get turnstileSiteKey => 'Site key';

	/// en-US: 'Secret key'
	String get turnstileSecretKey => 'Secret key';

	/// en-US: 'Using multiple Captcha systems may cause interference between them. Would you like to disable the other Captcha systems currently active? If you would like them to stay enabled, press cancel.'
	String get avoidMultiCaptchaConfirm => 'Using multiple Captcha systems may cause interference between them. Would you like to disable the other Captcha systems currently active? If you would like them to stay enabled, press cancel.';

	/// en-US: 'Antennas'
	String get antennas => 'Antennas';

	/// en-US: 'Manage Antennas'
	String get manageAntennas => 'Manage Antennas';

	/// en-US: 'Name'
	String get name => 'Name';

	/// en-US: 'Antenna source'
	String get antennaSource => 'Antenna source';

	/// en-US: 'Keywords to listen to'
	String get antennaKeywords => 'Keywords to listen to';

	/// en-US: 'Keywords to exclude'
	String get antennaExcludeKeywords => 'Keywords to exclude';

	/// en-US: 'Exclude bot accounts'
	String get antennaExcludeBots => 'Exclude bot accounts';

	/// en-US: 'Separate with spaces for an AND condition or with line breaks for an OR condition.'
	String get antennaKeywordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';

	/// en-US: 'Notify about new notes'
	String get notifyAntenna => 'Notify about new notes';

	/// en-US: 'Only notes with files'
	String get withFileAntenna => 'Only notes with files';

	/// en-US: 'Exclude notes from sensitive channels'
	String get excludeNotesInSensitiveChannel => 'Exclude notes from sensitive channels';

	/// en-US: 'Enable Push-Notifications for your Browser'
	String get enableServiceworker => 'Enable Push-Notifications for your Browser';

	/// en-US: 'List one username per line'
	String get antennaUsersDescription => 'List one username per line';

	/// en-US: 'Case sensitive'
	String get caseSensitive => 'Case sensitive';

	/// en-US: 'Include replies'
	String get withReplies => 'Include replies';

	/// en-US: 'Following account(s) are connected'
	String get connectedTo => 'Following account(s) are connected';

	/// en-US: 'Notes and replies'
	String get notesAndReplies => 'Notes and replies';

	/// en-US: 'Including files'
	String get withFiles => 'Including files';

	/// en-US: 'Silence'
	String get silence => 'Silence';

	/// en-US: 'Are you sure that you want to silence this user?'
	String get silenceConfirm => 'Are you sure that you want to silence this user?';

	/// en-US: 'Undo silencing'
	String get unsilence => 'Undo silencing';

	/// en-US: 'Are you sure that you want to undo the silencing of this user?'
	String get unsilenceConfirm => 'Are you sure that you want to undo the silencing of this user?';

	/// en-US: 'Popular users'
	String get popularUsers => 'Popular users';

	/// en-US: 'Recently active users'
	String get recentlyUpdatedUsers => 'Recently active users';

	/// en-US: 'Newly joined users'
	String get recentlyRegisteredUsers => 'Newly joined users';

	/// en-US: 'Newly discovered users'
	String get recentlyDiscoveredUsers => 'Newly discovered users';

	/// en-US: 'There are {count} users'
	String exploreUsersCount({required Object count}) => 'There are ${count} users';

	/// en-US: 'Explore the Fediverse'
	String get exploreFediverse => 'Explore the Fediverse';

	/// en-US: 'Popular tags'
	String get popularTags => 'Popular tags';

	/// en-US: 'Lists'
	String get userList => 'Lists';

	/// en-US: 'About'
	String get about => 'About';

	/// en-US: 'About Misskey'
	String get aboutMisskey => 'About Misskey';

	/// en-US: 'Administrator'
	String get administrator => 'Administrator';

	/// en-US: 'Token'
	String get token => 'Token';

	/// en-US: 'Two-factor authentication'
	String get x2fa => 'Two-factor authentication';

	/// en-US: 'Setup two-factor authentification'
	String get setupOf2fa => 'Setup two-factor authentification';

	/// en-US: 'Authenticator App'
	String get totp => 'Authenticator App';

	/// en-US: 'Use an authenticator app to enter one-time passwords'
	String get totpDescription => 'Use an authenticator app to enter one-time passwords';

	/// en-US: 'Moderator'
	String get moderator => 'Moderator';

	/// en-US: 'Moderation'
	String get moderation => 'Moderation';

	/// en-US: 'Moderation note'
	String get moderationNote => 'Moderation note';

	/// en-US: 'You can fill in notes that will be shared only among moderators.'
	String get moderationNoteDescription => 'You can fill in notes that will be shared only among moderators.';

	/// en-US: 'Add moderation note'
	String get addModerationNote => 'Add moderation note';

	/// en-US: 'Moderation logs'
	String get moderationLogs => 'Moderation logs';

	/// en-US: 'Mentioned by {n} users'
	String nUsersMentioned({required Object n}) => 'Mentioned by ${n} users';

	/// en-US: 'Security- and passkeys'
	String get securityKeyAndPasskey => 'Security- and passkeys';

	/// en-US: 'Security key'
	String get securityKey => 'Security key';

	/// en-US: 'Last used'
	String get lastUsed => 'Last used';

	/// en-US: 'Last used: {t}'
	String lastUsedAt({required Object t}) => 'Last used: ${t}';

	/// en-US: 'Unregister'
	String get unregister => 'Unregister';

	/// en-US: 'Password-less login'
	String get passwordLessLogin => 'Password-less login';

	/// en-US: 'Allows password-less login using a security- or passkey only'
	String get passwordLessLoginDescription => 'Allows password-less login using a security- or passkey only';

	/// en-US: 'Reset password'
	String get resetPassword => 'Reset password';

	/// en-US: 'The new password is "{password}"'
	String newPasswordIs({required Object password}) => 'The new password is "${password}"';

	/// en-US: 'Reduce UI animations'
	String get reduceUiAnimation => 'Reduce UI animations';

	/// en-US: 'Share'
	String get share => 'Share';

	/// en-US: 'Not found'
	String get notFound => 'Not found';

	/// en-US: 'No page corresponding to this URL could be found.'
	String get notFoundDescription => 'No page corresponding to this URL could be found.';

	/// en-US: 'Default folder for uploads'
	String get uploadFolder => 'Default folder for uploads';

	/// en-US: 'Mark all notifications as read'
	String get markAsReadAllNotifications => 'Mark all notifications as read';

	/// en-US: 'Mark all notes as read'
	String get markAsReadAllUnreadNotes => 'Mark all notes as read';

	/// en-US: 'Mark all messages as read'
	String get markAsReadAllTalkMessages => 'Mark all messages as read';

	/// en-US: 'Help'
	String get help => 'Help';

	/// en-US: 'Enter message here'
	String get inputMessageHere => 'Enter message here';

	/// en-US: 'Close'
	String get close => 'Close';

	/// en-US: 'Invites'
	String get invites => 'Invites';

	/// en-US: 'Members'
	String get members => 'Members';

	/// en-US: 'Transfer'
	String get transfer => 'Transfer';

	/// en-US: 'Title'
	String get title => 'Title';

	/// en-US: 'Text'
	String get text => 'Text';

	/// en-US: 'Enable'
	String get enable => 'Enable';

	/// en-US: 'Next'
	String get next => 'Next';

	/// en-US: 'Enter again'
	String get retype => 'Enter again';

	/// en-US: 'Note by {user}'
	String noteOf({required Object user}) => 'Note by ${user}';

	/// en-US: 'Quote'
	String get quoteAttached => 'Quote';

	/// en-US: 'Append as quote?'
	String get quoteQuestion => 'Append as quote?';

	/// en-US: 'The text in clipboard is long. Would you want to attach it as text file?'
	String get attachAsFileQuestion => 'The text in clipboard is long. Would you want to attach it as text file?';

	/// en-US: 'You can only attach one file to a message'
	String get onlyOneFileCanBeAttached => 'You can only attach one file to a message';

	/// en-US: 'Please register or sign in before continuing'
	String get signinRequired => 'Please register or sign in before continuing';

	/// en-US: 'To continue, you need to move your server or sign up / log in to this server.'
	String get signinOrContinueOnRemote => 'To continue, you need to move your server or sign up / log in to this server.';

	/// en-US: 'Invites'
	String get invitations => 'Invites';

	/// en-US: 'Invitation code'
	String get invitationCode => 'Invitation code';

	/// en-US: 'Checking...'
	String get checking => 'Checking...';

	/// en-US: 'Available'
	String get available => 'Available';

	/// en-US: 'Not available'
	String get unavailable => 'Not available';

	/// en-US: 'You can use upper- and lowercase letters, numbers, and underscores.'
	String get usernameInvalidFormat => 'You can use upper- and lowercase letters, numbers, and underscores.';

	/// en-US: 'Too short'
	String get tooShort => 'Too short';

	/// en-US: 'Too long'
	String get tooLong => 'Too long';

	/// en-US: 'Weak password'
	String get weakPassword => 'Weak password';

	/// en-US: 'Average password'
	String get normalPassword => 'Average password';

	/// en-US: 'Strong password'
	String get strongPassword => 'Strong password';

	/// en-US: 'Matches'
	String get passwordMatched => 'Matches';

	/// en-US: 'Does not match'
	String get passwordNotMatched => 'Does not match';

	/// en-US: 'Sign in with {x}'
	String signinWith({required Object x}) => 'Sign in with ${x}';

	/// en-US: 'Unable to sign in. The entered username or password is incorrect.'
	String get signinFailed => 'Unable to sign in. The entered username or password is incorrect.';

	/// en-US: 'Or'
	String get or => 'Or';

	/// en-US: 'Language'
	String get language => 'Language';

	/// en-US: 'User interface language'
	String get uiLanguage => 'User interface language';

	/// en-US: 'About {x}'
	String aboutX({required Object x}) => 'About ${x}';

	/// en-US: 'Emoji style'
	String get emojiStyle => 'Emoji style';

	/// en-US: 'Native'
	String get native => 'Native';

	/// en-US: 'Menu style'
	String get menuStyle => 'Menu style';

	/// en-US: 'Style'
	String get style => 'Style';

	/// en-US: 'Drawer'
	String get drawer => 'Drawer';

	/// en-US: 'Pop up'
	String get popup => 'Pop up';

	/// en-US: 'Only show note actions on hover'
	String get showNoteActionsOnlyHover => 'Only show note actions on hover';

	/// en-US: 'See the number of reactions in notes'
	String get showReactionsCount => 'See the number of reactions in notes';

	/// en-US: 'No history available'
	String get noHistory => 'No history available';

	/// en-US: 'Login history'
	String get signinHistory => 'Login history';

	/// en-US: 'Enable advanced MFM'
	String get enableAdvancedMfm => 'Enable advanced MFM';

	/// en-US: 'Enable animated MFM'
	String get enableAnimatedMfm => 'Enable animated MFM';

	/// en-US: 'Processing...'
	String get doing => 'Processing...';

	/// en-US: 'Category'
	String get category => 'Category';

	/// en-US: 'Aliases'
	String get tags => 'Aliases';

	/// en-US: 'Source of this document'
	String get docSource => 'Source of this document';

	/// en-US: 'Create account'
	String get createAccount => 'Create account';

	/// en-US: 'Existing account'
	String get existingAccount => 'Existing account';

	/// en-US: 'Regenerate'
	String get regenerate => 'Regenerate';

	/// en-US: 'Font size'
	String get fontSize => 'Font size';

	/// en-US: 'Height of media lists with one image only'
	String get mediaListWithOneImageAppearance => 'Height of media lists with one image only';

	/// en-US: 'Limit to {x}'
	String limitTo({required Object x}) => 'Limit to ${x}';

	/// en-US: 'You don't have any pending follow requests'
	String get noFollowRequests => 'You don\'t have any pending follow requests';

	/// en-US: 'Open images in new tab'
	String get openImageInNewTab => 'Open images in new tab';

	/// en-US: 'Dashboard'
	String get dashboard => 'Dashboard';

	/// en-US: 'Local'
	String get local => 'Local';

	/// en-US: 'Remote'
	String get remote => 'Remote';

	/// en-US: 'Total'
	String get total => 'Total';

	/// en-US: 'Changes to last week'
	String get weekOverWeekChanges => 'Changes to last week';

	/// en-US: 'Changes to yesterday'
	String get dayOverDayChanges => 'Changes to yesterday';

	/// en-US: 'Appearance'
	String get appearance => 'Appearance';

	/// en-US: 'Client Settings'
	String get clientSettings => 'Client Settings';

	/// en-US: 'Account Settings'
	String get accountSettings => 'Account Settings';

	/// en-US: 'Promoted'
	String get promotion => 'Promoted';

	/// en-US: 'Promote'
	String get promote => 'Promote';

	/// en-US: 'Number of days'
	String get numberOfDays => 'Number of days';

	/// en-US: 'Hide this note'
	String get hideThisNote => 'Hide this note';

	/// en-US: 'Show featured notes in timelines'
	String get showFeaturedNotesInTimeline => 'Show featured notes in timelines';

	/// en-US: 'Object Storage'
	String get objectStorage => 'Object Storage';

	/// en-US: 'Use object storage'
	String get useObjectStorage => 'Use object storage';

	/// en-US: 'Base URL'
	String get objectStorageBaseUrl => 'Base URL';

	/// en-US: 'The URL used as reference. Specify the URL of your CDN or Proxy if you are using either. For S3 use 'https://<bucket>.s3.amazonaws.com' and for GCS or equivalent services use 'https://storage.googleapis.com/<bucket>', etc.'
	String get objectStorageBaseUrlDesc => 'The URL used as reference. Specify the URL of your CDN or Proxy if you are using either.\nFor S3 use \'https://<bucket>.s3.amazonaws.com\' and for GCS or equivalent services use \'https://storage.googleapis.com/<bucket>\', etc.';

	/// en-US: 'Bucket'
	String get objectStorageBucket => 'Bucket';

	/// en-US: 'Please specify the bucket name used at your provider.'
	String get objectStorageBucketDesc => 'Please specify the bucket name used at your provider.';

	/// en-US: 'Prefix'
	String get objectStoragePrefix => 'Prefix';

	/// en-US: 'Files will be stored under directories with this prefix.'
	String get objectStoragePrefixDesc => 'Files will be stored under directories with this prefix.';

	/// en-US: 'Endpoint'
	String get objectStorageEndpoint => 'Endpoint';

	/// en-US: 'Leave this empty if you are using AWS S3, otherwise specify the endpoint as '<host>' or '<host>:<port>', depending on the service you are using.'
	String get objectStorageEndpointDesc => 'Leave this empty if you are using AWS S3, otherwise specify the endpoint as \'<host>\' or \'<host>:<port>\', depending on the service you are using.';

	/// en-US: 'Region'
	String get objectStorageRegion => 'Region';

	/// en-US: 'Specify a region like 'xx-east-1'. If your service does not distinguish between regions, enter 'us-east-1'. Leave empty if using AWS configuration files or environment variables.'
	String get objectStorageRegionDesc => 'Specify a region like \'xx-east-1\'. If your service does not distinguish between regions, enter \'us-east-1\'. Leave empty if using AWS configuration files or environment variables.';

	/// en-US: 'Use SSL'
	String get objectStorageUseSSL => 'Use SSL';

	/// en-US: 'Turn this off if you are not going to use HTTPS for API connections'
	String get objectStorageUseSSLDesc => 'Turn this off if you are not going to use HTTPS for API connections';

	/// en-US: 'Connect over Proxy'
	String get objectStorageUseProxy => 'Connect over Proxy';

	/// en-US: 'Turn this off if you are not going to use a Proxy for API connections'
	String get objectStorageUseProxyDesc => 'Turn this off if you are not going to use a Proxy for API connections';

	/// en-US: 'Set "public-read" on upload'
	String get objectStorageSetPublicRead => 'Set "public-read" on upload';

	/// en-US: 'If s3ForcePathStyle is enabled, the bucket name has to included in the path of the URL as opposed to the hostname of the URL. You may need to enable this setting when using services such as a self-hosted Minio instance.'
	String get s3ForcePathStyleDesc => 'If s3ForcePathStyle is enabled, the bucket name has to included in the path of the URL as opposed to the hostname of the URL. You may need to enable this setting when using services such as a self-hosted Minio instance.';

	/// en-US: 'Server logs'
	String get serverLogs => 'Server logs';

	/// en-US: 'Delete all'
	String get deleteAll => 'Delete all';

	/// en-US: 'Display the posting form at the top of the timeline'
	String get showFixedPostForm => 'Display the posting form at the top of the timeline';

	/// en-US: 'Display the posting form at the top of the timeline (Channels)'
	String get showFixedPostFormInChannel => 'Display the posting form at the top of the timeline (Channels)';

	/// en-US: 'Include replies by newly followed users in the timeline by default'
	String get withRepliesByDefaultForNewlyFollowed => 'Include replies by newly followed users in the timeline by default';

	/// en-US: 'There are new notes'
	String get newNoteRecived => 'There are new notes';

	/// en-US: 'New Note'
	String get newNote => 'New Note';

	/// en-US: 'Sounds'
	String get sounds => 'Sounds';

	/// en-US: 'Sounds'
	String get sound => 'Sounds';

	/// en-US: 'Notification sound settings'
	String get notificationSoundSettings => 'Notification sound settings';

	/// en-US: 'Listen'
	String get listen => 'Listen';

	/// en-US: 'None'
	String get none => 'None';

	/// en-US: 'Show in page'
	String get showInPage => 'Show in page';

	/// en-US: 'Pop-out'
	String get popout => 'Pop-out';

	/// en-US: 'Volume'
	String get volume => 'Volume';

	/// en-US: 'Master volume'
	String get masterVolume => 'Master volume';

	/// en-US: 'Disable sound'
	String get notUseSound => 'Disable sound';

	/// en-US: 'Output sounds only if Misskey is active'
	String get useSoundOnlyWhenActive => 'Output sounds only if Misskey is active';

	/// en-US: 'Details'
	String get details => 'Details';

	/// en-US: 'Renote details'
	String get renoteDetails => 'Renote details';

	/// en-US: 'Select an emoji'
	String get chooseEmoji => 'Select an emoji';

	/// en-US: 'The operation could not be completed'
	String get unableToProcess => 'The operation could not be completed';

	/// en-US: 'Recently used'
	String get recentUsed => 'Recently used';

	/// en-US: 'Install'
	String get install => 'Install';

	/// en-US: 'Uninstall'
	String get uninstall => 'Uninstall';

	/// en-US: 'Authorized Applications'
	String get installedApps => 'Authorized Applications';

	/// en-US: 'There's nothing to see here'
	String get nothing => 'There\'s nothing to see here';

	/// en-US: 'Authorized at'
	String get installedDate => 'Authorized at';

	/// en-US: 'Last used at'
	String get lastUsedDate => 'Last used at';

	/// en-US: 'State'
	String get state => 'State';

	/// en-US: 'Sorting order'
	String get sort => 'Sorting order';

	/// en-US: 'Ascending'
	String get ascendingOrder => 'Ascending';

	/// en-US: 'Descending'
	String get descendingOrder => 'Descending';

	/// en-US: 'Scratchpad'
	String get scratchpad => 'Scratchpad';

	/// en-US: 'The Scratchpad provides an environment for AiScript experiments. You can write, execute, and check the results of it interacting with Misskey in it.'
	String get scratchpadDescription => 'The Scratchpad provides an environment for AiScript experiments. You can write, execute, and check the results of it interacting with Misskey in it.';

	/// en-US: 'UI inspector'
	String get uiInspector => 'UI inspector';

	/// en-US: 'You can see the UI component server list on memory. UI component will be generated by Ui:C: function.'
	String get uiInspectorDescription => 'You can see the UI component server list on memory. UI component will be generated by Ui:C: function.';

	/// en-US: 'Output'
	String get output => 'Output';

	/// en-US: 'Script'
	String get script => 'Script';

	/// en-US: 'Disable AiScript on Pages'
	String get disablePagesScript => 'Disable AiScript on Pages';

	/// en-US: 'Update remote user information'
	String get updateRemoteUser => 'Update remote user information';

	/// en-US: 'Unset avatar'
	String get unsetUserAvatar => 'Unset avatar';

	/// en-US: 'Are you sure you want to unset the avatar?'
	String get unsetUserAvatarConfirm => 'Are you sure you want to unset the avatar?';

	/// en-US: 'Unset banner'
	String get unsetUserBanner => 'Unset banner';

	/// en-US: 'Are you sure you want to unset the banner?'
	String get unsetUserBannerConfirm => 'Are you sure you want to unset the banner?';

	/// en-US: 'Delete all files'
	String get deleteAllFiles => 'Delete all files';

	/// en-US: 'Are you sure that you want to delete all files?'
	String get deleteAllFilesConfirm => 'Are you sure that you want to delete all files?';

	/// en-US: 'Unfollow all followed users'
	String get removeAllFollowing => 'Unfollow all followed users';

	/// en-US: 'Executing this unfollows all accounts from {host}. Please run this if the instance e.g. no longer exists.'
	String removeAllFollowingDescription({required Object host}) => 'Executing this unfollows all accounts from ${host}. Please run this if the instance e.g. no longer exists.';

	/// en-US: 'This user has been suspended.'
	String get userSuspended => 'This user has been suspended.';

	/// en-US: 'This user is being silenced.'
	String get userSilenced => 'This user is being silenced.';

	/// en-US: 'This account is suspended'
	String get yourAccountSuspendedTitle => 'This account is suspended';

	/// en-US: 'This account has been suspended due to breaking the server's terms of services or similar. Contact the administrator if you would like to know a more detailed reason. Please do not create a new account.'
	String get yourAccountSuspendedDescription => 'This account has been suspended due to breaking the server\'s terms of services or similar. Contact the administrator if you would like to know a more detailed reason. Please do not create a new account.';

	/// en-US: 'Invalid token'
	String get tokenRevoked => 'Invalid token';

	/// en-US: 'This token has expired. Please log in again.'
	String get tokenRevokedDescription => 'This token has expired. Please log in again.';

	/// en-US: 'Account deleted'
	String get accountDeleted => 'Account deleted';

	/// en-US: 'This account has been deleted.'
	String get accountDeletedDescription => 'This account has been deleted.';

	/// en-US: 'Menu'
	String get menu => 'Menu';

	/// en-US: 'Divider'
	String get divider => 'Divider';

	/// en-US: 'Add Item'
	String get addItem => 'Add Item';

	/// en-US: 'Rearrange'
	String get rearrange => 'Rearrange';

	/// en-US: 'Relays'
	String get relays => 'Relays';

	/// en-US: 'Add Relay'
	String get addRelay => 'Add Relay';

	/// en-US: 'Inbox URL'
	String get inboxUrl => 'Inbox URL';

	/// en-US: 'Added Relays'
	String get addedRelays => 'Added Relays';

	/// en-US: 'Must be enabled for push notifications.'
	String get serviceworkerInfo => 'Must be enabled for push notifications.';

	/// en-US: 'Deleted note'
	String get deletedNote => 'Deleted note';

	/// en-US: 'Invisible note'
	String get invisibleNote => 'Invisible note';

	/// en-US: 'Automatically load more'
	String get enableInfiniteScroll => 'Automatically load more';

	/// en-US: 'Visibility'
	String get visibility => 'Visibility';

	/// en-US: 'Poll'
	String get poll => 'Poll';

	/// en-US: 'Hide content'
	String get useCw => 'Hide content';

	/// en-US: 'Open video player'
	String get enablePlayer => 'Open video player';

	/// en-US: 'Close video player'
	String get disablePlayer => 'Close video player';

	/// en-US: 'Expand post'
	String get expandTweet => 'Expand post';

	/// en-US: 'Theme editor'
	String get themeEditor => 'Theme editor';

	/// en-US: 'Description'
	String get description => 'Description';

	/// en-US: 'Add alt text'
	String get describeFile => 'Add alt text';

	/// en-US: 'Enter alt text'
	String get enterFileDescription => 'Enter alt text';

	/// en-US: 'Author'
	String get author => 'Author';

	/// en-US: 'There are unsaved changes. Do you want to discard them?'
	String get leaveConfirm => 'There are unsaved changes. Do you want to discard them?';

	/// en-US: 'Management'
	String get manage => 'Management';

	/// en-US: 'Plugins'
	String get plugins => 'Plugins';

	/// en-US: 'Preference backups'
	String get preferencesBackups => 'Preference backups';

	/// en-US: 'Deck'
	String get deck => 'Deck';

	/// en-US: 'Leave Deck'
	String get undeck => 'Leave Deck';

	/// en-US: 'Use blur effect for modals'
	String get useBlurEffectForModal => 'Use blur effect for modals';

	/// en-US: 'Use full-size reaction picker'
	String get useFullReactionPicker => 'Use full-size reaction picker';

	/// en-US: 'Width'
	String get width => 'Width';

	/// en-US: 'Height'
	String get height => 'Height';

	/// en-US: 'Big'
	String get large => 'Big';

	/// en-US: 'Medium'
	String get medium => 'Medium';

	/// en-US: 'Small'
	String get small => 'Small';

	/// en-US: 'Generate access token'
	String get generateAccessToken => 'Generate access token';

	/// en-US: 'Permissions'
	String get permission => 'Permissions';

	/// en-US: 'Admin Permissions'
	String get adminPermission => 'Admin Permissions';

	/// en-US: 'Enable all'
	String get enableAll => 'Enable all';

	/// en-US: 'Disable all'
	String get disableAll => 'Disable all';

	/// en-US: 'Grant access to account'
	String get tokenRequested => 'Grant access to account';

	/// en-US: 'This plugin will be able to use the permissions set here.'
	String get pluginTokenRequestedDescription => 'This plugin will be able to use the permissions set here.';

	/// en-US: 'Notification type'
	String get notificationType => 'Notification type';

	/// en-US: 'Edit'
	String get edit => 'Edit';

	/// en-US: 'Email server'
	String get emailServer => 'Email server';

	/// en-US: 'Enable email distribution'
	String get enableEmail => 'Enable email distribution';

	/// en-US: 'Used to confirm your email during sign-up or if you forget your password'
	String get emailConfigInfo => 'Used to confirm your email during sign-up or if you forget your password';

	/// en-US: 'Email'
	String get email => 'Email';

	/// en-US: 'Email address'
	String get emailAddress => 'Email address';

	/// en-US: 'SMTP Server Configuration'
	String get smtpConfig => 'SMTP Server Configuration';

	/// en-US: 'Host'
	String get smtpHost => 'Host';

	/// en-US: 'Port'
	String get smtpPort => 'Port';

	/// en-US: 'Username'
	String get smtpUser => 'Username';

	/// en-US: 'Password'
	String get smtpPass => 'Password';

	/// en-US: 'Leave username and password empty to disable SMTP authentication'
	String get emptyToDisableSmtpAuth => 'Leave username and password empty to disable SMTP authentication';

	/// en-US: 'Use implicit SSL/TLS for SMTP connections'
	String get smtpSecure => 'Use implicit SSL/TLS for SMTP connections';

	/// en-US: 'Turn this off when using STARTTLS'
	String get smtpSecureInfo => 'Turn this off when using STARTTLS';

	/// en-US: 'Test email delivery'
	String get testEmail => 'Test email delivery';

	/// en-US: 'Word mute'
	String get wordMute => 'Word mute';

	/// en-US: 'Minimize notes that contain the specified word or phrase. Minimized notes can be displayed by clicking on them.'
	String get wordMuteDescription => 'Minimize notes that contain the specified word or phrase. Minimized notes can be displayed by clicking on them.';

	/// en-US: 'Hard word mute'
	String get hardWordMute => 'Hard word mute';

	/// en-US: 'Show muted words'
	String get showMutedWord => 'Show muted words';

	/// en-US: 'Hide notes that contain the specified word or phrase. Unlike word mute, the note will be completely hidden from view.'
	String get hardWordMuteDescription => 'Hide notes that contain the specified word or phrase. Unlike word mute, the note will be completely hidden from view.';

	/// en-US: 'Regular Expression error'
	String get regexpError => 'Regular Expression error';

	/// en-US: 'An error occurred in the regular expression on line {line} of your {tab} word mutes:'
	String regexpErrorDescription({required Object line, required Object tab}) => 'An error occurred in the regular expression on line ${line} of your ${tab} word mutes:';

	/// en-US: 'Instance Mutes'
	String get instanceMute => 'Instance Mutes';

	/// en-US: '{name} said something'
	String userSaysSomething({required Object name}) => '${name} said something';

	/// en-US: '{name} said something about "{word}"'
	String userSaysSomethingAbout({required Object name, required Object word}) => '${name} said something about "${word}"';

	/// en-US: 'Activate'
	String get makeActive => 'Activate';

	/// en-US: 'Display'
	String get display => 'Display';

	/// en-US: 'Copy'
	String get copy => 'Copy';

	/// en-US: 'Copied to clipboard'
	String get copiedToClipboard => 'Copied to clipboard';

	/// en-US: 'Metrics'
	String get metrics => 'Metrics';

	/// en-US: 'Overview'
	String get overview => 'Overview';

	/// en-US: 'Logs'
	String get logs => 'Logs';

	/// en-US: 'Delayed'
	String get delayed => 'Delayed';

	/// en-US: 'Database'
	String get database => 'Database';

	/// en-US: 'Channels'
	String get channel => 'Channels';

	/// en-US: 'Create'
	String get create => 'Create';

	/// en-US: 'Notification settings'
	String get notificationSetting => 'Notification settings';

	/// en-US: 'Select the types of notification to display.'
	String get notificationSettingDesc => 'Select the types of notification to display.';

	/// en-US: 'Use global settings'
	String get useGlobalSetting => 'Use global settings';

	/// en-US: 'If turned on, your account's notification settings will be used. If turned off, individual configurations can be made.'
	String get useGlobalSettingDesc => 'If turned on, your account\'s notification settings will be used. If turned off, individual configurations can be made.';

	/// en-US: 'Other'
	String get other => 'Other';

	/// en-US: 'Regenerate login token'
	String get regenerateLoginToken => 'Regenerate login token';

	/// en-US: 'Regenerates the token used internally during login. Normally this action is not necessary. If regenerated, all devices will be logged out.'
	String get regenerateLoginTokenDescription => 'Regenerates the token used internally during login. Normally this action is not necessary. If regenerated, all devices will be logged out.';

	/// en-US: 'This is the keyword when searching for custom emojis.'
	String get theKeywordWhenSearchingForCustomEmoji => 'This is the keyword when searching for custom emojis.';

	/// en-US: 'Separate multiple entries with spaces.'
	String get setMultipleBySeparatingWithSpace => 'Separate multiple entries with spaces.';

	/// en-US: 'File ID or URL'
	String get fileIdOrUrl => 'File ID or URL';

	/// en-US: 'Behavior'
	String get behavior => 'Behavior';

	/// en-US: 'Sample'
	String get sample => 'Sample';

	/// en-US: 'Reports'
	String get abuseReports => 'Reports';

	/// en-US: 'Report'
	String get reportAbuse => 'Report';

	/// en-US: 'Report renote'
	String get reportAbuseRenote => 'Report renote';

	/// en-US: 'Report {name}'
	String reportAbuseOf({required Object name}) => 'Report ${name}';

	/// en-US: 'Please fill in details regarding this report. If it is about a specific note, please include its URL.'
	String get fillAbuseReportDescription => 'Please fill in details regarding this report. If it is about a specific note, please include its URL.';

	/// en-US: 'Your report has been sent. Thank you very much.'
	String get abuseReported => 'Your report has been sent. Thank you very much.';

	/// en-US: 'Reporter'
	String get reporter => 'Reporter';

	/// en-US: 'Reportee Origin'
	String get reporteeOrigin => 'Reportee Origin';

	/// en-US: 'Reporter Origin'
	String get reporterOrigin => 'Reporter Origin';

	/// en-US: 'Send'
	String get send => 'Send';

	/// en-US: 'Open in new tab'
	String get openInNewTab => 'Open in new tab';

	/// en-US: 'Open in side view'
	String get openInSideView => 'Open in side view';

	/// en-US: 'Default navigation behavior'
	String get defaultNavigationBehaviour => 'Default navigation behavior';

	/// en-US: 'Editing these settings may damage your account.'
	String get editTheseSettingsMayBreakAccount => 'Editing these settings may damage your account.';

	/// en-US: 'Instance information of notes'
	String get instanceTicker => 'Instance information of notes';

	/// en-US: 'Waiting for {x}'
	String waitingFor({required Object x}) => 'Waiting for ${x}';

	/// en-US: 'Random'
	String get random => 'Random';

	/// en-US: 'System'
	String get system => 'System';

	/// en-US: 'Switch UI'
	String get switchUi => 'Switch UI';

	/// en-US: 'Desktop'
	String get desktop => 'Desktop';

	/// en-US: 'Clip'
	String get clip => 'Clip';

	/// en-US: 'Create new'
	String get createNew => 'Create new';

	/// en-US: 'Optional'
	String get optional => 'Optional';

	/// en-US: 'Create new clip'
	String get createNewClip => 'Create new clip';

	/// en-US: 'Unclip'
	String get unclip => 'Unclip';

	/// en-US: 'This note is already part of the "{name}" clip. Do you want to remove it from this clip instead?'
	String confirmToUnclipAlreadyClippedNote({required Object name}) => 'This note is already part of the "${name}" clip. Do you want to remove it from this clip instead?';

	/// en-US: 'Public'
	String get public => 'Public';

	/// en-US: 'Private'
	String get private => 'Private';

	/// en-US: 'Misskey is being translated into various languages by volunteers. You can help at {link}.'
	String i18nInfo({required Object link}) => 'Misskey is being translated into various languages by volunteers. You can help at ${link}.';

	/// en-US: 'Manage access tokens'
	String get manageAccessTokens => 'Manage access tokens';

	/// en-US: 'Account Info'
	String get accountInfo => 'Account Info';

	/// en-US: 'Number of notes'
	String get notesCount => 'Number of notes';

	/// en-US: 'Number of replies sent'
	String get repliesCount => 'Number of replies sent';

	/// en-US: 'Number of renotes sent'
	String get renotesCount => 'Number of renotes sent';

	/// en-US: 'Number of replies received'
	String get repliedCount => 'Number of replies received';

	/// en-US: 'Number of renotes received'
	String get renotedCount => 'Number of renotes received';

	/// en-US: 'Number of followed accounts'
	String get followingCount => 'Number of followed accounts';

	/// en-US: 'Number of followers'
	String get followersCount => 'Number of followers';

	/// en-US: 'Number of sent reactions'
	String get sentReactionsCount => 'Number of sent reactions';

	/// en-US: 'Number of received reactions'
	String get receivedReactionsCount => 'Number of received reactions';

	/// en-US: 'Number of sent poll votes'
	String get pollVotesCount => 'Number of sent poll votes';

	/// en-US: 'Number of received poll votes'
	String get pollVotedCount => 'Number of received poll votes';

	/// en-US: 'Yes'
	String get yes => 'Yes';

	/// en-US: 'No'
	String get no => 'No';

	/// en-US: 'Number of Drive files'
	String get driveFilesCount => 'Number of Drive files';

	/// en-US: 'Drive space usage'
	String get driveUsage => 'Drive space usage';

	/// en-US: 'Reject crawler indexing'
	String get noCrawle => 'Reject crawler indexing';

	/// en-US: 'Ask search engines to not index your profile page, notes, Pages, etc.'
	String get noCrawleDescription => 'Ask search engines to not index your profile page, notes, Pages, etc.';

	/// en-US: 'Unless you set your note visiblity to "Followers only", your notes will be visible to anyone, even if you require followers to be manually approved.'
	String get lockedAccountInfo => 'Unless you set your note visiblity to "Followers only", your notes will be visible to anyone, even if you require followers to be manually approved.';

	/// en-US: 'Mark as sensitive by default'
	String get alwaysMarkSensitive => 'Mark as sensitive by default';

	/// en-US: 'Load original images instead of showing thumbnails'
	String get loadRawImages => 'Load original images instead of showing thumbnails';

	/// en-US: 'Don't play animated images'
	String get disableShowingAnimatedImages => 'Don\'t play animated images';

	/// en-US: 'Highlight sensitive media'
	String get highlightSensitiveMedia => 'Highlight sensitive media';

	/// en-US: 'A verification email has been sent. Please follow the included link to complete verification.'
	String get verificationEmailSent => 'A verification email has been sent. Please follow the included link to complete verification.';

	/// en-US: 'Not set'
	String get notSet => 'Not set';

	/// en-US: 'Email has been verified'
	String get emailVerified => 'Email has been verified';

	/// en-US: 'Number of favorite notes'
	String get noteFavoritesCount => 'Number of favorite notes';

	/// en-US: 'Number of liked Pages'
	String get pageLikesCount => 'Number of liked Pages';

	/// en-US: 'Number of received Page likes'
	String get pageLikedCount => 'Number of received Page likes';

	/// en-US: 'Contact'
	String get contact => 'Contact';

	/// en-US: 'Use the system's default font'
	String get useSystemFont => 'Use the system\'s default font';

	/// en-US: 'Clips'
	String get clips => 'Clips';

	/// en-US: 'Experimental features'
	String get experimentalFeatures => 'Experimental features';

	/// en-US: 'Experimental'
	String get experimental => 'Experimental';

	/// en-US: 'This is an experimental feature. Its functionality is subject to change, and it may not operate as intended.'
	String get thisIsExperimentalFeature => 'This is an experimental feature. Its functionality is subject to change, and it may not operate as intended.';

	/// en-US: 'Developer'
	String get developer => 'Developer';

	/// en-US: 'Make account visible in "Explore"'
	String get makeExplorable => 'Make account visible in "Explore"';

	/// en-US: 'If you turn this off, your account will not show up in the "Explore" section.'
	String get makeExplorableDescription => 'If you turn this off, your account will not show up in the "Explore" section.';

	/// en-US: 'Duplicate'
	String get duplicate => 'Duplicate';

	/// en-US: 'Left'
	String get left => 'Left';

	/// en-US: 'Center'
	String get center => 'Center';

	/// en-US: 'Wide'
	String get wide => 'Wide';

	/// en-US: 'Narrow'
	String get narrow => 'Narrow';

	/// en-US: 'This setting will only apply after a page reload. Reload now?'
	String get reloadToApplySetting => 'This setting will only apply after a page reload. Reload now?';

	/// en-US: 'A reload is required for this to be reflected.'
	String get needReloadToApply => 'A reload is required for this to be reflected.';

	/// en-US: 'A Misskey restart is required to reflect the change.'
	String get needToRestartServerToApply => 'A Misskey restart is required to reflect the change.';

	/// en-US: 'Show title bar'
	String get showTitlebar => 'Show title bar';

	/// en-US: 'Clear cache'
	String get clearCache => 'Clear cache';

	/// en-US: '{n} users are online'
	String onlineUsersCount({required Object n}) => '${n} users are online';

	/// en-US: '{n} Users'
	String nUsers({required Object n}) => '${n} Users';

	/// en-US: '{n} Notes'
	String nNotes({required Object n}) => '${n} Notes';

	/// en-US: 'Send error reports'
	String get sendErrorReports => 'Send error reports';

	/// en-US: 'When turned on, detailed error information will be shared with Misskey when a problem occurs, helping to improve the quality of Misskey. This will include information such the version of your OS, what browser you're using, your activity in Misskey, etc.'
	String get sendErrorReportsDescription => 'When turned on, detailed error information will be shared with Misskey when a problem occurs, helping to improve the quality of Misskey.\nThis will include information such the version of your OS, what browser you\'re using, your activity in Misskey, etc.';

	/// en-US: 'My theme'
	String get myTheme => 'My theme';

	/// en-US: 'Background color'
	String get backgroundColor => 'Background color';

	/// en-US: 'Accent color'
	String get accentColor => 'Accent color';

	/// en-US: 'Text color'
	String get textColor => 'Text color';

	/// en-US: 'Save as...'
	String get saveAs => 'Save as...';

	/// en-US: 'Advanced'
	String get advanced => 'Advanced';

	/// en-US: 'Advanced settings'
	String get advancedSettings => 'Advanced settings';

	/// en-US: 'Value'
	String get value => 'Value';

	/// en-US: 'Created at'
	String get createdAt => 'Created at';

	/// en-US: 'Updated at'
	String get updatedAt => 'Updated at';

	/// en-US: 'Save changes?'
	String get saveConfirm => 'Save changes?';

	/// en-US: 'Really delete?'
	String get deleteConfirm => 'Really delete?';

	/// en-US: 'Invalid value.'
	String get invalidValue => 'Invalid value.';

	/// en-US: 'Registry'
	String get registry => 'Registry';

	/// en-US: 'Close account'
	String get closeAccount => 'Close account';

	/// en-US: 'Current version'
	String get currentVersion => 'Current version';

	/// en-US: 'Newest version'
	String get latestVersion => 'Newest version';

	/// en-US: 'You are using the newest version of your client.'
	String get youAreRunningUpToDateClient => 'You are using the newest version of your client.';

	/// en-US: 'There is a newer version of your client available.'
	String get newVersionOfClientAvailable => 'There is a newer version of your client available.';

	/// en-US: 'Usage'
	String get usageAmount => 'Usage';

	/// en-US: 'Capacity'
	String get capacity => 'Capacity';

	/// en-US: 'Used'
	String get inUse => 'Used';

	/// en-US: 'Edit code'
	String get editCode => 'Edit code';

	/// en-US: 'Apply'
	String get apply => 'Apply';

	/// en-US: 'Receive notifications from this instance'
	String get receiveAnnouncementFromInstance => 'Receive notifications from this instance';

	/// en-US: 'Email notifications'
	String get emailNotification => 'Email notifications';

	/// en-US: 'Publish'
	String get publish => 'Publish';

	/// en-US: 'Search in channel'
	String get inChannelSearch => 'Search in channel';

	/// en-US: 'Open reaction picker on right-click'
	String get useReactionPickerForContextMenu => 'Open reaction picker on right-click';

	/// en-US: '{users} is/are typing...'
	String typingUsers({required Object users}) => '${users} is/are typing...';

	/// en-US: 'Jump to specific date'
	String get jumpToSpecifiedDate => 'Jump to specific date';

	/// en-US: 'Currently displaying an old timeline'
	String get showingPastTimeline => 'Currently displaying an old timeline';

	/// en-US: 'Return'
	String get clear => 'Return';

	/// en-US: 'Mark all as read'
	String get markAllAsRead => 'Mark all as read';

	/// en-US: 'Back'
	String get goBack => 'Back';

	/// en-US: 'Really remove your like?'
	String get unlikeConfirm => 'Really remove your like?';

	/// en-US: 'Full view'
	String get fullView => 'Full view';

	/// en-US: 'Exit full view'
	String get quitFullView => 'Exit full view';

	/// en-US: 'Add description'
	String get addDescription => 'Add description';

	/// en-US: 'You can display notes here by selecting "Pin to profile" from the menu of individual notes.'
	String get userPagePinTip => 'You can display notes here by selecting "Pin to profile" from the menu of individual notes.';

	/// en-US: 'This note contains mentions of users not included as recipients'
	String get notSpecifiedMentionWarning => 'This note contains mentions of users not included as recipients';

	/// en-US: 'About'
	String get info => 'About';

	/// en-US: 'User information'
	String get userInfo => 'User information';

	/// en-US: 'Unknown'
	String get unknown => 'Unknown';

	/// en-US: 'Online status'
	String get onlineStatus => 'Online status';

	/// en-US: 'Hide online status'
	String get hideOnlineStatus => 'Hide online status';

	/// en-US: 'Hiding your online status reduces the convenience of some features such as the search.'
	String get hideOnlineStatusDescription => 'Hiding your online status reduces the convenience of some features such as the search.';

	/// en-US: 'Online'
	String get online => 'Online';

	/// en-US: 'Active'
	String get active => 'Active';

	/// en-US: 'Offline'
	String get offline => 'Offline';

	/// en-US: 'Not recommended'
	String get notRecommended => 'Not recommended';

	/// en-US: 'Bot Protection'
	String get botProtection => 'Bot Protection';

	/// en-US: 'Blocked/Silenced Instances'
	String get instanceBlocking => 'Blocked/Silenced Instances';

	/// en-US: 'Select account'
	String get selectAccount => 'Select account';

	/// en-US: 'Switch account'
	String get switchAccount => 'Switch account';

	/// en-US: 'Enabled'
	String get enabled => 'Enabled';

	/// en-US: 'Disabled'
	String get disabled => 'Disabled';

	/// en-US: 'Quick actions'
	String get quickAction => 'Quick actions';

	/// en-US: 'User'
	String get user => 'User';

	/// en-US: 'Management'
	String get administration => 'Management';

	/// en-US: 'Accounts'
	String get accounts => 'Accounts';

	/// en-US: 'Switch'
	String get switch_ => 'Switch';

	/// en-US: 'Maintainer information is not configured.'
	String get noMaintainerInformationWarning => 'Maintainer information is not configured.';

	/// en-US: 'Inquiry URL isn’t set'
	String get noInquiryUrlWarning => 'Inquiry URL isn’t set';

	/// en-US: 'Bot protection is not configured.'
	String get noBotProtectionWarning => 'Bot protection is not configured.';

	/// en-US: 'Configure'
	String get configure => 'Configure';

	/// en-US: 'Create new gallery post'
	String get postToGallery => 'Create new gallery post';

	/// en-US: 'Post to this hashtag'
	String get postToHashtag => 'Post to this hashtag';

	/// en-US: 'Gallery'
	String get gallery => 'Gallery';

	/// en-US: 'Recent posts'
	String get recentPosts => 'Recent posts';

	/// en-US: 'Popular posts'
	String get popularPosts => 'Popular posts';

	/// en-US: 'Share with note'
	String get shareWithNote => 'Share with note';

	/// en-US: 'Advertisements'
	String get ads => 'Advertisements';

	/// en-US: 'Deadline'
	String get expiration => 'Deadline';

	/// en-US: 'Start'
	String get startingperiod => 'Start';

	/// en-US: 'Memo'
	String get memo => 'Memo';

	/// en-US: 'Priority'
	String get priority => 'Priority';

	/// en-US: 'High'
	String get high => 'High';

	/// en-US: 'Medium'
	String get middle => 'Medium';

	/// en-US: 'Low'
	String get low => 'Low';

	/// en-US: 'Email address not set.'
	String get emailNotConfiguredWarning => 'Email address not set.';

	/// en-US: 'Ratio'
	String get ratio => 'Ratio';

	/// en-US: 'Show preview'
	String get previewNoteText => 'Show preview';

	/// en-US: 'Custom CSS'
	String get customCss => 'Custom CSS';

	/// en-US: 'This setting should only be used if you know what it does. Entering improper values may cause the client to stop functioning normally.'
	String get customCssWarn => 'This setting should only be used if you know what it does. Entering improper values may cause the client to stop functioning normally.';

	/// en-US: 'Global'
	String get global => 'Global';

	/// en-US: 'Display squared avatars'
	String get squareAvatars => 'Display squared avatars';

	/// en-US: 'Sent'
	String get sent => 'Sent';

	/// en-US: 'Received'
	String get received => 'Received';

	/// en-US: 'Search results'
	String get searchResult => 'Search results';

	/// en-US: 'Hashtags'
	String get hashtags => 'Hashtags';

	/// en-US: 'Troubleshooting'
	String get troubleshooting => 'Troubleshooting';

	/// en-US: 'Use blur effects in the UI'
	String get useBlurEffect => 'Use blur effects in the UI';

	/// en-US: 'Learn more'
	String get learnMore => 'Learn more';

	/// en-US: 'Misskey has been updated!'
	String get misskeyUpdated => 'Misskey has been updated!';

	/// en-US: 'Show changes'
	String get whatIsNew => 'Show changes';

	/// en-US: 'Translate'
	String get translate => 'Translate';

	/// en-US: 'Translated from {x}'
	String translatedFrom({required Object x}) => 'Translated from ${x}';

	/// en-US: 'Account deletion is currently in progress'
	String get accountDeletionInProgress => 'Account deletion is currently in progress';

	/// en-US: 'A name that identifies your account from others on this server. You can use the alphabet (a~z, A~Z), digits (0~9) or underscores (_). Usernames cannot be changed later.'
	String get usernameInfo => 'A name that identifies your account from others on this server.  You can use the alphabet (a~z, A~Z), digits (0~9) or underscores (_). Usernames cannot be changed later.';

	/// en-US: 'Ai Mode'
	String get aiChanMode => 'Ai Mode';

	/// en-US: 'Developer mode'
	String get devMode => 'Developer mode';

	/// en-US: 'Keep content warnings'
	String get keepCw => 'Keep content warnings';

	/// en-US: 'Pub/Sub Accounts'
	String get pubSub => 'Pub/Sub Accounts';

	/// en-US: 'Last communication'
	String get lastCommunication => 'Last communication';

	/// en-US: 'Resolved'
	String get resolved => 'Resolved';

	/// en-US: 'Unresolved'
	String get unresolved => 'Unresolved';

	/// en-US: 'Remove follower'
	String get breakFollow => 'Remove follower';

	/// en-US: 'Really remove this follower?'
	String get breakFollowConfirm => 'Really remove this follower?';

	/// en-US: 'Enabled'
	String get itsOn => 'Enabled';

	/// en-US: 'Disabled'
	String get itsOff => 'Disabled';

	/// en-US: 'On'
	String get on => 'On';

	/// en-US: 'Off'
	String get off => 'Off';

	/// en-US: 'Require email address for sign-up'
	String get emailRequiredForSignup => 'Require email address for sign-up';

	/// en-US: 'Unread'
	String get unread => 'Unread';

	/// en-US: 'Filter'
	String get filter => 'Filter';

	/// en-US: 'Control Panel'
	String get controlPanel => 'Control Panel';

	/// en-US: 'Manage Accounts'
	String get manageAccounts => 'Manage Accounts';

	/// en-US: 'Set reaction history to public'
	String get makeReactionsPublic => 'Set reaction history to public';

	/// en-US: 'This will make the list of all your past reactions publicly visible.'
	String get makeReactionsPublicDescription => 'This will make the list of all your past reactions publicly visible.';

	/// en-US: 'Classic'
	String get classic => 'Classic';

	/// en-US: 'Mute thread'
	String get muteThread => 'Mute thread';

	/// en-US: 'Unmute thread'
	String get unmuteThread => 'Unmute thread';

	/// en-US: 'Visibility of follows'
	String get followingVisibility => 'Visibility of follows';

	/// en-US: 'Visibility of followers'
	String get followersVisibility => 'Visibility of followers';

	/// en-US: 'View thread continuation'
	String get continueThread => 'View thread continuation';

	/// en-US: 'This will irreversibly delete your account. Proceed?'
	String get deleteAccountConfirm => 'This will irreversibly delete your account. Proceed?';

	/// en-US: 'Incorrect password.'
	String get incorrectPassword => 'Incorrect password.';

	/// en-US: 'The one-time password is incorrect or has expired.'
	String get incorrectTotp => 'The one-time password is incorrect or has expired.';

	/// en-US: 'Confirm your vote for "{choice}"?'
	String voteConfirm({required Object choice}) => 'Confirm your vote for "${choice}"?';

	/// en-US: 'Hide'
	String get hide => 'Hide';

	/// en-US: 'Display reaction picker as drawer on mobile'
	String get useDrawerReactionPickerForMobile => 'Display reaction picker as drawer on mobile';

	/// en-US: 'Welcome back, {name}'
	String welcomeBackWithName({required Object name}) => 'Welcome back, ${name}';

	/// en-US: 'Please click [{ok}] to complete email verification.'
	String clickToFinishEmailVerification({required Object ok}) => 'Please click [${ok}] to complete email verification.';

	/// en-US: 'Device type'
	String get overridedDeviceKind => 'Device type';

	/// en-US: 'Smartphone'
	String get smartphone => 'Smartphone';

	/// en-US: 'Tablet'
	String get tablet => 'Tablet';

	/// en-US: 'Auto'
	String get auto => 'Auto';

	/// en-US: 'Instance Ticker Color'
	String get themeColor => 'Instance Ticker Color';

	/// en-US: 'Size'
	String get size => 'Size';

	/// en-US: 'Number of columns'
	String get numberOfColumn => 'Number of columns';

	/// en-US: 'Search'
	String get searchByGoogle => 'Search';

	/// en-US: 'Instance-wide default light theme'
	String get instanceDefaultLightTheme => 'Instance-wide default light theme';

	/// en-US: 'Instance-wide default dark theme'
	String get instanceDefaultDarkTheme => 'Instance-wide default dark theme';

	/// en-US: 'Enter the theme code in object format.'
	String get instanceDefaultThemeDescription => 'Enter the theme code in object format.';

	/// en-US: 'Mute duration'
	String get mutePeriod => 'Mute duration';

	/// en-US: 'Time limit'
	String get period => 'Time limit';

	/// en-US: 'Permanently'
	String get indefinitely => 'Permanently';

	/// en-US: '10 minutes'
	String get tenMinutes => '10 minutes';

	/// en-US: 'One hour'
	String get oneHour => 'One hour';

	/// en-US: 'One day'
	String get oneDay => 'One day';

	/// en-US: 'One week'
	String get oneWeek => 'One week';

	/// en-US: 'One month'
	String get oneMonth => 'One month';

	/// en-US: '3 months'
	String get threeMonths => '3 months';

	/// en-US: '1 year'
	String get oneYear => '1 year';

	/// en-US: '3 days'
	String get threeDays => '3 days';

	/// en-US: 'It may take some time for this to be reflected.'
	String get reflectMayTakeTime => 'It may take some time for this to be reflected.';

	/// en-US: 'Could not fetch account information'
	String get failedToFetchAccountInformation => 'Could not fetch account information';

	/// en-US: 'Rate limit exceeded'
	String get rateLimitExceeded => 'Rate limit exceeded';

	/// en-US: 'Crop image'
	String get cropImage => 'Crop image';

	/// en-US: 'Do you want to crop this image?'
	String get cropImageAsk => 'Do you want to crop this image?';

	/// en-US: 'Crop'
	String get cropYes => 'Crop';

	/// en-US: 'Use as-is'
	String get cropNo => 'Use as-is';

	/// en-US: 'File'
	String get file => 'File';

	/// en-US: 'Last {n} hours'
	String recentNHours({required Object n}) => 'Last ${n} hours';

	/// en-US: 'Last {n} days'
	String recentNDays({required Object n}) => 'Last ${n} days';

	/// en-US: 'Email server not configured.'
	String get noEmailServerWarning => 'Email server not configured.';

	/// en-US: 'There are unsolved reports.'
	String get thereIsUnresolvedAbuseReportWarning => 'There are unsolved reports.';

	/// en-US: 'Recommended'
	String get recommended => 'Recommended';

	/// en-US: 'Check'
	String get check => 'Check';

	/// en-US: 'Change the drive capacity for this user'
	String get driveCapOverrideLabel => 'Change the drive capacity for this user';

	/// en-US: 'Reset the capacity to default by inputting a value of 0 or lower.'
	String get driveCapOverrideCaption => 'Reset the capacity to default by inputting a value of 0 or lower.';

	/// en-US: 'You must log in with an administrator account to view this.'
	String get requireAdminForView => 'You must log in with an administrator account to view this.';

	/// en-US: 'An account created and automatically operated by the system.'
	String get isSystemAccount => 'An account created and automatically operated by the system.';

	/// en-US: 'Please enter {x} to confirm'
	String typeToConfirm({required Object x}) => 'Please enter ${x} to confirm';

	/// en-US: 'Delete account'
	String get deleteAccount => 'Delete account';

	/// en-US: 'Documentation'
	String get document => 'Documentation';

	/// en-US: 'Number of cached pages'
	String get numberOfPageCache => 'Number of cached pages';

	/// en-US: 'Increasing this number will improve convenience for but cause more load as more memory usage on the user's device.'
	String get numberOfPageCacheDescription => 'Increasing this number will improve convenience for but cause more load as more memory usage on the user\'s device.';

	/// en-US: 'Are you sure you want to log out?'
	String get logoutConfirm => 'Are you sure you want to log out?';

	/// en-US: 'Logging out will erase the settings of the client from the browser. In order to be able to restore the settings upon logging in again, you must enable automatic backup of your settings.'
	String get logoutWillClearClientData => 'Logging out will erase the settings of the client from the browser. In order to be able to restore the settings upon logging in again, you must enable automatic backup of your settings.';

	/// en-US: 'Last used at'
	String get lastActiveDate => 'Last used at';

	/// en-US: 'Status bar'
	String get statusbar => 'Status bar';

	/// en-US: 'Select an option'
	String get pleaseSelect => 'Select an option';

	/// en-US: 'Reverse'
	String get reverse => 'Reverse';

	/// en-US: 'Colored'
	String get colored => 'Colored';

	/// en-US: 'Update interval '
	String get refreshInterval => 'Update interval ';

	/// en-US: 'Label'
	String get label => 'Label';

	/// en-US: 'Type'
	String get type => 'Type';

	/// en-US: 'Speed'
	String get speed => 'Speed';

	/// en-US: 'Slow'
	String get slow => 'Slow';

	/// en-US: 'Fast'
	String get fast => 'Fast';

	/// en-US: 'Detection of sensitive media'
	String get sensitiveMediaDetection => 'Detection of sensitive media';

	/// en-US: 'Local only'
	String get localOnly => 'Local only';

	/// en-US: 'Remote only'
	String get remoteOnly => 'Remote only';

	/// en-US: 'Upload failed'
	String get failedToUpload => 'Upload failed';

	/// en-US: 'This file could not be uploaded because parts of it have been detected as potentially inappropriate.'
	String get cannotUploadBecauseInappropriate => 'This file could not be uploaded because parts of it have been detected as potentially inappropriate.';

	/// en-US: 'Upload failed due to lack of Drive capacity.'
	String get cannotUploadBecauseNoFreeSpace => 'Upload failed due to lack of Drive capacity.';

	/// en-US: 'This file cannot be uploaded as it exceeds the file size limit.'
	String get cannotUploadBecauseExceedsFileSizeLimit => 'This file cannot be uploaded as it exceeds the file size limit.';

	/// en-US: 'Unable to upload due to unauthorized file type.'
	String get cannotUploadBecauseUnallowedFileType => 'Unable to upload due to unauthorized file type.';

	/// en-US: 'Beta'
	String get beta => 'Beta';

	/// en-US: 'Automatic marking as sensitive'
	String get enableAutoSensitive => 'Automatic marking as sensitive';

	/// en-US: 'Allows automatic detection and marking of sensitive media through Machine Learning where possible. Even if this option is disabled, it may be enabled instance-wide.'
	String get enableAutoSensitiveDescription => 'Allows automatic detection and marking of sensitive media through Machine Learning where possible. Even if this option is disabled, it may be enabled instance-wide.';

	/// en-US: 'Enables stricter validation of email addresses, which includes checking for disposable addresses and by whether it can actually be communicated with. When unchecked, only the format of the email is validated.'
	String get activeEmailValidationDescription => 'Enables stricter validation of email addresses, which includes checking for disposable addresses and by whether it can actually be communicated with. When unchecked, only the format of the email is validated.';

	/// en-US: 'Navigation bar'
	String get navbar => 'Navigation bar';

	/// en-US: 'Shuffle'
	String get shuffle => 'Shuffle';

	/// en-US: 'Account'
	String get account => 'Account';

	/// en-US: 'Move'
	String get move => 'Move';

	/// en-US: 'Push notifications'
	String get pushNotification => 'Push notifications';

	/// en-US: 'Enable push notifications'
	String get subscribePushNotification => 'Enable push notifications';

	/// en-US: 'Disable push notifications'
	String get unsubscribePushNotification => 'Disable push notifications';

	/// en-US: 'Push notifications are already enabled'
	String get pushNotificationAlreadySubscribed => 'Push notifications are already enabled';

	/// en-US: 'Your browser or instance does not support push notifications'
	String get pushNotificationNotSupported => 'Your browser or instance does not support push notifications';

	/// en-US: 'Delete push notifications once they have been read'
	String get sendPushNotificationReadMessage => 'Delete push notifications once they have been read';

	/// en-US: 'This may increase the power consumption of your device.'
	String get sendPushNotificationReadMessageCaption => 'This may increase the power consumption of your device.';

	/// en-US: 'Maximize'
	String get windowMaximize => 'Maximize';

	/// en-US: 'Minimize'
	String get windowMinimize => 'Minimize';

	/// en-US: 'Restore'
	String get windowRestore => 'Restore';

	/// en-US: 'Alt text'
	String get caption => 'Alt text';

	/// en-US: 'Currently logged in as bot'
	String get loggedInAsBot => 'Currently logged in as bot';

	/// en-US: 'Tools'
	String get tools => 'Tools';

	/// en-US: 'Unable to load'
	String get cannotLoad => 'Unable to load';

	/// en-US: 'Profile views'
	String get numberOfProfileView => 'Profile views';

	/// en-US: 'Like'
	String get like => 'Like';

	/// en-US: 'Unlike'
	String get unlike => 'Unlike';

	/// en-US: 'Likes'
	String get numberOfLikes => 'Likes';

	/// en-US: 'Show'
	String get show => 'Show';

	/// en-US: 'Don't show again'
	String get neverShow => 'Don\'t show again';

	/// en-US: 'Maybe later'
	String get remindMeLater => 'Maybe later';

	/// en-US: 'Have you taken a liking to Misskey?'
	String get didYouLikeMisskey => 'Have you taken a liking to Misskey?';

	/// en-US: '{host} uses the free software, Misskey. We would highly appreciate your donations so development of Misskey can continue!'
	String pleaseDonate({required Object host}) => '${host} uses the free software, Misskey. We would highly appreciate your donations so development of Misskey can continue!';

	/// en-US: 'The corresponding source code is available at {anchor}'
	String correspondingSourceIsAvailable({required Object anchor}) => 'The corresponding source code is available at ${anchor}';

	/// en-US: 'Roles'
	String get roles => 'Roles';

	/// en-US: 'Role'
	String get role => 'Role';

	/// en-US: 'Role not found'
	String get noRole => 'Role not found';

	/// en-US: 'Normal user'
	String get normalUser => 'Normal user';

	/// en-US: 'Undefined'
	String get undefined => 'Undefined';

	/// en-US: 'Assign'
	String get assign => 'Assign';

	/// en-US: 'Unassign'
	String get unassign => 'Unassign';

	/// en-US: 'Color'
	String get color => 'Color';

	/// en-US: 'Manage Custom Emojis'
	String get manageCustomEmojis => 'Manage Custom Emojis';

	/// en-US: 'Manage avatar decorations'
	String get manageAvatarDecorations => 'Manage avatar decorations';

	/// en-US: 'You've hit the creation limit.'
	String get youCannotCreateAnymore => 'You\'ve hit the creation limit.';

	/// en-US: 'Temporarily unavailable'
	String get cannotPerformTemporary => 'Temporarily unavailable';

	/// en-US: 'This action cannot be performed temporarily due to exceeding the execution limit. Please wait for a while and then try again.'
	String get cannotPerformTemporaryDescription => 'This action cannot be performed temporarily due to exceeding the execution limit. Please wait for a while and then try again.';

	/// en-US: 'Invalid parameters'
	String get invalidParamError => 'Invalid parameters';

	/// en-US: 'The request parameters are invalid. This is normally caused by a bug, but may also be due to inputs exceeding size limits or similar.'
	String get invalidParamErrorDescription => 'The request parameters are invalid. This is normally caused by a bug, but may also be due to inputs exceeding size limits or similar.';

	/// en-US: 'Operation denied'
	String get permissionDeniedError => 'Operation denied';

	/// en-US: 'This account does not have the permission to perform this action.'
	String get permissionDeniedErrorDescription => 'This account does not have the permission to perform this action.';

	/// en-US: 'Preset'
	String get preset => 'Preset';

	/// en-US: 'Choose from presets'
	String get selectFromPresets => 'Choose from presets';

	/// en-US: 'Achievements'
	String get achievements => 'Achievements';

	/// en-US: 'Invalid server response'
	String get gotInvalidResponseError => 'Invalid server response';

	/// en-US: 'The server may be unreachable or undergoing maintenance. Please try again later.'
	String get gotInvalidResponseErrorDescription => 'The server may be unreachable or undergoing maintenance. Please try again later.';

	/// en-US: 'This note may annoy others.'
	String get thisPostMayBeAnnoying => 'This note may annoy others.';

	/// en-US: 'Post to home timeline'
	String get thisPostMayBeAnnoyingHome => 'Post to home timeline';

	/// en-US: 'Cancel'
	String get thisPostMayBeAnnoyingCancel => 'Cancel';

	/// en-US: 'Post anyway'
	String get thisPostMayBeAnnoyingIgnore => 'Post anyway';

	/// en-US: 'Collapse renotes you've already seen'
	String get collapseRenotes => 'Collapse renotes you\'ve already seen';

	/// en-US: 'Collapse notes that you've reacted to or renoted before.'
	String get collapseRenotesDescription => 'Collapse notes that you\'ve reacted to or renoted before.';

	/// en-US: 'Internal Server Error'
	String get internalServerError => 'Internal Server Error';

	/// en-US: 'The server has run into an unexpected error.'
	String get internalServerErrorDescription => 'The server has run into an unexpected error.';

	/// en-US: 'Copy error details'
	String get copyErrorInfo => 'Copy error details';

	/// en-US: 'Sign up at this instance'
	String get joinThisServer => 'Sign up at this instance';

	/// en-US: 'Look for another instance'
	String get exploreOtherServers => 'Look for another instance';

	/// en-US: 'Have a look at the timeline'
	String get letsLookAtTimeline => 'Have a look at the timeline';

	/// en-US: 'Really disable federation?'
	String get disableFederationConfirm => 'Really disable federation?';

	/// en-US: 'Even if defederated, posts will continue to be public unless set otherwise. You usually do not need to do this.'
	String get disableFederationConfirmWarn => 'Even if defederated, posts will continue to be public unless set otherwise. You usually do not need to do this.';

	/// en-US: 'Disable'
	String get disableFederationOk => 'Disable';

	/// en-US: 'This instance is invite-only. You must enter a valid invite code sign up.'
	String get invitationRequiredToRegister => 'This instance is invite-only. You must enter a valid invite code sign up.';

	/// en-US: 'This instance does not support sending emails'
	String get emailNotSupported => 'This instance does not support sending emails';

	/// en-US: 'Post to channel'
	String get postToTheChannel => 'Post to channel';

	/// en-US: 'This cannot be changed later.'
	String get cannotBeChangedLater => 'This cannot be changed later.';

	/// en-US: 'Reaction Acceptance'
	String get reactionAcceptance => 'Reaction Acceptance';

	/// en-US: 'Only likes'
	String get likeOnly => 'Only likes';

	/// en-US: 'All (Only likes for remote instances)'
	String get likeOnlyForRemote => 'All (Only likes for remote instances)';

	/// en-US: 'Non-sensitive only'
	String get nonSensitiveOnly => 'Non-sensitive only';

	/// en-US: 'Non-sensitive only (Only likes from remote)'
	String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Non-sensitive only (Only likes from remote)';

	/// en-US: 'Roles assigned to me'
	String get rolesAssignedToMe => 'Roles assigned to me';

	/// en-US: 'Really reset your password?'
	String get resetPasswordConfirm => 'Really reset your password?';

	/// en-US: 'Sensitive words'
	String get sensitiveWords => 'Sensitive words';

	/// en-US: 'The visibility of all notes containing any of the configured words will be set to "Home" automatically. You can list multiple by separating them via line breaks.'
	String get sensitiveWordsDescription => 'The visibility of all notes containing any of the configured words will be set to "Home" automatically. You can list multiple by separating them via line breaks.';

	/// en-US: 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.'
	String get sensitiveWordsDescription2 => 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.';

	/// en-US: 'Prohibited words'
	String get prohibitedWords => 'Prohibited words';

	/// en-US: 'Enables an error when attempting to post a note containing the set word(s). Multiple words can be set, separated by a new line.'
	String get prohibitedWordsDescription => 'Enables an error when attempting to post a note containing the set word(s). Multiple words can be set, separated by a new line.';

	/// en-US: 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.'
	String get prohibitedWordsDescription2 => 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.';

	/// en-US: 'Hidden hashtags'
	String get hiddenTags => 'Hidden hashtags';

	/// en-US: 'Select tags which will not shown on trend list. Multiple tags could be registered by lines.'
	String get hiddenTagsDescription => 'Select tags which will not shown on trend list.\nMultiple tags could be registered by lines.';

	/// en-US: 'Note search is unavailable.'
	String get notesSearchNotAvailable => 'Note search is unavailable.';

	/// en-US: 'License'
	String get license => 'License';

	/// en-US: 'Really remove from favorites?'
	String get unfavoriteConfirm => 'Really remove from favorites?';

	/// en-US: 'My clips'
	String get myClips => 'My clips';

	/// en-US: 'Drive Cleaner'
	String get drivecleaner => 'Drive Cleaner';

	/// en-US: 'Retry running all queues'
	String get retryAllQueuesNow => 'Retry running all queues';

	/// en-US: 'Really retry all?'
	String get retryAllQueuesConfirmTitle => 'Really retry all?';

	/// en-US: 'This will temporarily increase the server load.'
	String get retryAllQueuesConfirmText => 'This will temporarily increase the server load.';

	/// en-US: 'Generate remote user data charts'
	String get enableChartsForRemoteUser => 'Generate remote user data charts';

	/// en-US: 'Generate remote instance data charts'
	String get enableChartsForFederatedInstances => 'Generate remote instance data charts';

	/// en-US: 'Receive remote server stats'
	String get enableStatsForFederatedInstances => 'Receive remote server stats';

	/// en-US: 'Add "Clip" to note action menu'
	String get showClipButtonInNoteFooter => 'Add "Clip" to note action menu';

	/// en-US: 'Reaction display size'
	String get reactionsDisplaySize => 'Reaction display size';

	/// en-US: 'Limit the maximum width of reactions and display them in reduced size.'
	String get limitWidthOfReaction => 'Limit the maximum width of reactions and display them in reduced size.';

	/// en-US: 'Note ID or URL'
	String get noteIdOrUrl => 'Note ID or URL';

	/// en-US: 'Video'
	String get video => 'Video';

	/// en-US: 'Videos'
	String get videos => 'Videos';

	/// en-US: 'Audio'
	String get audio => 'Audio';

	/// en-US: 'Audio'
	String get audioFiles => 'Audio';

	/// en-US: 'Data Saver'
	String get dataSaver => 'Data Saver';

	/// en-US: 'Account Migration'
	String get accountMigration => 'Account Migration';

	/// en-US: 'This user has moved to a new account:'
	String get accountMoved => 'This user has moved to a new account:';

	/// en-US: 'This account has been migrated.'
	String get accountMovedShort => 'This account has been migrated.';

	/// en-US: 'Operation forbidden'
	String get operationForbidden => 'Operation forbidden';

	/// en-US: 'Always show ads'
	String get forceShowAds => 'Always show ads';

	/// en-US: 'Add memo'
	String get addMemo => 'Add memo';

	/// en-US: 'Edit memo'
	String get editMemo => 'Edit memo';

	/// en-US: 'Reactions'
	String get reactionsList => 'Reactions';

	/// en-US: 'Renotes'
	String get renotesList => 'Renotes';

	/// en-US: 'Notifications'
	String get notificationDisplay => 'Notifications';

	/// en-US: 'Top left'
	String get leftTop => 'Top left';

	/// en-US: 'Top right'
	String get rightTop => 'Top right';

	/// en-US: 'Bottom left'
	String get leftBottom => 'Bottom left';

	/// en-US: 'Bottom right'
	String get rightBottom => 'Bottom right';

	/// en-US: 'Stacking direction'
	String get stackAxis => 'Stacking direction';

	/// en-US: 'Vertical'
	String get vertical => 'Vertical';

	/// en-US: 'Horizontal'
	String get horizontal => 'Horizontal';

	/// en-US: 'Position'
	String get position => 'Position';

	/// en-US: 'Server rules'
	String get serverRules => 'Server rules';

	/// en-US: 'To register on this server, you must review and agree to the following:'
	String get pleaseConfirmBelowBeforeSignup => 'To register on this server, you must review and agree to the following:';

	/// en-US: 'You must agree to all above fields to continue.'
	String get pleaseAgreeAllToContinue => 'You must agree to all above fields to continue.';

	/// en-US: 'Continue'
	String get continue_ => 'Continue';

	/// en-US: 'Reserved usernames'
	String get preservedUsernames => 'Reserved usernames';

	/// en-US: 'List usernames to reserve separated by linebreaks. These will become unable during normal account creation, but can be used by administrators to manually create accounts. Already existing accounts using these usernames will not be affected.'
	String get preservedUsernamesDescription => 'List usernames to reserve separated by linebreaks. These will become unable during normal account creation, but can be used by administrators to manually create accounts. Already existing accounts using these usernames will not be affected.';

	/// en-US: 'Compose note from this file'
	String get createNoteFromTheFile => 'Compose note from this file';

	/// en-US: 'Archive'
	String get archive => 'Archive';

	/// en-US: 'Archived'
	String get archived => 'Archived';

	/// en-US: 'Unarchive'
	String get unarchive => 'Unarchive';

	/// en-US: 'Really archive {name}?'
	String channelArchiveConfirmTitle({required Object name}) => 'Really archive ${name}?';

	/// en-US: 'An archived channel won't appear in the channel list or search results anymore. New posts can also not be added to it anymore.'
	String get channelArchiveConfirmDescription => 'An archived channel won\'t appear in the channel list or search results anymore. New posts can also not be added to it anymore.';

	/// en-US: 'This channel has been archived.'
	String get thisChannelArchived => 'This channel has been archived.';

	/// en-US: 'Note display'
	String get displayOfNote => 'Note display';

	/// en-US: 'Profile setup'
	String get initialAccountSetting => 'Profile setup';

	/// en-US: 'Followed'
	String get youFollowing => 'Followed';

	/// en-US: 'Reject usage in Machine Learning (Generative AI)'
	String get preventAiLearning => 'Reject usage in Machine Learning (Generative AI)';

	/// en-US: 'Requests crawlers to not use posted text or image material etc. in machine learning (Predictive / Generative AI) data sets. This is achieved by adding a "noai" HTML-Response flag to the respective content. A complete prevention can however not be achieved through this flag, as it may simply be ignored.'
	String get preventAiLearningDescription => 'Requests crawlers to not use posted text or image material etc. in machine learning (Predictive / Generative AI) data sets. This is achieved by adding a "noai" HTML-Response flag to the respective content. A complete prevention can however not be achieved through this flag, as it may simply be ignored.';

	/// en-US: 'Options'
	String get options => 'Options';

	/// en-US: 'Specific user'
	String get specifyUser => 'Specific user';

	/// en-US: 'Do you want to look up?'
	String get lookupConfirm => 'Do you want to look up?';

	/// en-US: 'Do you want to open a hashtag page?'
	String get openTagPageConfirm => 'Do you want to open a hashtag page?';

	/// en-US: 'Specific host'
	String get specifyHost => 'Specific host';

	/// en-US: 'Could not preview'
	String get failedToPreviewUrl => 'Could not preview';

	/// en-US: 'Update'
	String get update => 'Update';

	/// en-US: 'Roles that can use this emoji as reaction'
	String get rolesThatCanBeUsedThisEmojiAsReaction => 'Roles that can use this emoji as reaction';

	/// en-US: 'If no roles are specified, anyone can use this emoji as reaction.'
	String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'If no roles are specified, anyone can use this emoji as reaction.';

	/// en-US: 'These roles must be public.'
	String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'These roles must be public.';

	/// en-US: 'Really delete your reaction?'
	String get cancelReactionConfirm => 'Really delete your reaction?';

	/// en-US: 'Really change your reaction?'
	String get changeReactionConfirm => 'Really change your reaction?';

	/// en-US: 'Later'
	String get later => 'Later';

	/// en-US: 'To Misskey'
	String get goToMisskey => 'To Misskey';

	/// en-US: 'Additional emoji dictionaries'
	String get additionalEmojiDictionary => 'Additional emoji dictionaries';

	/// en-US: 'Installed'
	String get installed => 'Installed';

	/// en-US: 'Branding'
	String get branding => 'Branding';

	/// en-US: 'Publish server hardware stats'
	String get enableServerMachineStats => 'Publish server hardware stats';

	/// en-US: 'Enable user identicon generation'
	String get enableIdenticonGeneration => 'Enable user identicon generation';

	/// en-US: 'Turning this off can increase performance.'
	String get turnOffToImprovePerformance => 'Turning this off can increase performance.';

	/// en-US: 'Generate invite'
	String get createInviteCode => 'Generate invite';

	/// en-US: 'Generate with options'
	String get createWithOptions => 'Generate with options';

	/// en-US: 'Invite count'
	String get createCount => 'Invite count';

	/// en-US: 'Invite generated'
	String get inviteCodeCreated => 'Invite generated';

	/// en-US: 'You've exceeded the limit of invites you can generate.'
	String get inviteLimitExceeded => 'You\'ve exceeded the limit of invites you can generate.';

	/// en-US: 'Invite limit: {limit} remaining'
	String createLimitRemaining({required Object limit}) => 'Invite limit: ${limit} remaining';

	/// en-US: 'This limit will reset to {limit} at {time}.'
	String inviteLimitResetCycle({required Object limit, required Object time}) => 'This limit will reset to ${limit} at ${time}.';

	/// en-US: 'Expiration date'
	String get expirationDate => 'Expiration date';

	/// en-US: 'No expiration'
	String get noExpirationDate => 'No expiration';

	/// en-US: 'Invite code used at'
	String get inviteCodeUsedAt => 'Invite code used at';

	/// en-US: 'Invite used by'
	String get registeredUserUsingInviteCode => 'Invite used by';

	/// en-US: 'Email verification pending'
	String get waitingForMailAuth => 'Email verification pending';

	/// en-US: 'Invite created by'
	String get inviteCodeCreator => 'Invite created by';

	/// en-US: 'Used at'
	String get usedAt => 'Used at';

	/// en-US: 'Unused'
	String get unused => 'Unused';

	/// en-US: 'Used'
	String get used => 'Used';

	/// en-US: 'Expired'
	String get expired => 'Expired';

	/// en-US: 'Agree?'
	String get doYouAgree => 'Agree?';

	/// en-US: 'Please read this important information.'
	String get beSureToReadThisAsItIsImportant => 'Please read this important information.';

	/// en-US: 'I have read the text "{x}" and agree.'
	String iHaveReadXCarefullyAndAgree({required Object x}) => 'I have read the text "${x}" and agree.';

	/// en-US: 'Dialog'
	String get dialog => 'Dialog';

	/// en-US: 'Icon'
	String get icon => 'Icon';

	/// en-US: 'For you'
	String get forYou => 'For you';

	/// en-US: 'Current announcements'
	String get currentAnnouncements => 'Current announcements';

	/// en-US: 'Past announcements'
	String get pastAnnouncements => 'Past announcements';

	/// en-US: 'There are unread announcements.'
	String get youHaveUnreadAnnouncements => 'There are unread announcements.';

	/// en-US: 'Please follow your browser's or device's instructions to use your security- or passkey.'
	String get useSecurityKey => 'Please follow your browser\'s or device\'s instructions to use your security- or passkey.';

	/// en-US: 'Reply'
	String get replies => 'Reply';

	/// en-US: 'Renotes'
	String get renotes => 'Renotes';

	/// en-US: 'Show replies'
	String get loadReplies => 'Show replies';

	/// en-US: 'Show conversation'
	String get loadConversation => 'Show conversation';

	/// en-US: 'Pinned list'
	String get pinnedList => 'Pinned list';

	/// en-US: 'Keep screen on'
	String get keepScreenOn => 'Keep screen on';

	/// en-US: 'Link ownership has been verified'
	String get verifiedLink => 'Link ownership has been verified';

	/// en-US: 'Notify about new notes'
	String get notifyNotes => 'Notify about new notes';

	/// en-US: 'Stop notifying about new notes'
	String get unnotifyNotes => 'Stop notifying about new notes';

	/// en-US: 'Authentication'
	String get authentication => 'Authentication';

	/// en-US: 'Please authenticate to continue'
	String get authenticationRequiredToContinue => 'Please authenticate to continue';

	/// en-US: 'Timestamp'
	String get dateAndTime => 'Timestamp';

	/// en-US: 'Show renotes'
	String get showRenotes => 'Show renotes';

	/// en-US: 'Edited'
	String get edited => 'Edited';

	/// en-US: 'Notification Settings'
	String get notificationRecieveConfig => 'Notification Settings';

	/// en-US: 'Mutual follow'
	String get mutualFollow => 'Mutual follow';

	/// en-US: 'Following or follower'
	String get followingOrFollower => 'Following or follower';

	/// en-US: 'Only notes with files'
	String get fileAttachedOnly => 'Only notes with files';

	/// en-US: 'Show replies to others in timeline'
	String get showRepliesToOthersInTimeline => 'Show replies to others in timeline';

	/// en-US: 'Hide replies to others from timeline'
	String get hideRepliesToOthersInTimeline => 'Hide replies to others from timeline';

	/// en-US: 'Show replies to others from everyone you follow in timeline'
	String get showRepliesToOthersInTimelineAll => 'Show replies to others from everyone you follow in timeline';

	/// en-US: 'Hide replies to others from everyone you follow in timeline'
	String get hideRepliesToOthersInTimelineAll => 'Hide replies to others from everyone you follow in timeline';

	/// en-US: 'This operation is irreversible. Would you really like to show replies to others from everyone you follow in your timeline?'
	String get confirmShowRepliesAll => 'This operation is irreversible. Would you really like to show replies to others from everyone you follow in your timeline?';

	/// en-US: 'This operation is irreversible. Would you really like to hide replies to others from everyone you follow in your timeline?'
	String get confirmHideRepliesAll => 'This operation is irreversible. Would you really like to hide replies to others from everyone you follow in your timeline?';

	/// en-US: 'External Services'
	String get externalServices => 'External Services';

	/// en-US: 'Source code'
	String get sourceCode => 'Source code';

	/// en-US: 'Source code is not yet available. Contact the administrator to fix this problem.'
	String get sourceCodeIsNotYetProvided => 'Source code is not yet available. Contact the administrator to fix this problem.';

	/// en-US: 'Repository URL'
	String get repositoryUrl => 'Repository URL';

	/// en-US: 'If you are using Misskey as is (without any changes to the source code), enter https://github.com/misskey-dev/misskey'
	String get repositoryUrlDescription => 'If you are using Misskey as is (without any changes to the source code), enter https://github.com/misskey-dev/misskey';

	/// en-US: 'If you have not published a repository, you must provide a tarball instead. See .config/example.yml for more information.'
	String get repositoryUrlOrTarballRequired => 'If you have not published a repository, you must provide a tarball instead. See .config/example.yml for more information.';

	/// en-US: 'Feedback'
	String get feedback => 'Feedback';

	/// en-US: 'Feedback URL'
	String get feedbackUrl => 'Feedback URL';

	/// en-US: 'Impressum'
	String get impressum => 'Impressum';

	/// en-US: 'Impressum URL'
	String get impressumUrl => 'Impressum URL';

	/// en-US: 'In some countries, like germany, the inclusion of operator contact information (an Impressum) is legally required for commercial websites.'
	String get impressumDescription => 'In some countries, like germany, the inclusion of operator contact information (an Impressum) is legally required for commercial websites.';

	/// en-US: 'Privacy Policy'
	String get privacyPolicy => 'Privacy Policy';

	/// en-US: 'Privacy Policy URL'
	String get privacyPolicyUrl => 'Privacy Policy URL';

	/// en-US: 'Terms of Service and Privacy Policy'
	String get tosAndPrivacyPolicy => 'Terms of Service and Privacy Policy';

	/// en-US: 'Avatar decorations'
	String get avatarDecorations => 'Avatar decorations';

	/// en-US: 'Attach'
	String get attach => 'Attach';

	/// en-US: 'Remove'
	String get detach => 'Remove';

	/// en-US: 'Remove All'
	String get detachAll => 'Remove All';

	/// en-US: 'Angle'
	String get angle => 'Angle';

	/// en-US: 'Flip'
	String get flip => 'Flip';

	/// en-US: 'Show avatar decorations'
	String get showAvatarDecorations => 'Show avatar decorations';

	/// en-US: 'Release to refresh'
	String get releaseToRefresh => 'Release to refresh';

	/// en-US: 'Refreshing...'
	String get refreshing => 'Refreshing...';

	/// en-US: 'Pull down to refresh'
	String get pullDownToRefresh => 'Pull down to refresh';

	/// en-US: 'Display grouped notifications'
	String get useGroupedNotifications => 'Display grouped notifications';

	/// en-US: 'There was a problem verifying the email address. The link may have expired.'
	String get signupPendingError => 'There was a problem verifying the email address. The link may have expired.';

	/// en-US: 'If "Hide content" is enabled, a description must be provided.'
	String get cwNotationRequired => 'If "Hide content" is enabled, a description must be provided.';

	/// en-US: 'Add reaction'
	String get doReaction => 'Add reaction';

	/// en-US: 'Code'
	String get code => 'Code';

	/// en-US: 'Reloading is required to apply the settings.'
	String get reloadRequiredToApplySettings => 'Reloading is required to apply the settings.';

	/// en-US: 'Remaining: {n}'
	String remainingN({required Object n}) => 'Remaining: ${n}';

	/// en-US: 'Are you sure you want to overwrite the current content?'
	String get overwriteContentConfirm => 'Are you sure you want to overwrite the current content?';

	/// en-US: 'Seasonal Screen Effect'
	String get seasonalScreenEffect => 'Seasonal Screen Effect';

	/// en-US: 'Decorate'
	String get decorate => 'Decorate';

	/// en-US: 'Add MFM'
	String get addMfmFunction => 'Add MFM';

	/// en-US: 'Show advanced MFM picker'
	String get enableQuickAddMfmFunction => 'Show advanced MFM picker';

	/// en-US: 'Bubble Game'
	String get bubbleGame => 'Bubble Game';

	/// en-US: 'Sound Effects'
	String get sfx => 'Sound Effects';

	/// en-US: 'Sound will be played'
	String get soundWillBePlayed => 'Sound will be played';

	/// en-US: 'View Replay'
	String get showReplay => 'View Replay';

	/// en-US: 'Replay'
	String get replay => 'Replay';

	/// en-US: 'Showing replay'
	String get replaying => 'Showing replay';

	/// en-US: 'Exit Replay'
	String get endReplay => 'Exit Replay';

	/// en-US: 'Copy replay data'
	String get copyReplayData => 'Copy replay data';

	/// en-US: 'Ranking'
	String get ranking => 'Ranking';

	/// en-US: 'Last {n} days'
	String lastNDays({required Object n}) => 'Last ${n} days';

	/// en-US: 'Go back to title'
	String get backToTitle => 'Go back to title';

	/// en-US: 'Where you live'
	String get hemisphere => 'Where you live';

	/// en-US: 'Include notes with sensitive files'
	String get withSensitive => 'Include notes with sensitive files';

	/// en-US: 'Post by {name} contains sensitive content'
	String userSaysSomethingSensitive({required Object name}) => 'Post by ${name} contains sensitive content';

	/// en-US: 'Swipe to switch tabs'
	String get enableHorizontalSwipe => 'Swipe to switch tabs';

	/// en-US: 'Loading'
	String get loading => 'Loading';

	/// en-US: 'Cancel'
	String get surrender => 'Cancel';

	/// en-US: 'Retry'
	String get gameRetry => 'Retry';

	/// en-US: 'Leave blank if not used'
	String get notUsePleaseLeaveBlank => 'Leave blank if not used';

	/// en-US: 'Enter the One-Time Password'
	String get useTotp => 'Enter the One-Time Password';

	/// en-US: 'Use the backup codes'
	String get useBackupCode => 'Use the backup codes';

	/// en-US: 'Launch the app'
	String get launchApp => 'Launch the app';

	/// en-US: 'Use UI of browser when play video and audio '
	String get useNativeUIForVideoAudioPlayer => 'Use UI of browser when play video and audio\n';

	/// en-US: 'Keep original file name'
	String get keepOriginalFilename => 'Keep original file name';

	/// en-US: 'If you turn off this setting, files names will be replaced with random string automatically when you upload files.'
	String get keepOriginalFilenameDescription => 'If you turn off this setting, files names will be replaced with random string automatically when you upload files.';

	/// en-US: 'There is no explanation'
	String get noDescription => 'There is no explanation';

	/// en-US: 'Always confirm when following'
	String get alwaysConfirmFollow => 'Always confirm when following';

	/// en-US: 'Contact'
	String get inquiry => 'Contact';

	/// en-US: 'Please try again later'
	String get tryAgain => 'Please try again later';

	/// en-US: 'Confirm when revealing sensitive media'
	String get confirmWhenRevealingSensitiveMedia => 'Confirm when revealing sensitive media';

	/// en-US: 'This might be a sensitive media. Are you sure to reveal?'
	String get sensitiveMediaRevealConfirm => 'This might be a sensitive media. Are you sure to reveal?';

	/// en-US: 'Created lists'
	String get createdLists => 'Created lists';

	/// en-US: 'Created antennas'
	String get createdAntennas => 'Created antennas';

	/// en-US: 'From {x}'
	String fromX({required Object x}) => 'From ${x}';

	/// en-US: 'Generate embed code'
	String get genEmbedCode => 'Generate embed code';

	/// en-US: 'Notes by this user'
	String get noteOfThisUser => 'Notes by this user';

	/// en-US: 'No more notes can be added to this clip.'
	String get clipNoteLimitExceeded => 'No more notes can be added to this clip.';

	/// en-US: 'Performance'
	String get performance => 'Performance';

	/// en-US: 'Modified'
	String get modified => 'Modified';

	/// en-US: 'Discard'
	String get discard => 'Discard';

	/// en-US: 'There are {n} change(s)'
	String thereAreNChanges({required Object n}) => 'There are ${n} change(s)';

	/// en-US: 'Sign in with Passkey'
	String get signinWithPasskey => 'Sign in with Passkey';

	/// en-US: 'Unknown Passkey'
	String get unknownWebAuthnKey => 'Unknown Passkey';

	/// en-US: 'Passkey verification has failed.'
	String get passkeyVerificationFailed => 'Passkey verification has failed.';

	/// en-US: 'Passkey verification has succeeded but password-less login is disabled.'
	String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'Passkey verification has succeeded but password-less login is disabled.';

	/// en-US: 'Message to followers'
	String get messageToFollower => 'Message to followers';

	/// en-US: 'Target'
	String get target => 'Target';

	/// en-US: 'This function is intended for CAPTCHA testing purposes. <strong>Do not use in a production environment.</strong>'
	String get testCaptchaWarning => 'This function is intended for CAPTCHA testing purposes.\n<strong>Do not use in a production environment.</strong>';

	/// en-US: 'Prohibited words for user names'
	String get prohibitedWordsForNameOfUser => 'Prohibited words for user names';

	/// en-US: 'If any of the strings in this list are included in the user's name, the name will be denied. Users with moderator privileges are not affected by this restriction.'
	String get prohibitedWordsForNameOfUserDescription => 'If any of the strings in this list are included in the user\'s name, the name will be denied. Users with moderator privileges are not affected by this restriction.';

	/// en-US: 'Your name contains prohibited words'
	String get yourNameContainsProhibitedWords => 'Your name contains prohibited words';

	/// en-US: 'If you wish to use this name, please contact your server administrator.'
	String get yourNameContainsProhibitedWordsDescription => 'If you wish to use this name, please contact your server administrator.';

	/// en-US: 'Set by the author to require login to view'
	String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'Set by the author to require login to view';

	/// en-US: 'Lockdown'
	String get lockdown => 'Lockdown';

	/// en-US: 'Select an account'
	String get pleaseSelectAccount => 'Select an account';

	/// en-US: 'Available roles'
	String get availableRoles => 'Available roles';

	/// en-US: 'Turn on after understanding the precautions.'
	String get acknowledgeNotesAndEnable => 'Turn on after understanding the precautions.';

	/// en-US: 'This server is operated in a whitelist federation. Interacting with servers other than those designated by the administrator is not allowed.'
	String get federationSpecified => 'This server is operated in a whitelist federation. Interacting with servers other than those designated by the administrator is not allowed.';

	/// en-US: 'Federation is disabled on this server. You cannot interact with users on other servers.'
	String get federationDisabled => 'Federation is disabled on this server. You cannot interact with users on other servers.';

	/// en-US: 'Drafts'
	String get draft => 'Drafts';

	/// en-US: 'Confirm when reacting'
	String get confirmOnReact => 'Confirm when reacting';

	/// en-US: 'Would you like to add a "{emoji}" reaction?'
	String reactAreYouSure({required Object emoji}) => 'Would you like to add a "${emoji}" reaction?';

	/// en-US: 'Do you want to set this media as sensitive?'
	String get markAsSensitiveConfirm => 'Do you want to set this media as sensitive?';

	/// en-US: 'Do you want to remove the sensitive designation for this media?'
	String get unmarkAsSensitiveConfirm => 'Do you want to remove the sensitive designation for this media?';

	/// en-US: 'Preferences'
	String get preferences => 'Preferences';

	/// en-US: 'Accessibility'
	String get accessibility => 'Accessibility';

	/// en-US: 'Preferences profile'
	String get preferencesProfile => 'Preferences profile';

	/// en-US: 'Copy the preference ID'
	String get copyPreferenceId => 'Copy the preference ID';

	/// en-US: 'Revert to default'
	String get resetToDefaultValue => 'Revert to default';

	/// en-US: 'Override by the account'
	String get overrideByAccount => 'Override by the account';

	/// en-US: 'Untitled'
	String get untitled => 'Untitled';

	/// en-US: 'No name'
	String get noName => 'No name';

	/// en-US: 'Skip'
	String get skip => 'Skip';

	/// en-US: 'Restore'
	String get restore => 'Restore';

	/// en-US: 'Sync between devices'
	String get syncBetweenDevices => 'Sync between devices';

	/// en-US: 'The configured value exists on the server.'
	String get preferenceSyncConflictTitle => 'The configured value exists on the server.';

	/// en-US: 'The sync enabled settings will save their values to the server. However, there are existing values on the server. Which set of values would you like to overwrite?'
	String get preferenceSyncConflictText => 'The sync enabled settings will save their values to the server. However, there are existing values on the server. Which set of values would you like to overwrite?';

	/// en-US: 'Merge'
	String get preferenceSyncConflictChoiceMerge => 'Merge';

	/// en-US: 'Configured value on server'
	String get preferenceSyncConflictChoiceServer => 'Configured value on server';

	/// en-US: 'Configured value on device'
	String get preferenceSyncConflictChoiceDevice => 'Configured value on device';

	/// en-US: 'Cancel enabling sync'
	String get preferenceSyncConflictChoiceCancel => 'Cancel enabling sync';

	/// en-US: 'Paste'
	String get paste => 'Paste';

	/// en-US: 'Emoji palette'
	String get emojiPalette => 'Emoji palette';

	/// en-US: 'Posting form'
	String get postForm => 'Posting form';

	/// en-US: 'Character count'
	String get textCount => 'Character count';

	/// en-US: 'About'
	String get information => 'About';

	/// en-US: 'Chat'
	String get chat => 'Chat';

	/// en-US: 'Migrate old client settings'
	String get migrateOldSettings => 'Migrate old client settings';

	/// en-US: 'This should be done automatically but if for some reason the migration was not successful, you can trigger the migration process yourself manually. The current configuration information will be overwritten.'
	String get migrateOldSettings_description => 'This should be done automatically but if for some reason the migration was not successful, you can trigger the migration process yourself manually. The current configuration information will be overwritten.';

	/// en-US: 'Compress'
	String get compress => 'Compress';

	/// en-US: 'Right'
	String get right => 'Right';

	/// en-US: 'Bottom'
	String get bottom => 'Bottom';

	/// en-US: 'Top'
	String get top => 'Top';

	/// en-US: 'Embed'
	String get embed => 'Embed';

	/// en-US: 'Settings are being migrated, please wait a moment... (You can also migrate manually later by going to Settings→Others→Migrate old settings)'
	String get settingsMigrating => 'Settings are being migrated, please wait a moment... (You can also migrate manually later by going to Settings→Others→Migrate old settings)';

	/// en-US: 'Read only'
	String get readonly => 'Read only';

	/// en-US: 'Return to Deck'
	String get goToDeck => 'Return to Deck';

	/// en-US: 'Federation Jobs'
	String get federationJobs => 'Federation Jobs';

	/// en-US: 'In Drive, a list of files you've uploaded in the past will be displayed. <br> You can reuse these files when attaching them to notes, or you can upload files in advance to post later. <br> <b>Be careful when deleting a file, as it will not be available in all places where it was used (such as notes, pages, avatars, banners, etc.).</b> <br> You can also create folders to organize your files.'
	String get driveAboutTip => 'In Drive, a list of files you\'ve uploaded in the past will be displayed. <br>  \nYou can reuse these files when attaching them to notes, or you can upload files in advance to post later. <br>  \n<b>Be careful when deleting a file, as it will not be available in all places where it was used (such as notes, pages, avatars, banners, etc.).</b> <br>  \nYou can also create folders to organize your files.';

	/// en-US: 'Scroll to close'
	String get scrollToClose => 'Scroll to close';

	/// en-US: 'Advice'
	String get advice => 'Advice';

	/// en-US: 'Real-time mode'
	String get realtimeMode => 'Real-time mode';

	/// en-US: 'Turn on'
	String get turnItOn => 'Turn on';

	/// en-US: 'Turn off'
	String get turnItOff => 'Turn off';

	/// en-US: 'Mute emoji'
	String get emojiMute => 'Mute emoji';

	/// en-US: 'Unmute emoji'
	String get emojiUnmute => 'Unmute emoji';

	/// en-US: 'Mute {x}'
	String muteX({required Object x}) => 'Mute ${x}';

	/// en-US: 'Unmute {x}'
	String unmuteX({required Object x}) => 'Unmute ${x}';

	/// en-US: 'Abort'
	String get abort => 'Abort';

	/// en-US: 'Tips & Tricks'
	String get tip => 'Tips & Tricks';

	/// en-US: 'Show all “Tips & Tricks” again'
	String get redisplayAllTips => 'Show all “Tips & Tricks” again';

	/// en-US: 'Hide all "Tips & Tricks"'
	String get hideAllTips => 'Hide all "Tips & Tricks"';

	/// en-US: 'Default image compression level'
	String get defaultImageCompressionLevel => 'Default image compression level';

	/// en-US: 'Lower level preserves image quality but increases file size.<br>Higher level reduce file size, but reduce image quality.'
	String get defaultImageCompressionLevel_description => 'Lower level preserves image quality but increases file size.<br>Higher level reduce file size, but reduce image quality.';

	late final TranslationsMisskeyOrderEnUs order_ = TranslationsMisskeyOrderEnUs.internal(_root);
	late final TranslationsMisskeyChatEnUs chat_ = TranslationsMisskeyChatEnUs.internal(_root);
	late final TranslationsMisskeyEmojiPaletteEnUs emojiPalette_ = TranslationsMisskeyEmojiPaletteEnUs.internal(_root);
	late final TranslationsMisskeySettingsEnUs settings_ = TranslationsMisskeySettingsEnUs.internal(_root);
	late final TranslationsMisskeyPreferencesProfileEnUs preferencesProfile_ = TranslationsMisskeyPreferencesProfileEnUs.internal(_root);
	late final TranslationsMisskeyPreferencesBackupEnUs preferencesBackup_ = TranslationsMisskeyPreferencesBackupEnUs.internal(_root);
	late final TranslationsMisskeyAccountSettingsEnUs accountSettings_ = TranslationsMisskeyAccountSettingsEnUs.internal(_root);
	late final TranslationsMisskeyAbuseUserReportEnUs abuseUserReport_ = TranslationsMisskeyAbuseUserReportEnUs.internal(_root);
	late final TranslationsMisskeyDeliveryEnUs delivery_ = TranslationsMisskeyDeliveryEnUs.internal(_root);
	late final TranslationsMisskeyBubbleGameEnUs bubbleGame_ = TranslationsMisskeyBubbleGameEnUs.internal(_root);
	late final TranslationsMisskeyAnnouncementEnUs announcement_ = TranslationsMisskeyAnnouncementEnUs.internal(_root);
	late final TranslationsMisskeyInitialAccountSettingEnUs initialAccountSetting_ = TranslationsMisskeyInitialAccountSettingEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialEnUs initialTutorial_ = TranslationsMisskeyInitialTutorialEnUs.internal(_root);
	late final TranslationsMisskeyTimelineDescriptionEnUs timelineDescription_ = TranslationsMisskeyTimelineDescriptionEnUs.internal(_root);
	late final TranslationsMisskeyServerRulesEnUs serverRules_ = TranslationsMisskeyServerRulesEnUs.internal(_root);
	late final TranslationsMisskeyServerSettingsEnUs serverSettings_ = TranslationsMisskeyServerSettingsEnUs.internal(_root);
	late final TranslationsMisskeyAccountMigrationEnUs accountMigration_ = TranslationsMisskeyAccountMigrationEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsEnUs achievements_ = TranslationsMisskeyAchievementsEnUs.internal(_root);
	late final TranslationsMisskeyRoleEnUs role_ = TranslationsMisskeyRoleEnUs.internal(_root);
	late final TranslationsMisskeySensitiveMediaDetectionEnUs sensitiveMediaDetection_ = TranslationsMisskeySensitiveMediaDetectionEnUs.internal(_root);
	late final TranslationsMisskeyEmailUnavailableEnUs emailUnavailable_ = TranslationsMisskeyEmailUnavailableEnUs.internal(_root);
	late final TranslationsMisskeyFfVisibilityEnUs ffVisibility_ = TranslationsMisskeyFfVisibilityEnUs.internal(_root);
	late final TranslationsMisskeySignupEnUs signup_ = TranslationsMisskeySignupEnUs.internal(_root);
	late final TranslationsMisskeyAccountDeleteEnUs accountDelete_ = TranslationsMisskeyAccountDeleteEnUs.internal(_root);
	late final TranslationsMisskeyAdEnUs ad_ = TranslationsMisskeyAdEnUs.internal(_root);
	late final TranslationsMisskeyForgotPasswordEnUs forgotPassword_ = TranslationsMisskeyForgotPasswordEnUs.internal(_root);
	late final TranslationsMisskeyGalleryEnUs gallery_ = TranslationsMisskeyGalleryEnUs.internal(_root);
	late final TranslationsMisskeyEmailEnUs email_ = TranslationsMisskeyEmailEnUs.internal(_root);
	late final TranslationsMisskeyPluginEnUs plugin_ = TranslationsMisskeyPluginEnUs.internal(_root);
	late final TranslationsMisskeyPreferencesBackupsEnUs preferencesBackups_ = TranslationsMisskeyPreferencesBackupsEnUs.internal(_root);
	late final TranslationsMisskeyRegistryEnUs registry_ = TranslationsMisskeyRegistryEnUs.internal(_root);
	late final TranslationsMisskeyAboutMisskeyEnUs aboutMisskey_ = TranslationsMisskeyAboutMisskeyEnUs.internal(_root);
	late final TranslationsMisskeyDisplayOfSensitiveMediaEnUs displayOfSensitiveMedia_ = TranslationsMisskeyDisplayOfSensitiveMediaEnUs.internal(_root);
	late final TranslationsMisskeyInstanceTickerEnUs instanceTicker_ = TranslationsMisskeyInstanceTickerEnUs.internal(_root);
	late final TranslationsMisskeyServerDisconnectedBehaviorEnUs serverDisconnectedBehavior_ = TranslationsMisskeyServerDisconnectedBehaviorEnUs.internal(_root);
	late final TranslationsMisskeyChannelEnUs channel_ = TranslationsMisskeyChannelEnUs.internal(_root);
	late final TranslationsMisskeyMenuDisplayEnUs menuDisplay_ = TranslationsMisskeyMenuDisplayEnUs.internal(_root);
	late final TranslationsMisskeyWordMuteEnUs wordMute_ = TranslationsMisskeyWordMuteEnUs.internal(_root);
	late final TranslationsMisskeyInstanceMuteEnUs instanceMute_ = TranslationsMisskeyInstanceMuteEnUs.internal(_root);
	late final TranslationsMisskeyThemeEnUs theme_ = TranslationsMisskeyThemeEnUs.internal(_root);
	late final TranslationsMisskeySfxEnUs sfx_ = TranslationsMisskeySfxEnUs.internal(_root);
	late final TranslationsMisskeySoundSettingsEnUs soundSettings_ = TranslationsMisskeySoundSettingsEnUs.internal(_root);
	late final TranslationsMisskeyAgoEnUs ago_ = TranslationsMisskeyAgoEnUs.internal(_root);
	late final TranslationsMisskeyTimeInEnUs timeIn_ = TranslationsMisskeyTimeInEnUs.internal(_root);
	late final TranslationsMisskeyTimeEnUs time_ = TranslationsMisskeyTimeEnUs.internal(_root);
	late final TranslationsMisskeyX2faEnUs x2fa_ = TranslationsMisskeyX2faEnUs.internal(_root);
	late final TranslationsMisskeyPermissionsEnUs permissions_ = TranslationsMisskeyPermissionsEnUs.internal(_root);
	late final TranslationsMisskeyAuthEnUs auth_ = TranslationsMisskeyAuthEnUs.internal(_root);
	late final TranslationsMisskeyAntennaSourcesEnUs antennaSources_ = TranslationsMisskeyAntennaSourcesEnUs.internal(_root);
	late final TranslationsMisskeyWeekdayEnUs weekday_ = TranslationsMisskeyWeekdayEnUs.internal(_root);
	late final TranslationsMisskeyWidgetsEnUs widgets_ = TranslationsMisskeyWidgetsEnUs.internal(_root);
	late final TranslationsMisskeyCwEnUs cw_ = TranslationsMisskeyCwEnUs.internal(_root);
	late final TranslationsMisskeyPollEnUs poll_ = TranslationsMisskeyPollEnUs.internal(_root);
	late final TranslationsMisskeyVisibilityEnUs visibility_ = TranslationsMisskeyVisibilityEnUs.internal(_root);
	late final TranslationsMisskeyPostFormEnUs postForm_ = TranslationsMisskeyPostFormEnUs.internal(_root);
	late final TranslationsMisskeyProfileEnUs profile_ = TranslationsMisskeyProfileEnUs.internal(_root);
	late final TranslationsMisskeyExportOrImportEnUs exportOrImport_ = TranslationsMisskeyExportOrImportEnUs.internal(_root);
	late final TranslationsMisskeyChartsEnUs charts_ = TranslationsMisskeyChartsEnUs.internal(_root);
	late final TranslationsMisskeyInstanceChartsEnUs instanceCharts_ = TranslationsMisskeyInstanceChartsEnUs.internal(_root);
	late final TranslationsMisskeyTimelinesEnUs timelines_ = TranslationsMisskeyTimelinesEnUs.internal(_root);
	late final TranslationsMisskeyPlayEnUs play_ = TranslationsMisskeyPlayEnUs.internal(_root);
	late final TranslationsMisskeyPagesEnUs pages_ = TranslationsMisskeyPagesEnUs.internal(_root);
	late final TranslationsMisskeyRelayStatusEnUs relayStatus_ = TranslationsMisskeyRelayStatusEnUs.internal(_root);
	late final TranslationsMisskeyNotificationEnUs notification_ = TranslationsMisskeyNotificationEnUs.internal(_root);
	late final TranslationsMisskeyDeckEnUs deck_ = TranslationsMisskeyDeckEnUs.internal(_root);
	late final TranslationsMisskeyDialogEnUs dialog_ = TranslationsMisskeyDialogEnUs.internal(_root);
	late final TranslationsMisskeyDisabledTimelineEnUs disabledTimeline_ = TranslationsMisskeyDisabledTimelineEnUs.internal(_root);
	late final TranslationsMisskeyDrivecleanerEnUs drivecleaner_ = TranslationsMisskeyDrivecleanerEnUs.internal(_root);
	late final TranslationsMisskeyWebhookSettingsEnUs webhookSettings_ = TranslationsMisskeyWebhookSettingsEnUs.internal(_root);
	late final TranslationsMisskeyAbuseReportEnUs abuseReport_ = TranslationsMisskeyAbuseReportEnUs.internal(_root);
	late final TranslationsMisskeyModerationLogTypesEnUs moderationLogTypes_ = TranslationsMisskeyModerationLogTypesEnUs.internal(_root);
	late final TranslationsMisskeyFileViewerEnUs fileViewer_ = TranslationsMisskeyFileViewerEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerEnUs externalResourceInstaller_ = TranslationsMisskeyExternalResourceInstallerEnUs.internal(_root);
	late final TranslationsMisskeyDataSaverEnUs dataSaver_ = TranslationsMisskeyDataSaverEnUs.internal(_root);
	late final TranslationsMisskeyHemisphereEnUs hemisphere_ = TranslationsMisskeyHemisphereEnUs.internal(_root);
	late final TranslationsMisskeyReversiEnUs reversi_ = TranslationsMisskeyReversiEnUs.internal(_root);
	late final TranslationsMisskeyOfflineScreenEnUs offlineScreen_ = TranslationsMisskeyOfflineScreenEnUs.internal(_root);
	late final TranslationsMisskeyUrlPreviewSettingEnUs urlPreviewSetting_ = TranslationsMisskeyUrlPreviewSettingEnUs.internal(_root);
	late final TranslationsMisskeyMediaControlsEnUs mediaControls_ = TranslationsMisskeyMediaControlsEnUs.internal(_root);
	late final TranslationsMisskeyContextMenuEnUs contextMenu_ = TranslationsMisskeyContextMenuEnUs.internal(_root);
	late final TranslationsMisskeyGridComponentEnUs gridComponent_ = TranslationsMisskeyGridComponentEnUs.internal(_root);
	late final TranslationsMisskeyRoleSelectDialogEnUs roleSelectDialog_ = TranslationsMisskeyRoleSelectDialogEnUs.internal(_root);
	late final TranslationsMisskeyCustomEmojisManagerEnUs customEmojisManager_ = TranslationsMisskeyCustomEmojisManagerEnUs.internal(_root);
	late final TranslationsMisskeyEmbedCodeGenEnUs embedCodeGen_ = TranslationsMisskeyEmbedCodeGenEnUs.internal(_root);
	late final TranslationsMisskeySelfXssPreventionEnUs selfXssPrevention_ = TranslationsMisskeySelfXssPreventionEnUs.internal(_root);
	late final TranslationsMisskeyFollowRequestEnUs followRequest_ = TranslationsMisskeyFollowRequestEnUs.internal(_root);
	late final TranslationsMisskeyRemoteLookupErrorsEnUs remoteLookupErrors_ = TranslationsMisskeyRemoteLookupErrorsEnUs.internal(_root);
	late final TranslationsMisskeyCaptchaEnUs captcha_ = TranslationsMisskeyCaptchaEnUs.internal(_root);
	late final TranslationsMisskeyBootErrorsEnUs bootErrors_ = TranslationsMisskeyBootErrorsEnUs.internal(_root);
	late final TranslationsMisskeySearchEnUs search_ = TranslationsMisskeySearchEnUs.internal(_root);
	late final TranslationsMisskeyServerSetupWizardEnUs serverSetupWizard_ = TranslationsMisskeyServerSetupWizardEnUs.internal(_root);
	late final TranslationsMisskeyUploaderEnUs uploader_ = TranslationsMisskeyUploaderEnUs.internal(_root);
	late final TranslationsMisskeyClientPerformanceIssueTipEnUs clientPerformanceIssueTip_ = TranslationsMisskeyClientPerformanceIssueTipEnUs.internal(_root);
	late final TranslationsMisskeyClipEnUs clip_ = TranslationsMisskeyClipEnUs.internal(_root);
	late final TranslationsMisskeyUserListsEnUs userLists_ = TranslationsMisskeyUserListsEnUs.internal(_root);

	/// en-US: 'Watermark'
	String get watermark => 'Watermark';

	/// en-US: 'Default Preset'
	String get defaultPreset => 'Default Preset';

	late final TranslationsMisskeyWatermarkEditorEnUs watermarkEditor_ = TranslationsMisskeyWatermarkEditorEnUs.internal(_root);
	late final TranslationsMisskeyImageEffectorEnUs imageEffector_ = TranslationsMisskeyImageEffectorEnUs.internal(_root);

	/// en-US: 'Drafts'
	String get drafts => 'Drafts';

	late final TranslationsMisskeyDraftsEnUs drafts_ = TranslationsMisskeyDraftsEnUs.internal(_root);
}

// Path: misskeyIO
class TranslationsMisskeyIOEnUs {
	TranslationsMisskeyIOEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyIOSkebStatusEnUs skebStatus_ = TranslationsMisskeyIOSkebStatusEnUs.internal(_root);
}

// Path: misskey.order_
class TranslationsMisskeyOrderEnUs {
	TranslationsMisskeyOrderEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Newest First'
	String get newest => 'Newest First';

	/// en-US: 'Oldest First'
	String get oldest => 'Oldest First';
}

// Path: misskey.chat_
class TranslationsMisskeyChatEnUs {
	TranslationsMisskeyChatEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'No messages yet'
	String get noMessagesYet => 'No messages yet';

	/// en-US: 'New message'
	String get newMessage => 'New message';

	/// en-US: 'Private Chat'
	String get individualChat => 'Private Chat';

	/// en-US: 'Have a private chat with another person.'
	String get individualChat_description => 'Have a private chat with another person.';

	/// en-US: 'Room Chat'
	String get roomChat => 'Room Chat';

	/// en-US: 'A chat room which can have multiple people. You can also invite people who don't allow private chats if they accept the invite.'
	String get roomChat_description => 'A chat room which can have multiple people.\nYou can also invite people who don\'t allow private chats if they accept the invite.';

	/// en-US: 'Create Room'
	String get createRoom => 'Create Room';

	/// en-US: 'Invite users to start chatting'
	String get inviteUserToChat => 'Invite users to start chatting';

	/// en-US: 'Created rooms'
	String get yourRooms => 'Created rooms';

	/// en-US: 'Joined rooms'
	String get joiningRooms => 'Joined rooms';

	/// en-US: 'Invite'
	String get invitations => 'Invite';

	/// en-US: 'No invitations'
	String get noInvitations => 'No invitations';

	/// en-US: 'History'
	String get history => 'History';

	/// en-US: 'No history available'
	String get noHistory => 'No history available';

	/// en-US: 'No rooms found'
	String get noRooms => 'No rooms found';

	/// en-US: 'Invite Users'
	String get inviteUser => 'Invite Users';

	/// en-US: 'Sent Invites'
	String get sentInvitations => 'Sent Invites';

	/// en-US: 'Join'
	String get join => 'Join';

	/// en-US: 'Ignore'
	String get ignore => 'Ignore';

	/// en-US: 'Leave room'
	String get leave => 'Leave room';

	/// en-US: 'Members'
	String get members => 'Members';

	/// en-US: 'Search messages'
	String get searchMessages => 'Search messages';

	/// en-US: 'Home'
	String get home => 'Home';

	/// en-US: 'Send'
	String get send => 'Send';

	/// en-US: 'New line'
	String get newline => 'New line';

	/// en-US: 'Mute room'
	String get muteThisRoom => 'Mute room';

	/// en-US: 'Delete room'
	String get deleteRoom => 'Delete room';

	/// en-US: 'Chat is not enabled on this server or for this account.'
	String get chatNotAvailableForThisAccountOrServer => 'Chat is not enabled on this server or for this account.';

	/// en-US: 'Chat is read-only on this instance or this account. You cannot write new messages or create/join chat rooms.'
	String get chatIsReadOnlyForThisAccountOrServer => 'Chat is read-only on this instance or this account. You cannot write new messages or create/join chat rooms.';

	/// en-US: 'The chat function is disabled for the other user.'
	String get chatNotAvailableInOtherAccount => 'The chat function is disabled for the other user.';

	/// en-US: 'Cannot start a chat with this user'
	String get cannotChatWithTheUser => 'Cannot start a chat with this user';

	/// en-US: 'Chat is either unavailable or the other party has not enabled chat.'
	String get cannotChatWithTheUser_description => 'Chat is either unavailable or the other party has not enabled chat.';

	/// en-US: 'You are not a participant in this room, but you have received an invitation. Please accept the invitation to join.'
	String get youAreNotAMemberOfThisRoomButInvited => 'You are not a participant in this room, but you have received an invitation. Please accept the invitation to join.';

	/// en-US: 'Do you accept the invitation?'
	String get doYouAcceptInvitation => 'Do you accept the invitation?';

	/// en-US: 'Chat with user'
	String get chatWithThisUser => 'Chat with user';

	/// en-US: 'This user accepts chats from followers only.'
	String get thisUserAllowsChatOnlyFromFollowers => 'This user accepts chats from followers only.';

	/// en-US: 'This user accepts chats only from users they follow.'
	String get thisUserAllowsChatOnlyFromFollowing => 'This user accepts chats only from users they follow.';

	/// en-US: 'This user only accepts chats from users who are mutual followers.'
	String get thisUserAllowsChatOnlyFromMutualFollowing => 'This user only accepts chats from users who are mutual followers.';

	/// en-US: 'This user is not accepting chats from anyone.'
	String get thisUserNotAllowedChatAnyone => 'This user is not accepting chats from anyone.';

	/// en-US: 'Who to allow chatting with'
	String get chatAllowedUsers => 'Who to allow chatting with';

	/// en-US: 'You can chat with anyone to whom you have sent a chat message regardless of this setting.'
	String get chatAllowedUsers_note => 'You can chat with anyone to whom you have sent a chat message regardless of this setting.';

	late final TranslationsMisskeyChatChatAllowedUsersEnUs chatAllowedUsers_ = TranslationsMisskeyChatChatAllowedUsersEnUs.internal(_root);
}

// Path: misskey.emojiPalette_
class TranslationsMisskeyEmojiPaletteEnUs {
	TranslationsMisskeyEmojiPaletteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Palette'
	String get palettes => 'Palette';

	/// en-US: 'Enable palette sync between devices'
	String get enableSyncBetweenDevicesForPalettes => 'Enable palette sync between devices';

	/// en-US: 'Main palette'
	String get paletteForMain => 'Main palette';

	/// en-US: 'Reaction palette'
	String get paletteForReaction => 'Reaction palette';
}

// Path: misskey.settings_
class TranslationsMisskeySettingsEnUs {
	TranslationsMisskeySettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You can manage and configure the drive, check usage, and configure file upload settings.'
	String get driveBanner => 'You can manage and configure the drive, check usage, and configure file upload settings.';

	/// en-US: 'You can extend client features with plugins. You can install plugins, configure and manage individually.'
	String get pluginBanner => 'You can extend client features with plugins. You can install plugins, configure and manage individually.';

	/// en-US: 'You can configure the types and range of notifications from the server and push notifications.'
	String get notificationsBanner => 'You can configure the types and range of notifications from the server and push notifications.';

	/// en-US: 'API'
	String get api => 'API';

	/// en-US: 'Webhook'
	String get webhook => 'Webhook';

	/// en-US: 'Service integration'
	String get serviceConnection => 'Service integration';

	/// en-US: 'Manage and configure access tokens and Webhooks to integrate with external apps or services.'
	String get serviceConnectionBanner => 'Manage and configure access tokens and Webhooks to integrate with external apps or services.';

	/// en-US: 'Account data'
	String get accountData => 'Account data';

	/// en-US: 'Export and import to manage account data.'
	String get accountDataBanner => 'Export and import to manage account data.';

	/// en-US: 'You can configure and manage settings to hide content and restrict actions from specific users.'
	String get muteAndBlockBanner => 'You can configure and manage settings to hide content and restrict actions from specific users.';

	/// en-US: 'You can personalize the client's visuals and behavior, and configure settings to optimize usage.'
	String get accessibilityBanner => 'You can personalize the client\'s visuals and behavior, and configure settings to optimize usage.';

	/// en-US: 'You can configure settings related to account privacy, such as content visibility, discoverability, and follow approval.'
	String get privacyBanner => 'You can configure settings related to account privacy, such as content visibility, discoverability, and follow approval.';

	/// en-US: 'You can configure settings related to account security, such as password, login methods, authentication apps, and Passkeys.'
	String get securityBanner => 'You can configure settings related to account security, such as password, login methods, authentication apps, and Passkeys.';

	/// en-US: 'You can configure the overall behavior of the client according to your preferences.'
	String get preferencesBanner => 'You can configure the overall behavior of the client according to your preferences.';

	/// en-US: 'You can configure the appearance and display settings for the client according to your preferences.'
	String get appearanceBanner => 'You can configure the appearance and display settings for the client according to your preferences.';

	/// en-US: 'You can configure the sound settings for playback in the client.'
	String get soundsBanner => 'You can configure the sound settings for playback in the client.';

	/// en-US: 'Timeline and note'
	String get timelineAndNote => 'Timeline and note';

	/// en-US: 'Make all text elements selectable'
	String get makeEveryTextElementsSelectable => 'Make all text elements selectable';

	/// en-US: 'Enabling this may reduce usability in some situations.'
	String get makeEveryTextElementsSelectable_description => 'Enabling this may reduce usability in some situations.';

	/// en-US: 'Make icons follow while scrolling'
	String get useStickyIcons => 'Make icons follow while scrolling';

	/// en-US: 'Display placeholders for high quality images'
	String get enableHighQualityImagePlaceholders => 'Display placeholders for high quality images';

	/// en-US: 'UI Animations'
	String get uiAnimations => 'UI Animations';

	/// en-US: 'Show sub-buttons on the navigation bar'
	String get showNavbarSubButtons => 'Show sub-buttons on the navigation bar';

	/// en-US: 'When turned on'
	String get ifOn => 'When turned on';

	/// en-US: 'When turned off'
	String get ifOff => 'When turned off';

	/// en-US: 'Synchronize installed themes across devices'
	String get enableSyncThemesBetweenDevices => 'Synchronize installed themes across devices';

	/// en-US: 'Pull to Refresh'
	String get enablePullToRefresh => 'Pull to Refresh';

	/// en-US: 'When using a mouse, drag while pressing in the scroll wheel.'
	String get enablePullToRefresh_description => 'When using a mouse, drag while pressing in the scroll wheel.';

	/// en-US: 'Establishes a connection with the server and updates content in real time. This may increase traffic and memory consumption.'
	String get realtimeMode_description => 'Establishes a connection with the server and updates content in real time. This may increase traffic and memory consumption.';

	/// en-US: 'Frequency of content retrieval'
	String get contentsUpdateFrequency => 'Frequency of content retrieval';

	/// en-US: 'The higher the value the more the content updates but it lowers the performance and increases the traffic and memory consumption.'
	String get contentsUpdateFrequency_description => 'The higher the value the more the content updates but it lowers the performance and increases the traffic and memory consumption.';

	/// en-US: 'When real-time mode is on, content is updated in real time regardless of this setting.'
	String get contentsUpdateFrequency_description2 => 'When real-time mode is on, content is updated in real time regardless of this setting.';

	/// en-US: 'Show URL preview'
	String get showUrlPreview => 'Show URL preview';

	/// en-US: 'Show available reactions at the top.'
	String get showAvailableReactionsFirstInNote => 'Show available reactions at the top.';

	late final TranslationsMisskeySettingsChatEnUs chat_ = TranslationsMisskeySettingsChatEnUs.internal(_root);
}

// Path: misskey.preferencesProfile_
class TranslationsMisskeyPreferencesProfileEnUs {
	TranslationsMisskeyPreferencesProfileEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Profile name'
	String get profileName => 'Profile name';

	/// en-US: 'Set a name that identifies this device.'
	String get profileNameDescription => 'Set a name that identifies this device.';

	/// en-US: 'Example: "Main PC", "Smartphone"'
	String get profileNameDescription2 => 'Example: "Main PC", "Smartphone"';

	/// en-US: 'Manage Profiles'
	String get manageProfiles => 'Manage Profiles';
}

// Path: misskey.preferencesBackup_
class TranslationsMisskeyPreferencesBackupEnUs {
	TranslationsMisskeyPreferencesBackupEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Auto backup'
	String get autoBackup => 'Auto backup';

	/// en-US: 'Restore from backup'
	String get restoreFromBackup => 'Restore from backup';

	/// en-US: 'No backups found'
	String get noBackupsFoundTitle => 'No backups found';

	/// en-US: 'No auto-created backups were found, but if you have manually saved a backup file, you can import and restore it.'
	String get noBackupsFoundDescription => 'No auto-created backups were found, but if you have manually saved a backup file, you can import and restore it.';

	/// en-US: 'Select a backup to restore'
	String get selectBackupToRestore => 'Select a backup to restore';

	/// en-US: 'A profile name must be set to enable auto backup.'
	String get youNeedToNameYourProfileToEnableAutoBackup => 'A profile name must be set to enable auto backup.';

	/// en-US: 'Settings auto backup is not enabled on this device.'
	String get autoPreferencesBackupIsNotEnabledForThisDevice => 'Settings auto backup is not enabled on this device.';

	/// en-US: 'Settings backup is found'
	String get backupFound => 'Settings backup is found';
}

// Path: misskey.accountSettings_
class TranslationsMisskeyAccountSettingsEnUs {
	TranslationsMisskeyAccountSettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Require sign-in to view contents'
	String get requireSigninToViewContents => 'Require sign-in to view contents';

	/// en-US: 'Require login to view all notes and other content you have created. This will have the effect of preventing crawlers from collecting your information.'
	String get requireSigninToViewContentsDescription1 => 'Require login to view all notes and other content you have created. This will have the effect of preventing crawlers from collecting your information.';

	/// en-US: 'Content will not be displayed in URL previews (OGP), embedded in web pages, or on servers that don't support note quotes.'
	String get requireSigninToViewContentsDescription2 => 'Content will not be displayed in URL previews (OGP), embedded in web pages, or on servers that don\'t support note quotes.';

	/// en-US: 'These restrictions may not apply to federated content from other remote servers.'
	String get requireSigninToViewContentsDescription3 => 'These restrictions may not apply to federated content from other remote servers.';

	/// en-US: 'Make past notes to be displayed only to followers'
	String get makeNotesFollowersOnlyBefore => 'Make past notes to be displayed only to followers';

	/// en-US: 'While this feature is enabled, only followers can see notes past the set date and time or have been visible for a set time. When it is deactivated, the note publication status will also be restored.'
	String get makeNotesFollowersOnlyBeforeDescription => 'While this feature is enabled, only followers can see notes past the set date and time or have been visible for a set time. When it is deactivated, the note publication status will also be restored.';

	/// en-US: 'Make past notes private'
	String get makeNotesHiddenBefore => 'Make past notes private';

	/// en-US: 'While this feature is enabled, notes that are past the set date and time or have been visible only to you. When it is deactivated, the note publication status will also be restored.'
	String get makeNotesHiddenBeforeDescription => 'While this feature is enabled, notes that are past the set date and time or have been visible only to you. When it is deactivated, the note publication status will also be restored.';

	/// en-US: 'Notes federated to a remote server may not be affected.'
	String get mayNotEffectForFederatedNotes => 'Notes federated to a remote server may not be affected.';

	/// en-US: 'These restrictions are simplified. They may not apply in some situations, such as when viewing on a remote server or during moderation.'
	String get mayNotEffectSomeSituations => 'These restrictions are simplified. They may not apply in some situations, such as when viewing on a remote server or during moderation.';

	/// en-US: 'Note that the specified time has passed'
	String get notesHavePassedSpecifiedPeriod => 'Note that the specified time has passed';

	/// en-US: 'Notes before the specified date and time'
	String get notesOlderThanSpecifiedDateAndTime => 'Notes before the specified date and time';
}

// Path: misskey.abuseUserReport_
class TranslationsMisskeyAbuseUserReportEnUs {
	TranslationsMisskeyAbuseUserReportEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Forward'
	String get forward => 'Forward';

	/// en-US: 'Forward the report to a remote server as an anonymous system account.'
	String get forwardDescription => 'Forward the report to a remote server as an anonymous system account.';

	/// en-US: 'Resolve'
	String get resolve => 'Resolve';

	/// en-US: 'Accept'
	String get accept => 'Accept';

	/// en-US: 'Reject'
	String get reject => 'Reject';

	/// en-US: 'If the report's content is legitimate, select "Accept" to mark it as resolved. If the report's content is illegitimate, select "Reject" to ignore it.'
	String get resolveTutorial => 'If the report\'s content is legitimate, select "Accept" to mark it as resolved.\nIf the report\'s content is illegitimate, select "Reject" to ignore it.';
}

// Path: misskey.delivery_
class TranslationsMisskeyDeliveryEnUs {
	TranslationsMisskeyDeliveryEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Delivery status'
	String get status => 'Delivery status';

	/// en-US: 'Suspended'
	String get stop => 'Suspended';

	/// en-US: 'Delivery resume'
	String get resume => 'Delivery resume';

	late final TranslationsMisskeyDeliveryTypeEnUs type_ = TranslationsMisskeyDeliveryTypeEnUs.internal(_root);
}

// Path: misskey.bubbleGame_
class TranslationsMisskeyBubbleGameEnUs {
	TranslationsMisskeyBubbleGameEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'How to play'
	String get howToPlay => 'How to play';

	/// en-US: 'Hold'
	String get hold => 'Hold';

	late final TranslationsMisskeyBubbleGameScoreEnUs score_ = TranslationsMisskeyBubbleGameScoreEnUs.internal(_root);
	late final TranslationsMisskeyBubbleGameHowToPlayEnUs howToPlay_ = TranslationsMisskeyBubbleGameHowToPlayEnUs.internal(_root);
}

// Path: misskey.announcement_
class TranslationsMisskeyAnnouncementEnUs {
	TranslationsMisskeyAnnouncementEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Existing users only'
	String get forExistingUsers => 'Existing users only';

	/// en-US: 'This announcement will only be shown to users existing at the point of publishment if enabled. If disabled, those newly signing up after it has been posted will also see it.'
	String get forExistingUsersDescription => 'This announcement will only be shown to users existing at the point of publishment if enabled. If disabled, those newly signing up after it has been posted will also see it.';

	/// en-US: 'Require separate read confirmation'
	String get needConfirmationToRead => 'Require separate read confirmation';

	/// en-US: 'A separate prompt to confirm marking this announcement as read will be displayed if enabled. This announcement will also be excluded from any "Mark all as read" functionality.'
	String get needConfirmationToReadDescription => 'A separate prompt to confirm marking this announcement as read will be displayed if enabled. This announcement will also be excluded from any "Mark all as read" functionality.';

	/// en-US: 'Archive announcement'
	String get end => 'Archive announcement';

	/// en-US: 'Having too many active announcements may worsen the user experience. Please consider archiving announcements that have become obsolete.'
	String get tooManyActiveAnnouncementDescription => 'Having too many active announcements may worsen the user experience. Please consider archiving announcements that have become obsolete.';

	/// en-US: 'Mark as read?'
	String get readConfirmTitle => 'Mark as read?';

	/// en-US: 'This will mark the contents of "{title}" as read.'
	String readConfirmText({required Object title}) => 'This will mark the contents of "${title}" as read.';

	/// en-US: 'It's best to use announcements to publish fresh and time-bound information, not for information that will be relevant in the long term.'
	String get shouldNotBeUsedToPresentPermanentInfo => 'It\'s best to use announcements to publish fresh and time-bound information, not for information that will be relevant in the long term.';

	/// en-US: 'Having two or more dialog-style notifications simultaneously can significantly impact the user experience, so please use them carefully.'
	String get dialogAnnouncementUxWarn => 'Having two or more dialog-style notifications simultaneously can significantly impact the user experience, so please use them carefully.';

	/// en-US: 'No notification'
	String get silence => 'No notification';

	/// en-US: 'Turning this on will skip the notification of this announcement and the user won't need to read it.'
	String get silenceDescription => 'Turning this on will skip the notification of this announcement and the user won\'t need to read it.';
}

// Path: misskey.initialAccountSetting_
class TranslationsMisskeyInitialAccountSettingEnUs {
	TranslationsMisskeyInitialAccountSettingEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Your account was successfully created!'
	String get accountCreated => 'Your account was successfully created!';

	/// en-US: 'For starters, let's set up your profile.'
	String get letsStartAccountSetup => 'For starters, let\'s set up your profile.';

	/// en-US: 'First, let's set up your profile.'
	String get letsFillYourProfile => 'First, let\'s set up your profile.';

	/// en-US: 'Profile settings'
	String get profileSetting => 'Profile settings';

	/// en-US: 'Privacy settings'
	String get privacySetting => 'Privacy settings';

	/// en-US: 'You can always change these settings later.'
	String get theseSettingsCanEditLater => 'You can always change these settings later.';

	/// en-US: 'There are many more settings you can configure from the "Settings" page. Be sure to visit it later.'
	String get youCanEditMoreSettingsInSettingsPageLater => 'There are many more settings you can configure from the "Settings" page. Be sure to visit it later.';

	/// en-US: 'Try following some users that interest you to build up your timeline.'
	String get followUsers => 'Try following some users that interest you to build up your timeline.';

	/// en-US: 'Enabling push notifications will allow you to receive notifications from {name} directly on your device.'
	String pushNotificationDescription({required Object name}) => 'Enabling push notifications will allow you to receive notifications from ${name} directly on your device.';

	/// en-US: 'Profile setup complete!'
	String get initialAccountSettingCompleted => 'Profile setup complete!';

	/// en-US: 'Enjoy {name}!'
	String haveFun({required Object name}) => 'Enjoy ${name}!';

	/// en-US: 'You can proceed to a tutorial on how to use {name} (Misskey) or you can exit the setup here and start using it immediately.'
	String youCanContinueTutorial({required Object name}) => 'You can proceed to a tutorial on how to use ${name} (Misskey) or you can exit the setup here and start using it immediately.';

	/// en-US: 'Start Tutorial'
	String get startTutorial => 'Start Tutorial';

	/// en-US: 'Really skip profile setup?'
	String get skipAreYouSure => 'Really skip profile setup?';

	/// en-US: 'Really do profile setup later?'
	String get laterAreYouSure => 'Really do profile setup later?';
}

// Path: misskey.initialTutorial_
class TranslationsMisskeyInitialTutorialEnUs {
	TranslationsMisskeyInitialTutorialEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Start Tutorial'
	String get launchTutorial => 'Start Tutorial';

	/// en-US: 'Tutorial'
	String get title => 'Tutorial';

	/// en-US: 'Well done!'
	String get wellDone => 'Well done!';

	/// en-US: 'Quit Tutorial?'
	String get skipAreYouSure => 'Quit Tutorial?';

	late final TranslationsMisskeyInitialTutorialLandingEnUs landing_ = TranslationsMisskeyInitialTutorialLandingEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialNoteEnUs note_ = TranslationsMisskeyInitialTutorialNoteEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialReactionEnUs reaction_ = TranslationsMisskeyInitialTutorialReactionEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialTimelineEnUs timeline_ = TranslationsMisskeyInitialTutorialTimelineEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialPostNoteEnUs postNote_ = TranslationsMisskeyInitialTutorialPostNoteEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs howToMakeAttachmentsSensitive_ = TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialDoneEnUs done_ = TranslationsMisskeyInitialTutorialDoneEnUs.internal(_root);
}

// Path: misskey.timelineDescription_
class TranslationsMisskeyTimelineDescriptionEnUs {
	TranslationsMisskeyTimelineDescriptionEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'In the Home timeline, you can see notes from accounts you follow.'
	String get home => 'In the Home timeline, you can see notes from accounts you follow.';

	/// en-US: 'In the Local timeline, you can see notes from all users on this server.'
	String get local => 'In the Local timeline, you can see notes from all users on this server.';

	/// en-US: 'The Social timeline displays notes from both the Home and Local timelines.'
	String get social => 'The Social timeline displays notes from both the Home and Local timelines.';

	/// en-US: 'In the Global timeline, you can see notes from all connected servers.'
	String get global => 'In the Global timeline, you can see notes from all connected servers.';
}

// Path: misskey.serverRules_
class TranslationsMisskeyServerRulesEnUs {
	TranslationsMisskeyServerRulesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'A set of rules to be displayed before registration. Setting a summary of the Terms of Service is recommended.'
	String get description => 'A set of rules to be displayed before registration. Setting a summary of the Terms of Service is recommended.';
}

// Path: misskey.serverSettings_
class TranslationsMisskeyServerSettingsEnUs {
	TranslationsMisskeyServerSettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Icon URL'
	String get iconUrl => 'Icon URL';

	/// en-US: 'Specifies the icon to use when {host} is displayed as an app.'
	String appIconDescription({required Object host}) => 'Specifies the icon to use when ${host} is displayed as an app.';

	/// en-US: 'E.g. As PWA, or when displayed as a home screen bookmark on a phone'
	String get appIconUsageExample => 'E.g. As PWA, or when displayed as a home screen bookmark on a phone';

	/// en-US: 'As the icon may be cropped to a square or circle, an icon with colored margin around the content is recommended.'
	String get appIconStyleRecommendation => 'As the icon may be cropped to a square or circle, an icon with colored margin around the content is recommended.';

	/// en-US: 'The minimum resolution is {resolution}.'
	String appIconResolutionMustBe({required Object resolution}) => 'The minimum resolution is ${resolution}.';

	/// en-US: 'manifest.json Override'
	String get manifestJsonOverride => 'manifest.json Override';

	/// en-US: 'Short name'
	String get shortName => 'Short name';

	/// en-US: 'A shorthand for the instance's name that can be displayed if the full official name is long.'
	String get shortNameDescription => 'A shorthand for the instance\'s name that can be displayed if the full official name is long.';

	/// en-US: 'Greatly increases performance of timeline retrieval and reduces load on the database when enabled. In exchange, memory usage of Redis will increase. Consider disabling this in case of low server memory or server instability.'
	String get fanoutTimelineDescription => 'Greatly increases performance of timeline retrieval and reduces load on the database when enabled. In exchange, memory usage of Redis will increase. Consider disabling this in case of low server memory or server instability.';

	/// en-US: 'Fallback to database'
	String get fanoutTimelineDbFallback => 'Fallback to database';

	/// en-US: 'When enabled, the timeline will fall back to the database for additional queries if the timeline is not cached. Disabling it further reduces the server load by eliminating the fallback process, but limits the range of timelines that can be retrieved.'
	String get fanoutTimelineDbFallbackDescription => 'When enabled, the timeline will fall back to the database for additional queries if the timeline is not cached. Disabling it further reduces the server load by eliminating the fallback process, but limits the range of timelines that can be retrieved.';

	/// en-US: 'When enabled, performance during reaction creation will be greatly improved, reducing the load on the database. However, Redis memory usage will increase.'
	String get reactionsBufferingDescription => 'When enabled, performance during reaction creation will be greatly improved, reducing the load on the database. However, Redis memory usage will increase.';

	/// en-US: 'Inquiry URL'
	String get inquiryUrl => 'Inquiry URL';

	/// en-US: 'Specify a URL for the inquiry form to the server maintainer or a web page for the contact information.'
	String get inquiryUrlDescription => 'Specify a URL for the inquiry form to the server maintainer or a web page for the contact information.';

	/// en-US: 'Make the account creation open'
	String get openRegistration => 'Make the account creation open';

	/// en-US: 'Opening registration carries risks. It is recommended to only enable it if you have a system in place to continuously monitor the server and respond immediately in case of any issues.'
	String get openRegistrationWarning => 'Opening registration carries risks. It is recommended to only enable it if you have a system in place to continuously monitor the server and respond immediately in case of any issues.';

	/// en-US: 'If no moderator activity is detected for a while, this setting will be automatically turned off to prevent spam.'
	String get thisSettingWillAutomaticallyOffWhenModeratorsInactive => 'If no moderator activity is detected for a while, this setting will be automatically turned off to prevent spam.';

	/// en-US: 'Suspended Software'
	String get deliverSuspendedSoftware => 'Suspended Software';

	/// en-US: 'You can specify a range of names and versions of the server's software to stop delivery for vulnerability or other reasons. This version information is provided by the server and is not guaranteed to be reliable. A semver range specification can be used to specify the version, but specifying >= 2024.3.1 will not include custom versions such as 2024.3.1-custom.0, so it is recommended that a prerelease specification be used, such as >= 2024.3.1-0'
	String get deliverSuspendedSoftwareDescription => 'You can specify a range of names and versions of the server\'s software to stop delivery for vulnerability or other reasons. This version information is provided by the server and is not guaranteed to be reliable. A semver range specification can be used to specify the version, but specifying >= 2024.3.1 will not include custom versions such as 2024.3.1-custom.0, so it is recommended that a prerelease specification be used, such as >= 2024.3.1-0';

	/// en-US: 'Single user mode'
	String get singleUserMode => 'Single user mode';

	/// en-US: 'If you are the only user of this server, enabling this mode will optimize its performance.'
	String get singleUserMode_description => 'If you are the only user of this server, enabling this mode will optimize its performance.';

	/// en-US: 'Sign ActivityPub GET requests'
	String get signToActivityPubGet => 'Sign ActivityPub GET requests';

	/// en-US: 'Normally, this should be enabled. Disabling it may improve issues related to federation, but on the other hand it could disable federation towards some other servers.'
	String get signToActivityPubGet_description => 'Normally, this should be enabled. Disabling it may improve issues related to federation, but on the other hand it could disable federation towards some other servers.';

	/// en-US: 'Proxy remote files'
	String get proxyRemoteFiles => 'Proxy remote files';

	/// en-US: 'When enabled, the server will proxy and serve remote files. This is useful for generating image thumbnails and protecting user privacy.'
	String get proxyRemoteFiles_description => 'When enabled, the server will proxy and serve remote files. This is useful for generating image thumbnails and protecting user privacy.';

	/// en-US: 'Allow redirects for queries via ActivityPub'
	String get allowExternalApRedirect => 'Allow redirects for queries via ActivityPub';

	/// en-US: 'If enabled, other servers can query third-party content through this server but this may result in content spoofing.'
	String get allowExternalApRedirect_description => 'If enabled, other servers can query third-party content through this server but this may result in content spoofing.';

	/// en-US: 'Visibility of user-generated content to guests'
	String get userGeneratedContentsVisibilityForVisitor => 'Visibility of user-generated content to guests';

	/// en-US: 'This is useful for preventing problems caused by inappropriate remote content that is not well moderated from being unintentionally published on the Internet via your own server.'
	String get userGeneratedContentsVisibilityForVisitor_description => 'This is useful for preventing problems caused by inappropriate remote content that is not well moderated from being unintentionally published on the Internet via your own server.';

	/// en-US: 'Unconditionally publishing all content on the server to the Internet, including remote content received by the server is risky. This is especially important for guests who are unaware of the distributed nature of the content, as they may mistakenly believe that even remote content is content created by users on the server.'
	String get userGeneratedContentsVisibilityForVisitor_description2 => 'Unconditionally publishing all content on the server to the Internet, including remote content received by the server is risky. This is especially important for guests who are unaware of the distributed nature of the content, as they may mistakenly believe that even remote content is content created by users on the server.';

	late final TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs userGeneratedContentsVisibilityForVisitor_ = TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs.internal(_root);
}

// Path: misskey.accountMigration_
class TranslationsMisskeyAccountMigrationEnUs {
	TranslationsMisskeyAccountMigrationEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Migrate another account to this one'
	String get moveFrom => 'Migrate another account to this one';

	/// en-US: 'Create alias to another account'
	String get moveFromSub => 'Create alias to another account';

	/// en-US: 'Original Account #{n}'
	String moveFromLabel({required Object n}) => 'Original Account #${n}';

	/// en-US: 'You must create an alias for the account to move from on this account. Enter the account to migrate from in the following format: @username@server.example.com To delete the alias, leave the field empty (not recommended).'
	String get moveFromDescription => 'You must create an alias for the account to move from on this account.\nEnter the account to migrate from in the following format: @username@server.example.com\nTo delete the alias, leave the field empty (not recommended).';

	/// en-US: 'Migrate this account to a different one'
	String get moveTo => 'Migrate this account to a different one';

	/// en-US: 'Account to move to:'
	String get moveToLabel => 'Account to move to:';

	/// en-US: 'Account migration cannot be undone.'
	String get moveCannotBeUndone => 'Account migration cannot be undone.';

	/// en-US: 'This will migrate your account to a different one. ・Followers from this account will automatically be migrated to the new account ・This account will unfollow all users it is currently following ・You will be unable to create new notes etc. on this account While migration of followers is automatic, you must manually prepare some steps to migrate the list of users you are following. To do so, carry out a follows export that you will later import on the new account in the settings menu. The same procedure applies to your lists as well as your muted and blocked users. (This explanation applies to Misskey v13.12.0 and later. Other ActivityPub software, such as Mastodon, might function differently.)'
	String get moveAccountDescription => 'This will migrate your account to a different one.\n　・Followers from this account will automatically be migrated to the new account\n　・This account will unfollow all users it is currently following\n　・You will be unable to create new notes etc. on this account\n\nWhile migration of followers is automatic, you must manually prepare some steps to migrate the list of users you are following. To do so, carry out a follows export that you will later import on the new account in the settings menu. The same procedure applies to your lists as well as your muted and blocked users.\n\n(This explanation applies to Misskey v13.12.0 and later. Other ActivityPub software, such as Mastodon, might function differently.)';

	/// en-US: 'To migrate, first create an alias for this account on the account to move to. After you have created the alias, enter the account to move to in the following format: @username@server.example.com'
	String get moveAccountHowTo => 'To migrate, first create an alias for this account on the account to move to.\nAfter you have created the alias, enter the account to move to in the following format: @username@server.example.com';

	/// en-US: 'Migrate'
	String get startMigration => 'Migrate';

	/// en-US: 'Really migrate this account to {account}? Once started, this process cannot be stopped or taken back, and you will not be able to use this account in its original state anymore.'
	String migrationConfirm({required Object account}) => 'Really migrate this account to ${account}? Once started, this process cannot be stopped or taken back, and you will not be able to use this account in its original state anymore.';

	/// en-US: ' This account has been migrated. Migration cannot be reversed.'
	String get movedAndCannotBeUndone => '\nThis account has been migrated.\nMigration cannot be reversed.';

	/// en-US: 'This account will unfollow all accounts it is currently following 24 hours after migration finishes. Both the number of follows and followers will then become zero. To avoid your followers from being unable to see followers only posts of this account, they will however continue following this account.'
	String get postMigrationNote => 'This account will unfollow all accounts it is currently following 24 hours after migration finishes.\nBoth the number of follows and followers will then become zero. To avoid your followers from being unable to see followers only posts of this account, they will however continue following this account.';

	/// en-US: 'New account:'
	String get movedTo => 'New account:';
}

// Path: misskey.achievements_
class TranslationsMisskeyAchievementsEnUs {
	TranslationsMisskeyAchievementsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Unlocked at'
	String get earnedAt => 'Unlocked at';

	late final TranslationsMisskeyAchievementsTypesEnUs types_ = TranslationsMisskeyAchievementsTypesEnUs.internal(_root);
}

// Path: misskey.role_
class TranslationsMisskeyRoleEnUs {
	TranslationsMisskeyRoleEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'New role'
	String get new_ => 'New role';

	/// en-US: 'Edit role'
	String get edit => 'Edit role';

	/// en-US: 'Role name'
	String get name => 'Role name';

	/// en-US: 'Role description'
	String get description => 'Role description';

	/// en-US: 'Role permissions'
	String get permission => 'Role permissions';

	/// en-US: '<b>Moderators</b> can perform basic moderation operations. <b>Administrators</b> can change all settings of the instance.'
	String get descriptionOfPermission => '<b>Moderators</b> can perform basic moderation operations.\n<b>Administrators</b> can change all settings of the instance.';

	/// en-US: 'Assignment type'
	String get assignTarget => 'Assignment type';

	/// en-US: '<b>Manual</b> to manually change who is part of this role and who is not. <b>Conditional</b> to have users be automatically assigned and removed from this role based on a condition.'
	String get descriptionOfAssignTarget => '<b>Manual</b> to manually change who is part of this role and who is not.\n<b>Conditional</b> to have users be automatically assigned and removed from this role based on a condition.';

	/// en-US: 'Manual'
	String get manual => 'Manual';

	/// en-US: 'Manual roles'
	String get manualRoles => 'Manual roles';

	/// en-US: 'Conditional'
	String get conditional => 'Conditional';

	/// en-US: 'Conditional roles'
	String get conditionalRoles => 'Conditional roles';

	/// en-US: 'Condition'
	String get condition => 'Condition';

	/// en-US: 'This is a conditional role.'
	String get isConditionalRole => 'This is a conditional role.';

	/// en-US: 'Public role'
	String get isPublic => 'Public role';

	/// en-US: 'This role will be displayed in the profiles of assigned users.'
	String get descriptionOfIsPublic => 'This role will be displayed in the profiles of assigned users.';

	/// en-US: 'Options'
	String get options => 'Options';

	/// en-US: 'Policies'
	String get policies => 'Policies';

	/// en-US: 'Role template'
	String get baseRole => 'Role template';

	/// en-US: 'Use role template value'
	String get useBaseValue => 'Use role template value';

	/// en-US: 'Select the role to assign'
	String get chooseRoleToAssign => 'Select the role to assign';

	/// en-US: 'Icon URL'
	String get iconUrl => 'Icon URL';

	/// en-US: 'Show as badge'
	String get asBadge => 'Show as badge';

	/// en-US: 'This role's icon will be displayed next to the username of users with this role if turned on.'
	String get descriptionOfAsBadge => 'This role\'s icon will be displayed next to the username of users with this role if turned on.';

	/// en-US: 'Make role explorable'
	String get isExplorable => 'Make role explorable';

	/// en-US: 'This role's timeline and the list of users with this will be made public if enabled.'
	String get descriptionOfIsExplorable => 'This role\'s timeline and the list of users with this will be made public if enabled.';

	/// en-US: 'Position'
	String get displayOrder => 'Position';

	/// en-US: 'The higher the number, the higher its UI position.'
	String get descriptionOfDisplayOrder => 'The higher the number, the higher its UI position.';

	/// en-US: 'Preserve role assignment during migration'
	String get preserveAssignmentOnMoveAccount => 'Preserve role assignment during migration';

	/// en-US: 'When turned on, this role will be carried over to the destination account when an account with this role is migrated.'
	String get preserveAssignmentOnMoveAccount_description => 'When turned on, this role will be carried over to the destination account when an account with this role is migrated.';

	/// en-US: 'Allow moderators to edit the list of members for this role'
	String get canEditMembersByModerator => 'Allow moderators to edit the list of members for this role';

	/// en-US: 'When turned on, moderators as well as administrators will be able to assign and unassign users to this role. When turned off, only administrators will be able to assign users.'
	String get descriptionOfCanEditMembersByModerator => 'When turned on, moderators as well as administrators will be able to assign and unassign users to this role. When turned off, only administrators will be able to assign users.';

	/// en-US: 'Priority'
	String get priority => 'Priority';

	late final TranslationsMisskeyRolePriorityEnUs priority_ = TranslationsMisskeyRolePriorityEnUs.internal(_root);
	late final TranslationsMisskeyRoleOptionsEnUs options_ = TranslationsMisskeyRoleOptionsEnUs.internal(_root);
	late final TranslationsMisskeyRoleConditionEnUs condition_ = TranslationsMisskeyRoleConditionEnUs.internal(_root);
}

// Path: misskey.sensitiveMediaDetection_
class TranslationsMisskeySensitiveMediaDetectionEnUs {
	TranslationsMisskeySensitiveMediaDetectionEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Reduces the effort of server moderation through automatically recognizing sensitive media via Machine Learning. This will slightly increase the load on the server.'
	String get description => 'Reduces the effort of server moderation through automatically recognizing sensitive media via Machine Learning. This will slightly increase the load on the server.';

	/// en-US: 'Detection sensitivity'
	String get sensitivity => 'Detection sensitivity';

	/// en-US: 'Reducing the sensitivity will lead to fewer misdetections (false positives) whereas increasing it will lead to fewer missed detections (false negatives).'
	String get sensitivityDescription => 'Reducing the sensitivity will lead to fewer misdetections (false positives) whereas increasing it will lead to fewer missed detections (false negatives).';

	/// en-US: 'Mark as sensitive'
	String get setSensitiveFlagAutomatically => 'Mark as sensitive';

	/// en-US: 'The results of the internal detection will be retained even if this option is turned off.'
	String get setSensitiveFlagAutomaticallyDescription => 'The results of the internal detection will be retained even if this option is turned off.';

	/// en-US: 'Enable analysis of videos'
	String get analyzeVideos => 'Enable analysis of videos';

	/// en-US: 'Analyzes videos in addition to images. This will slightly increase the load on the server.'
	String get analyzeVideosDescription => 'Analyzes videos in addition to images. This will slightly increase the load on the server.';
}

// Path: misskey.emailUnavailable_
class TranslationsMisskeyEmailUnavailableEnUs {
	TranslationsMisskeyEmailUnavailableEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'This email address is already being used'
	String get used => 'This email address is already being used';

	/// en-US: 'The format of this email address is invalid'
	String get format => 'The format of this email address is invalid';

	/// en-US: 'Disposable email addresses may not be used'
	String get disposable => 'Disposable email addresses may not be used';

	/// en-US: 'This email server is invalid'
	String get mx => 'This email server is invalid';

	/// en-US: 'This email server is not responding'
	String get smtp => 'This email server is not responding';

	/// en-US: 'You cannot register with this email address'
	String get banned => 'You cannot register with this email address';
}

// Path: misskey.ffVisibility_
class TranslationsMisskeyFfVisibilityEnUs {
	TranslationsMisskeyFfVisibilityEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Public'
	String get public => 'Public';

	/// en-US: 'Visible to followers only'
	String get followers => 'Visible to followers only';

	/// en-US: 'Private'
	String get private => 'Private';
}

// Path: misskey.signup_
class TranslationsMisskeySignupEnUs {
	TranslationsMisskeySignupEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Almost there'
	String get almostThere => 'Almost there';

	/// en-US: 'Please enter your email address. It will not be made public.'
	String get emailAddressInfo => 'Please enter your email address. It will not be made public.';

	/// en-US: 'A confirmation email has been sent to your email address ({email}). Please click the included link to complete account creation.'
	String emailSent({required Object email}) => 'A confirmation email has been sent to your email address (${email}). Please click the included link to complete account creation.';
}

// Path: misskey.accountDelete_
class TranslationsMisskeyAccountDeleteEnUs {
	TranslationsMisskeyAccountDeleteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Delete account'
	String get accountDelete => 'Delete account';

	/// en-US: 'As account deletion is a resource-heavy process, it may take some time to complete depending on how much content you have created and how many files you have uploaded.'
	String get mayTakeTime => 'As account deletion is a resource-heavy process, it may take some time to complete depending on how much content you have created and how many files you have uploaded.';

	/// en-US: 'Once account deletion has been completed, an email will be sent to the email address registered to this account.'
	String get sendEmail => 'Once account deletion has been completed, an email will be sent to the email address registered to this account.';

	/// en-US: 'Request account deletion'
	String get requestAccountDelete => 'Request account deletion';

	/// en-US: 'Deletion has been started.'
	String get started => 'Deletion has been started.';

	/// en-US: 'Deletion is currently in progress'
	String get inProgress => 'Deletion is currently in progress';
}

// Path: misskey.ad_
class TranslationsMisskeyAdEnUs {
	TranslationsMisskeyAdEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Back'
	String get back => 'Back';

	/// en-US: 'Show this ad less'
	String get reduceFrequencyOfThisAd => 'Show this ad less';

	/// en-US: 'Hide'
	String get hide => 'Hide';

	/// en-US: 'The day of the week is determined from the server's timezone.'
	String get timezoneinfo => 'The day of the week is determined from the server\'s timezone.';

	/// en-US: 'Ad settings'
	String get adsSettings => 'Ad settings';

	/// en-US: 'Real-time update ad placement interval (Notes per ad)'
	String get notesPerOneAd => 'Real-time update ad placement interval (Notes per ad)';

	/// en-US: 'Set this value to 0 to disable real-time update ads'
	String get setZeroToDisable => 'Set this value to 0 to disable real-time update ads';

	/// en-US: 'The current ad interval may significantly worsen the user experience due to being too low.'
	String get adsTooClose => 'The current ad interval may significantly worsen the user experience due to being too low.';
}

// Path: misskey.forgotPassword_
class TranslationsMisskeyForgotPasswordEnUs {
	TranslationsMisskeyForgotPasswordEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Enter the email address you used to register. A link with which you can reset your password will then be sent to it.'
	String get enterEmail => 'Enter the email address you used to register. A link with which you can reset your password will then be sent to it.';

	/// en-US: 'If you did not use an email during registration, please contact the instance administrator instead.'
	String get ifNoEmail => 'If you did not use an email during registration, please contact the instance administrator instead.';

	/// en-US: 'This instance does not support using email addresses, please contact the instance administrator to reset your password instead.'
	String get contactAdmin => 'This instance does not support using email addresses, please contact the instance administrator to reset your password instead.';
}

// Path: misskey.gallery_
class TranslationsMisskeyGalleryEnUs {
	TranslationsMisskeyGalleryEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'My Gallery'
	String get my => 'My Gallery';

	/// en-US: 'Liked Posts'
	String get liked => 'Liked Posts';

	/// en-US: 'Like'
	String get like => 'Like';

	/// en-US: 'Remove like'
	String get unlike => 'Remove like';
}

// Path: misskey.email_
class TranslationsMisskeyEmailEnUs {
	TranslationsMisskeyEmailEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyEmailFollowEnUs follow_ = TranslationsMisskeyEmailFollowEnUs.internal(_root);
	late final TranslationsMisskeyEmailReceiveFollowRequestEnUs receiveFollowRequest_ = TranslationsMisskeyEmailReceiveFollowRequestEnUs.internal(_root);
}

// Path: misskey.plugin_
class TranslationsMisskeyPluginEnUs {
	TranslationsMisskeyPluginEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Install plugins'
	String get install => 'Install plugins';

	/// en-US: 'Please do not install untrustworthy plugins.'
	String get installWarn => 'Please do not install untrustworthy plugins.';

	/// en-US: 'Manage plugins'
	String get manage => 'Manage plugins';

	/// en-US: 'View source'
	String get viewSource => 'View source';

	/// en-US: 'Show log'
	String get viewLog => 'Show log';
}

// Path: misskey.preferencesBackups_
class TranslationsMisskeyPreferencesBackupsEnUs {
	TranslationsMisskeyPreferencesBackupsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Created backups'
	String get list => 'Created backups';

	/// en-US: 'Save new backup'
	String get saveNew => 'Save new backup';

	/// en-US: 'Load from file'
	String get loadFile => 'Load from file';

	/// en-US: 'Apply to this device'
	String get apply => 'Apply to this device';

	/// en-US: 'Save changes'
	String get save => 'Save changes';

	/// en-US: 'Please enter a name for this backup'
	String get inputName => 'Please enter a name for this backup';

	/// en-US: 'Saving failed'
	String get cannotSave => 'Saving failed';

	/// en-US: 'A backup called "{name}" already exists. Please enter a different name.'
	String nameAlreadyExists({required Object name}) => 'A backup called "${name}" already exists. Please enter a different name.';

	/// en-US: 'Do you really want to apply the "{name}" backup to this device? Existing settings of this device will be overwritten.'
	String applyConfirm({required Object name}) => 'Do you really want to apply the "${name}" backup to this device? Existing settings of this device will be overwritten.';

	/// en-US: 'Save backup as {name}?'
	String saveConfirm({required Object name}) => 'Save backup as ${name}?';

	/// en-US: 'Delete the {name} backup?'
	String deleteConfirm({required Object name}) => 'Delete the ${name} backup?';

	/// en-US: 'Rename this backup from "{old}" to "{new_}"?'
	String renameConfirm({required Object old, required Object new_}) => 'Rename this backup from "${old}" to "${new_}"?';

	/// en-US: 'No backups exist. You may backup your client settings on this server by using "Create new backup".'
	String get noBackups => 'No backups exist. You may backup your client settings on this server by using "Create new backup".';

	/// en-US: 'Created at: {date} {time}'
	String createdAt({required Object date, required Object time}) => 'Created at: ${date} ${time}';

	/// en-US: 'Updated at: {date} {time}'
	String updatedAt({required Object date, required Object time}) => 'Updated at: ${date} ${time}';

	/// en-US: 'Loading failed'
	String get cannotLoad => 'Loading failed';

	/// en-US: 'Invalid file format'
	String get invalidFile => 'Invalid file format';
}

// Path: misskey.registry_
class TranslationsMisskeyRegistryEnUs {
	TranslationsMisskeyRegistryEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Scope'
	String get scope => 'Scope';

	/// en-US: 'Key'
	String get key => 'Key';

	/// en-US: 'Keys'
	String get keys => 'Keys';

	/// en-US: 'Domain'
	String get domain => 'Domain';

	/// en-US: 'Create key'
	String get createKey => 'Create key';
}

// Path: misskey.aboutMisskey_
class TranslationsMisskeyAboutMisskeyEnUs {
	TranslationsMisskeyAboutMisskeyEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskey is open-source software being developed by syuilo since 2014.'
	String get about => 'Misskey is open-source software being developed by syuilo since 2014.';

	/// en-US: 'Main contributors'
	String get contributors => 'Main contributors';

	/// en-US: 'All contributors'
	String get allContributors => 'All contributors';

	/// en-US: 'Source code'
	String get source => 'Source code';

	/// en-US: 'Original'
	String get original => 'Original';

	/// en-US: '{name} uses a modified version of the original Misskey.'
	String thisIsModifiedVersion({required Object name}) => '${name} uses a modified version of the original Misskey.';

	/// en-US: 'Translate Misskey'
	String get translation => 'Translate Misskey';

	/// en-US: 'Donate to Misskey'
	String get donate => 'Donate to Misskey';

	/// en-US: 'We also appreciate the support of many other helpers not listed here. Thank you! 🥰'
	String get morePatrons => 'We also appreciate the support of many other helpers not listed here. Thank you! 🥰';

	/// en-US: 'Patrons'
	String get patrons => 'Patrons';

	/// en-US: 'Project members'
	String get projectMembers => 'Project members';
}

// Path: misskey.displayOfSensitiveMedia_
class TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	TranslationsMisskeyDisplayOfSensitiveMediaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Hide media marked as sensitive'
	String get respect => 'Hide media marked as sensitive';

	/// en-US: 'Display media marked as sensitive'
	String get ignore => 'Display media marked as sensitive';

	/// en-US: 'Hide all media'
	String get force => 'Hide all media';
}

// Path: misskey.instanceTicker_
class TranslationsMisskeyInstanceTickerEnUs {
	TranslationsMisskeyInstanceTickerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Never show'
	String get none => 'Never show';

	/// en-US: 'Show for remote users'
	String get remote => 'Show for remote users';

	/// en-US: 'Always show'
	String get always => 'Always show';
}

// Path: misskey.serverDisconnectedBehavior_
class TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	TranslationsMisskeyServerDisconnectedBehaviorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Automatically reload'
	String get reload => 'Automatically reload';

	/// en-US: 'Show warning dialog'
	String get dialog => 'Show warning dialog';

	/// en-US: 'Show unobtrusive warning'
	String get quiet => 'Show unobtrusive warning';
}

// Path: misskey.channel_
class TranslationsMisskeyChannelEnUs {
	TranslationsMisskeyChannelEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Create channel'
	String get create => 'Create channel';

	/// en-US: 'Edit channel'
	String get edit => 'Edit channel';

	/// en-US: 'Set banner'
	String get setBanner => 'Set banner';

	/// en-US: 'Remove banner'
	String get removeBanner => 'Remove banner';

	/// en-US: 'Trending'
	String get featured => 'Trending';

	/// en-US: 'Owned'
	String get owned => 'Owned';

	/// en-US: 'Followed'
	String get following => 'Followed';

	/// en-US: '{n} Participants'
	String usersCount({required Object n}) => '${n} Participants';

	/// en-US: '{n} Notes'
	String notesCount({required Object n}) => '${n} Notes';

	/// en-US: 'Name and description'
	String get nameAndDescription => 'Name and description';

	/// en-US: 'Name only'
	String get nameOnly => 'Name only';

	/// en-US: 'Allow renote and quote outside the channel'
	String get allowRenoteToExternal => 'Allow renote and quote outside the channel';
}

// Path: misskey.menuDisplay_
class TranslationsMisskeyMenuDisplayEnUs {
	TranslationsMisskeyMenuDisplayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Side'
	String get sideFull => 'Side';

	/// en-US: 'Side (Icons)'
	String get sideIcon => 'Side (Icons)';

	/// en-US: 'Top'
	String get top => 'Top';

	/// en-US: 'Hide'
	String get hide => 'Hide';
}

// Path: misskey.wordMute_
class TranslationsMisskeyWordMuteEnUs {
	TranslationsMisskeyWordMuteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Muted words'
	String get muteWords => 'Muted words';

	/// en-US: 'Separate with spaces for an AND condition or with line breaks for an OR condition.'
	String get muteWordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';

	/// en-US: 'Surround keywords with slashes to use regular expressions.'
	String get muteWordsDescription2 => 'Surround keywords with slashes to use regular expressions.';
}

// Path: misskey.instanceMute_
class TranslationsMisskeyInstanceMuteEnUs {
	TranslationsMisskeyInstanceMuteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'This will mute any notes/renotes from the listed instances, including those of users replying to a user from a muted instance.'
	String get instanceMuteDescription => 'This will mute any notes/renotes from the listed instances, including those of users replying to a user from a muted instance.';

	/// en-US: 'Separate with newlines'
	String get instanceMuteDescription2 => 'Separate with newlines';

	/// en-US: 'Hides notes from listed instances.'
	String get title => 'Hides notes from listed instances.';

	/// en-US: 'List of instances to be muted'
	String get heading => 'List of instances to be muted';
}

// Path: misskey.theme_
class TranslationsMisskeyThemeEnUs {
	TranslationsMisskeyThemeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Explore Themes'
	String get explore => 'Explore Themes';

	/// en-US: 'Install a theme'
	String get install => 'Install a theme';

	/// en-US: 'Manage themes'
	String get manage => 'Manage themes';

	/// en-US: 'Theme code'
	String get code => 'Theme code';

	/// en-US: 'Copy theme code'
	String get copyThemeCode => 'Copy theme code';

	/// en-US: 'Description'
	String get description => 'Description';

	/// en-US: '{name} has been installed'
	String installed({required Object name}) => '${name} has been installed';

	/// en-US: 'Installed themes'
	String get installedThemes => 'Installed themes';

	/// en-US: 'Built-in themes'
	String get builtinThemes => 'Built-in themes';

	/// en-US: 'Server theme'
	String get instanceTheme => 'Server theme';

	/// en-US: 'This theme is already installed'
	String get alreadyInstalled => 'This theme is already installed';

	/// en-US: 'The format of this theme is invalid'
	String get invalid => 'The format of this theme is invalid';

	/// en-US: 'Make a theme'
	String get make => 'Make a theme';

	/// en-US: 'Base'
	String get base => 'Base';

	/// en-US: 'Add constant'
	String get addConstant => 'Add constant';

	/// en-US: 'Constant'
	String get constant => 'Constant';

	/// en-US: 'Default value'
	String get defaultValue => 'Default value';

	/// en-US: 'Color'
	String get color => 'Color';

	/// en-US: 'Reference a property'
	String get refProp => 'Reference a property';

	/// en-US: 'Reference a constant'
	String get refConst => 'Reference a constant';

	/// en-US: 'Key'
	String get key => 'Key';

	/// en-US: 'Functions'
	String get func => 'Functions';

	/// en-US: 'Function type'
	String get funcKind => 'Function type';

	/// en-US: 'Argument'
	String get argument => 'Argument';

	/// en-US: 'Referenced property'
	String get basedProp => 'Referenced property';

	/// en-US: 'Opacity'
	String get alpha => 'Opacity';

	/// en-US: 'Darken'
	String get darken => 'Darken';

	/// en-US: 'Lighten'
	String get lighten => 'Lighten';

	/// en-US: 'Enter a name for this constant'
	String get inputConstantName => 'Enter a name for this constant';

	/// en-US: 'If you enter theme code here, you can import it to the theme editor'
	String get importInfo => 'If you enter theme code here, you can import it to the theme editor';

	/// en-US: 'Do you really want to delete the constant {const_}?'
	String deleteConstantConfirm({required Object const_}) => 'Do you really want to delete the constant ${const_}?';

	late final TranslationsMisskeyThemeKeysEnUs keys = TranslationsMisskeyThemeKeysEnUs.internal(_root);
}

// Path: misskey.sfx_
class TranslationsMisskeySfxEnUs {
	TranslationsMisskeySfxEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'New note'
	String get note => 'New note';

	/// en-US: 'Own note'
	String get noteMy => 'Own note';

	/// en-US: 'Notifications'
	String get notification => 'Notifications';

	/// en-US: 'On choosing a reaction'
	String get reaction => 'On choosing a reaction';

	/// en-US: 'Chat Messages'
	String get chatMessage => 'Chat Messages';
}

// Path: misskey.soundSettings_
class TranslationsMisskeySoundSettingsEnUs {
	TranslationsMisskeySoundSettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Use an audio file in Drive.'
	String get driveFile => 'Use an audio file in Drive.';

	/// en-US: 'Select an audio file from Drive.'
	String get driveFileWarn => 'Select an audio file from Drive.';

	/// en-US: 'This file is not supported'
	String get driveFileTypeWarn => 'This file is not supported';

	/// en-US: 'Select an audio file'
	String get driveFileTypeWarnDescription => 'Select an audio file';

	/// en-US: 'The audio is too long.'
	String get driveFileDurationWarn => 'The audio is too long.';

	/// en-US: 'Long audio may disrupt using Misskey. Still continue?'
	String get driveFileDurationWarnDescription => 'Long audio may disrupt using Misskey. Still continue?';

	/// en-US: 'It couldn't load the sound. Please change the setting.'
	String get driveFileError => 'It couldn\'t load the sound. Please change the setting.';
}

// Path: misskey.ago_
class TranslationsMisskeyAgoEnUs {
	TranslationsMisskeyAgoEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Future'
	String get future => 'Future';

	/// en-US: 'Just now'
	String get justNow => 'Just now';

	/// en-US: '{n}s ago'
	String secondsAgo({required Object n}) => '${n}s ago';

	/// en-US: '{n}m ago'
	String minutesAgo({required Object n}) => '${n}m ago';

	/// en-US: '{n}h ago'
	String hoursAgo({required Object n}) => '${n}h ago';

	/// en-US: '{n}d ago'
	String daysAgo({required Object n}) => '${n}d ago';

	/// en-US: '{n}w ago'
	String weeksAgo({required Object n}) => '${n}w ago';

	/// en-US: '{n}mo ago'
	String monthsAgo({required Object n}) => '${n}mo ago';

	/// en-US: '{n}y ago'
	String yearsAgo({required Object n}) => '${n}y ago';

	/// en-US: 'None'
	String get invalid => 'None';
}

// Path: misskey.timeIn_
class TranslationsMisskeyTimeInEnUs {
	TranslationsMisskeyTimeInEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'In {n}s'
	String seconds({required Object n}) => 'In ${n}s';

	/// en-US: 'In {n}m'
	String minutes({required Object n}) => 'In ${n}m';

	/// en-US: 'In {n}h'
	String hours({required Object n}) => 'In ${n}h';

	/// en-US: 'In {n}d'
	String days({required Object n}) => 'In ${n}d';

	/// en-US: 'In {n}w'
	String weeks({required Object n}) => 'In ${n}w';

	/// en-US: 'In {n}mo'
	String months({required Object n}) => 'In ${n}mo';

	/// en-US: 'In {n}y'
	String years({required Object n}) => 'In ${n}y';
}

// Path: misskey.time_
class TranslationsMisskeyTimeEnUs {
	TranslationsMisskeyTimeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Second(s)'
	String get second => 'Second(s)';

	/// en-US: 'Minute(s)'
	String get minute => 'Minute(s)';

	/// en-US: 'Hour(s)'
	String get hour => 'Hour(s)';

	/// en-US: 'Day(s)'
	String get day => 'Day(s)';
}

// Path: misskey.x2fa_
class TranslationsMisskeyX2faEnUs {
	TranslationsMisskeyX2faEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You have already registered a 2-factor authentication device.'
	String get alreadyRegistered => 'You have already registered a 2-factor authentication device.';

	/// en-US: 'Register authenticator app'
	String get registerTOTP => 'Register authenticator app';

	/// en-US: 'First, install an authentication app (such as {a} or {b}) on your device.'
	String step1({required Object a, required Object b}) => 'First, install an authentication app (such as ${a} or ${b}) on your device.';

	/// en-US: 'Then, scan the QR code displayed on this screen.'
	String get step2 => 'Then, scan the QR code displayed on this screen.';

	/// en-US: 'Enter the following URI if you are using a desktop program'
	String get step2Uri => 'Enter the following URI if you are using a desktop program';

	/// en-US: 'Enter an authentication code'
	String get step3Title => 'Enter an authentication code';

	/// en-US: 'Enter the authentication code (token) provided by your app to finish setup.'
	String get step3 => 'Enter the authentication code (token) provided by your app to finish setup.';

	/// en-US: 'Setup complete'
	String get setupCompleted => 'Setup complete';

	/// en-US: 'From now on, any future login attempts will ask for such a login token.'
	String get step4 => 'From now on, any future login attempts will ask for such a login token.';

	/// en-US: 'Your browser does not support security keys.'
	String get securityKeyNotSupported => 'Your browser does not support security keys.';

	/// en-US: 'Please set up an authenticator app to register a security or pass key.'
	String get registerTOTPBeforeKey => 'Please set up an authenticator app to register a security or pass key.';

	/// en-US: 'Besides fingerprint or PIN authentication, you can also setup authentication via hardware security keys that support FIDO2 to further secure your account.'
	String get securityKeyInfo => 'Besides fingerprint or PIN authentication, you can also setup authentication via hardware security keys that support FIDO2 to further secure your account.';

	/// en-US: 'Register a security or pass key'
	String get registerSecurityKey => 'Register a security or pass key';

	/// en-US: 'Enter a key name'
	String get securityKeyName => 'Enter a key name';

	/// en-US: 'Please follow your browser to register the security or pass key'
	String get tapSecurityKey => 'Please follow your browser to register the security or pass key';

	/// en-US: 'Remove security key'
	String get removeKey => 'Remove security key';

	/// en-US: 'Really delete the {name} key?'
	String removeKeyConfirm({required Object name}) => 'Really delete the ${name} key?';

	/// en-US: 'The authenticator app cannot be removed as long as a security key is registered.'
	String get whyTOTPOnlyRenew => 'The authenticator app cannot be removed as long as a security key is registered.';

	/// en-US: 'Reconfigure authenticator app'
	String get renewTOTP => 'Reconfigure authenticator app';

	/// en-US: 'This will cause verification codes from your previous app to stop working'
	String get renewTOTPConfirm => 'This will cause verification codes from your previous app to stop working';

	/// en-US: 'Reconfigure'
	String get renewTOTPOk => 'Reconfigure';

	/// en-US: 'Cancel'
	String get renewTOTPCancel => 'Cancel';

	/// en-US: 'Before you close this window, please note the following backup codes.'
	String get checkBackupCodesBeforeCloseThisWizard => 'Before you close this window, please note the following backup codes.';

	/// en-US: 'Backup codes'
	String get backupCodes => 'Backup codes';

	/// en-US: 'You can use these codes to gain access to your account in case of becoming unable to use your two-factor authentificator app. Each can only be used once. Please keep them in a safe place.'
	String get backupCodesDescription => 'You can use these codes to gain access to your account in case of becoming unable to use your two-factor authentificator app. Each can only be used once. Please keep them in a safe place.';

	/// en-US: 'A backup code has been used. Please reconfigure two-factor authentification as soon as possible if you are no longer able to use it.'
	String get backupCodeUsedWarning => 'A backup code has been used. Please reconfigure two-factor authentification as soon as possible if you are no longer able to use it.';

	/// en-US: 'All backup codes have been used. Should you lose access to your two-factor authentification app, you will be unable to access this account. Please reconfigure two-factor authentification.'
	String get backupCodesExhaustedWarning => 'All backup codes have been used. Should you lose access to your two-factor authentification app, you will be unable to access this account. Please reconfigure two-factor authentification.';

	/// en-US: 'Here is detailed guide'
	String get moreDetailedGuideHere => 'Here is detailed guide';
}

// Path: misskey.permissions_
class TranslationsMisskeyPermissionsEnUs {
	TranslationsMisskeyPermissionsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'View your account information'
	String get readAccount => 'View your account information';

	/// en-US: 'Edit your account information'
	String get writeAccount => 'Edit your account information';

	/// en-US: 'View your list of blocked users'
	String get readBlocks => 'View your list of blocked users';

	/// en-US: 'Edit your list of blocked users'
	String get writeBlocks => 'Edit your list of blocked users';

	/// en-US: 'Access your Drive files and folders'
	String get readDrive => 'Access your Drive files and folders';

	/// en-US: 'Edit or delete your Drive files and folders'
	String get writeDrive => 'Edit or delete your Drive files and folders';

	/// en-US: 'View your list of favorites'
	String get readFavorites => 'View your list of favorites';

	/// en-US: 'Edit your list of favorites'
	String get writeFavorites => 'Edit your list of favorites';

	/// en-US: 'View information on who you follow'
	String get readFollowing => 'View information on who you follow';

	/// en-US: 'Follow or unfollow other accounts'
	String get writeFollowing => 'Follow or unfollow other accounts';

	/// en-US: 'View your chats'
	String get readMessaging => 'View your chats';

	/// en-US: 'Compose or delete chat messages'
	String get writeMessaging => 'Compose or delete chat messages';

	/// en-US: 'View your list of muted users'
	String get readMutes => 'View your list of muted users';

	/// en-US: 'Edit your list of muted users'
	String get writeMutes => 'Edit your list of muted users';

	/// en-US: 'Compose or delete notes'
	String get writeNotes => 'Compose or delete notes';

	/// en-US: 'View your notifications'
	String get readNotifications => 'View your notifications';

	/// en-US: 'Manage your notifications'
	String get writeNotifications => 'Manage your notifications';

	/// en-US: 'View your reactions'
	String get readReactions => 'View your reactions';

	/// en-US: 'Edit your reactions'
	String get writeReactions => 'Edit your reactions';

	/// en-US: 'Vote on a poll'
	String get writeVotes => 'Vote on a poll';

	/// en-US: 'View your Pages'
	String get readPages => 'View your Pages';

	/// en-US: 'Edit or delete your Pages'
	String get writePages => 'Edit or delete your Pages';

	/// en-US: 'View list of liked Pages'
	String get readPageLikes => 'View list of liked Pages';

	/// en-US: 'Edit list of liked Pages'
	String get writePageLikes => 'Edit list of liked Pages';

	/// en-US: 'View your user groups'
	String get readUserGroups => 'View your user groups';

	/// en-US: 'Edit or delete your user groups'
	String get writeUserGroups => 'Edit or delete your user groups';

	/// en-US: 'View your channels'
	String get readChannels => 'View your channels';

	/// en-US: 'Edit your channels'
	String get writeChannels => 'Edit your channels';

	/// en-US: 'View your gallery'
	String get readGallery => 'View your gallery';

	/// en-US: 'Edit your gallery'
	String get writeGallery => 'Edit your gallery';

	/// en-US: 'View your list of liked gallery posts'
	String get readGalleryLikes => 'View your list of liked gallery posts';

	/// en-US: 'Edit your list of liked gallery posts'
	String get writeGalleryLikes => 'Edit your list of liked gallery posts';

	/// en-US: 'View Play'
	String get readFlash => 'View Play';

	/// en-US: 'Edit Plays'
	String get writeFlash => 'Edit Plays';

	/// en-US: 'View list of liked Plays'
	String get readFlashLikes => 'View list of liked Plays';

	/// en-US: 'Edit list of liked Plays'
	String get writeFlashLikes => 'Edit list of liked Plays';

	/// en-US: 'View user reports'
	String get readAdminAbuseUserReports => 'View user reports';

	/// en-US: 'Delete user account'
	String get writeAdminDeleteAccount => 'Delete user account';

	/// en-US: 'Delete all files of a user'
	String get writeAdminDeleteAllFilesOfAUser => 'Delete all files of a user';

	/// en-US: 'View database index stats'
	String get readAdminIndexStats => 'View database index stats';

	/// en-US: 'View database table stats'
	String get readAdminTableStats => 'View database table stats';

	/// en-US: 'View user IP addresses'
	String get readAdminUserIps => 'View user IP addresses';

	/// en-US: 'View instance metadata'
	String get readAdminMeta => 'View instance metadata';

	/// en-US: 'Reset user password'
	String get writeAdminResetPassword => 'Reset user password';

	/// en-US: 'Resolve user report'
	String get writeAdminResolveAbuseUserReport => 'Resolve user report';

	/// en-US: 'Send email'
	String get writeAdminSendEmail => 'Send email';

	/// en-US: 'View server info'
	String get readAdminServerInfo => 'View server info';

	/// en-US: 'View moderation log'
	String get readAdminShowModerationLog => 'View moderation log';

	/// en-US: 'View private user info'
	String get readAdminShowUser => 'View private user info';

	/// en-US: 'Suspend user'
	String get writeAdminSuspendUser => 'Suspend user';

	/// en-US: 'Remove user avatar'
	String get writeAdminUnsetUserAvatar => 'Remove user avatar';

	/// en-US: 'Remove user banner'
	String get writeAdminUnsetUserBanner => 'Remove user banner';

	/// en-US: 'Unsuspend user'
	String get writeAdminUnsuspendUser => 'Unsuspend user';

	/// en-US: 'Manage instance metadata'
	String get writeAdminMeta => 'Manage instance metadata';

	/// en-US: 'Manage moderation note'
	String get writeAdminUserNote => 'Manage moderation note';

	/// en-US: 'Manage roles'
	String get writeAdminRoles => 'Manage roles';

	/// en-US: 'View roles'
	String get readAdminRoles => 'View roles';

	/// en-US: 'Manage relays'
	String get writeAdminRelays => 'Manage relays';

	/// en-US: 'View relays'
	String get readAdminRelays => 'View relays';

	/// en-US: 'Manage invite codes'
	String get writeAdminInviteCodes => 'Manage invite codes';

	/// en-US: 'View invite codes'
	String get readAdminInviteCodes => 'View invite codes';

	/// en-US: 'Manage announcements'
	String get writeAdminAnnouncements => 'Manage announcements';

	/// en-US: 'View announcements'
	String get readAdminAnnouncements => 'View announcements';

	/// en-US: 'Can manage avatar decorations'
	String get writeAdminAvatarDecorations => 'Can manage avatar decorations';

	/// en-US: 'View avatar decorations'
	String get readAdminAvatarDecorations => 'View avatar decorations';

	/// en-US: 'Manage federation data'
	String get writeAdminFederation => 'Manage federation data';

	/// en-US: 'Manage user account'
	String get writeAdminAccount => 'Manage user account';

	/// en-US: 'View user account'
	String get readAdminAccount => 'View user account';

	/// en-US: 'Manage emoji'
	String get writeAdminEmoji => 'Manage emoji';

	/// en-US: 'View emoji'
	String get readAdminEmoji => 'View emoji';

	/// en-US: 'Manage job queue'
	String get writeAdminQueue => 'Manage job queue';

	/// en-US: 'View job queue info'
	String get readAdminQueue => 'View job queue info';

	/// en-US: 'Manage promotion notes'
	String get writeAdminPromo => 'Manage promotion notes';

	/// en-US: 'Manage user drive'
	String get writeAdminDrive => 'Manage user drive';

	/// en-US: 'View user drive info'
	String get readAdminDrive => 'View user drive info';

	/// en-US: 'Use WebSocket API for Admin'
	String get readAdminStream => 'Use WebSocket API for Admin';

	/// en-US: 'Manage ads'
	String get writeAdminAd => 'Manage ads';

	/// en-US: 'View ads'
	String get readAdminAd => 'View ads';

	/// en-US: 'Create invite codes'
	String get writeInviteCodes => 'Create invite codes';

	/// en-US: 'Get invite codes'
	String get readInviteCodes => 'Get invite codes';

	/// en-US: 'Manage favorited clips'
	String get writeClipFavorite => 'Manage favorited clips';

	/// en-US: 'View favorited clips'
	String get readClipFavorite => 'View favorited clips';

	/// en-US: 'Get federation data'
	String get readFederation => 'Get federation data';

	/// en-US: 'Report violation'
	String get writeReportAbuse => 'Report violation';

	/// en-US: 'Compose or delete chat messages'
	String get writeChat => 'Compose or delete chat messages';

	/// en-US: 'Browse Chat'
	String get readChat => 'Browse Chat';
}

// Path: misskey.auth_
class TranslationsMisskeyAuthEnUs {
	TranslationsMisskeyAuthEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Granting application permissions'
	String get shareAccessTitle => 'Granting application permissions';

	/// en-US: 'Would you like to authorize "{name}" to access this account?'
	String shareAccess({required Object name}) => 'Would you like to authorize "${name}" to access this account?';

	/// en-US: 'Are you sure you want to authorize this application to access your account?'
	String get shareAccessAsk => 'Are you sure you want to authorize this application to access your account?';

	/// en-US: '{name} requests the following permissions'
	String permission({required Object name}) => '${name} requests the following permissions';

	/// en-US: 'This application requests the following permissions'
	String get permissionAsk => 'This application requests the following permissions';

	/// en-US: 'Please go back to the application'
	String get pleaseGoBack => 'Please go back to the application';

	/// en-US: 'Returning to the application'
	String get callback => 'Returning to the application';

	/// en-US: 'Access granted'
	String get accepted => 'Access granted';

	/// en-US: 'Access denied'
	String get denied => 'Access denied';

	/// en-US: 'Operate as the following user'
	String get scopeUser => 'Operate as the following user';

	/// en-US: 'Please log in to authorize applications.'
	String get pleaseLogin => 'Please log in to authorize applications.';

	/// en-US: 'When access is granted, you will automatically be redirected to the following URL'
	String get byClickingYouWillBeRedirectedToThisUrl => 'When access is granted, you will automatically be redirected to the following URL';
}

// Path: misskey.antennaSources_
class TranslationsMisskeyAntennaSourcesEnUs {
	TranslationsMisskeyAntennaSourcesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'All notes'
	String get all => 'All notes';

	/// en-US: 'Notes from followed users'
	String get homeTimeline => 'Notes from followed users';

	/// en-US: 'Notes from specific users'
	String get users => 'Notes from specific users';

	/// en-US: 'Notes from a specified list of users'
	String get userList => 'Notes from a specified list of users';

	/// en-US: 'All notes except for those of one or more specified users'
	String get userBlacklist => 'All notes except for those of one or more specified users';
}

// Path: misskey.weekday_
class TranslationsMisskeyWeekdayEnUs {
	TranslationsMisskeyWeekdayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Sunday'
	String get sunday => 'Sunday';

	/// en-US: 'Monday'
	String get monday => 'Monday';

	/// en-US: 'Tuesday'
	String get tuesday => 'Tuesday';

	/// en-US: 'Wednesday'
	String get wednesday => 'Wednesday';

	/// en-US: 'Thursday'
	String get thursday => 'Thursday';

	/// en-US: 'Friday'
	String get friday => 'Friday';

	/// en-US: 'Saturday'
	String get saturday => 'Saturday';
}

// Path: misskey.widgets_
class TranslationsMisskeyWidgetsEnUs {
	TranslationsMisskeyWidgetsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Profile'
	String get profile => 'Profile';

	/// en-US: 'Instance Information'
	String get instanceInfo => 'Instance Information';

	/// en-US: 'Sticky notes'
	String get memo => 'Sticky notes';

	/// en-US: 'Notifications'
	String get notifications => 'Notifications';

	/// en-US: 'Timeline'
	String get timeline => 'Timeline';

	/// en-US: 'Calendar'
	String get calendar => 'Calendar';

	/// en-US: 'Trending'
	String get trends => 'Trending';

	/// en-US: 'Clock'
	String get clock => 'Clock';

	/// en-US: 'RSS reader'
	String get rss => 'RSS reader';

	/// en-US: 'RSS-Ticker'
	String get rssTicker => 'RSS-Ticker';

	/// en-US: 'Activity'
	String get activity => 'Activity';

	/// en-US: 'Photos'
	String get photos => 'Photos';

	/// en-US: 'Digital clock'
	String get digitalClock => 'Digital clock';

	/// en-US: 'UNIX clock'
	String get unixClock => 'UNIX clock';

	/// en-US: 'Federation'
	String get federation => 'Federation';

	/// en-US: 'Instance cloud'
	String get instanceCloud => 'Instance cloud';

	/// en-US: 'Posting form'
	String get postForm => 'Posting form';

	/// en-US: 'Slideshow'
	String get slideshow => 'Slideshow';

	/// en-US: 'Button'
	String get button => 'Button';

	/// en-US: 'Online users'
	String get onlineUsers => 'Online users';

	/// en-US: 'Job Queue'
	String get jobQueue => 'Job Queue';

	/// en-US: 'Server metrics'
	String get serverMetric => 'Server metrics';

	/// en-US: 'AiScript console'
	String get aiscript => 'AiScript console';

	/// en-US: 'AiScript App'
	String get aiscriptApp => 'AiScript App';

	/// en-US: 'Ai'
	String get aichan => 'Ai';

	/// en-US: 'User list'
	String get userList => 'User list';

	late final TranslationsMisskeyWidgetsUserListEnUs userList_ = TranslationsMisskeyWidgetsUserListEnUs.internal(_root);

	/// en-US: 'Clicker'
	String get clicker => 'Clicker';

	/// en-US: 'Today's Birthdays'
	String get birthdayFollowings => 'Today\'s Birthdays';

	/// en-US: 'Chat'
	String get chat => 'Chat';
}

// Path: misskey.cw_
class TranslationsMisskeyCwEnUs {
	TranslationsMisskeyCwEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Hide'
	String get hide => 'Hide';

	/// en-US: 'Show content'
	String get show => 'Show content';

	/// en-US: '{count} characters'
	String chars({required Object count}) => '${count} characters';

	/// en-US: '{count} file(s)'
	String files({required Object count}) => '${count} file(s)';
}

// Path: misskey.poll_
class TranslationsMisskeyPollEnUs {
	TranslationsMisskeyPollEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'At least two choices are needed'
	String get noOnlyOneChoice => 'At least two choices are needed';

	/// en-US: 'Choice {n}'
	String choiceN({required Object n}) => 'Choice ${n}';

	/// en-US: 'You cannot add more choices'
	String get noMore => 'You cannot add more choices';

	/// en-US: 'Allow selecting multiple choices'
	String get canMultipleVote => 'Allow selecting multiple choices';

	/// en-US: 'End poll'
	String get expiration => 'End poll';

	/// en-US: 'Never'
	String get infinite => 'Never';

	/// en-US: 'End at...'
	String get at => 'End at...';

	/// en-US: 'End after...'
	String get after => 'End after...';

	/// en-US: 'End date'
	String get deadlineDate => 'End date';

	/// en-US: 'Time'
	String get deadlineTime => 'Time';

	/// en-US: 'Duration'
	String get duration => 'Duration';

	/// en-US: '{n} votes'
	String votesCount({required Object n}) => '${n} votes';

	/// en-US: '{n} votes in total'
	String totalVotes({required Object n}) => '${n} votes in total';

	/// en-US: 'Vote'
	String get vote => 'Vote';

	/// en-US: 'View results'
	String get showResult => 'View results';

	/// en-US: 'Voted'
	String get voted => 'Voted';

	/// en-US: 'Ended'
	String get closed => 'Ended';

	/// en-US: '{d} day(s) {h} hour(s) remaining'
	String remainingDays({required Object d, required Object h}) => '${d} day(s) ${h} hour(s) remaining';

	/// en-US: '{h} hour(s) {m} minute(s) remaining'
	String remainingHours({required Object h, required Object m}) => '${h} hour(s) ${m} minute(s) remaining';

	/// en-US: '{m} minute(s) {s} second(s) remaining'
	String remainingMinutes({required Object m, required Object s}) => '${m} minute(s) ${s} second(s) remaining';

	/// en-US: '{s} second(s) remaining'
	String remainingSeconds({required Object s}) => '${s} second(s) remaining';
}

// Path: misskey.visibility_
class TranslationsMisskeyVisibilityEnUs {
	TranslationsMisskeyVisibilityEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Public'
	String get public => 'Public';

	/// en-US: 'Your note will be visible for all users'
	String get publicDescription => 'Your note will be visible for all users';

	/// en-US: 'Home'
	String get home => 'Home';

	/// en-US: 'Post to home timeline only'
	String get homeDescription => 'Post to home timeline only';

	/// en-US: 'Followers'
	String get followers => 'Followers';

	/// en-US: 'Make visible to your followers only'
	String get followersDescription => 'Make visible to your followers only';

	/// en-US: 'Direct'
	String get specified => 'Direct';

	/// en-US: 'Make visible for specified users only'
	String get specifiedDescription => 'Make visible for specified users only';

	/// en-US: 'Defederate'
	String get disableFederation => 'Defederate';

	/// en-US: 'Don't transmit to other instances'
	String get disableFederationDescription => 'Don\'t transmit to other instances';
}

// Path: misskey.postForm_
class TranslationsMisskeyPostFormEnUs {
	TranslationsMisskeyPostFormEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'There are files that have not been uploaded, do you want to discard them and close the form?'
	String get quitInspiteOfThereAreUnuploadedFilesConfirm => 'There are files that have not been uploaded, do you want to discard them and close the form?';

	/// en-US: 'The file has not yet been uploaded. From the file menu, you can rename, crop images, watermark and compress or uncompress the file. Files are automatically uploaded when you publish a note.'
	String get uploaderTip => 'The file has not yet been uploaded. From the file menu, you can rename, crop images, watermark and compress or uncompress the file. Files are automatically uploaded when you publish a note.';

	/// en-US: 'Reply to this note...'
	String get replyPlaceholder => 'Reply to this note...';

	/// en-US: 'Quote this note...'
	String get quotePlaceholder => 'Quote this note...';

	/// en-US: 'Post to a channel...'
	String get channelPlaceholder => 'Post to a channel...';

	late final TranslationsMisskeyPostFormPlaceholdersEnUs placeholders_ = TranslationsMisskeyPostFormPlaceholdersEnUs.internal(_root);
}

// Path: misskey.profile_
class TranslationsMisskeyProfileEnUs {
	TranslationsMisskeyProfileEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Name'
	String get name => 'Name';

	/// en-US: 'Username'
	String get username => 'Username';

	/// en-US: 'Bio'
	String get description => 'Bio';

	/// en-US: 'You can also include hashtags in your bio.'
	String get youCanIncludeHashtags => 'You can also include hashtags in your bio.';

	/// en-US: 'Additional Information'
	String get metadata => 'Additional Information';

	/// en-US: 'Edit additional Information'
	String get metadataEdit => 'Edit additional Information';

	/// en-US: 'Using these, you can display additional information fields in your profile.'
	String get metadataDescription => 'Using these, you can display additional information fields in your profile.';

	/// en-US: 'Label'
	String get metadataLabel => 'Label';

	/// en-US: 'Content'
	String get metadataContent => 'Content';

	/// en-US: 'Change avatar'
	String get changeAvatar => 'Change avatar';

	/// en-US: 'Change banner'
	String get changeBanner => 'Change banner';

	/// en-US: 'By entering an URL that contains a link to your profile here, an ownership verification icon can be displayed next to the field.'
	String get verifiedLinkDescription => 'By entering an URL that contains a link to your profile here, an ownership verification icon can be displayed next to the field.';

	/// en-US: 'You can add up to {max} decorations.'
	String avatarDecorationMax({required Object max}) => 'You can add up to ${max} decorations.';

	/// en-US: 'Message when you are followed'
	String get followedMessage => 'Message when you are followed';

	/// en-US: 'You can set a short message to be displayed to the recipient when they follow you.'
	String get followedMessageDescription => 'You can set a short message to be displayed to the recipient when they follow you.';

	/// en-US: 'If you have set up that follow requests require approval, this will be displayed when you grant a follow request.'
	String get followedMessageDescriptionForLockedAccount => 'If you have set up that follow requests require approval, this will be displayed when you grant a follow request.';
}

// Path: misskey.exportOrImport_
class TranslationsMisskeyExportOrImportEnUs {
	TranslationsMisskeyExportOrImportEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'All notes'
	String get allNotes => 'All notes';

	/// en-US: 'Favorite notes'
	String get favoritedNotes => 'Favorite notes';

	/// en-US: 'Clip'
	String get clips => 'Clip';

	/// en-US: 'Followed users'
	String get followingList => 'Followed users';

	/// en-US: 'Muted users'
	String get muteList => 'Muted users';

	/// en-US: 'Blocked users'
	String get blockingList => 'Blocked users';

	/// en-US: 'User lists'
	String get userLists => 'User lists';

	/// en-US: 'Exclude muted users'
	String get excludeMutingUsers => 'Exclude muted users';

	/// en-US: 'Exclude inactive users'
	String get excludeInactiveUsers => 'Exclude inactive users';

	/// en-US: 'Include replies from imported users in the timeline'
	String get withReplies => 'Include replies from imported users in the timeline';
}

// Path: misskey.charts_
class TranslationsMisskeyChartsEnUs {
	TranslationsMisskeyChartsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Federation'
	String get federation => 'Federation';

	/// en-US: 'Requests'
	String get apRequest => 'Requests';

	/// en-US: 'Difference in the number of users'
	String get usersIncDec => 'Difference in the number of users';

	/// en-US: 'Total number of users'
	String get usersTotal => 'Total number of users';

	/// en-US: 'Active users'
	String get activeUsers => 'Active users';

	/// en-US: 'Difference in the number of notes'
	String get notesIncDec => 'Difference in the number of notes';

	/// en-US: 'Difference in the number of local notes'
	String get localNotesIncDec => 'Difference in the number of local notes';

	/// en-US: 'Difference in the number of remote notes'
	String get remoteNotesIncDec => 'Difference in the number of remote notes';

	/// en-US: 'Total number of notes'
	String get notesTotal => 'Total number of notes';

	/// en-US: 'Difference in the number of files'
	String get filesIncDec => 'Difference in the number of files';

	/// en-US: 'Total number of files'
	String get filesTotal => 'Total number of files';

	/// en-US: 'Difference in storage usage'
	String get storageUsageIncDec => 'Difference in storage usage';

	/// en-US: 'Total storage usage'
	String get storageUsageTotal => 'Total storage usage';
}

// Path: misskey.instanceCharts_
class TranslationsMisskeyInstanceChartsEnUs {
	TranslationsMisskeyInstanceChartsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Requests'
	String get requests => 'Requests';

	/// en-US: 'Difference in the number of users'
	String get users => 'Difference in the number of users';

	/// en-US: 'Cumulative number of users'
	String get usersTotal => 'Cumulative number of users';

	/// en-US: 'Difference in the number of notes'
	String get notes => 'Difference in the number of notes';

	/// en-US: 'Cumulative number of notes'
	String get notesTotal => 'Cumulative number of notes';

	/// en-US: 'Difference in the number of followed users / followers '
	String get ff => 'Difference in the number of followed users / followers ';

	/// en-US: 'Cumulative number of followed users / followers'
	String get ffTotal => 'Cumulative number of followed users / followers';

	/// en-US: 'Difference in cache size'
	String get cacheSize => 'Difference in cache size';

	/// en-US: 'Cumulative total cache size'
	String get cacheSizeTotal => 'Cumulative total cache size';

	/// en-US: 'Difference in the number of files'
	String get files => 'Difference in the number of files';

	/// en-US: 'Cumulative number of files'
	String get filesTotal => 'Cumulative number of files';
}

// Path: misskey.timelines_
class TranslationsMisskeyTimelinesEnUs {
	TranslationsMisskeyTimelinesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Home'
	String get home => 'Home';

	/// en-US: 'Local'
	String get local => 'Local';

	/// en-US: 'Social'
	String get social => 'Social';

	/// en-US: 'Global'
	String get global => 'Global';
}

// Path: misskey.play_
class TranslationsMisskeyPlayEnUs {
	TranslationsMisskeyPlayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Create Play'
	String get new_ => 'Create Play';

	/// en-US: 'Edit Play'
	String get edit => 'Edit Play';

	/// en-US: 'Play created'
	String get created => 'Play created';

	/// en-US: 'Play edited'
	String get updated => 'Play edited';

	/// en-US: 'Play deleted'
	String get deleted => 'Play deleted';

	/// en-US: 'Play settings'
	String get pageSetting => 'Play settings';

	/// en-US: 'Edit this Play'
	String get editThisPage => 'Edit this Play';

	/// en-US: 'View source'
	String get viewSource => 'View source';

	/// en-US: 'My Plays'
	String get my => 'My Plays';

	/// en-US: 'Liked Plays'
	String get liked => 'Liked Plays';

	/// en-US: 'Popular'
	String get featured => 'Popular';

	/// en-US: 'Title'
	String get title => 'Title';

	/// en-US: 'Script'
	String get script => 'Script';

	/// en-US: 'Description'
	String get summary => 'Description';

	/// en-US: 'Putting it private means it won't be visible on your profile, but anyone that has the URL can still access it.'
	String get visibilityDescription => 'Putting it private means it won\'t be visible on your profile, but anyone that has the URL can still access it.';
}

// Path: misskey.pages_
class TranslationsMisskeyPagesEnUs {
	TranslationsMisskeyPagesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Create a new Page'
	String get newPage => 'Create a new Page';

	/// en-US: 'Edit this Page'
	String get editPage => 'Edit this Page';

	/// en-US: 'Viewing this Page's source'
	String get readPage => 'Viewing this Page\'s source';

	/// en-US: 'Page settings'
	String get pageSetting => 'Page settings';

	/// en-US: 'The specified Page URL already exists'
	String get nameAlreadyExists => 'The specified Page URL already exists';

	/// en-US: 'The specified Page URL is invalid'
	String get invalidNameTitle => 'The specified Page URL is invalid';

	/// en-US: 'Make sure the Page title is not empty'
	String get invalidNameText => 'Make sure the Page title is not empty';

	/// en-US: 'Edit this Page'
	String get editThisPage => 'Edit this Page';

	/// en-US: 'View source'
	String get viewSource => 'View source';

	/// en-US: 'View your Pages'
	String get viewPage => 'View your Pages';

	/// en-US: 'Like'
	String get like => 'Like';

	/// en-US: 'Remove like'
	String get unlike => 'Remove like';

	/// en-US: 'My Pages'
	String get my => 'My Pages';

	/// en-US: 'Liked Pages'
	String get liked => 'Liked Pages';

	/// en-US: 'Popular'
	String get featured => 'Popular';

	/// en-US: 'Inspector'
	String get inspector => 'Inspector';

	/// en-US: 'Contents'
	String get contents => 'Contents';

	/// en-US: 'Page block'
	String get content => 'Page block';

	/// en-US: 'Variables'
	String get variables => 'Variables';

	/// en-US: 'Title'
	String get title => 'Title';

	/// en-US: 'Page URL'
	String get url => 'Page URL';

	/// en-US: 'Page summary'
	String get summary => 'Page summary';

	/// en-US: 'Center elements'
	String get alignCenter => 'Center elements';

	/// en-US: 'Hide Page title when pinned to profile'
	String get hideTitleWhenPinned => 'Hide Page title when pinned to profile';

	/// en-US: 'Font'
	String get font => 'Font';

	/// en-US: 'Serif'
	String get fontSerif => 'Serif';

	/// en-US: 'Sans Serif'
	String get fontSansSerif => 'Sans Serif';

	/// en-US: 'Set thumbnail'
	String get eyeCatchingImageSet => 'Set thumbnail';

	/// en-US: 'Delete thumbnail'
	String get eyeCatchingImageRemove => 'Delete thumbnail';

	/// en-US: 'Add a block'
	String get chooseBlock => 'Add a block';

	/// en-US: 'Enter a section title'
	String get enterSectionTitle => 'Enter a section title';

	/// en-US: 'Select a type'
	String get selectType => 'Select a type';

	/// en-US: 'Content'
	String get contentBlocks => 'Content';

	/// en-US: 'Input'
	String get inputBlocks => 'Input';

	/// en-US: 'Special'
	String get specialBlocks => 'Special';

	late final TranslationsMisskeyPagesBlocksEnUs blocks = TranslationsMisskeyPagesBlocksEnUs.internal(_root);
}

// Path: misskey.relayStatus_
class TranslationsMisskeyRelayStatusEnUs {
	TranslationsMisskeyRelayStatusEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Pending'
	String get requesting => 'Pending';

	/// en-US: 'Accepted'
	String get accepted => 'Accepted';

	/// en-US: 'Rejected'
	String get rejected => 'Rejected';
}

// Path: misskey.notification_
class TranslationsMisskeyNotificationEnUs {
	TranslationsMisskeyNotificationEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'File successfully uploaded'
	String get fileUploaded => 'File successfully uploaded';

	/// en-US: '{name} mentioned you'
	String youGotMention({required Object name}) => '${name} mentioned you';

	/// en-US: '{name} replied to you'
	String youGotReply({required Object name}) => '${name} replied to you';

	/// en-US: '{name} quoted you'
	String youGotQuote({required Object name}) => '${name} quoted you';

	/// en-US: 'Renote from {name}'
	String youRenoted({required Object name}) => 'Renote from ${name}';

	/// en-US: 'followed you'
	String get youWereFollowed => 'followed you';

	/// en-US: 'You've received a follow request'
	String get youReceivedFollowRequest => 'You\'ve received a follow request';

	/// en-US: 'Your follow request was accepted'
	String get yourFollowRequestAccepted => 'Your follow request was accepted';

	/// en-US: 'Poll results have become available'
	String get pollEnded => 'Poll results have become available';

	/// en-US: 'New note'
	String get newNote => 'New note';

	/// en-US: 'Antenna {name}'
	String unreadAntennaNote({required Object name}) => 'Antenna ${name}';

	/// en-US: 'Role given'
	String get roleAssigned => 'Role given';

	/// en-US: 'You have been invited to a chat room'
	String get chatRoomInvitationReceived => 'You have been invited to a chat room';

	/// en-US: 'Push notifications have been updated'
	String get emptyPushNotificationMessage => 'Push notifications have been updated';

	/// en-US: 'Achievement unlocked'
	String get achievementEarned => 'Achievement unlocked';

	/// en-US: 'Test notification'
	String get testNotification => 'Test notification';

	/// en-US: 'Check notification appearance'
	String get checkNotificationBehavior => 'Check notification appearance';

	/// en-US: 'Send test notification'
	String get sendTestNotification => 'Send test notification';

	/// en-US: 'Notifications look like this'
	String get notificationWillBeDisplayedLikeThis => 'Notifications look like this';

	/// en-US: '{n} users reacted'
	String reactedBySomeUsers({required Object n}) => '${n} users reacted';

	/// en-US: '{n} users liked your note'
	String likedBySomeUsers({required Object n}) => '${n} users liked your note';

	/// en-US: 'Renote from {n} users'
	String renotedBySomeUsers({required Object n}) => 'Renote from ${n} users';

	/// en-US: 'Followed by {n} users'
	String followedBySomeUsers({required Object n}) => 'Followed by ${n} users';

	/// en-US: 'Clear notifications'
	String get flushNotification => 'Clear notifications';

	/// en-US: 'Export of {x} has been completed'
	String exportOfXCompleted({required Object x}) => 'Export of ${x} has been completed';

	/// en-US: 'Someone logged in'
	String get login => 'Someone logged in';

	/// en-US: 'An access token has been created'
	String get createToken => 'An access token has been created';

	/// en-US: 'If you have no idea, delete the access token through "{text}".'
	String createTokenDescription({required Object text}) => 'If you have no idea, delete the access token through "${text}".';

	late final TranslationsMisskeyNotificationTypesEnUs types_ = TranslationsMisskeyNotificationTypesEnUs.internal(_root);
	late final TranslationsMisskeyNotificationActionsEnUs actions_ = TranslationsMisskeyNotificationActionsEnUs.internal(_root);
}

// Path: misskey.deck_
class TranslationsMisskeyDeckEnUs {
	TranslationsMisskeyDeckEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Always show main column'
	String get alwaysShowMainColumn => 'Always show main column';

	/// en-US: 'Align columns'
	String get columnAlign => 'Align columns';

	/// en-US: 'Margin between columns'
	String get columnGap => 'Margin between columns';

	/// en-US: 'Deck menu position'
	String get deckMenuPosition => 'Deck menu position';

	/// en-US: 'Navigation bar position'
	String get navbarPosition => 'Navigation bar position';

	/// en-US: 'Add column'
	String get addColumn => 'Add column';

	/// en-US: 'Notification setting for new notes'
	String get newNoteNotificationSettings => 'Notification setting for new notes';

	/// en-US: 'Column settings'
	String get configureColumn => 'Column settings';

	/// en-US: 'Swap with the left column'
	String get swapLeft => 'Swap with the left column';

	/// en-US: 'Swap with the right column'
	String get swapRight => 'Swap with the right column';

	/// en-US: 'Swap with the above column'
	String get swapUp => 'Swap with the above column';

	/// en-US: 'Swap with the below column'
	String get swapDown => 'Swap with the below column';

	/// en-US: 'Stack on left column'
	String get stackLeft => 'Stack on left column';

	/// en-US: 'Pop column to the right'
	String get popRight => 'Pop column to the right';

	/// en-US: 'Profile'
	String get profile => 'Profile';

	/// en-US: 'New profile'
	String get newProfile => 'New profile';

	/// en-US: 'Delete profile'
	String get deleteProfile => 'Delete profile';

	/// en-US: 'Create the perfect interface for you by arranging columns freely!'
	String get introduction => 'Create the perfect interface for you by arranging columns freely!';

	/// en-US: 'Click on the + on the right of the screen to add new columns whenever you want.'
	String get introduction2 => 'Click on the + on the right of the screen to add new columns whenever you want.';

	/// en-US: 'Please select "Edit widgets" in the column menu and add a widget.'
	String get widgetsIntroduction => 'Please select "Edit widgets" in the column menu and add a widget.';

	/// en-US: 'Use simple UI for navigated pages'
	String get useSimpleUiForNonRootPages => 'Use simple UI for navigated pages';

	/// en-US: 'Minimum width will be used for this when the "Auto-adjust width" option is enabled'
	String get usedAsMinWidthWhenFlexible => 'Minimum width will be used for this when the "Auto-adjust width" option is enabled';

	/// en-US: 'Auto-adjust width'
	String get flexible => 'Auto-adjust width';

	/// en-US: 'Enable profile information sync between devices'
	String get enableSyncBetweenDevicesForProfiles => 'Enable profile information sync between devices';

	late final TranslationsMisskeyDeckColumnsEnUs columns_ = TranslationsMisskeyDeckColumnsEnUs.internal(_root);
}

// Path: misskey.dialog_
class TranslationsMisskeyDialogEnUs {
	TranslationsMisskeyDialogEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You've exceeded the maximum character limit! Currently at {current} of {max}.'
	String charactersExceeded({required Object current, required Object max}) => 'You\'ve exceeded the maximum character limit! Currently at ${current} of ${max}.';

	/// en-US: 'You're below the minimum character limit! Currently at {current} of {min}.'
	String charactersBelow({required Object current, required Object min}) => 'You\'re below the minimum character limit! Currently at ${current} of ${min}.';
}

// Path: misskey.disabledTimeline_
class TranslationsMisskeyDisabledTimelineEnUs {
	TranslationsMisskeyDisabledTimelineEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Timeline disabled'
	String get title => 'Timeline disabled';

	/// en-US: 'You cannot use this timeline under your current roles.'
	String get description => 'You cannot use this timeline under your current roles.';
}

// Path: misskey.drivecleaner_
class TranslationsMisskeyDrivecleanerEnUs {
	TranslationsMisskeyDrivecleanerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Descending Filesizes'
	String get orderBySizeDesc => 'Descending Filesizes';

	/// en-US: 'Ascending Dates'
	String get orderByCreatedAtAsc => 'Ascending Dates';
}

// Path: misskey.webhookSettings_
class TranslationsMisskeyWebhookSettingsEnUs {
	TranslationsMisskeyWebhookSettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Create Webhook'
	String get createWebhook => 'Create Webhook';

	/// en-US: 'Modify Webhook'
	String get modifyWebhook => 'Modify Webhook';

	/// en-US: 'Name'
	String get name => 'Name';

	/// en-US: 'Secret'
	String get secret => 'Secret';

	/// en-US: 'Trigger'
	String get trigger => 'Trigger';

	/// en-US: 'Enabled'
	String get active => 'Enabled';

	late final TranslationsMisskeyWebhookSettingsEventsEnUs events_ = TranslationsMisskeyWebhookSettingsEventsEnUs.internal(_root);
	late final TranslationsMisskeyWebhookSettingsSystemEventsEnUs systemEvents_ = TranslationsMisskeyWebhookSettingsSystemEventsEnUs.internal(_root);

	/// en-US: 'Are you sure you want to delete the Webhook?'
	String get deleteConfirm => 'Are you sure you want to delete the Webhook?';

	/// en-US: 'Click the button to the right of the switch to send a test Webhook with dummy data.'
	String get testRemarks => 'Click the button to the right of the switch to send a test Webhook with dummy data.';
}

// Path: misskey.abuseReport_
class TranslationsMisskeyAbuseReportEnUs {
	TranslationsMisskeyAbuseReportEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyAbuseReportNotificationRecipientEnUs notificationRecipient_ = TranslationsMisskeyAbuseReportNotificationRecipientEnUs.internal(_root);
}

// Path: misskey.moderationLogTypes_
class TranslationsMisskeyModerationLogTypesEnUs {
	TranslationsMisskeyModerationLogTypesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Role created'
	String get createRole => 'Role created';

	/// en-US: 'Role deleted'
	String get deleteRole => 'Role deleted';

	/// en-US: 'Role updated'
	String get updateRole => 'Role updated';

	/// en-US: 'Assigned to role'
	String get assignRole => 'Assigned to role';

	/// en-US: 'Removed from role'
	String get unassignRole => 'Removed from role';

	/// en-US: 'Suspended'
	String get suspend => 'Suspended';

	/// en-US: 'Unsuspended'
	String get unsuspend => 'Unsuspended';

	/// en-US: 'Custom emoji added'
	String get addCustomEmoji => 'Custom emoji added';

	/// en-US: 'Custom emoji updated'
	String get updateCustomEmoji => 'Custom emoji updated';

	/// en-US: 'Custom emoji deleted'
	String get deleteCustomEmoji => 'Custom emoji deleted';

	/// en-US: 'Server settings updated'
	String get updateServerSettings => 'Server settings updated';

	/// en-US: 'Moderation note updated'
	String get updateUserNote => 'Moderation note updated';

	/// en-US: 'File deleted'
	String get deleteDriveFile => 'File deleted';

	/// en-US: 'Note deleted'
	String get deleteNote => 'Note deleted';

	/// en-US: 'Global announcement created'
	String get createGlobalAnnouncement => 'Global announcement created';

	/// en-US: 'User announcement created'
	String get createUserAnnouncement => 'User announcement created';

	/// en-US: 'Global announcement updated'
	String get updateGlobalAnnouncement => 'Global announcement updated';

	/// en-US: 'User announcement updated'
	String get updateUserAnnouncement => 'User announcement updated';

	/// en-US: 'Global announcement deleted'
	String get deleteGlobalAnnouncement => 'Global announcement deleted';

	/// en-US: 'User announcement deleted'
	String get deleteUserAnnouncement => 'User announcement deleted';

	/// en-US: 'Password reset'
	String get resetPassword => 'Password reset';

	/// en-US: 'Remote instance suspended'
	String get suspendRemoteInstance => 'Remote instance suspended';

	/// en-US: 'Remote instance unsuspended'
	String get unsuspendRemoteInstance => 'Remote instance unsuspended';

	/// en-US: 'Moderation note updated for remote instance.'
	String get updateRemoteInstanceNote => 'Moderation note updated for remote instance.';

	/// en-US: 'File marked as sensitive'
	String get markSensitiveDriveFile => 'File marked as sensitive';

	/// en-US: 'File unmarked as sensitive'
	String get unmarkSensitiveDriveFile => 'File unmarked as sensitive';

	/// en-US: 'Report resolved'
	String get resolveAbuseReport => 'Report resolved';

	/// en-US: 'Report forwarded'
	String get forwardAbuseReport => 'Report forwarded';

	/// en-US: 'Moderation note of a report updated'
	String get updateAbuseReportNote => 'Moderation note of a report updated';

	/// en-US: 'Invite generated'
	String get createInvitation => 'Invite generated';

	/// en-US: 'Ad created'
	String get createAd => 'Ad created';

	/// en-US: 'Ad deleted'
	String get deleteAd => 'Ad deleted';

	/// en-US: 'Ad updated'
	String get updateAd => 'Ad updated';

	/// en-US: 'Avatar decoration created'
	String get createAvatarDecoration => 'Avatar decoration created';

	/// en-US: 'Avatar decoration updated'
	String get updateAvatarDecoration => 'Avatar decoration updated';

	/// en-US: 'Avatar decoration deleted'
	String get deleteAvatarDecoration => 'Avatar decoration deleted';

	/// en-US: 'User avatar unset'
	String get unsetUserAvatar => 'User avatar unset';

	/// en-US: 'User banner unset'
	String get unsetUserBanner => 'User banner unset';

	/// en-US: 'System Webhook created'
	String get createSystemWebhook => 'System Webhook created';

	/// en-US: 'System Webhook updated'
	String get updateSystemWebhook => 'System Webhook updated';

	/// en-US: 'System Webhook deleted'
	String get deleteSystemWebhook => 'System Webhook deleted';

	/// en-US: 'Recipient for reports created'
	String get createAbuseReportNotificationRecipient => 'Recipient for reports created';

	/// en-US: 'Recipient for reports updated'
	String get updateAbuseReportNotificationRecipient => 'Recipient for reports updated';

	/// en-US: 'Recipient for reports deleted'
	String get deleteAbuseReportNotificationRecipient => 'Recipient for reports deleted';

	/// en-US: 'Account deleted'
	String get deleteAccount => 'Account deleted';

	/// en-US: 'Page deleted'
	String get deletePage => 'Page deleted';

	/// en-US: 'Play deleted'
	String get deleteFlash => 'Play deleted';

	/// en-US: 'Gallery post deleted'
	String get deleteGalleryPost => 'Gallery post deleted';

	/// en-US: 'Deleted Chat Room'
	String get deleteChatRoom => 'Deleted Chat Room';

	/// en-US: 'Update the description of the proxy account'
	String get updateProxyAccountDescription => 'Update the description of the proxy account';
}

// Path: misskey.fileViewer_
class TranslationsMisskeyFileViewerEnUs {
	TranslationsMisskeyFileViewerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'File details'
	String get title => 'File details';

	/// en-US: 'File type'
	String get type => 'File type';

	/// en-US: 'Filesize'
	String get size => 'Filesize';

	/// en-US: 'URL'
	String get url => 'URL';

	/// en-US: 'Uploaded at'
	String get uploadedAt => 'Uploaded at';

	/// en-US: 'Attached notes'
	String get attachedNotes => 'Attached notes';

	/// en-US: 'Used'
	String get usage => 'Used';

	/// en-US: 'This page can only be seen by the user who uploaded this file.'
	String get thisPageCanBeSeenFromTheAuthor => 'This page can only be seen by the user who uploaded this file.';
}

// Path: misskey.externalResourceInstaller_
class TranslationsMisskeyExternalResourceInstallerEnUs {
	TranslationsMisskeyExternalResourceInstallerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Install from external site'
	String get title => 'Install from external site';

	/// en-US: 'Make sure the distributor of this resource is trustworthy before installation.'
	String get checkVendorBeforeInstall => 'Make sure the distributor of this resource is trustworthy before installation.';

	late final TranslationsMisskeyExternalResourceInstallerPluginEnUs plugin_ = TranslationsMisskeyExternalResourceInstallerPluginEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerThemeEnUs theme_ = TranslationsMisskeyExternalResourceInstallerThemeEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerMetaEnUs meta_ = TranslationsMisskeyExternalResourceInstallerMetaEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs vendorInfo_ = TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsEnUs errors_ = TranslationsMisskeyExternalResourceInstallerErrorsEnUs.internal(_root);
}

// Path: misskey.dataSaver_
class TranslationsMisskeyDataSaverEnUs {
	TranslationsMisskeyDataSaverEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyDataSaverMediaEnUs media_ = TranslationsMisskeyDataSaverMediaEnUs.internal(_root);
	late final TranslationsMisskeyDataSaverAvatarEnUs avatar_ = TranslationsMisskeyDataSaverAvatarEnUs.internal(_root);
	late final TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs urlPreviewThumbnail_ = TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs.internal(_root);
	late final TranslationsMisskeyDataSaverDisableUrlPreviewEnUs disableUrlPreview_ = TranslationsMisskeyDataSaverDisableUrlPreviewEnUs.internal(_root);
	late final TranslationsMisskeyDataSaverCodeEnUs code_ = TranslationsMisskeyDataSaverCodeEnUs.internal(_root);
}

// Path: misskey.hemisphere_
class TranslationsMisskeyHemisphereEnUs {
	TranslationsMisskeyHemisphereEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Northern Hemisphere'
	String get N => 'Northern Hemisphere';

	/// en-US: 'Southern Hemisphere'
	String get S => 'Southern Hemisphere';

	/// en-US: 'Used in some client settings to determine season.'
	String get caption => 'Used in some client settings to determine season.';
}

// Path: misskey.reversi_
class TranslationsMisskeyReversiEnUs {
	TranslationsMisskeyReversiEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Reversi'
	String get reversi => 'Reversi';

	/// en-US: 'Game settings'
	String get gameSettings => 'Game settings';

	/// en-US: 'Choose a board'
	String get chooseBoard => 'Choose a board';

	/// en-US: 'Black/White'
	String get blackOrWhite => 'Black/White';

	/// en-US: '{name} is playing Black'
	String blackIs({required Object name}) => '${name} is playing Black';

	/// en-US: 'Rules'
	String get rules => 'Rules';

	/// en-US: 'The game will begin shortly'
	String get thisGameIsStartedSoon => 'The game will begin shortly';

	/// en-US: 'Waiting for opponent's turn'
	String get waitingForOther => 'Waiting for opponent\'s turn';

	/// en-US: 'Waiting for your turn'
	String get waitingForMe => 'Waiting for your turn';

	/// en-US: 'Get ready'
	String get waitingBoth => 'Get ready';

	/// en-US: 'Ready'
	String get ready => 'Ready';

	/// en-US: 'Not ready'
	String get cancelReady => 'Not ready';

	/// en-US: 'Opponent's turn'
	String get opponentTurn => 'Opponent\'s turn';

	/// en-US: 'Your turn'
	String get myTurn => 'Your turn';

	/// en-US: 'It's {name}'s turn'
	String turnOf({required Object name}) => 'It\'s ${name}\'s turn';

	/// en-US: '{name}'s turn'
	String pastTurnOf({required Object name}) => '${name}\'s turn';

	/// en-US: 'Surrender'
	String get surrender => 'Surrender';

	/// en-US: 'Surrendered'
	String get surrendered => 'Surrendered';

	/// en-US: 'Out of time'
	String get timeout => 'Out of time';

	/// en-US: 'Draw'
	String get drawn => 'Draw';

	/// en-US: '{name} wins'
	String won({required Object name}) => '${name} wins';

	/// en-US: 'Black'
	String get black => 'Black';

	/// en-US: 'White'
	String get white => 'White';

	/// en-US: 'Total'
	String get total => 'Total';

	/// en-US: 'Turn {count}'
	String turnCount({required Object count}) => 'Turn ${count}';

	/// en-US: 'My rounds'
	String get myGames => 'My rounds';

	/// en-US: 'All rounds'
	String get allGames => 'All rounds';

	/// en-US: 'Ended'
	String get ended => 'Ended';

	/// en-US: 'Currently playing'
	String get playing => 'Currently playing';

	/// en-US: 'The one with fewer stones wins (Llotheo)'
	String get isLlotheo => 'The one with fewer stones wins (Llotheo)';

	/// en-US: 'Looping map'
	String get loopedMap => 'Looping map';

	/// en-US: 'Tiles are placeable everywhere'
	String get canPutEverywhere => 'Tiles are placeable everywhere';

	/// en-US: 'Time limit for turn'
	String get timeLimitForEachTurn => 'Time limit for turn';

	/// en-US: 'Free Match'
	String get freeMatch => 'Free Match';

	/// en-US: 'Finding opponent...'
	String get lookingForPlayer => 'Finding opponent...';

	/// en-US: 'The game has been cancelled.'
	String get gameCanceled => 'The game has been cancelled.';

	/// en-US: 'Share Game to timeline when started'
	String get shareToTlTheGameWhenStart => 'Share Game to timeline when started';

	/// en-US: 'The game has begun! #MisskeyReversi'
	String get iStartedAGame => 'The game has begun! #MisskeyReversi';

	/// en-US: 'The opponent has changed their settings.'
	String get opponentHasSettingsChanged => 'The opponent has changed their settings.';

	/// en-US: 'Irregular rules (completely free)'
	String get allowIrregularRules => 'Irregular rules (completely free)';

	/// en-US: 'No irregular rules'
	String get disallowIrregularRules => 'No irregular rules';

	/// en-US: 'Display row and column numbering on the board'
	String get showBoardLabels => 'Display row and column numbering on the board';

	/// en-US: 'Turn stones into user avatars'
	String get useAvatarAsStone => 'Turn stones into user avatars';
}

// Path: misskey.offlineScreen_
class TranslationsMisskeyOfflineScreenEnUs {
	TranslationsMisskeyOfflineScreenEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Offline - cannot connect to the server'
	String get title => 'Offline - cannot connect to the server';

	/// en-US: 'Unable to connect to the server'
	String get header => 'Unable to connect to the server';
}

// Path: misskey.urlPreviewSetting_
class TranslationsMisskeyUrlPreviewSettingEnUs {
	TranslationsMisskeyUrlPreviewSettingEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'URL preview settings'
	String get title => 'URL preview settings';

	/// en-US: 'Enable URL preview'
	String get enable => 'Enable URL preview';

	/// en-US: 'Allow URL preview redirection'
	String get allowRedirect => 'Allow URL preview redirection';

	/// en-US: 'If a URL has a redirection set, you can enable this feature to follow the redirection and display a preview of the redirected content. Disabling this will save server resources, but redirected content will not be displayed.'
	String get allowRedirectDescription => 'If a URL has a redirection set, you can enable this feature to follow the redirection and display a preview of the redirected content. Disabling this will save server resources, but redirected content will not be displayed.';

	/// en-US: 'Time out when getting preview (ms)'
	String get timeout => 'Time out when getting preview (ms)';

	/// en-US: 'If it takes longer than this value to get the preview, the preview won’t be generated.'
	String get timeoutDescription => 'If it takes longer than this value to get the preview, the preview won’t be generated.';

	/// en-US: 'Maximum Content-Length (bytes)'
	String get maximumContentLength => 'Maximum Content-Length (bytes)';

	/// en-US: 'If Content-Length is higher than this value, the preview won't be generated.'
	String get maximumContentLengthDescription => 'If Content-Length is higher than this value, the preview won\'t be generated.';

	/// en-US: 'Generate the preview only if you could get Content-Length'
	String get requireContentLength => 'Generate the preview only if you could get Content-Length';

	/// en-US: 'If other server doesn't return Content-Length, the preview won't be generated.'
	String get requireContentLengthDescription => 'If other server doesn\'t return Content-Length, the preview won\'t be generated.';

	/// en-US: 'User-Agent'
	String get userAgent => 'User-Agent';

	/// en-US: 'Sets the User-Agent to be used when retrieving previews. If left blank, the default User-Agent will be used.'
	String get userAgentDescription => 'Sets the User-Agent to be used when retrieving previews. If left blank, the default User-Agent will be used.';

	/// en-US: 'Proxy endpoints that generate previews'
	String get summaryProxy => 'Proxy endpoints that generate previews';

	/// en-US: 'Not Misskey itself, but generate previews using Summaly Proxy.'
	String get summaryProxyDescription => 'Not Misskey itself, but generate previews using Summaly Proxy.';

	/// en-US: 'The following parameters are linked to the proxy as a query string. If the proxy does not support them, the values are ignored.'
	String get summaryProxyDescription2 => 'The following parameters are linked to the proxy as a query string. If the proxy does not support them, the values are ignored.';
}

// Path: misskey.mediaControls_
class TranslationsMisskeyMediaControlsEnUs {
	TranslationsMisskeyMediaControlsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Picture in Picture'
	String get pip => 'Picture in Picture';

	/// en-US: 'Playback Speed'
	String get playbackRate => 'Playback Speed';

	/// en-US: 'Loop playback'
	String get loop => 'Loop playback';
}

// Path: misskey.contextMenu_
class TranslationsMisskeyContextMenuEnUs {
	TranslationsMisskeyContextMenuEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Context menu'
	String get title => 'Context menu';

	/// en-US: 'Application'
	String get app => 'Application';

	/// en-US: 'Application with shift key'
	String get appWithShift => 'Application with shift key';

	/// en-US: 'Native'
	String get native => 'Native';
}

// Path: misskey.gridComponent_
class TranslationsMisskeyGridComponentEnUs {
	TranslationsMisskeyGridComponentEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyGridComponentErrorEnUs error_ = TranslationsMisskeyGridComponentErrorEnUs.internal(_root);
}

// Path: misskey.roleSelectDialog_
class TranslationsMisskeyRoleSelectDialogEnUs {
	TranslationsMisskeyRoleSelectDialogEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Not selected'
	String get notSelected => 'Not selected';
}

// Path: misskey.customEmojisManager_
class TranslationsMisskeyCustomEmojisManagerEnUs {
	TranslationsMisskeyCustomEmojisManagerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyCustomEmojisManagerGridCommonEnUs gridCommon_ = TranslationsMisskeyCustomEmojisManagerGridCommonEnUs.internal(_root);
	late final TranslationsMisskeyCustomEmojisManagerLogsEnUs logs_ = TranslationsMisskeyCustomEmojisManagerLogsEnUs.internal(_root);
	late final TranslationsMisskeyCustomEmojisManagerRemoteEnUs remote_ = TranslationsMisskeyCustomEmojisManagerRemoteEnUs.internal(_root);
	late final TranslationsMisskeyCustomEmojisManagerLocalEnUs local_ = TranslationsMisskeyCustomEmojisManagerLocalEnUs.internal(_root);
}

// Path: misskey.embedCodeGen_
class TranslationsMisskeyEmbedCodeGenEnUs {
	TranslationsMisskeyEmbedCodeGenEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Customize embed code'
	String get title => 'Customize embed code';

	/// en-US: 'Show header'
	String get header => 'Show header';

	/// en-US: 'Automatically load more (deprecated)'
	String get autoload => 'Automatically load more (deprecated)';

	/// en-US: 'Max height'
	String get maxHeight => 'Max height';

	/// en-US: 'Setting it to 0 disables the max height setting. Specify some value to prevent the widget from continuing to expand vertically.'
	String get maxHeightDescription => 'Setting it to 0 disables the max height setting. Specify some value to prevent the widget from continuing to expand vertically.';

	/// en-US: 'The max height limit is disabled (0). If this was not intended, set the max height to some value.'
	String get maxHeightWarn => 'The max height limit is disabled (0). If this was not intended, set the max height to some value.';

	/// en-US: 'The display differs from the actual embedding because it exceeds the range displayed on the preview screen.'
	String get previewIsNotActual => 'The display differs from the actual embedding because it exceeds the range displayed on the preview screen.';

	/// en-US: 'Make it rounded'
	String get rounded => 'Make it rounded';

	/// en-US: 'Add a border to the outer frame'
	String get border => 'Add a border to the outer frame';

	/// en-US: 'Apply to the preview'
	String get applyToPreview => 'Apply to the preview';

	/// en-US: 'Generate embed code'
	String get generateCode => 'Generate embed code';

	/// en-US: 'The code has been generated'
	String get codeGenerated => 'The code has been generated';

	/// en-US: 'Paste the generated code into your website to embed the content.'
	String get codeGeneratedDescription => 'Paste the generated code into your website to embed the content.';
}

// Path: misskey.selfXssPrevention_
class TranslationsMisskeySelfXssPreventionEnUs {
	TranslationsMisskeySelfXssPreventionEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'WARNING'
	String get warning => 'WARNING';

	/// en-US: '"Paste something on this screen" is all a scam.'
	String get title => '"Paste something on this screen" is all a scam.';

	/// en-US: 'If you paste something here, a malicious user could hijack your account or steal your personal information.'
	String get description1 => 'If you paste something here, a malicious user could hijack your account or steal your personal information.';

	/// en-US: 'If you do not understand exactly what you are trying to paste, %cstop working right now and close this window.'
	String get description2 => 'If you do not understand exactly what you are trying to paste, %cstop working right now and close this window.';

	/// en-US: 'For more information, please refer to this. {link}'
	String description3({required Object link}) => 'For more information, please refer to this. ${link}';
}

// Path: misskey.followRequest_
class TranslationsMisskeyFollowRequestEnUs {
	TranslationsMisskeyFollowRequestEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Received request'
	String get recieved => 'Received request';

	/// en-US: 'Sent request'
	String get sent => 'Sent request';
}

// Path: misskey.remoteLookupErrors_
class TranslationsMisskeyRemoteLookupErrorsEnUs {
	TranslationsMisskeyRemoteLookupErrorsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs federationNotAllowed_ = TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs.internal(_root);
	late final TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs uriInvalid_ = TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs.internal(_root);
	late final TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs requestFailed_ = TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs.internal(_root);
	late final TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs responseInvalid_ = TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs.internal(_root);
	late final TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs noSuchObject_ = TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs.internal(_root);
}

// Path: misskey.captcha_
class TranslationsMisskeyCaptchaEnUs {
	TranslationsMisskeyCaptchaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Please verify the CAPTCHA'
	String get verify => 'Please verify the CAPTCHA';

	/// en-US: 'You can check the preview by entering the test values for the site and secret keys. Please see the following page for details.'
	String get testSiteKeyMessage => 'You can check the preview by entering the test values for the site and secret keys.\nPlease see the following page for details.';

	late final TranslationsMisskeyCaptchaErrorEnUs error_ = TranslationsMisskeyCaptchaErrorEnUs.internal(_root);
}

// Path: misskey.bootErrors_
class TranslationsMisskeyBootErrorsEnUs {
	TranslationsMisskeyBootErrorsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Failed to load'
	String get title => 'Failed to load';

	/// en-US: 'If the problem persists after waiting a moment and reloading, please contact the server administrator with the following Error ID.'
	String get serverError => 'If the problem persists after waiting a moment and reloading, please contact the server administrator with the following Error ID.';

	/// en-US: 'The following may solve the problem.'
	String get solution => 'The following may solve the problem.';

	/// en-US: 'Update your browser and OS to the latest version'
	String get solution1 => 'Update your browser and OS to the latest version';

	/// en-US: 'Disable ad blocker'
	String get solution2 => 'Disable ad blocker';

	/// en-US: 'Clear the browser cache'
	String get solution3 => 'Clear the browser cache';

	/// en-US: 'Set the dom.webaudio.enabled to true for Tor Browser'
	String get solution4 => 'Set the dom.webaudio.enabled to true for Tor Browser';

	/// en-US: 'Other options'
	String get otherOption => 'Other options';

	/// en-US: 'Delete client settings and cache'
	String get otherOption1 => 'Delete client settings and cache';

	/// en-US: 'Start the simple client'
	String get otherOption2 => 'Start the simple client';

	/// en-US: 'Launch the repair tool'
	String get otherOption3 => 'Launch the repair tool';
}

// Path: misskey.search_
class TranslationsMisskeySearchEnUs {
	TranslationsMisskeySearchEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'All'
	String get searchScopeAll => 'All';

	/// en-US: 'Local'
	String get searchScopeLocal => 'Local';

	/// en-US: 'Specific server'
	String get searchScopeServer => 'Specific server';

	/// en-US: 'Specific user'
	String get searchScopeUser => 'Specific user';

	/// en-US: 'Enter the server host'
	String get pleaseEnterServerHost => 'Enter the server host';

	/// en-US: 'Select user'
	String get pleaseSelectUser => 'Select user';

	/// en-US: 'Example: misskey.example.com'
	String get serverHostPlaceholder => 'Example: misskey.example.com';
}

// Path: misskey.serverSetupWizard_
class TranslationsMisskeyServerSetupWizardEnUs {
	TranslationsMisskeyServerSetupWizardEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskey installation is now complete!'
	String get installCompleted => 'Misskey installation is now complete!';

	/// en-US: 'To begin, create an administrator account.'
	String get firstCreateAccount => 'To begin, create an administrator account.';

	/// en-US: 'Administrator account has been created!'
	String get accountCreated => 'Administrator account has been created!';

	/// en-US: 'Server Settings'
	String get serverSetting => 'Server Settings';

	/// en-US: 'This wizard makes it easier to configure the server settings.'
	String get youCanEasilyConfigureOptimalServerSettingsWithThisWizard => 'This wizard makes it easier to configure the server settings.';

	/// en-US: 'The settings that were changed via this wizard can be adjusted later.'
	String get settingsYouMakeHereCanBeChangedLater => 'The settings that were changed via this wizard can be adjusted later.';

	/// en-US: 'How will you use Misskey?'
	String get howWillYouUseMisskey => 'How will you use Misskey?';

	late final TranslationsMisskeyServerSetupWizardUseEnUs use_ = TranslationsMisskeyServerSetupWizardUseEnUs.internal(_root);

	/// en-US: 'Accepting a large number of unknown users involves risk. We recommend that you operate with a reliable moderation system to handle any problems.'
	String get openServerAdvice => 'Accepting a large number of unknown users involves risk. We recommend that you operate with a reliable moderation system to handle any problems.';

	/// en-US: 'To prevent your server from becoming a stepping stone for spam, you should also pay close attention to security by enabling anti-bot functions such as reCAPTCHA.'
	String get openServerAntiSpamAdvice => 'To prevent your server from becoming a stepping stone for spam, you should also pay close attention to security by enabling anti-bot functions such as reCAPTCHA.';

	/// en-US: 'How many users do you expect?'
	String get howManyUsersDoYouExpect => 'How many users do you expect?';

	late final TranslationsMisskeyServerSetupWizardScaleEnUs scale_ = TranslationsMisskeyServerSetupWizardScaleEnUs.internal(_root);

	/// en-US: 'Large servers may require advanced infrastructure knowledge, such as load balancing and database replication.'
	String get largeScaleServerAdvice => 'Large servers may require advanced infrastructure knowledge, such as load balancing and database replication.';

	/// en-US: 'Do you want to connect to the Fediverse?'
	String get doYouConnectToFediverse => 'Do you want to connect to the Fediverse?';

	/// en-US: 'When connected to a network of distributed servers (Fediverse) content can be exchanged with other servers.'
	String get doYouConnectToFediverse_description1 => 'When connected to a network of distributed servers (Fediverse) content can be exchanged with other servers.';

	/// en-US: 'Connecting with the Fediverse is also called "federation"'
	String get doYouConnectToFediverse_description2 => 'Connecting with the Fediverse is also called "federation"';

	/// en-US: 'Advanced settings such as specifying federated servers can be configured later.'
	String get youCanConfigureMoreFederationSettingsLater => 'Advanced settings such as specifying federated servers can be configured later.';

	/// en-US: 'Administrator information'
	String get adminInfo => 'Administrator information';

	/// en-US: 'Sets the administrator information used to receive inquiries.'
	String get adminInfo_description => 'Sets the administrator information used to receive inquiries.';

	/// en-US: 'Must be entered if public server or federation is on.'
	String get adminInfo_mustBeFilled => 'Must be entered if public server or federation is on.';

	/// en-US: 'The following settings are recommended'
	String get followingSettingsAreRecommended => 'The following settings are recommended';

	/// en-US: 'Apply these settings'
	String get applyTheseSettings => 'Apply these settings';

	/// en-US: 'Skip settings'
	String get skipSettings => 'Skip settings';

	/// en-US: 'Setup is now complete!'
	String get settingsCompleted => 'Setup is now complete!';

	/// en-US: 'Thank you for your time. Now that everything is ready, you can start using the server right away.'
	String get settingsCompleted_description => 'Thank you for your time. Now that everything is ready, you can start using the server right away.';

	/// en-US: 'The server settings can be changed from the “Control Panel”'
	String get settingsCompleted_description2 => 'The server settings can be changed from the “Control Panel”';

	/// en-US: 'Donation Request'
	String get donationRequest => 'Donation Request';

	late final TranslationsMisskeyServerSetupWizardDonationRequestEnUs donationRequest_ = TranslationsMisskeyServerSetupWizardDonationRequestEnUs.internal(_root);
}

// Path: misskey.uploader_
class TranslationsMisskeyUploaderEnUs {
	TranslationsMisskeyUploaderEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Edit Image'
	String get editImage => 'Edit Image';

	/// en-US: 'Compressed to {x}'
	String compressedToX({required Object x}) => 'Compressed to ${x}';

	/// en-US: 'Saving {x}%'
	String savedXPercent({required Object x}) => 'Saving ${x}%';

	/// en-US: 'Some files have not been uploaded, do you want to abort?'
	String get abortConfirm => 'Some files have not been uploaded, do you want to abort?';

	/// en-US: 'Some files have not been uploaded, do you want to continue anyway?'
	String get doneConfirm => 'Some files have not been uploaded, do you want to continue anyway?';

	/// en-US: 'The maximum file size that can be uploaded is {x}'
	String maxFileSizeIsX({required Object x}) => 'The maximum file size that can be uploaded is ${x}';

	/// en-US: 'Uploadable file types'
	String get allowedTypes => 'Uploadable file types';

	/// en-US: 'The file has not yet been uploaded so this dialog allows you to confirm, rename, compress, and crop the file before uploading. When ready, you can start uploading by pressing the “Upload” button.'
	String get tip => 'The file has not yet been uploaded so this dialog allows you to confirm, rename, compress, and crop the file before uploading. When ready, you can start uploading by pressing the “Upload” button.';
}

// Path: misskey.clientPerformanceIssueTip_
class TranslationsMisskeyClientPerformanceIssueTipEnUs {
	TranslationsMisskeyClientPerformanceIssueTipEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Performance tips'
	String get title => 'Performance tips';

	/// en-US: 'Disable your adblocker'
	String get makeSureDisabledAdBlocker => 'Disable your adblocker';

	/// en-US: 'Adblockers can affect performance, please make sure that adblockers are not enabled by your system or browser features/extensions.'
	String get makeSureDisabledAdBlocker_description => 'Adblockers can affect performance, please make sure that adblockers are not enabled by your system or browser features/extensions.';

	/// en-US: 'Disable custom CSS'
	String get makeSureDisabledCustomCss => 'Disable custom CSS';

	/// en-US: 'Overriding styles can affect performance. Please make sure that custom CSS or extensions that override styles are not enabled.'
	String get makeSureDisabledCustomCss_description => 'Overriding styles can affect performance. Please make sure that custom CSS or extensions that override styles are not enabled.';

	/// en-US: 'Disable extensions'
	String get makeSureDisabledAddons => 'Disable extensions';

	/// en-US: 'Some extensions may interfere with client behavior and affect performance. Please disable your browser extensions and see if this improves the situation.'
	String get makeSureDisabledAddons_description => 'Some extensions may interfere with client behavior and affect performance. Please disable your browser extensions and see if this improves the situation.';
}

// Path: misskey.clip_
class TranslationsMisskeyClipEnUs {
	TranslationsMisskeyClipEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Clip is a feature that allows you to organize your notes.'
	String get tip => 'Clip is a feature that allows you to organize your notes.';
}

// Path: misskey.userLists_
class TranslationsMisskeyUserListsEnUs {
	TranslationsMisskeyUserListsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Lists can contain any user you specify when creating, the created list can then be displayed as a timeline showing only the specified users.'
	String get tip => 'Lists can contain any user you specify when creating, the created list can then be displayed as a timeline showing only the specified users.';
}

// Path: misskey.watermarkEditor_
class TranslationsMisskeyWatermarkEditorEnUs {
	TranslationsMisskeyWatermarkEditorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'A watermark, such as credit information, can be added to the image.'
	String get tip => 'A watermark, such as credit information, can be added to the image.';

	/// en-US: 'Discard unsaved changes?'
	String get quitWithoutSaveConfirm => 'Discard unsaved changes?';

	/// en-US: 'This file is not supported'
	String get driveFileTypeWarn => 'This file is not supported';

	/// en-US: 'Choose an image file'
	String get driveFileTypeWarnDescription => 'Choose an image file';

	/// en-US: 'Edit Watermark'
	String get title => 'Edit Watermark';

	/// en-US: 'Cover everything'
	String get cover => 'Cover everything';

	/// en-US: 'spread all over'
	String get repeat => 'spread all over';

	/// en-US: 'Opacity'
	String get opacity => 'Opacity';

	/// en-US: 'Size'
	String get scale => 'Size';

	/// en-US: 'Text'
	String get text => 'Text';

	/// en-US: 'Position'
	String get position => 'Position';

	/// en-US: 'Type'
	String get type => 'Type';

	/// en-US: 'Images'
	String get image => 'Images';

	/// en-US: 'Advanced'
	String get advanced => 'Advanced';

	/// en-US: 'Stripes'
	String get stripe => 'Stripes';

	/// en-US: 'Line width'
	String get stripeWidth => 'Line width';

	/// en-US: 'Lines count'
	String get stripeFrequency => 'Lines count';

	/// en-US: 'Angle'
	String get angle => 'Angle';

	/// en-US: 'Polkadot'
	String get polkadot => 'Polkadot';

	/// en-US: 'Checker'
	String get checker => 'Checker';

	/// en-US: 'Opacity of the main dot'
	String get polkadotMainDotOpacity => 'Opacity of the main dot';

	/// en-US: 'Size of the main dot'
	String get polkadotMainDotRadius => 'Size of the main dot';

	/// en-US: 'Opacity of the secondary dot'
	String get polkadotSubDotOpacity => 'Opacity of the secondary dot';

	/// en-US: 'Size of the secondary dot'
	String get polkadotSubDotRadius => 'Size of the secondary dot';

	/// en-US: 'Number of sub-dots.'
	String get polkadotSubDotDivisions => 'Number of sub-dots.';
}

// Path: misskey.imageEffector_
class TranslationsMisskeyImageEffectorEnUs {
	TranslationsMisskeyImageEffectorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Effects'
	String get title => 'Effects';

	/// en-US: 'Add Effects'
	String get addEffect => 'Add Effects';

	/// en-US: 'Are you sure you want to leave? You have unsaved changes.'
	String get discardChangesConfirm => 'Are you sure you want to leave? You have unsaved changes.';

	late final TranslationsMisskeyImageEffectorFxsEnUs fxs_ = TranslationsMisskeyImageEffectorFxsEnUs.internal(_root);
}

// Path: misskey.drafts_
class TranslationsMisskeyDraftsEnUs {
	TranslationsMisskeyDraftsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Select Draft'
	String get select => 'Select Draft';

	/// en-US: 'The number of drafts that can be created has been exceeded.'
	String get cannotCreateDraftAnymore => 'The number of drafts that can be created has been exceeded.';

	/// en-US: 'You cannot create a draft with this content.'
	String get cannotCreateDraft => 'You cannot create a draft with this content.';

	/// en-US: 'Delete Draft'
	String get delete => 'Delete Draft';

	/// en-US: 'Delete draft?'
	String get deleteAreYouSure => 'Delete draft?';

	/// en-US: 'No drafts'
	String get noDrafts => 'No drafts';

	/// en-US: 'Reply to {user}'
	String replyTo({required Object user}) => 'Reply to ${user}';

	/// en-US: 'Citation to {user}'s note'
	String quoteOf({required Object user}) => 'Citation to ${user}\'s note';

	/// en-US: 'Posting to {channel}'
	String postTo({required Object channel}) => 'Posting to ${channel}';

	/// en-US: 'Save to Draft'
	String get saveToDraft => 'Save to Draft';

	/// en-US: 'Restore from Draft'
	String get restoreFromDraft => 'Restore from Draft';

	/// en-US: 'Restore'
	String get restore => 'Restore';

	/// en-US: 'List of Drafts'
	String get listDrafts => 'List of Drafts';
}

// Path: misskeyIO.skebStatus_
class TranslationsMisskeyIOSkebStatusEnUs {
	TranslationsMisskeyIOSkebStatusEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyIOSkebStatusGenresEnUs genres_ = TranslationsMisskeyIOSkebStatusGenresEnUs.internal(_root);

	/// en-US: 'Seeking'
	String get seeking => 'Seeking';

	/// en-US: 'Stopped'
	String get stopped => 'Stopped';

	/// en-US: 'Client'
	String get client => 'Client';

	/// en-US: 'JPY {x}'
	String yenX({required Object x}) => 'JPY ${x}';

	/// en-US: 'Delivered {n} works'
	String nWorks({required Object n}) => 'Delivered ${n} works';

	/// en-US: 'Requested {n} times'
	String nRequests({required Object n}) => 'Requested ${n} times';
}

// Path: misskey.chat_.chatAllowedUsers_
class TranslationsMisskeyChatChatAllowedUsersEnUs {
	TranslationsMisskeyChatChatAllowedUsersEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Everyone'
	String get everyone => 'Everyone';

	/// en-US: 'Only your followers'
	String get followers => 'Only your followers';

	/// en-US: 'Only users you are following'
	String get following => 'Only users you are following';

	/// en-US: 'Mutual followers only'
	String get mutual => 'Mutual followers only';

	/// en-US: 'Nobody'
	String get none => 'Nobody';
}

// Path: misskey.settings_.chat_
class TranslationsMisskeySettingsChatEnUs {
	TranslationsMisskeySettingsChatEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Show sender's name'
	String get showSenderName => 'Show sender\'s name';

	/// en-US: 'Press Enter to send'
	String get sendOnEnter => 'Press Enter to send';
}

// Path: misskey.delivery_.type_
class TranslationsMisskeyDeliveryTypeEnUs {
	TranslationsMisskeyDeliveryTypeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Publishing'
	String get none => 'Publishing';

	/// en-US: 'Manually suspended'
	String get manuallySuspended => 'Manually suspended';

	/// en-US: 'Server is suspended due to server deletion'
	String get goneSuspended => 'Server is suspended due to server deletion';

	/// en-US: 'Server is suspended due to no responding'
	String get autoSuspendedForNotResponding => 'Server is suspended due to no responding';

	/// en-US: 'Suspended as this software is no longer being distributed to'
	String get softwareSuspended => 'Suspended as this software is no longer being distributed to';
}

// Path: misskey.bubbleGame_.score_
class TranslationsMisskeyBubbleGameScoreEnUs {
	TranslationsMisskeyBubbleGameScoreEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Score'
	String get score => 'Score';

	/// en-US: 'Amount of money earned'
	String get scoreYen => 'Amount of money earned';

	/// en-US: 'High score'
	String get highScore => 'High score';

	/// en-US: 'Maximum number of chains'
	String get maxChain => 'Maximum number of chains';

	/// en-US: '{yen} Yen'
	String yen({required Object yen}) => '${yen} Yen';

	/// en-US: '{qty} Pieces'
	String estimatedQty({required Object qty}) => '${qty} Pieces';

	/// en-US: '{onigiriQtyWithUnit} Onigiri'
	String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiri';
}

// Path: misskey.bubbleGame_.howToPlay_
class TranslationsMisskeyBubbleGameHowToPlayEnUs {
	TranslationsMisskeyBubbleGameHowToPlayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Adjust the position and drop the object into the box.'
	String get section1 => 'Adjust the position and drop the object into the box.';

	/// en-US: 'When two objects of the same type touch each other, they will change into a different object and you score points.'
	String get section2 => 'When two objects of the same type touch each other, they will change into a different object and you score points.';

	/// en-US: 'The game is over when objects overflow from the box. Aim for a high score by fusing objects together while you avoid overflowing the box!'
	String get section3 => 'The game is over when objects overflow from the box. Aim for a high score by fusing objects together while you avoid overflowing the box!';
}

// Path: misskey.initialTutorial_.landing_
class TranslationsMisskeyInitialTutorialLandingEnUs {
	TranslationsMisskeyInitialTutorialLandingEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Welcome to the Tutorial'
	String get title => 'Welcome to the Tutorial';

	/// en-US: 'Here, you can learn the basics of using Misskey and its features.'
	String get description => 'Here, you can learn the basics of using Misskey and its features.';
}

// Path: misskey.initialTutorial_.note_
class TranslationsMisskeyInitialTutorialNoteEnUs {
	TranslationsMisskeyInitialTutorialNoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'What is a Note?'
	String get title => 'What is a Note?';

	/// en-US: 'Posts on Misskey are called 'Notes.' Notes are arranged chronologically on the timeline and are updated in real-time.'
	String get description => 'Posts on Misskey are called \'Notes.\' Notes are arranged chronologically on the timeline and are updated in real-time.';

	/// en-US: 'Click on this button to reply to a message. It's also possible to reply to replies, continuing the conversation like a thread.'
	String get reply => 'Click on this button to reply to a message. It\'s also possible to reply to replies, continuing the conversation like a thread.';

	/// en-US: 'You can share that note to your own timeline. You can also quote them with your comments.'
	String get renote => 'You can share that note to your own timeline. You can also quote them with your comments.';

	/// en-US: 'You can add reactions to the Note. More details will be explained on the next page.'
	String get reaction => 'You can add reactions to the Note. More details will be explained on the next page.';

	/// en-US: 'You can view Note details, copy links, and perform various other actions.'
	String get menu => 'You can view Note details, copy links, and perform various other actions.';
}

// Path: misskey.initialTutorial_.reaction_
class TranslationsMisskeyInitialTutorialReactionEnUs {
	TranslationsMisskeyInitialTutorialReactionEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'What are Reactions?'
	String get title => 'What are Reactions?';

	/// en-US: 'Notes can be reacted to with various emojis. Reactions allow you to express nuances that may not be conveyed with just a 'like.''
	String get description => 'Notes can be reacted to with various emojis. Reactions allow you to express nuances that may not be conveyed with just a \'like.\'';

	/// en-US: 'Reactions can be added by clicking the '+' button on the note. Try reacting to this sample note!'
	String get letsTryReacting => 'Reactions can be added by clicking the \'+\' button on the note. Try reacting to this sample note!';

	/// en-US: 'Add a reaction to proceed.'
	String get reactToContinue => 'Add a reaction to proceed.';

	/// en-US: 'You'll receive real-time notifications when someone reacts to your note.'
	String get reactNotification => 'You\'ll receive real-time notifications when someone reacts to your note.';

	/// en-US: 'You can undo a reaction by pressing the '-' button.'
	String get reactDone => 'You can undo a reaction by pressing the \'-\' button.';
}

// Path: misskey.initialTutorial_.timeline_
class TranslationsMisskeyInitialTutorialTimelineEnUs {
	TranslationsMisskeyInitialTutorialTimelineEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'The Concept of Timelines'
	String get title => 'The Concept of Timelines';

	/// en-US: 'Misskey provides multiple timelines based on usage (some may not be available depending on the server's policies).'
	String get description1 => 'Misskey provides multiple timelines based on usage (some may not be available depending on the server\'s policies).';

	/// en-US: 'You can view notes from accounts you follow.'
	String get home => 'You can view notes from accounts you follow.';

	/// en-US: 'You can view notes from all users on this server.'
	String get local => 'You can view notes from all users on this server.';

	/// en-US: 'Notes from the Home and Local timelines will be displayed.'
	String get social => 'Notes from the Home and Local timelines will be displayed.';

	/// en-US: 'You can view notes from all connected servers.'
	String get global => 'You can view notes from all connected servers.';

	/// en-US: 'You can switch between timelines at the top of the screen at any time.'
	String get description2 => 'You can switch between timelines at the top of the screen at any time.';

	/// en-US: 'Additionally, there are list timelines and channel timelines. For more details, please refer to {link}.'
	String description3({required Object link}) => 'Additionally, there are list timelines and channel timelines. For more details, please refer to ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class TranslationsMisskeyInitialTutorialPostNoteEnUs {
	TranslationsMisskeyInitialTutorialPostNoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note Posting Settings'
	String get title => 'Note Posting Settings';

	/// en-US: 'When posting a note on Misskey, various options are available. The posting form looks like this.'
	String get description1 => 'When posting a note on Misskey, various options are available. The posting form looks like this.';

	late final TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs visibility_ = TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs.internal(_root);
	late final TranslationsMisskeyInitialTutorialPostNoteCwEnUs cw_ = TranslationsMisskeyInitialTutorialPostNoteCwEnUs.internal(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'How to Mark Attachments as Sensitive?'
	String get title => 'How to Mark Attachments as Sensitive?';

	/// en-US: 'For attachments that are required by server guidelines or that should not be left intact, add a "sensitive" flag.'
	String get description => 'For attachments that are required by server guidelines or that should not be left intact, add a "sensitive" flag.';

	/// en-US: 'Try marking the image attached in this form as sensitive!'
	String get tryThisFile => 'Try marking the image attached in this form as sensitive!';

	late final TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs exampleNote_ = TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs.internal(_root);

	/// en-US: 'To mark an attachment as sensitive, click the file thumbnail, open the menu, and click "Mark as Sensitive."'
	String get method => 'To mark an attachment as sensitive, click the file thumbnail, open the menu, and click "Mark as Sensitive."';

	/// en-US: 'When attaching files, please set sensitivities in accordance with the server guidelines.'
	String get sensitiveSucceeded => 'When attaching files, please set sensitivities in accordance with the server guidelines.';

	/// en-US: 'Mark the attachment file as sensitive to proceed.'
	String get doItToContinue => 'Mark the attachment file as sensitive to proceed.';
}

// Path: misskey.initialTutorial_.done_
class TranslationsMisskeyInitialTutorialDoneEnUs {
	TranslationsMisskeyInitialTutorialDoneEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You've completed the tutorial! 🎉'
	String get title => 'You\'ve completed the tutorial! 🎉';

	/// en-US: 'The functions introduced here are just a small part. For a more detailed understanding of using Misskey, please refer to {link}.'
	String description({required Object link}) => 'The functions introduced here are just a small part. For a more detailed understanding of using Misskey, please refer to ${link}.';
}

// Path: misskey.serverSettings_.userGeneratedContentsVisibilityForVisitor_
class TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs {
	TranslationsMisskeyServerSettingsUserGeneratedContentsVisibilityForVisitorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Everything is public'
	String get all => 'Everything is public';

	/// en-US: 'Only local content is published, remote content is kept private'
	String get localOnly => 'Only local content is published, remote content is kept private';

	/// en-US: 'Everything is private'
	String get none => 'Everything is private';
}

// Path: misskey.achievements_.types_
class TranslationsMisskeyAchievementsTypesEnUs {
	TranslationsMisskeyAchievementsTypesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyAchievementsTypesNotes1EnUs notes1_ = TranslationsMisskeyAchievementsTypesNotes1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes10EnUs notes10_ = TranslationsMisskeyAchievementsTypesNotes10EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes100EnUs notes100_ = TranslationsMisskeyAchievementsTypesNotes100EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes500EnUs notes500_ = TranslationsMisskeyAchievementsTypesNotes500EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes1000EnUs notes1000_ = TranslationsMisskeyAchievementsTypesNotes1000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes5000EnUs notes5000_ = TranslationsMisskeyAchievementsTypesNotes5000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes10000EnUs notes10000_ = TranslationsMisskeyAchievementsTypesNotes10000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes20000EnUs notes20000_ = TranslationsMisskeyAchievementsTypesNotes20000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes30000EnUs notes30000_ = TranslationsMisskeyAchievementsTypesNotes30000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes40000EnUs notes40000_ = TranslationsMisskeyAchievementsTypesNotes40000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes50000EnUs notes50000_ = TranslationsMisskeyAchievementsTypesNotes50000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes60000EnUs notes60000_ = TranslationsMisskeyAchievementsTypesNotes60000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes70000EnUs notes70000_ = TranslationsMisskeyAchievementsTypesNotes70000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes80000EnUs notes80000_ = TranslationsMisskeyAchievementsTypesNotes80000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes90000EnUs notes90000_ = TranslationsMisskeyAchievementsTypesNotes90000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNotes100000EnUs notes100000_ = TranslationsMisskeyAchievementsTypesNotes100000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin3EnUs login3_ = TranslationsMisskeyAchievementsTypesLogin3EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin7EnUs login7_ = TranslationsMisskeyAchievementsTypesLogin7EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin15EnUs login15_ = TranslationsMisskeyAchievementsTypesLogin15EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin30EnUs login30_ = TranslationsMisskeyAchievementsTypesLogin30EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin60EnUs login60_ = TranslationsMisskeyAchievementsTypesLogin60EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin100EnUs login100_ = TranslationsMisskeyAchievementsTypesLogin100EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin200EnUs login200_ = TranslationsMisskeyAchievementsTypesLogin200EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin300EnUs login300_ = TranslationsMisskeyAchievementsTypesLogin300EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin400EnUs login400_ = TranslationsMisskeyAchievementsTypesLogin400EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin500EnUs login500_ = TranslationsMisskeyAchievementsTypesLogin500EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin600EnUs login600_ = TranslationsMisskeyAchievementsTypesLogin600EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin700EnUs login700_ = TranslationsMisskeyAchievementsTypesLogin700EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin800EnUs login800_ = TranslationsMisskeyAchievementsTypesLogin800EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin900EnUs login900_ = TranslationsMisskeyAchievementsTypesLogin900EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLogin1000EnUs login1000_ = TranslationsMisskeyAchievementsTypesLogin1000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNoteClipped1EnUs noteClipped1_ = TranslationsMisskeyAchievementsTypesNoteClipped1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs noteFavorited1_ = TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs myNoteFavorited1_ = TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesProfileFilledEnUs profileFilled_ = TranslationsMisskeyAchievementsTypesProfileFilledEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs markedAsCat_ = TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowing1EnUs following1_ = TranslationsMisskeyAchievementsTypesFollowing1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowing10EnUs following10_ = TranslationsMisskeyAchievementsTypesFollowing10EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowing50EnUs following50_ = TranslationsMisskeyAchievementsTypesFollowing50EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowing100EnUs following100_ = TranslationsMisskeyAchievementsTypesFollowing100EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowing300EnUs following300_ = TranslationsMisskeyAchievementsTypesFollowing300EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers1EnUs followers1_ = TranslationsMisskeyAchievementsTypesFollowers1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers10EnUs followers10_ = TranslationsMisskeyAchievementsTypesFollowers10EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers50EnUs followers50_ = TranslationsMisskeyAchievementsTypesFollowers50EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers100EnUs followers100_ = TranslationsMisskeyAchievementsTypesFollowers100EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers300EnUs followers300_ = TranslationsMisskeyAchievementsTypesFollowers300EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers500EnUs followers500_ = TranslationsMisskeyAchievementsTypesFollowers500EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFollowers1000EnUs followers1000_ = TranslationsMisskeyAchievementsTypesFollowers1000EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs collectAchievements30_ = TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs viewAchievements3min_ = TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs iLoveMisskey_ = TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesFoundTreasureEnUs foundTreasure_ = TranslationsMisskeyAchievementsTypesFoundTreasureEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesClient30minEnUs client30min_ = TranslationsMisskeyAchievementsTypesClient30minEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesClient60minEnUs client60min_ = TranslationsMisskeyAchievementsTypesClient60minEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs noteDeletedWithin1min_ = TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs postedAtLateNight_ = TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs postedAt0min0sec_ = TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesSelfQuoteEnUs selfQuote_ = TranslationsMisskeyAchievementsTypesSelfQuoteEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesHtl20npmEnUs htl20npm_ = TranslationsMisskeyAchievementsTypesHtl20npmEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs viewInstanceChart_ = TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs outputHelloWorldOnScratchpad_ = TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesOpen3windowsEnUs open3windows_ = TranslationsMisskeyAchievementsTypesOpen3windowsEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs driveFolderCircularReference_ = TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs reactWithoutRead_ = TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesClickedClickHereEnUs clickedClickHere_ = TranslationsMisskeyAchievementsTypesClickedClickHereEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs justPlainLucky_ = TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs setNameToSyuilo_ = TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs passedSinceAccountCreated1_ = TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs passedSinceAccountCreated2_ = TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs passedSinceAccountCreated3_ = TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs loggedInOnBirthday_ = TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs loggedInOnNewYearsDay_ = TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesCookieClickedEnUs cookieClicked_ = TranslationsMisskeyAchievementsTypesCookieClickedEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesBrainDiverEnUs brainDiver_ = TranslationsMisskeyAchievementsTypesBrainDiverEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs smashTestNotificationButton_ = TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs tutorialCompleted_ = TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs bubbleGameExplodingHead_ = TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs.internal(_root);
	late final TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs bubbleGameDoubleExplodingHead_ = TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs.internal(_root);
}

// Path: misskey.role_.priority_
class TranslationsMisskeyRolePriorityEnUs {
	TranslationsMisskeyRolePriorityEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Low'
	String get low => 'Low';

	/// en-US: 'Medium'
	String get middle => 'Medium';

	/// en-US: 'High'
	String get high => 'High';
}

// Path: misskey.role_.options_
class TranslationsMisskeyRoleOptionsEnUs {
	TranslationsMisskeyRoleOptionsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Can view the global timeline'
	String get gtlAvailable => 'Can view the global timeline';

	/// en-US: 'Can view the local timeline'
	String get ltlAvailable => 'Can view the local timeline';

	/// en-US: 'Can send public notes'
	String get canPublicNote => 'Can send public notes';

	/// en-US: 'Maximum number of mentions in a note'
	String get mentionMax => 'Maximum number of mentions in a note';

	/// en-US: 'Can create instance invite codes'
	String get canInvite => 'Can create instance invite codes';

	/// en-US: 'Invite limit'
	String get inviteLimit => 'Invite limit';

	/// en-US: 'Invite limit cooldown'
	String get inviteLimitCycle => 'Invite limit cooldown';

	/// en-US: 'Invite expiration interval'
	String get inviteExpirationTime => 'Invite expiration interval';

	/// en-US: 'Can manage custom emojis'
	String get canManageCustomEmojis => 'Can manage custom emojis';

	/// en-US: 'Manage avatar decorations'
	String get canManageAvatarDecorations => 'Manage avatar decorations';

	/// en-US: 'Drive capacity'
	String get driveCapacity => 'Drive capacity';

	/// en-US: 'Upload-able max file size'
	String get maxFileSize => 'Upload-able max file size';

	/// en-US: 'Always mark files as NSFW'
	String get alwaysMarkNsfw => 'Always mark files as NSFW';

	/// en-US: 'Can edit an icon or a banner image'
	String get canUpdateBioMedia => 'Can edit an icon or a banner image';

	/// en-US: 'Maximum number of pinned notes'
	String get pinMax => 'Maximum number of pinned notes';

	/// en-US: 'Maximum number of antennas'
	String get antennaMax => 'Maximum number of antennas';

	/// en-US: 'Maximum number of characters allowed in word mutes'
	String get wordMuteMax => 'Maximum number of characters allowed in word mutes';

	/// en-US: 'Maximum number of Webhooks'
	String get webhookMax => 'Maximum number of Webhooks';

	/// en-US: 'Maximum number of Clips'
	String get clipMax => 'Maximum number of Clips';

	/// en-US: 'Maximum number of notes within a clip'
	String get noteEachClipsMax => 'Maximum number of notes within a clip';

	/// en-US: 'Maximum number of user lists'
	String get userListMax => 'Maximum number of user lists';

	/// en-US: 'Maximum number of users within a user list'
	String get userEachUserListsMax => 'Maximum number of users within a user list';

	/// en-US: 'Rate limit'
	String get rateLimitFactor => 'Rate limit';

	/// en-US: 'Lower rate limits are less restrictive, higher ones more restrictive. '
	String get descriptionOfRateLimitFactor => 'Lower rate limits are less restrictive, higher ones more restrictive. ';

	/// en-US: 'Can hide ads'
	String get canHideAds => 'Can hide ads';

	/// en-US: 'Usage of note search'
	String get canSearchNotes => 'Usage of note search';

	/// en-US: 'Translator usage'
	String get canUseTranslator => 'Translator usage';

	/// en-US: 'Maximum number of avatar decorations that can be applied'
	String get avatarDecorationLimit => 'Maximum number of avatar decorations that can be applied';

	/// en-US: 'Allow importing antennas'
	String get canImportAntennas => 'Allow importing antennas';

	/// en-US: 'Allow importing blocking'
	String get canImportBlocking => 'Allow importing blocking';

	/// en-US: 'Allow importing following'
	String get canImportFollowing => 'Allow importing following';

	/// en-US: 'Allow importing muting'
	String get canImportMuting => 'Allow importing muting';

	/// en-US: 'Allow importing lists'
	String get canImportUserLists => 'Allow importing lists';

	/// en-US: 'Allow Chat'
	String get chatAvailability => 'Allow Chat';

	/// en-US: 'Uploadable file types'
	String get uploadableFileTypes => 'Uploadable file types';

	/// en-US: 'Specifies the allowed MIME/file types. Multiple MIME types can be specified by separating them with a new line, and wildcards can be specified with an asterisk (*). (e.g., image/*)'
	String get uploadableFileTypes_caption => 'Specifies the allowed MIME/file types. Multiple MIME types can be specified by separating them with a new line, and wildcards can be specified with an asterisk (*). (e.g., image/*)';

	/// en-US: 'Some files types might fail to be detected. To allow such files, add {x} to the specification.'
	String uploadableFileTypes_caption2({required Object x}) => 'Some files types might fail to be detected. To allow such files, add ${x} to the specification.';

	/// en-US: 'Number of possible drafts of server notes'
	String get noteDraftLimit => 'Number of possible drafts of server notes';

	/// en-US: 'Availability of watermark function'
	String get watermarkAvailable => 'Availability of watermark function';
}

// Path: misskey.role_.condition_
class TranslationsMisskeyRoleConditionEnUs {
	TranslationsMisskeyRoleConditionEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Assigned to manual roles'
	String get roleAssignedTo => 'Assigned to manual roles';

	/// en-US: 'Local user'
	String get isLocal => 'Local user';

	/// en-US: 'Remote user'
	String get isRemote => 'Remote user';

	/// en-US: 'Cat Users'
	String get isCat => 'Cat Users';

	/// en-US: 'Bot Users'
	String get isBot => 'Bot Users';

	/// en-US: 'Suspended user'
	String get isSuspended => 'Suspended user';

	/// en-US: 'Private accounts'
	String get isLocked => 'Private accounts';

	/// en-US: 'Effective user of "make an account discoverable"'
	String get isExplorable => 'Effective user of "make an account discoverable"';

	/// en-US: 'Less than X has passed since account creation'
	String get createdLessThan => 'Less than X has passed since account creation';

	/// en-US: 'More than X has passed since account creation'
	String get createdMoreThan => 'More than X has passed since account creation';

	/// en-US: 'Has X or fewer followers'
	String get followersLessThanOrEq => 'Has X or fewer followers';

	/// en-US: 'Has X or more followers'
	String get followersMoreThanOrEq => 'Has X or more followers';

	/// en-US: 'Follows X or fewer accounts'
	String get followingLessThanOrEq => 'Follows X or fewer accounts';

	/// en-US: 'Follows X or more accounts'
	String get followingMoreThanOrEq => 'Follows X or more accounts';

	/// en-US: 'Post count is less than/equal to'
	String get notesLessThanOrEq => 'Post count is less than/equal to';

	/// en-US: 'Post count is greater than/equal to'
	String get notesMoreThanOrEq => 'Post count is greater than/equal to';

	/// en-US: 'AND-Condition'
	String get and => 'AND-Condition';

	/// en-US: 'OR-Condition'
	String get or => 'OR-Condition';

	/// en-US: 'NOT-Condition'
	String get not => 'NOT-Condition';
}

// Path: misskey.email_.follow_
class TranslationsMisskeyEmailFollowEnUs {
	TranslationsMisskeyEmailFollowEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You've got a new follower'
	String get title => 'You\'ve got a new follower';
}

// Path: misskey.email_.receiveFollowRequest_
class TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	TranslationsMisskeyEmailReceiveFollowRequestEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You've received a follow request'
	String get title => 'You\'ve received a follow request';
}

// Path: misskey.theme_.keys
class TranslationsMisskeyThemeKeysEnUs {
	TranslationsMisskeyThemeKeysEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Accent'
	String get accent => 'Accent';

	/// en-US: 'Background'
	String get bg => 'Background';

	/// en-US: 'Text'
	String get fg => 'Text';

	/// en-US: 'Focus'
	String get focus => 'Focus';

	/// en-US: 'Indicator'
	String get indicator => 'Indicator';

	/// en-US: 'Panel'
	String get panel => 'Panel';

	/// en-US: 'Shadow'
	String get shadow => 'Shadow';

	/// en-US: 'Header'
	String get header => 'Header';

	/// en-US: 'Sidebar background'
	String get navBg => 'Sidebar background';

	/// en-US: 'Sidebar text'
	String get navFg => 'Sidebar text';

	/// en-US: 'Sidebar text (Active)'
	String get navActive => 'Sidebar text (Active)';

	/// en-US: 'Sidebar indicator'
	String get navIndicator => 'Sidebar indicator';

	/// en-US: 'Link'
	String get link => 'Link';

	/// en-US: 'Hashtag'
	String get hashtag => 'Hashtag';

	/// en-US: 'Mention'
	String get mention => 'Mention';

	/// en-US: 'Mentions (Me)'
	String get mentionMe => 'Mentions (Me)';

	/// en-US: 'Renote'
	String get renote => 'Renote';

	/// en-US: 'Modal background'
	String get modalBg => 'Modal background';

	/// en-US: 'Divider'
	String get divider => 'Divider';

	/// en-US: 'Scrollbar handle'
	String get scrollbarHandle => 'Scrollbar handle';

	/// en-US: 'Scrollbar handle (Hover)'
	String get scrollbarHandleHover => 'Scrollbar handle (Hover)';

	/// en-US: 'Date label text'
	String get dateLabelFg => 'Date label text';

	/// en-US: 'Information background'
	String get infoBg => 'Information background';

	/// en-US: 'Information text'
	String get infoFg => 'Information text';

	/// en-US: 'Warning background'
	String get infoWarnBg => 'Warning background';

	/// en-US: 'Warning text'
	String get infoWarnFg => 'Warning text';

	/// en-US: 'Notification background'
	String get toastBg => 'Notification background';

	/// en-US: 'Notification text'
	String get toastFg => 'Notification text';

	/// en-US: 'Button background'
	String get buttonBg => 'Button background';

	/// en-US: 'Button background (Hover)'
	String get buttonHoverBg => 'Button background (Hover)';

	/// en-US: 'Input field border'
	String get inputBorder => 'Input field border';

	/// en-US: 'Badge'
	String get badge => 'Badge';

	/// en-US: 'Chat background'
	String get messageBg => 'Chat background';

	/// en-US: 'Highlighted Text'
	String get fgHighlighted => 'Highlighted Text';
}

// Path: misskey.widgets_.userList_
class TranslationsMisskeyWidgetsUserListEnUs {
	TranslationsMisskeyWidgetsUserListEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Select a list'
	String get chooseList => 'Select a list';
}

// Path: misskey.postForm_.placeholders_
class TranslationsMisskeyPostFormPlaceholdersEnUs {
	TranslationsMisskeyPostFormPlaceholdersEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'What are you up to?'
	String get a => 'What are you up to?';

	/// en-US: 'What's happening around you?'
	String get b => 'What\'s happening around you?';

	/// en-US: 'What's on your mind?'
	String get c => 'What\'s on your mind?';

	/// en-US: 'What do you want to say?'
	String get d => 'What do you want to say?';

	/// en-US: 'Start writing...'
	String get e => 'Start writing...';

	/// en-US: 'Waiting for you to write...'
	String get f => 'Waiting for you to write...';
}

// Path: misskey.pages_.blocks
class TranslationsMisskeyPagesBlocksEnUs {
	TranslationsMisskeyPagesBlocksEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Text'
	String get text => 'Text';

	/// en-US: 'Text area'
	String get textarea => 'Text area';

	/// en-US: 'Section'
	String get section => 'Section';

	/// en-US: 'Images'
	String get image => 'Images';

	/// en-US: 'Button'
	String get button => 'Button';

	/// en-US: 'Dynamic Blocks'
	String get dynamic => 'Dynamic Blocks';

	/// en-US: 'This block has been abolished. Please use {play} from now on.'
	String dynamicDescription({required Object play}) => 'This block has been abolished. Please use ${play} from now on.';

	/// en-US: 'Embedded note'
	String get note => 'Embedded note';

	late final TranslationsMisskeyPagesBlocksNoteEnUs note_ = TranslationsMisskeyPagesBlocksNoteEnUs.internal(_root);
}

// Path: misskey.notification_.types_
class TranslationsMisskeyNotificationTypesEnUs {
	TranslationsMisskeyNotificationTypesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'All'
	String get all => 'All';

	/// en-US: 'New notes'
	String get note => 'New notes';

	/// en-US: 'New followers'
	String get follow => 'New followers';

	/// en-US: 'Mentions'
	String get mention => 'Mentions';

	/// en-US: 'Replies'
	String get reply => 'Replies';

	/// en-US: 'Renotes'
	String get renote => 'Renotes';

	/// en-US: 'Quotes'
	String get quote => 'Quotes';

	/// en-US: 'Reactions'
	String get reaction => 'Reactions';

	/// en-US: 'Polls ending'
	String get pollEnded => 'Polls ending';

	/// en-US: 'Received follow requests'
	String get receiveFollowRequest => 'Received follow requests';

	/// en-US: 'Accepted follow requests'
	String get followRequestAccepted => 'Accepted follow requests';

	/// en-US: 'Role given'
	String get roleAssigned => 'Role given';

	/// en-US: 'Invited to chat room'
	String get chatRoomInvitationReceived => 'Invited to chat room';

	/// en-US: 'Achievement unlocked'
	String get achievementEarned => 'Achievement unlocked';

	/// en-US: 'The export has been completed'
	String get exportCompleted => 'The export has been completed';

	/// en-US: 'Sign In'
	String get login => 'Sign In';

	/// en-US: 'Create access token'
	String get createToken => 'Create access token';

	/// en-US: 'Notification test'
	String get test => 'Notification test';

	/// en-US: 'Notifications from linked apps'
	String get app => 'Notifications from linked apps';
}

// Path: misskey.notification_.actions_
class TranslationsMisskeyNotificationActionsEnUs {
	TranslationsMisskeyNotificationActionsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'followed you back'
	String get followBack => 'followed you back';

	/// en-US: 'Reply'
	String get reply => 'Reply';

	/// en-US: 'Renote'
	String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class TranslationsMisskeyDeckColumnsEnUs {
	TranslationsMisskeyDeckColumnsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Main'
	String get main => 'Main';

	/// en-US: 'Widgets'
	String get widgets => 'Widgets';

	/// en-US: 'Notifications'
	String get notifications => 'Notifications';

	/// en-US: 'Timeline'
	String get tl => 'Timeline';

	/// en-US: 'Antennas'
	String get antenna => 'Antennas';

	/// en-US: 'List'
	String get list => 'List';

	/// en-US: 'Channel'
	String get channel => 'Channel';

	/// en-US: 'Mentions'
	String get mentions => 'Mentions';

	/// en-US: 'Direct notes'
	String get direct => 'Direct notes';

	/// en-US: 'Role Timeline'
	String get roleTimeline => 'Role Timeline';

	/// en-US: 'Chat'
	String get chat => 'Chat';
}

// Path: misskey.webhookSettings_.events_
class TranslationsMisskeyWebhookSettingsEventsEnUs {
	TranslationsMisskeyWebhookSettingsEventsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'When following a user'
	String get follow => 'When following a user';

	/// en-US: 'When being followed'
	String get followed => 'When being followed';

	/// en-US: 'When posting a note'
	String get note => 'When posting a note';

	/// en-US: 'When receiving a reply'
	String get reply => 'When receiving a reply';

	/// en-US: 'When renoted'
	String get renote => 'When renoted';

	/// en-US: 'When receiving a reaction'
	String get reaction => 'When receiving a reaction';

	/// en-US: 'When being mentioned'
	String get mention => 'When being mentioned';
}

// Path: misskey.webhookSettings_.systemEvents_
class TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	TranslationsMisskeyWebhookSettingsSystemEventsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'When received a new report'
	String get abuseReport => 'When received a new report';

	/// en-US: 'When resolved report'
	String get abuseReportResolved => 'When resolved report';

	/// en-US: 'When user is created'
	String get userCreated => 'When user is created';

	/// en-US: 'When moderators have been inactive for a while'
	String get inactiveModeratorsWarning => 'When moderators have been inactive for a while';

	/// en-US: 'When a moderator has been inactive for a while, and the server is changed to invitation-only'
	String get inactiveModeratorsInvitationOnlyChanged => 'When a moderator has been inactive for a while, and the server is changed to invitation-only';
}

// Path: misskey.abuseReport_.notificationRecipient_
class TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	TranslationsMisskeyAbuseReportNotificationRecipientEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Add recipient for reports'
	String get createRecipient => 'Add recipient for reports';

	/// en-US: 'Edit a recipient for reports'
	String get modifyRecipient => 'Edit a recipient for reports';

	/// en-US: 'Notification type'
	String get recipientType => 'Notification type';

	late final TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs recipientType_ = TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs.internal(_root);

	/// en-US: 'Keywords'
	String get keywords => 'Keywords';

	/// en-US: 'Users to notify'
	String get notifiedUser => 'Users to notify';

	/// en-US: 'Webhook to use'
	String get notifiedWebhook => 'Webhook to use';

	/// en-US: 'Are you sure that you want to delete the notification recipient?'
	String get deleteConfirm => 'Are you sure that you want to delete the notification recipient?';
}

// Path: misskey.externalResourceInstaller_.plugin_
class TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	TranslationsMisskeyExternalResourceInstallerPluginEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Do you want to install this plugin?'
	String get title => 'Do you want to install this plugin?';
}

// Path: misskey.externalResourceInstaller_.theme_
class TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	TranslationsMisskeyExternalResourceInstallerThemeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Do you want to install this theme?'
	String get title => 'Do you want to install this theme?';
}

// Path: misskey.externalResourceInstaller_.meta_
class TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	TranslationsMisskeyExternalResourceInstallerMetaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Base color scheme'
	String get base => 'Base color scheme';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Distributor information'
	String get title => 'Distributor information';

	/// en-US: 'Referenced endpoint'
	String get endpoint => 'Referenced endpoint';

	/// en-US: 'Hash verification'
	String get hashVerify => 'Hash verification';
}

// Path: misskey.externalResourceInstaller_.errors_
class TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs invalidParams_ = TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs resourceTypeNotSupported_ = TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs failedToFetch_ = TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs hashUnmatched_ = TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs pluginParseFailed_ = TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs pluginInstallFailed_ = TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs themeParseFailed_ = TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs.internal(_root);
	late final TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs themeInstallFailed_ = TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs.internal(_root);
}

// Path: misskey.dataSaver_.media_
class TranslationsMisskeyDataSaverMediaEnUs {
	TranslationsMisskeyDataSaverMediaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Loading Media'
	String get title => 'Loading Media';

	/// en-US: 'Prevents images/videos from being loaded automatically. Hidden images/videos will be loaded when tapped.'
	String get description => 'Prevents images/videos from being loaded automatically. Hidden images/videos will be loaded when tapped.';
}

// Path: misskey.dataSaver_.avatar_
class TranslationsMisskeyDataSaverAvatarEnUs {
	TranslationsMisskeyDataSaverAvatarEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Avatar image'
	String get title => 'Avatar image';

	/// en-US: 'Stop avatar image animation. Animated images can be larger in file size than normal images, potentially leading to further reductions in data traffic.'
	String get description => 'Stop avatar image animation. Animated images can be larger in file size than normal images, potentially leading to further reductions in data traffic.';
}

// Path: misskey.dataSaver_.urlPreviewThumbnail_
class TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs {
	TranslationsMisskeyDataSaverUrlPreviewThumbnailEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Hide URL preview thumbnails'
	String get title => 'Hide URL preview thumbnails';

	/// en-US: 'URL preview thumbnail images will no longer be loaded.'
	String get description => 'URL preview thumbnail images will no longer be loaded.';
}

// Path: misskey.dataSaver_.disableUrlPreview_
class TranslationsMisskeyDataSaverDisableUrlPreviewEnUs {
	TranslationsMisskeyDataSaverDisableUrlPreviewEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Disable URL preview'
	String get title => 'Disable URL preview';

	/// en-US: 'Disables the URL preview function. Unlike thumbnail images, this function reduces the loading of the linked information itself.'
	String get description => 'Disables the URL preview function. Unlike thumbnail images, this function reduces the loading of the linked information itself.';
}

// Path: misskey.dataSaver_.code_
class TranslationsMisskeyDataSaverCodeEnUs {
	TranslationsMisskeyDataSaverCodeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Code highlighting'
	String get title => 'Code highlighting';

	/// en-US: 'If code highlighting notations are used in MFM, etc., they will not load until tapped. Syntax highlighting requires downloading the highlight definition files for each programming language. Therefore, disabling the automatic loading of these files is expected to reduce the amount of communication data.'
	String get description => 'If code highlighting notations are used in MFM, etc., they will not load until tapped. Syntax highlighting requires downloading the highlight definition files for each programming language. Therefore, disabling the automatic loading of these files is expected to reduce the amount of communication data.';
}

// Path: misskey.gridComponent_.error_
class TranslationsMisskeyGridComponentErrorEnUs {
	TranslationsMisskeyGridComponentErrorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'This value is required'
	String get requiredValue => 'This value is required';

	/// en-US: 'Validation with regular expression is supported only for type:text columns.'
	String get columnTypeNotSupport => 'Validation with regular expression is supported only for type:text columns.';

	/// en-US: 'This value doesn't match the pattern in {pattern}'
	String patternNotMatch({required Object pattern}) => 'This value doesn\'t match the pattern in ${pattern}';

	/// en-US: 'This value must be unique'
	String get notUnique => 'This value must be unique';
}

// Path: misskey.customEmojisManager_.gridCommon_
class TranslationsMisskeyCustomEmojisManagerGridCommonEnUs {
	TranslationsMisskeyCustomEmojisManagerGridCommonEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Copy selected rows'
	String get copySelectionRows => 'Copy selected rows';

	/// en-US: 'Copy selection'
	String get copySelectionRanges => 'Copy selection';

	/// en-US: 'Delete selected rows'
	String get deleteSelectionRows => 'Delete selected rows';

	/// en-US: 'Delete rows in the selection'
	String get deleteSelectionRanges => 'Delete rows in the selection';

	/// en-US: 'Search settings'
	String get searchSettings => 'Search settings';

	/// en-US: 'Set detailed search criteria.'
	String get searchSettingCaption => 'Set detailed search criteria.';

	/// en-US: ''
	String get searchLimit => '';

	/// en-US: 'Sort order'
	String get sortOrder => 'Sort order';

	/// en-US: 'Registration log'
	String get registrationLogs => 'Registration log';

	/// en-US: 'Logs will be displayed when updating or deleting Emojis. They will disappear after updating or deleting them, moving to a new page, or reloading.'
	String get registrationLogsCaption => 'Logs will be displayed when updating or deleting Emojis. They will disappear after updating or deleting them, moving to a new page, or reloading.';

	/// en-US: 'Failed to update or delete Emojis. Please check the registration log for details.'
	String get alertEmojisRegisterFailedDescription => 'Failed to update or delete Emojis. Please check the registration log for details.';
}

// Path: misskey.customEmojisManager_.logs_
class TranslationsMisskeyCustomEmojisManagerLogsEnUs {
	TranslationsMisskeyCustomEmojisManagerLogsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Show success log'
	String get showSuccessLogSwitch => 'Show success log';

	/// en-US: 'There is no failure log.'
	String get failureLogNothing => 'There is no failure log.';

	/// en-US: 'There is no log.'
	String get logNothing => 'There is no log.';
}

// Path: misskey.customEmojisManager_.remote_
class TranslationsMisskeyCustomEmojisManagerRemoteEnUs {
	TranslationsMisskeyCustomEmojisManagerRemoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Selected row's detail'
	String get selectionRowDetail => 'Selected row\'s detail';

	/// en-US: 'Import selected rows'
	String get importSelectionRows => 'Import selected rows';

	/// en-US: 'Import rows in the selection'
	String get importSelectionRangesRows => 'Import rows in the selection';

	/// en-US: 'Import checked Emojis'
	String get importEmojisButton => 'Import checked Emojis';

	/// en-US: 'Import Emojis'
	String get confirmImportEmojisTitle => 'Import Emojis';

	/// en-US: 'Import {count} Emoji(s) received from the remote server. Please pay close attention to the license of the Emoji. Are you sure to continue?'
	String confirmImportEmojisDescription({required Object count}) => 'Import ${count} Emoji(s) received from the remote server. Please pay close attention to the license of the Emoji. Are you sure to continue?';
}

// Path: misskey.customEmojisManager_.local_
class TranslationsMisskeyCustomEmojisManagerLocalEnUs {
	TranslationsMisskeyCustomEmojisManagerLocalEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Registered emojis'
	String get tabTitleList => 'Registered emojis';

	/// en-US: 'Emoji registration'
	String get tabTitleRegister => 'Emoji registration';

	late final TranslationsMisskeyCustomEmojisManagerLocalListEnUs list_ = TranslationsMisskeyCustomEmojisManagerLocalListEnUs.internal(_root);
	late final TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs register_ = TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs.internal(_root);
}

// Path: misskey.remoteLookupErrors_.federationNotAllowed_
class TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs {
	TranslationsMisskeyRemoteLookupErrorsFederationNotAllowedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Unable to communicate with this server'
	String get title => 'Unable to communicate with this server';

	/// en-US: 'Communication with this server may have been disabled or this server may be blocked. Please contact the server administrator.'
	String get description => 'Communication with this server may have been disabled or this server may be blocked.\nPlease contact the server administrator.';
}

// Path: misskey.remoteLookupErrors_.uriInvalid_
class TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs {
	TranslationsMisskeyRemoteLookupErrorsUriInvalidEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'URI is invalid'
	String get title => 'URI is invalid';

	/// en-US: 'There is a problem with the URI you entered. Please check if you entered characters that cannot be used in the URI.'
	String get description => 'There is a problem with the URI you entered. Please check if you entered characters that cannot be used in the URI.';
}

// Path: misskey.remoteLookupErrors_.requestFailed_
class TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs {
	TranslationsMisskeyRemoteLookupErrorsRequestFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Request failed'
	String get title => 'Request failed';

	/// en-US: 'Communication with this server failed. The server may be down. Also, please make sure that you have not entered an invalid or nonexistent URI.'
	String get description => 'Communication with this server failed. The server may be down. Also, please make sure that you have not entered an invalid or nonexistent URI.';
}

// Path: misskey.remoteLookupErrors_.responseInvalid_
class TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs {
	TranslationsMisskeyRemoteLookupErrorsResponseInvalidEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Response is invalid'
	String get title => 'Response is invalid';

	/// en-US: 'It could communicate with this server, but the data obtained was incorrect.'
	String get description => 'It could communicate with this server, but the data obtained was incorrect.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Not found'
	String get title => 'Not found';

	/// en-US: 'The requested resource was not found, please recheck the URI.'
	String get description => 'The requested resource was not found, please recheck the URI.';
}

// Path: misskey.captcha_.error_
class TranslationsMisskeyCaptchaErrorEnUs {
	TranslationsMisskeyCaptchaErrorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMisskeyCaptchaErrorRequestFailedEnUs requestFailed_ = TranslationsMisskeyCaptchaErrorRequestFailedEnUs.internal(_root);
	late final TranslationsMisskeyCaptchaErrorVerificationFailedEnUs verificationFailed_ = TranslationsMisskeyCaptchaErrorVerificationFailedEnUs.internal(_root);
	late final TranslationsMisskeyCaptchaErrorUnknownEnUs unknown_ = TranslationsMisskeyCaptchaErrorUnknownEnUs.internal(_root);
}

// Path: misskey.serverSetupWizard_.use_
class TranslationsMisskeyServerSetupWizardUseEnUs {
	TranslationsMisskeyServerSetupWizardUseEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Single User server'
	String get single => 'Single User server';

	/// en-US: 'Use it alone as your own server.'
	String get single_description => 'Use it alone as your own server.';

	/// en-US: 'Multiple accounts can be created as needed, even when operated as a single user server.'
	String get single_youCanCreateMultipleAccounts => 'Multiple accounts can be created as needed, even when operated as a single user server.';

	/// en-US: 'Group server'
	String get group => 'Group server';

	/// en-US: 'Invite other trusted users to use it with more than one user.'
	String get group_description => 'Invite other trusted users to use it with more than one user.';

	/// en-US: 'Public server'
	String get open => 'Public server';

	/// en-US: 'Allow anyone to register.'
	String get open_description => 'Allow anyone to register.';
}

// Path: misskey.serverSetupWizard_.scale_
class TranslationsMisskeyServerSetupWizardScaleEnUs {
	TranslationsMisskeyServerSetupWizardScaleEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Less than 100 (small scale)'
	String get small => 'Less than 100 (small scale)';

	/// en-US: 'More than 100 and less than 1000 users (medium size)'
	String get medium => 'More than 100 and less than 1000 users (medium size)';

	/// en-US: 'More than 1000 (Large scale)'
	String get large => 'More than 1000 (Large scale)';
}

// Path: misskey.serverSetupWizard_.donationRequest_
class TranslationsMisskeyServerSetupWizardDonationRequestEnUs {
	TranslationsMisskeyServerSetupWizardDonationRequestEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskey is a free software developed by volunteers.'
	String get text1 => 'Misskey is a free software developed by volunteers.';

	/// en-US: 'We would appreciate your support so that we can continue to develop this software further into the future.'
	String get text2 => 'We would appreciate your support so that we can continue to develop this software further into the future.';

	/// en-US: 'There are also special benefits for supporters!'
	String get text3 => 'There are also special benefits for supporters!';
}

// Path: misskey.imageEffector_.fxs_
class TranslationsMisskeyImageEffectorFxsEnUs {
	TranslationsMisskeyImageEffectorFxsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Chromatic Aberration'
	String get chromaticAberration => 'Chromatic Aberration';

	/// en-US: 'Glitch'
	String get glitch => 'Glitch';

	/// en-US: 'Mirror'
	String get mirror => 'Mirror';

	/// en-US: 'Invert Colors'
	String get invert => 'Invert Colors';

	/// en-US: 'Grayscale'
	String get grayscale => 'Grayscale';

	/// en-US: 'Color Correction'
	String get colorAdjust => 'Color Correction';

	/// en-US: 'Color Compression'
	String get colorClamp => 'Color Compression';

	/// en-US: 'Color Compression (Advanced)'
	String get colorClampAdvanced => 'Color Compression (Advanced)';

	/// en-US: 'Distortion'
	String get distort => 'Distortion';

	/// en-US: 'Binarize'
	String get threshold => 'Binarize';

	/// en-US: 'Saturated lines'
	String get zoomLines => 'Saturated lines';

	/// en-US: 'Stripes'
	String get stripe => 'Stripes';

	/// en-US: 'Polkadot'
	String get polkadot => 'Polkadot';

	/// en-US: 'Checker'
	String get checker => 'Checker';

	/// en-US: 'Block Noise'
	String get blockNoise => 'Block Noise';

	/// en-US: 'Tearing'
	String get tearing => 'Tearing';
}

// Path: misskeyIO.skebStatus_.genres_
class TranslationsMisskeyIOSkebStatusGenresEnUs {
	TranslationsMisskeyIOSkebStatusGenresEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Artwork'
	String get art => 'Artwork';

	/// en-US: 'Comic'
	String get comic => 'Comic';

	/// en-US: 'Voice'
	String get voice => 'Voice';

	/// en-US: 'Text'
	String get novel => 'Text';

	/// en-US: 'Movie'
	String get video => 'Movie';

	/// en-US: 'Music'
	String get music => 'Music';

	/// en-US: 'Advice'
	String get correction => 'Advice';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'You can limit who can view your note.'
	String get description => 'You can limit who can view your note.';

	/// en-US: 'Your note will be visible for all users.'
	String get public => 'Your note will be visible for all users.';

	/// en-US: 'Public only on the Home timeline. People visiting your profile, via followers, and through renotes can see it.'
	String get home => 'Public only on the Home timeline. People visiting your profile, via followers, and through renotes can see it.';

	/// en-US: 'Visible to followers only. Only followers can see it and no one else, and it cannot be renoted by others.'
	String get followers => 'Visible to followers only. Only followers can see it and no one else, and it cannot be renoted by others.';

	/// en-US: 'Visible only to specified users, and the recipient will be notified. It can be used as an alternative to direct messaging.'
	String get direct => 'Visible only to specified users, and the recipient will be notified. It can be used as an alternative to direct messaging.';

	/// en-US: 'Be careful when sending sensitive information!'
	String get doNotSendConfidencialOnDirect1 => 'Be careful when sending sensitive information!';

	/// en-US: 'Administrators of the server can see what you write. Be careful with sensitive information when sending direct notes to users on untrusted servers.'
	String get doNotSendConfidencialOnDirect2 => 'Administrators of the server can see what you write. Be careful with sensitive information when sending direct notes to users on untrusted servers.';

	/// en-US: 'Posting with this flag will not federate the note to other servers. Users on other servers will not be able to view these notes directly, regardless of the display settings above.'
	String get localOnly => 'Posting with this flag will not federate the note to other servers. Users on other servers will not be able to view these notes directly, regardless of the display settings above.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	TranslationsMisskeyInitialTutorialPostNoteCwEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Content Warning'
	String get title => 'Content Warning';

	/// en-US: 'Instead of the body, the content written in 'comments' field will be displayed. Pressing "read more" will reveal the body.'
	String get description => 'Instead of the body, the content written in \'comments\' field will be displayed. Pressing "read more" will reveal the body.';

	late final TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs exampleNote_ = TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs.internal(_root);

	/// en-US: 'This is used when following the server guidelines, for necessary notes, or for self-restriction of spoiler or sensitive text.'
	String get useCases => 'This is used when following the server guidelines, for necessary notes, or for self-restriction of spoiler or sensitive text.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Oops, messed up opening the natto lid...'
	String get note => 'Oops, messed up opening the natto lid...';
}

// Path: misskey.achievements_.types_.notes1_
class TranslationsMisskeyAchievementsTypesNotes1EnUs {
	TranslationsMisskeyAchievementsTypesNotes1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'just setting up my msky'
	String get title => 'just setting up my msky';

	/// en-US: 'Post your first note'
	String get description => 'Post your first note';

	/// en-US: 'Have a good time with Misskey!'
	String get flavor => 'Have a good time with Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class TranslationsMisskeyAchievementsTypesNotes10EnUs {
	TranslationsMisskeyAchievementsTypesNotes10EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Some notes'
	String get title => 'Some notes';

	/// en-US: 'Post 10 notes'
	String get description => 'Post 10 notes';
}

// Path: misskey.achievements_.types_.notes100_
class TranslationsMisskeyAchievementsTypesNotes100EnUs {
	TranslationsMisskeyAchievementsTypesNotes100EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'A lot of notes'
	String get title => 'A lot of notes';

	/// en-US: 'Post 100 notes'
	String get description => 'Post 100 notes';
}

// Path: misskey.achievements_.types_.notes500_
class TranslationsMisskeyAchievementsTypesNotes500EnUs {
	TranslationsMisskeyAchievementsTypesNotes500EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Covered in notes'
	String get title => 'Covered in notes';

	/// en-US: 'Post 500 notes'
	String get description => 'Post 500 notes';
}

// Path: misskey.achievements_.types_.notes1000_
class TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	TranslationsMisskeyAchievementsTypesNotes1000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'A mountain of notes'
	String get title => 'A mountain of notes';

	/// en-US: 'Post 1,000 notes'
	String get description => 'Post 1,000 notes';
}

// Path: misskey.achievements_.types_.notes5000_
class TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	TranslationsMisskeyAchievementsTypesNotes5000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Overflowing notes'
	String get title => 'Overflowing notes';

	/// en-US: 'Post 5,000 notes'
	String get description => 'Post 5,000 notes';
}

// Path: misskey.achievements_.types_.notes10000_
class TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	TranslationsMisskeyAchievementsTypesNotes10000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Supernote'
	String get title => 'Supernote';

	/// en-US: 'Post 10,000 notes'
	String get description => 'Post 10,000 notes';
}

// Path: misskey.achievements_.types_.notes20000_
class TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	TranslationsMisskeyAchievementsTypesNotes20000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Need... more... notes...'
	String get title => 'Need... more... notes...';

	/// en-US: 'Post 20,000 notes'
	String get description => 'Post 20,000 notes';
}

// Path: misskey.achievements_.types_.notes30000_
class TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	TranslationsMisskeyAchievementsTypesNotes30000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Notes notes notes!'
	String get title => 'Notes notes notes!';

	/// en-US: 'Post 30,000 notes'
	String get description => 'Post 30,000 notes';
}

// Path: misskey.achievements_.types_.notes40000_
class TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	TranslationsMisskeyAchievementsTypesNotes40000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note factory'
	String get title => 'Note factory';

	/// en-US: 'Post 40,000 notes'
	String get description => 'Post 40,000 notes';
}

// Path: misskey.achievements_.types_.notes50000_
class TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	TranslationsMisskeyAchievementsTypesNotes50000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Planet of notes'
	String get title => 'Planet of notes';

	/// en-US: 'Post 50,000 notes'
	String get description => 'Post 50,000 notes';
}

// Path: misskey.achievements_.types_.notes60000_
class TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	TranslationsMisskeyAchievementsTypesNotes60000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note quasar'
	String get title => 'Note quasar';

	/// en-US: 'Post 60,000 notes'
	String get description => 'Post 60,000 notes';
}

// Path: misskey.achievements_.types_.notes70000_
class TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	TranslationsMisskeyAchievementsTypesNotes70000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note black hole'
	String get title => 'Note black hole';

	/// en-US: 'Post 70,000 notes'
	String get description => 'Post 70,000 notes';
}

// Path: misskey.achievements_.types_.notes80000_
class TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	TranslationsMisskeyAchievementsTypesNotes80000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note galaxy'
	String get title => 'Note galaxy';

	/// en-US: 'Post 80,000 notes'
	String get description => 'Post 80,000 notes';
}

// Path: misskey.achievements_.types_.notes90000_
class TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	TranslationsMisskeyAchievementsTypesNotes90000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note universe'
	String get title => 'Note universe';

	/// en-US: 'Post 90,000 notes'
	String get description => 'Post 90,000 notes';
}

// Path: misskey.achievements_.types_.notes100000_
class TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	TranslationsMisskeyAchievementsTypesNotes100000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'ALL YOUR NOTE ARE BELONG TO US'
	String get title => 'ALL YOUR NOTE ARE BELONG TO US';

	/// en-US: 'Post 100,000 notes'
	String get description => 'Post 100,000 notes';

	/// en-US: 'You sure have a lot to say.'
	String get flavor => 'You sure have a lot to say.';
}

// Path: misskey.achievements_.types_.login3_
class TranslationsMisskeyAchievementsTypesLogin3EnUs {
	TranslationsMisskeyAchievementsTypesLogin3EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Beginner I'
	String get title => 'Beginner I';

	/// en-US: 'Log in for a total of 3 days'
	String get description => 'Log in for a total of 3 days';

	/// en-US: 'Starting today, just call me Misskist'
	String get flavor => 'Starting today, just call me Misskist';
}

// Path: misskey.achievements_.types_.login7_
class TranslationsMisskeyAchievementsTypesLogin7EnUs {
	TranslationsMisskeyAchievementsTypesLogin7EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Beginner II'
	String get title => 'Beginner II';

	/// en-US: 'Log in for a total of 7 days'
	String get description => 'Log in for a total of 7 days';

	/// en-US: 'Feel like you've gotten the hang of things yet?'
	String get flavor => 'Feel like you\'ve gotten the hang of things yet?';
}

// Path: misskey.achievements_.types_.login15_
class TranslationsMisskeyAchievementsTypesLogin15EnUs {
	TranslationsMisskeyAchievementsTypesLogin15EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Beginner III'
	String get title => 'Beginner III';

	/// en-US: 'Log in for a total of 15 days'
	String get description => 'Log in for a total of 15 days';
}

// Path: misskey.achievements_.types_.login30_
class TranslationsMisskeyAchievementsTypesLogin30EnUs {
	TranslationsMisskeyAchievementsTypesLogin30EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskist I'
	String get title => 'Misskist I';

	/// en-US: 'Log in for a total of 30 days'
	String get description => 'Log in for a total of 30 days';
}

// Path: misskey.achievements_.types_.login60_
class TranslationsMisskeyAchievementsTypesLogin60EnUs {
	TranslationsMisskeyAchievementsTypesLogin60EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskist II'
	String get title => 'Misskist II';

	/// en-US: 'Log in for a total of 60 days'
	String get description => 'Log in for a total of 60 days';
}

// Path: misskey.achievements_.types_.login100_
class TranslationsMisskeyAchievementsTypesLogin100EnUs {
	TranslationsMisskeyAchievementsTypesLogin100EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskist III'
	String get title => 'Misskist III';

	/// en-US: 'Log in for a total of 100 days'
	String get description => 'Log in for a total of 100 days';

	/// en-US: 'Violent Misskist'
	String get flavor => 'Violent Misskist';
}

// Path: misskey.achievements_.types_.login200_
class TranslationsMisskeyAchievementsTypesLogin200EnUs {
	TranslationsMisskeyAchievementsTypesLogin200EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Regular I'
	String get title => 'Regular I';

	/// en-US: 'Log in for a total of 200 days'
	String get description => 'Log in for a total of 200 days';
}

// Path: misskey.achievements_.types_.login300_
class TranslationsMisskeyAchievementsTypesLogin300EnUs {
	TranslationsMisskeyAchievementsTypesLogin300EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Regular II'
	String get title => 'Regular II';

	/// en-US: 'Log in for a total of 300 days'
	String get description => 'Log in for a total of 300 days';
}

// Path: misskey.achievements_.types_.login400_
class TranslationsMisskeyAchievementsTypesLogin400EnUs {
	TranslationsMisskeyAchievementsTypesLogin400EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Regular III'
	String get title => 'Regular III';

	/// en-US: 'Log in for a total of 400 days'
	String get description => 'Log in for a total of 400 days';
}

// Path: misskey.achievements_.types_.login500_
class TranslationsMisskeyAchievementsTypesLogin500EnUs {
	TranslationsMisskeyAchievementsTypesLogin500EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Expert I'
	String get title => 'Expert I';

	/// en-US: 'Log in for a total of 500 days'
	String get description => 'Log in for a total of 500 days';

	/// en-US: 'My friends, it has often been said that I like notes'
	String get flavor => 'My friends, it has often been said that I like notes';
}

// Path: misskey.achievements_.types_.login600_
class TranslationsMisskeyAchievementsTypesLogin600EnUs {
	TranslationsMisskeyAchievementsTypesLogin600EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Expert II'
	String get title => 'Expert II';

	/// en-US: 'Log in for a total of 600 days'
	String get description => 'Log in for a total of 600 days';
}

// Path: misskey.achievements_.types_.login700_
class TranslationsMisskeyAchievementsTypesLogin700EnUs {
	TranslationsMisskeyAchievementsTypesLogin700EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Expert III'
	String get title => 'Expert III';

	/// en-US: 'Log in for a total of 700 days'
	String get description => 'Log in for a total of 700 days';
}

// Path: misskey.achievements_.types_.login800_
class TranslationsMisskeyAchievementsTypesLogin800EnUs {
	TranslationsMisskeyAchievementsTypesLogin800EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Master of Notes I'
	String get title => 'Master of Notes I';

	/// en-US: 'Log in for a total of 800 days'
	String get description => 'Log in for a total of 800 days';
}

// Path: misskey.achievements_.types_.login900_
class TranslationsMisskeyAchievementsTypesLogin900EnUs {
	TranslationsMisskeyAchievementsTypesLogin900EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Master of Notes II'
	String get title => 'Master of Notes II';

	/// en-US: 'Log in for a total of 900 days'
	String get description => 'Log in for a total of 900 days';
}

// Path: misskey.achievements_.types_.login1000_
class TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	TranslationsMisskeyAchievementsTypesLogin1000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Master of Notes III'
	String get title => 'Master of Notes III';

	/// en-US: 'Log in for a total of 1,000 days'
	String get description => 'Log in for a total of 1,000 days';

	/// en-US: 'Thank you for using Misskey!'
	String get flavor => 'Thank you for using Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	TranslationsMisskeyAchievementsTypesNoteClipped1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Must... clip...'
	String get title => 'Must... clip...';

	/// en-US: 'Clip your first note'
	String get description => 'Clip your first note';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Stargazer'
	String get title => 'Stargazer';

	/// en-US: 'Favorite your first note'
	String get description => 'Favorite your first note';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Seeking Stars'
	String get title => 'Seeking Stars';

	/// en-US: 'Have somebody else favorite one of your notes'
	String get description => 'Have somebody else favorite one of your notes';
}

// Path: misskey.achievements_.types_.profileFilled_
class TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	TranslationsMisskeyAchievementsTypesProfileFilledEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Well-prepared'
	String get title => 'Well-prepared';

	/// en-US: 'Set up your profile'
	String get description => 'Set up your profile';
}

// Path: misskey.achievements_.types_.markedAsCat_
class TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'I Am a Cat'
	String get title => 'I Am a Cat';

	/// en-US: 'Mark your account as a cat'
	String get description => 'Mark your account as a cat';

	/// en-US: 'I'll give you a name later.'
	String get flavor => 'I\'ll give you a name later.';
}

// Path: misskey.achievements_.types_.following1_
class TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	TranslationsMisskeyAchievementsTypesFollowing1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Following your first user'
	String get title => 'Following your first user';

	/// en-US: 'Follow a user'
	String get description => 'Follow a user';
}

// Path: misskey.achievements_.types_.following10_
class TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	TranslationsMisskeyAchievementsTypesFollowing10EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Keep up... keep up...'
	String get title => 'Keep up... keep up...';

	/// en-US: 'Follow 10 users'
	String get description => 'Follow 10 users';
}

// Path: misskey.achievements_.types_.following50_
class TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	TranslationsMisskeyAchievementsTypesFollowing50EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Lots of friends'
	String get title => 'Lots of friends';

	/// en-US: 'Follow 50 accounts'
	String get description => 'Follow 50 accounts';
}

// Path: misskey.achievements_.types_.following100_
class TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	TranslationsMisskeyAchievementsTypesFollowing100EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: '100 Friends'
	String get title => '100 Friends';

	/// en-US: 'Follow 100 accounts'
	String get description => 'Follow 100 accounts';
}

// Path: misskey.achievements_.types_.following300_
class TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	TranslationsMisskeyAchievementsTypesFollowing300EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Friend overload'
	String get title => 'Friend overload';

	/// en-US: 'Follow 300 accounts'
	String get description => 'Follow 300 accounts';
}

// Path: misskey.achievements_.types_.followers1_
class TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	TranslationsMisskeyAchievementsTypesFollowers1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'First follower'
	String get title => 'First follower';

	/// en-US: 'Gain 1 follower'
	String get description => 'Gain 1 follower';
}

// Path: misskey.achievements_.types_.followers10_
class TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	TranslationsMisskeyAchievementsTypesFollowers10EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Follow me!'
	String get title => 'Follow me!';

	/// en-US: 'Gain 10 followers'
	String get description => 'Gain 10 followers';
}

// Path: misskey.achievements_.types_.followers50_
class TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	TranslationsMisskeyAchievementsTypesFollowers50EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Coming in crowds'
	String get title => 'Coming in crowds';

	/// en-US: 'Gain 50 followers'
	String get description => 'Gain 50 followers';
}

// Path: misskey.achievements_.types_.followers100_
class TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	TranslationsMisskeyAchievementsTypesFollowers100EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Popular'
	String get title => 'Popular';

	/// en-US: 'Gain 100 followers'
	String get description => 'Gain 100 followers';
}

// Path: misskey.achievements_.types_.followers300_
class TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	TranslationsMisskeyAchievementsTypesFollowers300EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Please form a single line'
	String get title => 'Please form a single line';

	/// en-US: 'Gain 300 followers'
	String get description => 'Gain 300 followers';
}

// Path: misskey.achievements_.types_.followers500_
class TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	TranslationsMisskeyAchievementsTypesFollowers500EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Radio Tower'
	String get title => 'Radio Tower';

	/// en-US: 'Gain 500 followers'
	String get description => 'Gain 500 followers';
}

// Path: misskey.achievements_.types_.followers1000_
class TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	TranslationsMisskeyAchievementsTypesFollowers1000EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Influencer'
	String get title => 'Influencer';

	/// en-US: 'Gain 1,000 followers'
	String get description => 'Gain 1,000 followers';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Achievement Collector'
	String get title => 'Achievement Collector';

	/// en-US: 'Earn 30 achievements'
	String get description => 'Earn 30 achievements';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Likes Achievements'
	String get title => 'Likes Achievements';

	/// en-US: 'Look at your list of achievements for at least 3 minutes'
	String get description => 'Look at your list of achievements for at least 3 minutes';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'I Love Misskey'
	String get title => 'I Love Misskey';

	/// en-US: 'Post "I ❤ #Misskey"'
	String get description => 'Post "I ❤ #Misskey"';

	/// en-US: 'Misskey's development team greatly appreciates your support!'
	String get flavor => 'Misskey\'s development team greatly appreciates your support!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	TranslationsMisskeyAchievementsTypesFoundTreasureEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Treasure Hunt'
	String get title => 'Treasure Hunt';

	/// en-US: 'You've found the hidden treasure'
	String get description => 'You\'ve found the hidden treasure';
}

// Path: misskey.achievements_.types_.client30min_
class TranslationsMisskeyAchievementsTypesClient30minEnUs {
	TranslationsMisskeyAchievementsTypesClient30minEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Short break'
	String get title => 'Short break';

	/// en-US: 'Keep Misskey opened for at least 30 minutes'
	String get description => 'Keep Misskey opened for at least 30 minutes';
}

// Path: misskey.achievements_.types_.client60min_
class TranslationsMisskeyAchievementsTypesClient60minEnUs {
	TranslationsMisskeyAchievementsTypesClient60minEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'No "Miss" in Misskey'
	String get title => 'No "Miss" in Misskey';

	/// en-US: 'Keep Misskey opened for at least 60 minutes'
	String get description => 'Keep Misskey opened for at least 60 minutes';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Nevermind'
	String get title => 'Nevermind';

	/// en-US: 'Delete a note within a minute of posting it'
	String get description => 'Delete a note within a minute of posting it';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Nocturnal'
	String get title => 'Nocturnal';

	/// en-US: 'Post a note late at night'
	String get description => 'Post a note late at night';

	/// en-US: 'It's about time to go to bed.'
	String get flavor => 'It\'s about time to go to bed.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Speaking Clock'
	String get title => 'Speaking Clock';

	/// en-US: 'Post a note at 00:00'
	String get description => 'Post a note at 00:00';

	/// en-US: 'Click Click Click Claaang'
	String get flavor => 'Click Click Click Claaang';
}

// Path: misskey.achievements_.types_.selfQuote_
class TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	TranslationsMisskeyAchievementsTypesSelfQuoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Self-Reference'
	String get title => 'Self-Reference';

	/// en-US: 'Quote your own note'
	String get description => 'Quote your own note';
}

// Path: misskey.achievements_.types_.htl20npm_
class TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	TranslationsMisskeyAchievementsTypesHtl20npmEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Flowing Timeline'
	String get title => 'Flowing Timeline';

	/// en-US: 'Have the speed of your home timeline exceed 20 npm (notes per minute)'
	String get description => 'Have the speed of your home timeline exceed 20 npm (notes per minute)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Analyst'
	String get title => 'Analyst';

	/// en-US: 'View your instance's charts'
	String get description => 'View your instance\'s charts';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Hello, world!'
	String get title => 'Hello, world!';

	/// en-US: 'Output "hello world" in the Scratchpad'
	String get description => 'Output "hello world" in the Scratchpad';
}

// Path: misskey.achievements_.types_.open3windows_
class TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	TranslationsMisskeyAchievementsTypesOpen3windowsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Multi-Window'
	String get title => 'Multi-Window';

	/// en-US: 'Have at least 3 windows open at the same time'
	String get description => 'Have at least 3 windows open at the same time';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Circular Reference'
	String get title => 'Circular Reference';

	/// en-US: 'Attempt to create a recursively nested folder in Drive'
	String get description => 'Attempt to create a recursively nested folder in Drive';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Did you really read that?'
	String get title => 'Did you really read that?';

	/// en-US: 'React on a note that's over 100 characters long within 3 seconds of it being posted'
	String get description => 'React on a note that\'s over 100 characters long within 3 seconds of it being posted';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	TranslationsMisskeyAchievementsTypesClickedClickHereEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Click here'
	String get title => 'Click here';

	/// en-US: 'You've clicked here'
	String get description => 'You\'ve clicked here';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Just Plain Lucky'
	String get title => 'Just Plain Lucky';

	/// en-US: 'Has a chance to be obtained with a probability of 0.005% every 10 seconds'
	String get description => 'Has a chance to be obtained with a probability of 0.005% every 10 seconds';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'God Complex'
	String get title => 'God Complex';

	/// en-US: 'Set your name to "syuilo"'
	String get description => 'Set your name to "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'One Year Anniversary'
	String get title => 'One Year Anniversary';

	/// en-US: 'One year has passed since your account was created'
	String get description => 'One year has passed since your account was created';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Two Year Anniversary'
	String get title => 'Two Year Anniversary';

	/// en-US: 'Two years have passed since your account was created'
	String get description => 'Two years have passed since your account was created';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Three Year Anniversary'
	String get title => 'Three Year Anniversary';

	/// en-US: 'Three years have passed since your account was created'
	String get description => 'Three years have passed since your account was created';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Happy Birthday'
	String get title => 'Happy Birthday';

	/// en-US: 'Log in on your birthday'
	String get description => 'Log in on your birthday';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Happy New Year!'
	String get title => 'Happy New Year!';

	/// en-US: 'Logged in on the first day of the year'
	String get description => 'Logged in on the first day of the year';

	/// en-US: 'To another great year on this instance'
	String get flavor => 'To another great year on this instance';
}

// Path: misskey.achievements_.types_.cookieClicked_
class TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	TranslationsMisskeyAchievementsTypesCookieClickedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'A game in which you click cookies'
	String get title => 'A game in which you click cookies';

	/// en-US: 'Clicked the cookie'
	String get description => 'Clicked the cookie';

	/// en-US: 'Wait, are you on the correct website?'
	String get flavor => 'Wait, are you on the correct website?';
}

// Path: misskey.achievements_.types_.brainDiver_
class TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	TranslationsMisskeyAchievementsTypesBrainDiverEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Brain Diver'
	String get title => 'Brain Diver';

	/// en-US: 'Post the link to Brain Diver'
	String get description => 'Post the link to Brain Diver';

	/// en-US: 'Misskey-Misskey La-Tu-Ma'
	String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Test overflow'
	String get title => 'Test overflow';

	/// en-US: 'Trigger the notification test repeatedly within an extremely short time'
	String get description => 'Trigger the notification test repeatedly within an extremely short time';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Misskey Elementary Course Diploma'
	String get title => 'Misskey Elementary Course Diploma';

	/// en-US: 'Tutorial completed'
	String get description => 'Tutorial completed';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: '🤯'
	String get title => '🤯';

	/// en-US: 'The biggest object in the bubble game'
	String get description => 'The biggest object in the bubble game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Double🤯'
	String get title => 'Double🤯';

	/// en-US: 'Two of the biggest objects in the bubble game at the same time'
	String get description => 'Two of the biggest objects in the bubble game at the same time';

	/// en-US: 'You can fill a lunch box like this 🤯 🤯 a bit.'
	String get flavor => 'You can fill a lunch box like this 🤯 🤯 a bit.';
}

// Path: misskey.pages_.blocks.note_
class TranslationsMisskeyPagesBlocksNoteEnUs {
	TranslationsMisskeyPagesBlocksNoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Note ID'
	String get id => 'Note ID';

	/// en-US: 'You can alternatively paste the note URL here.'
	String get idDescription => 'You can alternatively paste the note URL here.';

	/// en-US: 'Detailed view'
	String get detailed => 'Detailed view';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Email'
	String get mail => 'Email';

	/// en-US: 'Webhook'
	String get webhook => 'Webhook';

	late final TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs captions_ = TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs.internal(_root);
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Invalid parameters'
	String get title => 'Invalid parameters';

	/// en-US: 'There is not enough information to load data from an external site. Please confirm the entered URL.'
	String get description => 'There is not enough information to load data from an external site. Please confirm the entered URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'This external resource is not supported'
	String get title => 'This external resource is not supported';

	/// en-US: 'The type of this external resource is not supported. Please contact the site administrator.'
	String get description => 'The type of this external resource is not supported. Please contact the site administrator.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Failed to fetch data'
	String get title => 'Failed to fetch data';

	/// en-US: 'An error occurred communicating with the external site. If trying again does not fix this issue, please contact the site administrator.'
	String get fetchErrorDescription => 'An error occurred communicating with the external site. If trying again does not fix this issue, please contact the site administrator.';

	/// en-US: 'An error occurred processing the data loaded from the external site. Please contact the site administrator.'
	String get parseErrorDescription => 'An error occurred processing the data loaded from the external site. Please contact the site administrator.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Data verification failed'
	String get title => 'Data verification failed';

	/// en-US: 'An error occurred verifying the integrity of the fetched data. As a security measure, installation cannot continue. Please contact the site administrator.'
	String get description => 'An error occurred verifying the integrity of the fetched data. As a security measure, installation cannot continue. Please contact the site administrator.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'AiScript Error'
	String get title => 'AiScript Error';

	/// en-US: 'The requested data was fetched successfully, but an error occurred during AiScript parsing. Please contact the plugin author. Error details can be viewed in the Javascript console.'
	String get description => 'The requested data was fetched successfully, but an error occurred during AiScript parsing. Please contact the plugin author. Error details can be viewed in the Javascript console.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Plugin installation failed'
	String get title => 'Plugin installation failed';

	/// en-US: 'A problem occurred during plugin installation. Please try again. Error details can be viewed in the Javascript console.'
	String get description => 'A problem occurred during plugin installation. Please try again. Error details can be viewed in the Javascript console.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Theme parsing failed'
	String get title => 'Theme parsing failed';

	/// en-US: 'The requested data was fetched successfully, but an error occurred during theme parsing. Please contact the theme author. Error details can be viewed in the Javascript console.'
	String get description => 'The requested data was fetched successfully, but an error occurred during theme parsing. Please contact the theme author. Error details can be viewed in the Javascript console.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Failed to install theme'
	String get title => 'Failed to install theme';

	/// en-US: 'A problem occurred during theme installation. Please try again. Error details can be viewed in the Javascript console.'
	String get description => 'A problem occurred during theme installation. Please try again. Error details can be viewed in the Javascript console.';
}

// Path: misskey.customEmojisManager_.local_.list_
class TranslationsMisskeyCustomEmojisManagerLocalListEnUs {
	TranslationsMisskeyCustomEmojisManagerLocalListEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'There are no registered Emojis.'
	String get emojisNothing => 'There are no registered Emojis.';

	/// en-US: 'Mark selected rows as a target to delete'
	String get markAsDeleteTargetRows => 'Mark selected rows as a target to delete';

	/// en-US: 'Mark rows in the selection as a target to delete'
	String get markAsDeleteTargetRanges => 'Mark rows in the selection as a target to delete';

	/// en-US: 'There are no updated Emojis.'
	String get alertUpdateEmojisNothingDescription => 'There are no updated Emojis.';

	/// en-US: 'There are no Emojis to be deleted.'
	String get alertDeleteEmojisNothingDescription => 'There are no Emojis to be deleted.';

	/// en-US: 'Would you like to move pages?'
	String get confirmMovePage => 'Would you like to move pages?';

	/// en-US: ''
	String get confirmChangeView => '';

	/// en-US: 'Update {count} Emoji(s). Are you sure to continue?'
	String confirmUpdateEmojisDescription({required Object count}) => 'Update ${count} Emoji(s). Are you sure to continue?';

	/// en-US: 'Delete checked {count} Emoji(s). Are you sure to continue?'
	String confirmDeleteEmojisDescription({required Object count}) => 'Delete checked ${count} Emoji(s). Are you sure to continue?';

	/// en-US: ''
	String get confirmResetDescription => '';

	/// en-US: 'Changes have been made to the Emojis on this page. If you leave the page without saving, all changes made on this page will be discarded.'
	String get confirmMovePageDesciption => 'Changes have been made to the Emojis on this page.\nIf you leave the page without saving, all changes made on this page will be discarded.';

	/// en-US: 'Search by role set in Emojis'
	String get dialogSelectRoleTitle => 'Search by role set in Emojis';
}

// Path: misskey.customEmojisManager_.local_.register_
class TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs {
	TranslationsMisskeyCustomEmojisManagerLocalRegisterEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Upload settings'
	String get uploadSettingTitle => 'Upload settings';

	/// en-US: 'On this screen, you can configure the behavior when uploading Emojis.'
	String get uploadSettingDescription => 'On this screen, you can configure the behavior when uploading Emojis.';

	/// en-US: 'Enter the directory name in the "category" field'
	String get directoryToCategoryLabel => 'Enter the directory name in the "category" field';

	/// en-US: 'When you drag and drop a directory, enter the directory name in the "category" field.'
	String get directoryToCategoryCaption => 'When you drag and drop a directory, enter the directory name in the "category" field.';

	/// en-US: 'Register the Emojis from the list as new custom Emojis. Are you sure to continue? (To avoid overload, only {count} Emoji(s) can be registered in a single operation)'
	String confirmRegisterEmojisDescription({required Object count}) => 'Register the Emojis from the list as new custom Emojis. Are you sure to continue? (To avoid overload, only ${count} Emoji(s) can be registered in a single operation)';

	/// en-US: 'Discard the edits and clear the Emojis from the list. Are you sure to continue?'
	String get confirmClearEmojisDescription => 'Discard the edits and clear the Emojis from the list. Are you sure to continue?';

	/// en-US: 'Upload the dragged and dropped {count} file(s) to the drive. Are you sure to continue?'
	String confirmUploadEmojisDescription({required Object count}) => 'Upload the dragged and dropped ${count} file(s) to the drive. Are you sure to continue?';
}

// Path: misskey.captcha_.error_.requestFailed_
class TranslationsMisskeyCaptchaErrorRequestFailedEnUs {
	TranslationsMisskeyCaptchaErrorRequestFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Failed to request CAPTCHA'
	String get title => 'Failed to request CAPTCHA';

	/// en-US: 'Please run it after a while or check the settings again.'
	String get text => 'Please run it after a while or check the settings again.';
}

// Path: misskey.captcha_.error_.verificationFailed_
class TranslationsMisskeyCaptchaErrorVerificationFailedEnUs {
	TranslationsMisskeyCaptchaErrorVerificationFailedEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Failed to validate CAPTCHA'
	String get title => 'Failed to validate CAPTCHA';

	/// en-US: 'Please check again if the settings are correct.'
	String get text => 'Please check again if the settings are correct.';
}

// Path: misskey.captcha_.error_.unknown_
class TranslationsMisskeyCaptchaErrorUnknownEnUs {
	TranslationsMisskeyCaptchaErrorUnknownEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'CAPTCHA error'
	String get title => 'CAPTCHA error';

	/// en-US: 'An unexpected error occurred.'
	String get text => 'An unexpected error occurred.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'This will surely make you hungry!'
	String get cw => 'This will surely make you hungry!';

	/// en-US: 'Just had a chocolate-glazed donut 🍩😋'
	String get note => 'Just had a chocolate-glazed donut 🍩😋';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Send the email to moderators' email addresses when you receive reports.'
	String get mail => 'Send the email to moderators\' email addresses when you receive reports.';

	/// en-US: 'Send a notification to System Webhook when you receive or resolve reports.'
	String get webhook => 'Send a notification to System Webhook when you receive or resolve reports.';
}
