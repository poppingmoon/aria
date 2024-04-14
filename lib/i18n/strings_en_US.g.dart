///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint

part of 'strings.g.dart';

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsAriaEnUs aria = _StringsAriaEnUs._(_root);
	late final _StringsMisskeyEnUs misskey = _StringsMisskeyEnUs._(_root);
	late final _StringsMisskeyIOEnUs misskeyIO = _StringsMisskeyIOEnUs._(_root);
}

// Path: aria
class _StringsAriaEnUs {
	_StringsAriaEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String aboutAria({required Object miria, required Object misskey, required Object repository, required Object contact}) => 'Aria is a fork of ${miria}.\nLocalization of Aria is based on localization files of ${misskey}.\nWe would like to show our appreciation to all contributers of these projects.\n\nrepository: ${repository}\ncontact: ${contact}\naccessToken: Access token';
	String get accessToken => 'Access token';
	String get addTab => 'Add tab';
	String get authenticate => 'Authenticate';
	String get authenticated => 'Authenticated';
	String get background => 'Background';
	String get confirmBeforeFollow => 'Confirm before follow';
	String get confirmBeforePost => 'Confirm before post';
	String get confirmBeforeReact => 'Confirm before react';
	String get copied => 'Copied to clipboard';
	String get copyName => 'Copy name';
	String get crop => 'Crop';
	String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Are you sure you want to delete ${n} file?',
		other: 'Are you sure you want to delete ${n} files?',
	);
	String get deleteTabConfirm => 'Are you sure you want to delete this tab?';
	String get disableSubscribingNotes => 'Disable real-time reaction updates';
	String get discardChangesConfirm => 'Are you sure you want to discard changes and back?';
	String get doubleTapToShow => 'Double tap to show';
	String get downloaded => 'Downloaded';
	String get draw => 'Draw';
	String get editFile => 'Edit file';
	String get editImage => 'Edit image';
	String get emojiPickerAutofocus => 'Expand keyboard on opening emoji picker';
	String get emojiPickerScale => 'Emoji picker scale';
	String get emojiPickerUseDialog => 'Display emoji picker as dialog';
	String get enableFederation => 'Enable federation';
	String get expandNote => 'Expand note';
	String get fileNotFound => 'File not found';
	String get findServer => 'Find a Misskey server';
	TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Are you sure you want to follow '),
		name,
		const TextSpan(text: '?'),
	]);
	String get font => 'Font';
	String get fromDevice => 'From device';
	String get guest => 'Guest';
	TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria is being translated into various languages by volunteers. You can help at '),
		link,
		const TextSpan(text: '.'),
	]);
	String get importCompleted => 'Import completed';
	String get importConfirm => 'Are you sure you want to import settings? Existing settings will be overwritten.';
	String get invalidListFormat => 'List format is invalid';
	String get keepOpen => 'Keep open';
	String get loginWithAccessToken => 'Sign in with an access token';
	String get mentionToRemoteWarning => 'This note contains mentions to remote users';
	String get moved => 'Moved';
	String get muted => 'Muted';
	String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '${n} file',
		other: '${n} files',
	);
	String get newFollowRequestReceived => 'There are new follow requests';
	String get newNotificationReceived => 'There are new notifications';
	String get noAccounts => 'No accounts';
	String get noTabs => 'No tabs';
	String get noThemes => 'No themes';
	String get noteDoubleTapAction => 'Note double tap action';
	String get noteFooterSize => 'Note action buttons size';
	String get noteLongPressAction => 'Note long press action';
	String get noteTapAction => 'Note tap action';
	String get notesAfterRenotes => 'Notes after renotes';
	TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' users are online'),
	]);
	String get opacity => 'Opacity';
	String get openAsGuest => 'Open as guest';
	String get openInAnotherAccount => 'Open in another account';
	String get openInBrowser => 'Open in browser';
	String get openInExternalBrowser => 'Open in external browser';
	String get openInInternalBrowser => 'Open in internal browser';
	String get openMenu => 'Open menu';
	String get openSensitiveMediaOnDoubleTap => 'Open sensitive media on double tap';
	String get paste => 'Paste';
	TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: 'Paste JSON format emojis list to pin the emojis.\nYou can copy your pinned emojis for Misskey Web from '),
		url,
		const TextSpan(text: '.'),
	]);
	String get pinToEmojiPicker => 'Pin to emoji picker';
	String get postConfirm => 'Are you sure you want to post this note?';
	String get reactionConfirm => 'Are you sure you want to add a reaction?';
	String get renoteConfirm => 'Are you sure you want to renote this note?';
	TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Renoted by '),
		user,
	]);
	String get rotate => 'Rotate';
	String get scale => 'Scale';
	String get selectIcon => 'Select an icon';
	TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Self-renoted by '),
		user,
	]);
	String get serverUrl => 'Server URL';
	String get settingsFileForAria => 'Settings file for Aria';
	TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Settings for '),
		user,
	]);
	String get showAvatarsInNote => 'Show avatars in notes';
	String get showAvatarsInSubNote => 'Show avatars in sub notes';
	String get showLikeButtonInNoteFooter => 'Add "Like" to note action menu';
	String get showNoteFooter => 'Show action buttons in notes';
	String get showNoteReactionsViewer => 'Show reactions viewers in notes';
	String get showSelfRenotes => 'Show self-renotes';
	String get showStackTrace => 'Show stack trace';
	String get showSubNoteFooter => 'Show action buttons in subnotes';
	String get showSubNoteReactionsViewer => 'Show reactions viewers in subnotes';
	String get showTimelineTabBarOnBottom => 'Show timeline tab bar on bottom';
	String get showTranslateButtonInNoteFooter => 'Add "Translate" to note action menu';
	String get stackTrace => 'Stack trace';
	String get tabName => 'Tab name';
	String get tabType => 'Tab type';
	String get tabs => 'Tabs';
	String get tapToShow => 'Tap to show';
	String get timeMachine => 'Time machine';
	String get unfavorited => 'Removed from favorites';
	TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Are you sure you want to unfollow '),
		name,
		const TextSpan(text: '?'),
	]);
	String get uploaded => 'Uploaded';
	String get useThisEmoji => 'Use this emoji';
	TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' said something'),
	]);
	TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Post by '),
		name,
		const TextSpan(text: ' contains sensitive content'),
	]);
	String get vibrateNote => 'Vibrate on new note';
	String get vibrateNotification => 'Vibrate on new notification';
}

// Path: misskey
class _StringsMisskeyEnUs {
	_StringsMisskeyEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lang__ => 'English';
	String get headlineMisskey => 'A network connected by notes';
	String get introMisskey => 'Welcome! Misskey is an open source, decentralized microblogging service.\nCreate "notes" to share your thoughts with everyone around you. 📡\nWith "reactions", you can also quickly express your feelings about everyone\'s notes. 👍\nLet\'s explore a new world! 🚀';
	String poweredByMisskeyDescription({required Object name}) => '${name} is one of the services powered by the open source platform <b>Misskey</b> (referred to as a "Misskey instance").';
	String monthAndDay({required Object month, required Object day}) => '${month}/${day}';
	String get search => 'Search';
	String get notifications => 'Notifications';
	String get username => 'Username';
	String get password => 'Password';
	String get forgotPassword => 'Forgot password';
	String get fetchingAsApObject => 'Fetching from the Fediverse...';
	String get ok => 'OK';
	String get gotIt => 'Got it!';
	String get cancel => 'Cancel';
	String get noThankYou => 'Not now';
	String get enterUsername => 'Enter username';
	String renotedBy({required Object user}) => 'Renoted by ${user}';
	String get noNotes => 'No notes';
	String get noNotifications => 'No notifications';
	String get instance => 'Instance';
	String get settings => 'Settings';
	String get notificationSettings => 'Notification Settings';
	String get basicSettings => 'Basic Settings';
	String get otherSettings => 'Other Settings';
	String get openInWindow => 'Open in window';
	String get profile => 'Profile';
	String get timeline => 'Timeline';
	String get noAccountDescription => 'This user has not written their bio yet.';
	String get login => 'Sign In';
	String get loggingIn => 'Signing In';
	String get logout => 'Sign Out';
	String get signup => 'Sign Up';
	String get uploading => 'Uploading...';
	String get save => 'Save';
	String get users => 'Users';
	String get addUser => 'Add a user';
	String get favorite => 'Add to favorites';
	String get favorites => 'Favorites';
	String get unfavorite => 'Remove from favorites';
	String get favorited => 'Added to favorites.';
	String get alreadyFavorited => 'Already added to favorites.';
	String get cantFavorite => 'Couldn\'t add to favorites.';
	String get pin => 'Pin to profile';
	String get unpin => 'Unpin from profile';
	String get copyContent => 'Copy contents';
	String get copyLink => 'Copy link';
	String get copyLinkRenote => 'Copy renote link';
	String get delete => 'Delete';
	String get deleteAndEdit => 'Delete and edit';
	String get deleteAndEditConfirm => 'Are you sure you want to redraft this note? This means you will lose all reactions, renotes, and replies to it.';
	String get addToList => 'Add to list';
	String get addToAntenna => 'Add to antenna';
	String get sendMessage => 'Send a message';
	String get copyRSS => 'Copy RSS';
	String get copyUsername => 'Copy username';
	String get copyUserId => 'Copy user ID';
	String get copyNoteId => 'Copy note ID';
	String get copyFileId => 'Copy file ID';
	String get copyFolderId => 'Copy folder ID';
	String get copyProfileUrl => 'Copy profile URL';
	String get searchUser => 'Search for a user';
	String get reply => 'Reply';
	String get loadMore => 'Load more';
	String get showMore => 'Show more';
	String get showLess => 'Close';
	String get youGotNewFollower => 'followed you';
	String get receiveFollowRequest => 'Follow request received';
	String get followRequestAccepted => 'Follow request accepted';
	String get mention => 'Mention';
	String get mentions => 'Mentions';
	String get directNotes => 'Direct notes';
	String get importAndExport => 'Import / Export';
	String get import => 'Import';
	String get export => 'Export';
	String get files => 'Files';
	String get download => 'Download';
	String driveFileDeleteConfirm({required Object name}) => 'Do you want to remove the file "${name}"? Some content using this file will also be removed.';
	String unfollowConfirm({required Object name}) => 'Are you sure you want to unfollow ${name}?';
	String get exportRequested => 'You\'ve requested an export. This may take a while. It will be added to your Drive once completed.';
	String get importRequested => 'You\'ve requested an import. This may take a while.';
	String get lists => 'Lists';
	String get noLists => 'You don\'t have any lists';
	String get note => 'Note';
	String get notes => 'Notes';
	String get following => 'Following';
	String get followers => 'Followers';
	String get followsYou => 'Follows you';
	String get createList => 'Create list';
	String get manageLists => 'Manage lists';
	String get error => 'Error';
	String get somethingHappened => 'An error has occurred';
	String get retry => 'Retry';
	String get pageLoadError => 'An error occurred while loading the page.';
	String get pageLoadErrorDescription => 'This is normally caused by network errors or the browser\'s cache. Try clearing the cache and then try again after waiting a little while.';
	String get serverIsDead => 'This server is not responding. Please wait for a while and try again.';
	String get youShouldUpgradeClient => 'To view this page, please refresh to update your client.';
	String get enterListName => 'Enter a name for the list';
	String get privacy => 'Privacy';
	String get makeFollowManuallyApprove => 'Follow requests require approval';
	String get defaultNoteVisibility => 'Default visibility';
	String get follow => 'Follow';
	String get followRequest => 'Send follow request';
	String get followRequests => 'Follow requests';
	String get unfollow => 'Unfollow';
	String get followRequestPending => 'Follow request pending';
	String get enterEmoji => 'Enter an emoji';
	String get renote => 'Renote';
	String get unrenote => 'Remove renote';
	String get renoted => 'Renoted.';
	String get cantRenote => 'This post can\'t be renoted.';
	String get cantReRenote => 'A renote can\'t be renoted.';
	String get quote => 'Quote';
	String get inChannelRenote => 'Channel-only Renote';
	String get inChannelQuote => 'Channel-only Quote';
	String get pinnedNote => 'Pinned note';
	String get pinned => 'Pin to profile';
	String get you => 'You';
	String get clickToShow => 'Click to show';
	String get sensitive => 'Sensitive';
	String get add => 'Add';
	String get reaction => 'Reactions';
	String get reactions => 'Reactions';
	String get emojiPicker => 'Emoji picker';
	String get pinnedEmojisForReactionSettingDescription => 'Set the emojis which should be pinned and displayed immediately when reacting.';
	String get pinnedEmojisSettingDescription => 'Set the emojis to be pinned and displayed when viewing emoji picker';
	String get emojiPickerDisplay => 'Emoji picker display';
	String get overwriteFromPinnedEmojisForReaction => 'Override from reaction settings';
	String get overwriteFromPinnedEmojis => 'Override from general settings';
	String get reactionSettingDescription2 => 'Drag to reorder, click to delete, press "+" to add.';
	String get rememberNoteVisibility => 'Remember note visibility settings';
	String get attachCancel => 'Remove attachment';
	String get deleteFile => 'File deleted';
	String get markAsSensitive => 'Mark as sensitive';
	String get unmarkAsSensitive => 'Unmark as sensitive';
	String get enterFileName => 'Enter filename';
	String get mute => 'Mute';
	String get unmute => 'Unmute';
	String get renoteMute => 'Mute Renotes';
	String get renoteUnmute => 'Unmute Renotes';
	String get block => 'Block';
	String get unblock => 'Unblock';
	String get suspend => 'Suspend';
	String get unsuspend => 'Unsuspend';
	String get blockConfirm => 'Are you sure that you want to block this account?';
	String get unblockConfirm => 'Are you sure that you want to unblock this account?';
	String get suspendConfirm => 'Are you sure that you want to suspend this account?';
	String get unsuspendConfirm => 'Are you sure that you want to unsuspend this account?';
	String get selectList => 'Select a list';
	String get editList => 'Edit list';
	String get selectChannel => 'Select a channel';
	String get selectAntenna => 'Select an antenna';
	String get editAntenna => 'Edit antenna';
	String get selectWidget => 'Select a widget';
	String get editWidgets => 'Edit widgets';
	String get editWidgetsExit => 'Done';
	String get customEmojis => 'Custom Emoji';
	String get emoji => 'Emoji';
	String get emojis => 'Emoji';
	String get emojiName => 'Emoji name';
	String get emojiUrl => 'Emoji URL';
	String get addEmoji => 'Add an emoji';
	String get settingGuide => 'Recommended settings';
	String get cacheRemoteFiles => 'Cache remote files';
	String get cacheRemoteFilesDescription => 'When this setting is disabled, remote files are loaded directly from the remote instance. Disabling this will decrease storage usage, but increase traffic, as thumbnails will not be generated.';
	String get youCanCleanRemoteFilesCache => 'You can clear the cache by clicking the 🗑️ button in the file management view.';
	String get cacheRemoteSensitiveFiles => 'Cache sensitive remote files';
	String get cacheRemoteSensitiveFilesDescription => 'When this setting is disabled, sensitive remote files are loaded directly from the remote instance without caching.';
	String get flagAsBot => 'Mark this account as a bot';
	String get flagAsBotDescription => 'Enable this option if this account is controlled by a program. If enabled, it will act as a flag for other developers to prevent endless interaction chains with other bots and adjust Misskey\'s internal systems to treat this account as a bot.';
	String get flagAsCat => 'Mark this account as a cat';
	String get flagAsCatDescription => 'Enable this option to mark this account as a cat.';
	String get flagShowTimelineReplies => 'Show replies in timeline';
	String get flagShowTimelineRepliesDescription => 'Shows replies of users to notes of other users in the timeline if turned on.';
	String get autoAcceptFollowed => 'Automatically approve follow requests from users you\'re following';
	String get addAccount => 'Add account';
	String get reloadAccountsList => 'Reload account list';
	String get loginFailed => 'Failed to sign in';
	String get showOnRemote => 'View on remote instance';
	String get general => 'General';
	String get wallpaper => 'Wallpaper';
	String get setWallpaper => 'Set wallpaper';
	String get removeWallpaper => 'Remove wallpaper';
	String searchWith({required Object q}) => 'Search: ${q}';
	String get youHaveNoLists => 'You don\'t have any lists';
	String followConfirm({required Object name}) => 'Are you sure that you want to follow ${name}?';
	String get proxyAccount => 'Proxy account';
	String get proxyAccountDescription => 'A proxy account is an account that acts as a remote follower for users under certain conditions. For example, when a user adds a remote user to the list, the remote user\'s activity will not be delivered to the instance if no local user is following that user, so the proxy account will follow instead.';
	String get host => 'Host';
	String get selectUser => 'Select a user';
	String get recipient => 'Recipient';
	String get annotation => 'Comments';
	String get federation => 'Federation';
	String get instances => 'Instances';
	String get registeredAt => 'Registered at';
	String get latestRequestReceivedAt => 'Last request received';
	String get latestStatus => 'Latest status';
	String get storageUsage => 'Storage usage';
	String get charts => 'Charts';
	String get perHour => 'Per Hour';
	String get perDay => 'Per Day';
	String get stopActivityDelivery => 'Stop sending activities';
	String get blockThisInstance => 'Block this instance';
	String get silenceThisInstance => 'Silence this instance';
	String get operations => 'Operations';
	String get software => 'Software';
	String get version => 'Version';
	String get metadata => 'Metadata';
	String withNFiles({required Object n}) => '${n} file(s)';
	String get monitor => 'Monitor';
	String get jobQueue => 'Job Queue';
	String get cpuAndMemory => 'CPU and Memory';
	String get network => 'Network';
	String get disk => 'Disk';
	String get instanceInfo => 'Instance Information';
	String get statistics => 'Statistics';
	String get clearQueue => 'Clear queue';
	String get clearQueueConfirmTitle => 'Are you sure that you want to clear the queue?';
	String get clearQueueConfirmText => 'Any undelivered notes remaining in the queue will not be federated. Usually this operation is not needed.';
	String get clearCachedFiles => 'Clear cache';
	String get clearCachedFilesConfirm => 'Are you sure that you want to delete all cached remote files?';
	String get blockedInstances => 'Blocked Instances';
	String get blockedInstancesDescription => 'List the hostnames of the instances you want to block separated by linebreaks. Listed instances will no longer be able to communicate with this instance.';
	String get silencedInstances => 'Silenced instances';
	String get silencedInstancesDescription => 'List the hostnames of the instances that you want to silence. All accounts of the listed instances will be treated as silenced, can only make follow requests, and cannot mention local accounts if not followed. This will not affect blocked instances.';
	String get muteAndBlock => 'Mutes and Blocks';
	String get mutedUsers => 'Muted users';
	String get blockedUsers => 'Blocked users';
	String get noUsers => 'There are no users';
	String get editProfile => 'Edit profile';
	String get noteDeleteConfirm => 'Are you sure you want to delete this note?';
	String get pinLimitExceeded => 'You cannot pin any more notes';
	String get intro => 'Installation of Misskey has been finished! Please create an admin user.';
	String get done => 'Done';
	String get processing => 'Processing...';
	String get preview => 'Preview';
	String get default_ => 'Default';
	String defaultValueIs({required Object value}) => 'Default: ${value}';
	String get noCustomEmojis => 'There are no emoji';
	String get noJobs => 'There are no jobs';
	String get federating => 'Federating';
	String get blocked => 'Blocked';
	String get suspended => 'Suspended';
	String get all => 'All';
	String get subscribing => 'Subscribing';
	String get publishing => 'Publishing';
	String get notResponding => 'Not responding';
	String get instanceFollowing => 'Following on instance';
	String get instanceFollowers => 'Instance followers';
	String get instanceUsers => 'Users of this instance';
	String get changePassword => 'Change password';
	String get security => 'Security';
	String get retypedNotMatch => 'The inputs do not match.';
	String get currentPassword => 'Current password';
	String get newPassword => 'New password';
	String get newPasswordRetype => 'Retype new password';
	String get attachFile => 'Attach files';
	String get more => 'More!';
	String get featured => 'Featured';
	String get usernameOrUserId => 'Username or user id';
	String get noSuchUser => 'User not found';
	String get lookup => 'Lookup';
	String get announcements => 'Announcements';
	String get imageUrl => 'Image URL';
	String get remove => 'Delete';
	String get removed => 'Successfully deleted';
	String removeAreYouSure({required Object x}) => 'Are you sure that you want to remove "${x}"?';
	String deleteAreYouSure({required Object x}) => 'Are you sure that you want to delete "${x}"?';
	String get resetAreYouSure => 'Really reset?';
	String get areYouSure => 'Are you sure?';
	String get saved => 'Saved';
	String get messaging => 'Chat';
	String get upload => 'Upload';
	String get keepOriginalUploading => 'Keep original image';
	String get keepOriginalUploadingDescription => 'Saves the originally uploaded image as-is. If turned off, a version to display on the web will be generated on upload.';
	String get fromDrive => 'From Drive';
	String get fromUrl => 'From URL';
	String get uploadFromUrl => 'Upload from a URL';
	String get uploadFromUrlDescription => 'URL of the file you want to upload';
	String get uploadFromUrlRequested => 'Upload requested';
	String get uploadFromUrlMayTakeTime => 'It may take some time until the upload is complete.';
	String get explore => 'Explore';
	String get messageRead => 'Read';
	String get noMoreHistory => 'There is no further history';
	String get startMessaging => 'Start a new chat';
	String nUsersRead({required Object n}) => 'read by ${n}';
	String agreeTo({required Object x0}) => 'I agree to ${x0}';
	String get agree => 'Agree';
	String get agreeBelow => 'I agree to the below';
	String get basicNotesBeforeCreateAccount => 'Important notes';
	String get termsOfService => 'Terms of Service';
	String get start => 'Begin';
	String get home => 'Home';
	String get remoteUserCaution => 'As this user is from a remote instance, the shown information may be incomplete.';
	String get activity => 'Activity';
	String get images => 'Images';
	String get image => 'Image';
	String get birthday => 'Birthday';
	String yearsOld({required Object age}) => '${age} years old';
	String get registeredDate => 'Joined on';
	String get location => 'Location';
	String get theme => 'Themes';
	String get themeForLightMode => 'Theme to use in Light Mode';
	String get themeForDarkMode => 'Theme to use in Dark Mode';
	String get light => 'Light';
	String get dark => 'Dark';
	String get lightThemes => 'Light themes';
	String get darkThemes => 'Dark themes';
	String get syncDeviceDarkMode => 'Sync Dark Mode with your device settings';
	String get drive => 'Drive';
	String get fileName => 'Filename';
	String get selectFile => 'Select a file';
	String get selectFiles => 'Select files';
	String get selectFolder => 'Select a folder';
	String get selectFolders => 'Select folders';
	String get renameFile => 'Rename file';
	String get folderName => 'Folder name';
	String get createFolder => 'Create a folder';
	String get renameFolder => 'Rename this folder';
	String get deleteFolder => 'Delete this folder';
	String get folder => 'Folder';
	String get addFile => 'Add a file';
	String get emptyDrive => 'Your Drive is empty';
	String get emptyFolder => 'This folder is empty';
	String get unableToDelete => 'Unable to delete';
	String get inputNewFileName => 'Enter a new filename';
	String get inputNewDescription => 'Enter new caption';
	String get inputNewFolderName => 'Enter a new folder name';
	String get circularReferenceFolder => 'The destination folder is a subfolder of the folder you wish to move.';
	String get hasChildFilesOrFolders => 'Since this folder is not empty, it can not be deleted.';
	String get copyUrl => 'Copy URL';
	String get rename => 'Rename';
	String get avatar => 'Avatar';
	String get banner => 'Banner';
	String get displayOfSensitiveMedia => 'Display of sensitive media';
	String get whenServerDisconnected => 'When losing connection to the server';
	String get disconnectedFromServer => 'Connection to server has been lost';
	String get reload => 'Refresh';
	String get doNothing => 'Ignore';
	String get reloadConfirm => 'Would you like to refresh the timeline?';
	String get watch => 'Watch';
	String get unwatch => 'Stop watching';
	String get accept => 'Accept';
	String get reject => 'Reject';
	String get normal => 'Normal';
	String get instanceName => 'Instance name';
	String get instanceDescription => 'Instance description';
	String get maintainerName => 'Maintainer';
	String get maintainerEmail => 'Maintainer email';
	String get tosUrl => 'Terms of Service URL';
	String get thisYear => 'Year';
	String get thisMonth => 'Month';
	String get today => 'Today';
	String dayX({required Object day}) => '${day}';
	String monthX({required Object month}) => '${month}';
	String yearX({required Object year}) => '${year}';
	String get pages => 'Pages';
	String get integration => 'Integration';
	String get connectService => 'Connect';
	String get disconnectService => 'Disconnect';
	String get enableLocalTimeline => 'Enable local timeline';
	String get enableGlobalTimeline => 'Enable global timeline';
	String get disablingTimelinesInfo => 'Adminstrators and Moderators will always have access to all timelines, even if they are not enabled.';
	String get registration => 'Register';
	String get enableRegistration => 'Enable new user registration';
	String get invite => 'Invite';
	String get driveCapacityPerLocalAccount => 'Drive capacity per local user';
	String get driveCapacityPerRemoteAccount => 'Drive capacity per remote user';
	String get inMb => 'In megabytes';
	String get bannerUrl => 'Banner image URL';
	String get backgroundImageUrl => 'Background image URL';
	String get basicInfo => 'Basic info';
	String get pinnedUsers => 'Pinned users';
	String get pinnedUsersDescription => 'List usernames separated by line breaks to be pinned in the "Explore" tab.';
	String get pinnedPages => 'Pinned Pages';
	String get pinnedPagesDescription => 'Enter the paths of the Pages you want to pin to the top page of this instance, separated by line breaks.';
	String get pinnedClipId => 'ID of the clip to pin';
	String get pinnedNotes => 'Pinned notes';
	String get hcaptcha => 'hCaptcha';
	String get enableHcaptcha => 'Enable hCaptcha';
	String get hcaptchaSiteKey => 'Site key';
	String get hcaptchaSecretKey => 'Secret key';
	String get mcaptcha => 'mCaptcha';
	String get enableMcaptcha => 'Enable mCaptcha';
	String get mcaptchaSiteKey => 'Site key';
	String get mcaptchaSecretKey => 'Secret key';
	String get mcaptchaInstanceUrl => 'mCaptcha instance URL';
	String get recaptcha => 'reCAPTCHA';
	String get enableRecaptcha => 'Enable reCAPTCHA';
	String get recaptchaSiteKey => 'Site key';
	String get recaptchaSecretKey => 'Secret key';
	String get turnstile => 'Turnstile';
	String get enableTurnstile => 'Enable Turnstile';
	String get turnstileSiteKey => 'Site key';
	String get turnstileSecretKey => 'Secret key';
	String get avoidMultiCaptchaConfirm => 'Using multiple Captcha systems may cause interference between them. Would you like to disable the other Captcha systems currently active? If you would like them to stay enabled, press cancel.';
	String get antennas => 'Antennas';
	String get manageAntennas => 'Manage Antennas';
	String get name => 'Name';
	String get antennaSource => 'Antenna source';
	String get antennaKeywords => 'Keywords to listen to';
	String get antennaExcludeKeywords => 'Keywords to exclude';
	String get antennaKeywordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
	String get notifyAntenna => 'Notify about new notes';
	String get withFileAntenna => 'Only notes with files';
	String get enableServiceworker => 'Enable Push-Notifications for your Browser';
	String get antennaUsersDescription => 'List one username per line';
	String get caseSensitive => 'Case sensitive';
	String get withReplies => 'Include replies';
	String get connectedTo => 'Following account(s) are connected';
	String get notesAndReplies => 'Notes and replies';
	String get withFiles => 'Including files';
	String get silence => 'Silence';
	String get silenceConfirm => 'Are you sure that you want to silence this user?';
	String get unsilence => 'Undo silencing';
	String get unsilenceConfirm => 'Are you sure that you want to undo the silencing of this user?';
	String get popularUsers => 'Popular users';
	String get recentlyUpdatedUsers => 'Recently active users';
	String get recentlyRegisteredUsers => 'Newly joined users';
	String get recentlyDiscoveredUsers => 'Newly discovered users';
	String exploreUsersCount({required Object count}) => 'There are ${count} users';
	String get exploreFediverse => 'Explore the Fediverse';
	String get popularTags => 'Popular tags';
	String get userList => 'Lists';
	String get about => 'About';
	String get aboutMisskey => 'About Misskey';
	String get administrator => 'Administrator';
	String get token => 'Token';
	String get x2fa => 'Two-factor authentication';
	String get setupOf2fa => 'Setup two-factor authentification';
	String get totp => 'Authenticator App';
	String get totpDescription => 'Use an authenticator app to enter one-time passwords';
	String get moderator => 'Moderator';
	String get moderation => 'Moderation';
	String get moderationNote => 'Moderation note';
	String get addModerationNote => 'Add moderation note';
	String get moderationLogs => 'Moderation logs';
	String nUsersMentioned({required Object n}) => 'Mentioned by ${n} users';
	String get securityKeyAndPasskey => 'Security- and passkeys';
	String get securityKey => 'Security key';
	String get lastUsed => 'Last used';
	String lastUsedAt({required Object t}) => 'Last used: ${t}';
	String get unregister => 'Unregister';
	String get passwordLessLogin => 'Password-less login';
	String get passwordLessLoginDescription => 'Allows password-less login using a security- or passkey only';
	String get resetPassword => 'Reset password';
	String newPasswordIs({required Object password}) => 'The new password is "${password}"';
	String get reduceUiAnimation => 'Reduce UI animations';
	String get share => 'Share';
	String get notFound => 'Not found';
	String get notFoundDescription => 'No page corresponding to this URL could be found.';
	String get uploadFolder => 'Default folder for uploads';
	String get markAsReadAllNotifications => 'Mark all notifications as read';
	String get markAsReadAllUnreadNotes => 'Mark all notes as read';
	String get markAsReadAllTalkMessages => 'Mark all messages as read';
	String get help => 'Help';
	String get inputMessageHere => 'Enter message here';
	String get close => 'Close';
	String get invites => 'Invites';
	String get members => 'Members';
	String get transfer => 'Transfer';
	String get title => 'Title';
	String get text => 'Text';
	String get enable => 'Enable';
	String get next => 'Next';
	String get retype => 'Enter again';
	String noteOf({required Object user}) => 'Note by ${user}';
	String get quoteAttached => 'Quote';
	String get quoteQuestion => 'Append as quote?';
	String get noMessagesYet => 'No messages yet';
	String get newMessageExists => 'There are new messages';
	String get onlyOneFileCanBeAttached => 'You can only attach one file to a message';
	String get signinRequired => 'Please register or sign in before continuing';
	String get invitations => 'Invites';
	String get invitationCode => 'Invitation code';
	String get checking => 'Checking...';
	String get available => 'Available';
	String get unavailable => 'Not available';
	String get usernameInvalidFormat => 'You can use upper- and lowercase letters, numbers, and underscores.';
	String get tooShort => 'Too short';
	String get tooLong => 'Too long';
	String get weakPassword => 'Weak password';
	String get normalPassword => 'Average password';
	String get strongPassword => 'Strong password';
	String get passwordMatched => 'Matches';
	String get passwordNotMatched => 'Does not match';
	String signinWith({required Object x}) => 'Sign in with ${x}';
	String get signinFailed => 'Unable to sign in. The entered username or password is incorrect.';
	String get or => 'Or';
	String get language => 'Language';
	String get uiLanguage => 'User interface language';
	String aboutX({required Object x}) => 'About ${x}';
	String get emojiStyle => 'Emoji style';
	String get native => 'Native';
	String get disableDrawer => 'Don\'t use drawer-style menus';
	String get showNoteActionsOnlyHover => 'Only show note actions on hover';
	String get noHistory => 'No history available';
	String get signinHistory => 'Login history';
	String get enableAdvancedMfm => 'Enable advanced MFM';
	String get enableAnimatedMfm => 'Enable animated MFM';
	String get doing => 'Processing...';
	String get category => 'Category';
	String get tags => 'Aliases';
	String get docSource => 'Source of this document';
	String get createAccount => 'Create account';
	String get existingAccount => 'Existing account';
	String get regenerate => 'Regenerate';
	String get fontSize => 'Font size';
	String get mediaListWithOneImageAppearance => 'Height of media lists with one image only';
	String limitTo({required Object x}) => 'Limit to ${x}';
	String get noFollowRequests => 'You don\'t have any pending follow requests';
	String get openImageInNewTab => 'Open images in new tab';
	String get dashboard => 'Dashboard';
	String get local => 'Local';
	String get remote => 'Remote';
	String get total => 'Total';
	String get weekOverWeekChanges => 'Changes to last week';
	String get dayOverDayChanges => 'Changes to yesterday';
	String get appearance => 'Appearance';
	String get clientSettings => 'Client Settings';
	String get accountSettings => 'Account Settings';
	String get promotion => 'Promoted';
	String get promote => 'Promote';
	String get numberOfDays => 'Number of days';
	String get hideThisNote => 'Hide this note';
	String get showFeaturedNotesInTimeline => 'Show featured notes in timelines';
	String get objectStorage => 'Object Storage';
	String get useObjectStorage => 'Use object storage';
	String get objectStorageBaseUrl => 'Base URL';
	String get objectStorageBaseUrlDesc => 'The URL used as reference. Specify the URL of your CDN or Proxy if you are using either.\nFor S3 use \'https://<bucket>.s3.amazonaws.com\' and for GCS or equivalent services use \'https://storage.googleapis.com/<bucket>\', etc.';
	String get objectStorageBucket => 'Bucket';
	String get objectStorageBucketDesc => 'Please specify the bucket name used at your provider.';
	String get objectStoragePrefix => 'Prefix';
	String get objectStoragePrefixDesc => 'Files will be stored under directories with this prefix.';
	String get objectStorageEndpoint => 'Endpoint';
	String get objectStorageEndpointDesc => 'Leave this empty if you are using AWS S3, otherwise specify the endpoint as \'<host>\' or \'<host>:<port>\', depending on the service you are using.';
	String get objectStorageRegion => 'Region';
	String get objectStorageRegionDesc => 'Specify a region like \'xx-east-1\'. If your service does not distinguish between regions, enter \'us-east-1\'. Leave empty if using AWS configuration files or environment variables.';
	String get objectStorageUseSSL => 'Use SSL';
	String get objectStorageUseSSLDesc => 'Turn this off if you are not going to use HTTPS for API connections';
	String get objectStorageUseProxy => 'Connect over Proxy';
	String get objectStorageUseProxyDesc => 'Turn this off if you are not going to use a Proxy for API connections';
	String get objectStorageSetPublicRead => 'Set "public-read" on upload';
	String get s3ForcePathStyleDesc => 'If s3ForcePathStyle is enabled, the bucket name has to included in the path of the URL as opposed to the hostname of the URL. You may need to enable this setting when using services such as a self-hosted Minio instance.';
	String get serverLogs => 'Server logs';
	String get deleteAll => 'Delete all';
	String get showFixedPostForm => 'Display the posting form at the top of the timeline';
	String get showFixedPostFormInChannel => 'Display the posting form at the top of the timeline (Channels)';
	String get withRepliesByDefaultForNewlyFollowed => 'Include replies by newly followed users in the timeline by default';
	String get newNoteRecived => 'There are new notes';
	String get sounds => 'Sounds';
	String get sound => 'Sounds';
	String get listen => 'Listen';
	String get none => 'None';
	String get showInPage => 'Show in page';
	String get popout => 'Pop-out';
	String get volume => 'Volume';
	String get masterVolume => 'Master volume';
	String get notUseSound => 'Disable sound';
	String get useSoundOnlyWhenActive => 'Output sounds only if Misskey is active.';
	String get details => 'Details';
	String get chooseEmoji => 'Select an emoji';
	String get unableToProcess => 'The operation could not be completed';
	String get recentUsed => 'Recently used';
	String get install => 'Install';
	String get uninstall => 'Uninstall';
	String get installedApps => 'Authorized Applications';
	String get nothing => 'There\'s nothing to see here';
	String get installedDate => 'Authorized at';
	String get lastUsedDate => 'Last used at';
	String get state => 'State';
	String get sort => 'Sorting order';
	String get ascendingOrder => 'Ascending';
	String get descendingOrder => 'Descending';
	String get scratchpad => 'Scratchpad';
	String get scratchpadDescription => 'The Scratchpad provides an environment for AiScript experiments. You can write, execute, and check the results of it interacting with Misskey in it.';
	String get output => 'Output';
	String get script => 'Script';
	String get disablePagesScript => 'Disable AiScript on Pages';
	String get updateRemoteUser => 'Update remote user information';
	String get unsetUserAvatar => 'Unset avatar';
	String get unsetUserAvatarConfirm => 'Are you sure you want to unset the avatar?';
	String get unsetUserBanner => 'Unset banner';
	String get unsetUserBannerConfirm => 'Are you sure you want to unset the banner?';
	String get deleteAllFiles => 'Delete all files';
	String get deleteAllFilesConfirm => 'Are you sure that you want to delete all files?';
	String get removeAllFollowing => 'Unfollow all followed users';
	String removeAllFollowingDescription({required Object host}) => 'Executing this unfollows all accounts from ${host}. Please run this if the instance e.g. no longer exists.';
	String get userSuspended => 'This user has been suspended.';
	String get userSilenced => 'This user is being silenced.';
	String get yourAccountSuspendedTitle => 'This account is suspended';
	String get yourAccountSuspendedDescription => 'This account has been suspended due to breaking the server\'s terms of services or similar. Contact the administrator if you would like to know a more detailed reason. Please do not create a new account.';
	String get tokenRevoked => 'Invalid token';
	String get tokenRevokedDescription => 'This token has expired. Please log in again.';
	String get accountDeleted => 'Account deleted';
	String get accountDeletedDescription => 'This account has been deleted.';
	String get menu => 'Menu';
	String get divider => 'Divider';
	String get addItem => 'Add Item';
	String get rearrange => 'Rearrange';
	String get relays => 'Relays';
	String get addRelay => 'Add Relay';
	String get inboxUrl => 'Inbox URL';
	String get addedRelays => 'Added Relays';
	String get serviceworkerInfo => 'Must be enabled for push notifications.';
	String get deletedNote => 'Deleted note';
	String get invisibleNote => 'Invisible note';
	String get enableInfiniteScroll => 'Automatically load more';
	String get visibility => 'Visibility';
	String get poll => 'Poll';
	String get useCw => 'Hide content';
	String get enablePlayer => 'Open video player';
	String get disablePlayer => 'Close video player';
	String get expandTweet => 'Expand post';
	String get themeEditor => 'Theme editor';
	String get description => 'Description';
	String get describeFile => 'Add caption';
	String get enterFileDescription => 'Enter caption';
	String get author => 'Author';
	String get leaveConfirm => 'There are unsaved changes. Do you want to discard them?';
	String get manage => 'Management';
	String get plugins => 'Plugins';
	String get preferencesBackups => 'Preference backups';
	String get deck => 'Deck';
	String get undeck => 'Leave Deck';
	String get useBlurEffectForModal => 'Use blur effect for modals';
	String get useFullReactionPicker => 'Use full-size reaction picker';
	String get width => 'Width';
	String get height => 'Height';
	String get large => 'Big';
	String get medium => 'Medium';
	String get small => 'Small';
	String get generateAccessToken => 'Generate access token';
	String get permission => 'Permissions';
	String get adminPermission => 'Admin Permissions';
	String get enableAll => 'Enable all';
	String get disableAll => 'Disable all';
	String get tokenRequested => 'Grant access to account';
	String get pluginTokenRequestedDescription => 'This plugin will be able to use the permissions set here.';
	String get notificationType => 'Notification type';
	String get edit => 'Edit';
	String get emailServer => 'Email server';
	String get enableEmail => 'Enable email distribution';
	String get emailConfigInfo => 'Used to confirm your email during sign-up or if you forget your password';
	String get email => 'Email';
	String get emailAddress => 'Email address';
	String get smtpConfig => 'SMTP Server Configuration';
	String get smtpHost => 'Host';
	String get smtpPort => 'Port';
	String get smtpUser => 'Username';
	String get smtpPass => 'Password';
	String get emptyToDisableSmtpAuth => 'Leave username and password empty to disable SMTP authentication';
	String get smtpSecure => 'Use implicit SSL/TLS for SMTP connections';
	String get smtpSecureInfo => 'Turn this off when using STARTTLS';
	String get testEmail => 'Test email delivery';
	String get wordMute => 'Word mute';
	String get hardWordMute => 'Hard word mute';
	String get regexpError => 'Regular Expression error';
	String regexpErrorDescription({required Object line, required Object tab}) => 'An error occurred in the regular expression on line ${line} of your ${tab} word mutes:';
	String get instanceMute => 'Instance Mutes';
	String userSaysSomething({required Object name}) => '${name} said something';
	String get makeActive => 'Activate';
	String get display => 'Display';
	String get copy => 'Copy';
	String get metrics => 'Metrics';
	String get overview => 'Overview';
	String get logs => 'Logs';
	String get delayed => 'Delayed';
	String get database => 'Database';
	String get channel => 'Channels';
	String get create => 'Create';
	String get notificationSetting => 'Notification settings';
	String get notificationSettingDesc => 'Select the types of notification to display.';
	String get useGlobalSetting => 'Use global settings';
	String get useGlobalSettingDesc => 'If turned on, your account\'s notification settings will be used. If turned off, individual configurations can be made.';
	String get other => 'Other';
	String get regenerateLoginToken => 'Regenerate login token';
	String get regenerateLoginTokenDescription => 'Regenerates the token used internally during login. Normally this action is not necessary. If regenerated, all devices will be logged out.';
	String get theKeywordWhenSearchingForCustomEmoji => 'This is the keyword when searching for custom emojis.';
	String get setMultipleBySeparatingWithSpace => 'Separate multiple entries with spaces.';
	String get fileIdOrUrl => 'File ID or URL';
	String get behavior => 'Behavior';
	String get sample => 'Sample';
	String get abuseReports => 'Reports';
	String get reportAbuse => 'Report';
	String get reportAbuseRenote => 'Report renote';
	String reportAbuseOf({required Object name}) => 'Report ${name}';
	String get fillAbuseReportDescription => 'Please fill in details regarding this report. If it is about a specific note, please include its URL.';
	String get abuseReported => 'Your report has been sent. Thank you very much.';
	String get reporter => 'Reporter';
	String get reporteeOrigin => 'Reportee Origin';
	String get reporterOrigin => 'Reporter Origin';
	String get forwardReport => 'Forward report to remote instance';
	String get forwardReportIsAnonymous => 'Instead of your account, an anonymous system account will be displayed as reporter at the remote instance.';
	String get send => 'Send';
	String get abuseMarkAsResolved => 'Mark report as resolved';
	String get openInNewTab => 'Open in new tab';
	String get openInSideView => 'Open in side view';
	String get defaultNavigationBehaviour => 'Default navigation behavior';
	String get editTheseSettingsMayBreakAccount => 'Editing these settings may damage your account.';
	String get instanceTicker => 'Instance information of notes';
	String waitingFor({required Object x}) => 'Waiting for ${x}';
	String get random => 'Random';
	String get system => 'System';
	String get switchUi => 'Switch UI';
	String get desktop => 'Desktop';
	String get clip => 'Clip';
	String get createNew => 'Create new';
	String get optional => 'Optional';
	String get createNewClip => 'Create new clip';
	String get unclip => 'Unclip';
	String confirmToUnclipAlreadyClippedNote({required Object name}) => 'This note is already part of the "${name}" clip. Do you want to remove it from this clip instead?';
	String get public => 'Public';
	String get private => 'Private';
	String i18nInfo({required Object link}) => 'Misskey is being translated into various languages by volunteers. You can help at ${link}.';
	String get manageAccessTokens => 'Manage access tokens';
	String get accountInfo => 'Account Info';
	String get notesCount => 'Number of notes';
	String get repliesCount => 'Number of replies sent';
	String get renotesCount => 'Number of renotes sent';
	String get repliedCount => 'Number of replies received';
	String get renotedCount => 'Number of renotes received';
	String get followingCount => 'Number of followed accounts';
	String get followersCount => 'Number of followers';
	String get sentReactionsCount => 'Number of sent reactions';
	String get receivedReactionsCount => 'Number of received reactions';
	String get pollVotesCount => 'Number of sent poll votes';
	String get pollVotedCount => 'Number of received poll votes';
	String get yes => 'Yes';
	String get no => 'No';
	String get driveFilesCount => 'Number of Drive files';
	String get driveUsage => 'Drive space usage';
	String get noCrawle => 'Reject crawler indexing';
	String get noCrawleDescription => 'Ask search engines to not index your profile page, notes, Pages, etc.';
	String get lockedAccountInfo => 'Unless you set your note visiblity to "Followers only", your notes will be visible to anyone, even if you require followers to be manually approved.';
	String get alwaysMarkSensitive => 'Mark as sensitive by default';
	String get loadRawImages => 'Load original images instead of showing thumbnails';
	String get disableShowingAnimatedImages => 'Don\'t play animated images';
	String get highlightSensitiveMedia => 'Highlight sensitive media';
	String get verificationEmailSent => 'A verification email has been sent. Please follow the included link to complete verification.';
	String get notSet => 'Not set';
	String get emailVerified => 'Email has been verified';
	String get noteFavoritesCount => 'Number of favorite notes';
	String get pageLikesCount => 'Number of liked Pages';
	String get pageLikedCount => 'Number of received Page likes';
	String get contact => 'Contact';
	String get useSystemFont => 'Use the system\'s default font';
	String get clips => 'Clips';
	String get experimentalFeatures => 'Experimental features';
	String get experimental => 'Experimental';
	String get thisIsExperimentalFeature => 'This is an experimental feature. Its functionality is subject to change, and it may not operate as intended.';
	String get developer => 'Developer';
	String get makeExplorable => 'Make account visible in "Explore"';
	String get makeExplorableDescription => 'If you turn this off, your account will not show up in the "Explore" section.';
	String get showGapBetweenNotesInTimeline => 'Show a gap between posts on the timeline';
	String get duplicate => 'Duplicate';
	String get left => 'Left';
	String get center => 'Center';
	String get wide => 'Wide';
	String get narrow => 'Narrow';
	String get reloadToApplySetting => 'This setting will only apply after a page reload. Reload now?';
	String get needReloadToApply => 'A reload is required for this to be reflected.';
	String get showTitlebar => 'Show title bar';
	String get clearCache => 'Clear cache';
	String onlineUsersCount({required Object n}) => '${n} users are online';
	String nUsers({required Object n}) => '${n} Users';
	String nNotes({required Object n}) => '${n} Notes';
	String get sendErrorReports => 'Send error reports';
	String get sendErrorReportsDescription => 'When turned on, detailed error information will be shared with Misskey when a problem occurs, helping to improve the quality of Misskey.\nThis will include information such the version of your OS, what browser you\'re using, your activity in Misskey, etc.';
	String get myTheme => 'My theme';
	String get backgroundColor => 'Background color';
	String get accentColor => 'Accent color';
	String get textColor => 'Text color';
	String get saveAs => 'Save as...';
	String get advanced => 'Advanced';
	String get advancedSettings => 'Advanced settings';
	String get value => 'Value';
	String get createdAt => 'Created at';
	String get updatedAt => 'Updated at';
	String get saveConfirm => 'Save changes?';
	String get deleteConfirm => 'Really delete?';
	String get invalidValue => 'Invalid value.';
	String get registry => 'Registry';
	String get closeAccount => 'Close account';
	String get currentVersion => 'Current version';
	String get latestVersion => 'Newest version';
	String get youAreRunningUpToDateClient => 'You are using the newest version of your client.';
	String get newVersionOfClientAvailable => 'There is a newer version of your client available.';
	String get usageAmount => 'Usage';
	String get capacity => 'Capacity';
	String get inUse => 'Used';
	String get editCode => 'Edit code';
	String get apply => 'Apply';
	String get receiveAnnouncementFromInstance => 'Receive notifications from this instance';
	String get emailNotification => 'Email notifications';
	String get publish => 'Publish';
	String get inChannelSearch => 'Search in channel';
	String get useReactionPickerForContextMenu => 'Open reaction picker on right-click';
	String typingUsers({required Object users}) => '${users} is/are typing...';
	String get jumpToSpecifiedDate => 'Jump to specific date';
	String get showingPastTimeline => 'Currently displaying an old timeline';
	String get clear => 'Return';
	String get markAllAsRead => 'Mark all as read';
	String get goBack => 'Back';
	String get unlikeConfirm => 'Really remove your like?';
	String get fullView => 'Full view';
	String get quitFullView => 'Exit full view';
	String get addDescription => 'Add description';
	String get userPagePinTip => 'You can display notes here by selecting "Pin to profile" from the menu of individual notes.';
	String get notSpecifiedMentionWarning => 'This note contains mentions of users not included as recipients';
	String get info => 'About';
	String get userInfo => 'User information';
	String get unknown => 'Unknown';
	String get onlineStatus => 'Online status';
	String get hideOnlineStatus => 'Hide online status';
	String get hideOnlineStatusDescription => 'Hiding your online status reduces the convenience of some features such as the search.';
	String get online => 'Online';
	String get active => 'Active';
	String get offline => 'Offline';
	String get notRecommended => 'Not recommended';
	String get botProtection => 'Bot Protection';
	String get instanceBlocking => 'Blocked/Silenced Instances';
	String get selectAccount => 'Select account';
	String get switchAccount => 'Switch account';
	String get enabled => 'Enabled';
	String get disabled => 'Disabled';
	String get quickAction => 'Quick actions';
	String get user => 'User';
	String get administration => 'Management';
	String get accounts => 'Accounts';
	String get switch_ => 'Switch';
	String get noMaintainerInformationWarning => 'Maintainer information is not configured.';
	String get noBotProtectionWarning => 'Bot protection is not configured.';
	String get configure => 'Configure';
	String get postToGallery => 'Create new gallery post';
	String get postToHashtag => 'Post to this hashtag';
	String get gallery => 'Gallery';
	String get recentPosts => 'Recent posts';
	String get popularPosts => 'Popular posts';
	String get shareWithNote => 'Share with note';
	String get ads => 'Advertisements';
	String get expiration => 'Deadline';
	String get startingperiod => 'Start';
	String get memo => 'Memo';
	String get priority => 'Priority';
	String get high => 'High';
	String get middle => 'Medium';
	String get low => 'Low';
	String get emailNotConfiguredWarning => 'Email address not set.';
	String get ratio => 'Ratio';
	String get previewNoteText => 'Show preview';
	String get customCss => 'Custom CSS';
	String get customCssWarn => 'This setting should only be used if you know what it does. Entering improper values may cause the client to stop functioning normally.';
	String get global => 'Global';
	String get squareAvatars => 'Display squared avatars';
	String get sent => 'Sent';
	String get received => 'Received';
	String get searchResult => 'Search results';
	String get hashtags => 'Hashtags';
	String get troubleshooting => 'Troubleshooting';
	String get useBlurEffect => 'Use blur effects in the UI';
	String get learnMore => 'Learn more';
	String get misskeyUpdated => 'Misskey has been updated!';
	String get whatIsNew => 'Show changes';
	String get translate => 'Translate';
	String translatedFrom({required Object x}) => 'Translated from ${x}';
	String get accountDeletionInProgress => 'Account deletion is currently in progress';
	String get usernameInfo => 'A name that identifies your account from others on this server.  You can use the alphabet (a~z, A~Z), digits (0~9) or underscores (_). Usernames cannot be changed later.';
	String get aiChanMode => 'Ai Mode';
	String get devMode => 'Developer mode';
	String get keepCw => 'Keep content warnings';
	String get pubSub => 'Pub/Sub Accounts';
	String get lastCommunication => 'Last communication';
	String get resolved => 'Resolved';
	String get unresolved => 'Unresolved';
	String get breakFollow => 'Remove follower';
	String get breakFollowConfirm => 'Really remove this follower?';
	String get itsOn => 'Enabled';
	String get itsOff => 'Disabled';
	String get on => 'On';
	String get off => 'Off';
	String get emailRequiredForSignup => 'Require email address for sign-up';
	String get unread => 'Unread';
	String get filter => 'Filter';
	String get controlPanel => 'Control Panel';
	String get manageAccounts => 'Manage Accounts';
	String get makeReactionsPublic => 'Set reaction history to public';
	String get makeReactionsPublicDescription => 'This will make the list of all your past reactions publicly visible.';
	String get classic => 'Classic';
	String get muteThread => 'Mute thread';
	String get unmuteThread => 'Unmute thread';
	String get followingVisibility => 'Visibility of follows';
	String get followersVisibility => 'Visibility of followers';
	String get continueThread => 'View thread continuation';
	String get deleteAccountConfirm => 'This will irreversibly delete your account. Proceed?';
	String get incorrectPassword => 'Incorrect password.';
	String voteConfirm({required Object choice}) => 'Confirm your vote for "${choice}"?';
	String get hide => 'Hide';
	String get useDrawerReactionPickerForMobile => 'Display reaction picker as drawer on mobile';
	String welcomeBackWithName({required Object name}) => 'Welcome back, ${name}';
	String clickToFinishEmailVerification({required Object ok}) => 'Please click [${ok}] to complete email verification.';
	String get overridedDeviceKind => 'Device type';
	String get smartphone => 'Smartphone';
	String get tablet => 'Tablet';
	String get auto => 'Auto';
	String get themeColor => 'Instance Ticker Color';
	String get size => 'Size';
	String get numberOfColumn => 'Number of columns';
	String get searchByGoogle => 'Search';
	String get instanceDefaultLightTheme => 'Instance-wide default light theme';
	String get instanceDefaultDarkTheme => 'Instance-wide default dark theme';
	String get instanceDefaultThemeDescription => 'Enter the theme code in object format.';
	String get mutePeriod => 'Mute duration';
	String get period => 'Time limit';
	String get indefinitely => 'Permanently';
	String get tenMinutes => '10 minutes';
	String get oneHour => 'One hour';
	String get oneDay => 'One day';
	String get oneWeek => 'One week';
	String get oneMonth => 'One month';
	String get reflectMayTakeTime => 'It may take some time for this to be reflected.';
	String get failedToFetchAccountInformation => 'Could not fetch account information';
	String get rateLimitExceeded => 'Rate limit exceeded';
	String get cropImage => 'Crop image';
	String get cropImageAsk => 'Do you want to crop this image?';
	String get cropYes => 'Crop';
	String get cropNo => 'Use as-is';
	String get file => 'File';
	String recentNHours({required Object n}) => 'Last ${n} hours';
	String recentNDays({required Object n}) => 'Last ${n} days';
	String get noEmailServerWarning => 'Email server not configured.';
	String get thereIsUnresolvedAbuseReportWarning => 'There are unsolved reports.';
	String get recommended => 'Recommended';
	String get check => 'Check';
	String get driveCapOverrideLabel => 'Change the drive capacity for this user';
	String get driveCapOverrideCaption => 'Reset the capacity to default by inputting a value of 0 or lower.';
	String get requireAdminForView => 'You must log in with an administrator account to view this.';
	String get isSystemAccount => 'An account created and automatically operated by the system.';
	String typeToConfirm({required Object x}) => 'Please enter ${x} to confirm';
	String get deleteAccount => 'Delete account';
	String get document => 'Documentation';
	String get numberOfPageCache => 'Number of cached pages';
	String get numberOfPageCacheDescription => 'Increasing this number will improve convenience for but cause more load as more memory usage on the user\'s device.';
	String get logoutConfirm => 'Really log out?';
	String get lastActiveDate => 'Last used at';
	String get statusbar => 'Status bar';
	String get pleaseSelect => 'Select an option';
	String get reverse => 'Reverse';
	String get colored => 'Colored';
	String get refreshInterval => 'Update interval ';
	String get label => 'Label';
	String get type => 'Type';
	String get speed => 'Speed';
	String get slow => 'Slow';
	String get fast => 'Fast';
	String get sensitiveMediaDetection => 'Detection of sensitive media';
	String get localOnly => 'Local only';
	String get remoteOnly => 'Remote only';
	String get failedToUpload => 'Upload failed';
	String get cannotUploadBecauseInappropriate => 'This file could not be uploaded because parts of it have been detected as potentially inappropriate.';
	String get cannotUploadBecauseNoFreeSpace => 'Upload failed due to lack of Drive capacity.';
	String get cannotUploadBecauseExceedsFileSizeLimit => 'This file cannot be uploaded as it exceeds the file size limit.';
	String get beta => 'Beta';
	String get enableAutoSensitive => 'Automatic marking as sensitive';
	String get enableAutoSensitiveDescription => 'Allows automatic detection and marking of sensitive media through Machine Learning where possible. Even if this option is disabled, it may be enabled instance-wide.';
	String get activeEmailValidationDescription => 'Enables stricter validation of email addresses, which includes checking for disposable addresses and by whether it can actually be communicated with. When unchecked, only the format of the email is validated.';
	String get navbar => 'Navigation bar';
	String get shuffle => 'Shuffle';
	String get account => 'Account';
	String get move => 'Move';
	String get pushNotification => 'Push notifications';
	String get subscribePushNotification => 'Enable push notifications';
	String get unsubscribePushNotification => 'Disable push notifications';
	String get pushNotificationAlreadySubscribed => 'Push notifications are already enabled';
	String get pushNotificationNotSupported => 'Your browser or instance does not support push notifications';
	String get sendPushNotificationReadMessage => 'Delete push notifications once they have been read';
	String get sendPushNotificationReadMessageCaption => 'This may increase the power consumption of your device.';
	String get windowMaximize => 'Maximize';
	String get windowMinimize => 'Minimize';
	String get windowRestore => 'Restore';
	String get caption => 'Caption';
	String get loggedInAsBot => 'Currently logged in as bot';
	String get tools => 'Tools';
	String get cannotLoad => 'Unable to load';
	String get numberOfProfileView => 'Profile views';
	String get like => 'Like';
	String get unlike => 'Unlike';
	String get numberOfLikes => 'Likes';
	String get show => 'Show';
	String get neverShow => 'Don\'t show again';
	String get remindMeLater => 'Maybe later';
	String get didYouLikeMisskey => 'Have you taken a liking to Misskey?';
	String pleaseDonate({required Object host}) => '${host} uses the free software, Misskey. We would highly appreciate your donations so development of Misskey can continue!';
	String correspondingSourceIsAvailable({required Object anchor}) => 'The corresponding source code is available at ${anchor}';
	String get roles => 'Roles';
	String get role => 'Role';
	String get noRole => 'Role not found';
	String get normalUser => 'Normal user';
	String get undefined => 'Undefined';
	String get assign => 'Assign';
	String get unassign => 'Unassign';
	String get color => 'Color';
	String get manageCustomEmojis => 'Manage Custom Emojis';
	String get manageAvatarDecorations => 'Manage avatar decorations';
	String get youCannotCreateAnymore => 'You\'ve hit the creation limit.';
	String get cannotPerformTemporary => 'Temporarily unavailable';
	String get cannotPerformTemporaryDescription => 'This action cannot be performed temporarily due to exceeding the execution limit. Please wait for a while and then try again.';
	String get invalidParamError => 'Invalid parameters';
	String get invalidParamErrorDescription => 'The request parameters are invalid. This is normally caused by a bug, but may also be due to inputs exceeding size limits or similar.';
	String get permissionDeniedError => 'Operation denied';
	String get permissionDeniedErrorDescription => 'This account does not have the permission to perform this action.';
	String get preset => 'Preset';
	String get selectFromPresets => 'Choose from presets';
	String get achievements => 'Achievements';
	String get gotInvalidResponseError => 'Invalid server response';
	String get gotInvalidResponseErrorDescription => 'The server may be unreachable or undergoing maintenance. Please try again later.';
	String get thisPostMayBeAnnoying => 'This note may annoy others.';
	String get thisPostMayBeAnnoyingHome => 'Post to home timeline';
	String get thisPostMayBeAnnoyingCancel => 'Cancel';
	String get thisPostMayBeAnnoyingIgnore => 'Post anyway';
	String get collapseRenotes => 'Collapse renotes you\'ve already seen';
	String get internalServerError => 'Internal Server Error';
	String get internalServerErrorDescription => 'The server has run into an unexpected error.';
	String get copyErrorInfo => 'Copy error details';
	String get joinThisServer => 'Sign up at this instance';
	String get exploreOtherServers => 'Look for another instance';
	String get letsLookAtTimeline => 'Have a look at the timeline';
	String get disableFederationConfirm => 'Really disable federation?';
	String get disableFederationConfirmWarn => 'Even if defederated, posts will continue to be public unless set otherwise. You usually do not need to do this.';
	String get disableFederationOk => 'Disable';
	String get invitationRequiredToRegister => 'This instance is invite-only. You must enter a valid invite code sign up.';
	String get emailNotSupported => 'This instance does not support sending emails';
	String get postToTheChannel => 'Post to channel';
	String get cannotBeChangedLater => 'This cannot be changed later.';
	String get reactionAcceptance => 'Reaction Acceptance';
	String get likeOnly => 'Only likes';
	String get likeOnlyForRemote => 'All (Only likes for remote instances)';
	String get nonSensitiveOnly => 'Non-sensitive only';
	String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Non-sensitive only (Only likes from remote)';
	String get rolesAssignedToMe => 'Roles assigned to me';
	String get resetPasswordConfirm => 'Really reset your password?';
	String get sensitiveWords => 'Sensitive words';
	String get sensitiveWordsDescription => 'The visibility of all notes containing any of the configured words will be set to "Home" automatically. You can list multiple by separating them via line breaks.';
	String get sensitiveWordsDescription2 => 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.';
	String get prohibitedWords => 'Prohibited words';
	String get prohibitedWordsDescription => 'Enables an error when attempting to post a note containing the set word(s). Multiple words can be set, separated by a new line.';
	String get prohibitedWordsDescription2 => 'Using spaces will create AND expressions and surrounding keywords with slashes will turn them into a regular expression.';
	String get hiddenTags => 'Hidden hashtags';
	String get hiddenTagsDescription => 'Select tags which will not shown on trend list.\nMultiple tags could be registered by lines.';
	String get notesSearchNotAvailable => 'Note search is unavailable.';
	String get license => 'License';
	String get unfavoriteConfirm => 'Really remove from favorites?';
	String get myClips => 'My clips';
	String get drivecleaner => 'Drive Cleaner';
	String get retryAllQueuesNow => 'Retry running all queues';
	String get retryAllQueuesConfirmTitle => 'Really retry all?';
	String get retryAllQueuesConfirmText => 'This will temporarily increase the server load.';
	String get enableChartsForRemoteUser => 'Generate remote user data charts';
	String get enableChartsForFederatedInstances => 'Generate remote instance data charts';
	String get showClipButtonInNoteFooter => 'Add "Clip" to note action menu';
	String get reactionsDisplaySize => 'Reaction display size';
	String get limitWidthOfReaction => 'Limits the maximum width of reactions and display them in reduced size.';
	String get noteIdOrUrl => 'Note ID or URL';
	String get video => 'Video';
	String get videos => 'Videos';
	String get audio => 'Audio';
	String get audioFiles => 'Audio';
	String get dataSaver => 'Data Saver';
	String get accountMigration => 'Account Migration';
	String get accountMoved => 'This user has moved to a new account:';
	String get accountMovedShort => 'This account has been migrated.';
	String get operationForbidden => 'Operation forbidden';
	String get forceShowAds => 'Always show ads';
	String get addMemo => 'Add memo';
	String get editMemo => 'Edit memo';
	String get reactionsList => 'Reactions';
	String get renotesList => 'Renotes';
	String get notificationDisplay => 'Notifications';
	String get leftTop => 'Top left';
	String get rightTop => 'Top right';
	String get leftBottom => 'Bottom left';
	String get rightBottom => 'Bottom right';
	String get stackAxis => 'Stacking direction';
	String get vertical => 'Vertical';
	String get horizontal => 'Horizontal';
	String get position => 'Position';
	String get serverRules => 'Server rules';
	String get pleaseConfirmBelowBeforeSignup => 'To register on this server, you must review and agree to the following:';
	String get pleaseAgreeAllToContinue => 'You must agree to all above fields to continue.';
	String get continue_ => 'Continue';
	String get preservedUsernames => 'Reserved usernames';
	String get preservedUsernamesDescription => 'List usernames to reserve separated by linebreaks. These will become unable during normal account creation, but can be used by administrators to manually create accounts. Already existing accounts using these usernames will not be affected.';
	String get createNoteFromTheFile => 'Compose note from this file';
	String get archive => 'Archive';
	String channelArchiveConfirmTitle({required Object name}) => 'Really archive ${name}?';
	String get channelArchiveConfirmDescription => 'An archived channel won\'t appear in the channel list or search results anymore. New posts can also not be added to it anymore.';
	String get thisChannelArchived => 'This channel has been archived.';
	String get displayOfNote => 'Note display';
	String get initialAccountSetting => 'Profile setup';
	String get youFollowing => 'Followed';
	String get preventAiLearning => 'Reject usage in Machine Learning (Generative AI)';
	String get preventAiLearningDescription => 'Requests crawlers to not use posted text or image material etc. in machine learning (Predictive / Generative AI) data sets. This is achieved by adding a "noai" HTML-Response flag to the respective content. A complete prevention can however not be achieved through this flag, as it may simply be ignored.';
	String get options => 'Options';
	String get specifyUser => 'Specific user';
	String get failedToPreviewUrl => 'Could not preview';
	String get update => 'Update';
	String get rolesThatCanBeUsedThisEmojiAsReaction => 'Roles that can use this emoji as reaction';
	String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'If no roles are specified, anyone can use this emoji as reaction.';
	String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'These roles must be public.';
	String get cancelReactionConfirm => 'Really delete your reaction?';
	String get changeReactionConfirm => 'Really change your reaction?';
	String get later => 'Later';
	String get goToMisskey => 'To Misskey';
	String get additionalEmojiDictionary => 'Additional emoji dictionaries';
	String get installed => 'Installed';
	String get branding => 'Branding';
	String get enableServerMachineStats => 'Publish server hardware stats';
	String get enableIdenticonGeneration => 'Enable user identicon generation';
	String get turnOffToImprovePerformance => 'Turning this off can increase performance.';
	String get createInviteCode => 'Generate invite';
	String get createWithOptions => 'Generate with options';
	String get createCount => 'Invite count';
	String get inviteCodeCreated => 'Invite generated';
	String get inviteLimitExceeded => 'You\'ve exceeded the limit of invites you can generate.';
	String createLimitRemaining({required Object limit}) => 'Invite limit: ${limit} remaining';
	String inviteLimitResetCycle({required Object limit, required Object time}) => 'This limit will reset to ${limit} at ${time}.';
	String get expirationDate => 'Expiration date';
	String get noExpirationDate => 'No expiration';
	String get inviteCodeUsedAt => 'Invite code used at';
	String get registeredUserUsingInviteCode => 'Invite used by';
	String get waitingForMailAuth => 'Email verification pending';
	String get inviteCodeCreator => 'Invite created by';
	String get usedAt => 'Used at';
	String get unused => 'Unused';
	String get used => 'Used';
	String get expired => 'Expired';
	String get doYouAgree => 'Agree?';
	String get beSureToReadThisAsItIsImportant => 'Please read this important information.';
	String iHaveReadXCarefullyAndAgree({required Object x}) => 'I have read the text "${x}" and agree.';
	String get dialog => 'Dialog';
	String get icon => 'Icon';
	String get forYou => 'For you';
	String get currentAnnouncements => 'Current announcements';
	String get pastAnnouncements => 'Past announcements';
	String get youHaveUnreadAnnouncements => 'There are unread announcements.';
	String get useSecurityKey => 'Please follow your browser\'s or device\'s instructions to use your security- or passkey.';
	String get replies => 'Reply';
	String get renotes => 'Renotes';
	String get loadReplies => 'Show replies';
	String get loadConversation => 'Show conversation';
	String get pinnedList => 'Pinned list';
	String get keepScreenOn => 'Keep screen on';
	String get verifiedLink => 'Link ownership has been verified';
	String get notifyNotes => 'Notify about new notes';
	String get unnotifyNotes => 'Stop notifying about new notes';
	String get authentication => 'Authentication';
	String get authenticationRequiredToContinue => 'Please authenticate to continue';
	String get dateAndTime => 'Timestamp';
	String get showRenotes => 'Show renotes';
	String get edited => 'Edited';
	String get notificationRecieveConfig => 'Notification Settings';
	String get mutualFollow => 'Mutual follow';
	String get followingOrFollower => 'Following or follower';
	String get fileAttachedOnly => 'Only notes with files';
	String get showRepliesToOthersInTimeline => 'Show replies to others in timeline';
	String get hideRepliesToOthersInTimeline => 'Hide replies to others from timeline';
	String get showRepliesToOthersInTimelineAll => 'Show replies to others from everyone you follow in timeline';
	String get hideRepliesToOthersInTimelineAll => 'Hide replies to others from everyone you follow in timeline';
	String get confirmShowRepliesAll => 'This operation is irreversible. Would you really like to show replies to others from everyone you follow in your timeline?';
	String get confirmHideRepliesAll => 'This operation is irreversible. Would you really like to hide replies to others from everyone you follow in your timeline?';
	String get externalServices => 'External Services';
	String get sourceCode => 'Source code';
	String get sourceCodeIsNotYetProvided => 'Source code is not yet available. Contact the administrator to fix this problem.';
	String get repositoryUrl => 'Repository URL';
	String get repositoryUrlDescription => 'If you are using Misskey as is (without any changes to the source code), enter https://github.com/misskey-dev/misskey';
	String get repositoryUrlOrTarballRequired => 'If you have not published a repository, you must provide a tarball instead. See .config/example.yml for more information.';
	String get feedback => 'Feedback';
	String get feedbackUrl => 'Feedback URL';
	String get impressum => 'Impressum';
	String get impressumUrl => 'Impressum URL';
	String get impressumDescription => 'In some countries, like germany, the inclusion of operator contact information (an Impressum) is legally required for commercial websites.';
	String get privacyPolicy => 'Privacy Policy';
	String get privacyPolicyUrl => 'Privacy Policy URL';
	String get tosAndPrivacyPolicy => 'Terms of Service and Privacy Policy';
	String get avatarDecorations => 'Avatar decorations';
	String get attach => 'Attach';
	String get detach => 'Remove';
	String get detachAll => 'Remove All';
	String get angle => 'Angle';
	String get flip => 'Flip';
	String get showAvatarDecorations => 'Show avatar decorations';
	String get releaseToRefresh => 'Release to refresh';
	String get refreshing => 'Refreshing...';
	String get pullDownToRefresh => 'Pull down to refresh';
	String get disableStreamingTimeline => 'Disable real-time timeline updates';
	String get useGroupedNotifications => 'Display grouped notifications';
	String get signupPendingError => 'There was a problem verifying the email address. The link may have expired.';
	String get cwNotationRequired => 'If "Hide content" is enabled, a description must be provided.';
	String get doReaction => 'Add reaction';
	String get code => 'Code';
	String get reloadRequiredToApplySettings => 'Reloading is required to apply the settings.';
	String remainingN({required Object n}) => 'Remaining: ${n}';
	String get overwriteContentConfirm => 'Are you sure you want to overwrite the current content?';
	String get seasonalScreenEffect => 'Seasonal Screen Effect';
	String get decorate => 'Decorate';
	String get addMfmFunction => 'Add MFM';
	String get enableQuickAddMfmFunction => 'Show advanced MFM picker';
	String get bubbleGame => 'Bubble Game';
	String get sfx => 'Sound Effects';
	String get soundWillBePlayed => 'Sound will be played';
	String get showReplay => 'View Replay';
	String get replay => 'Replay';
	String get replaying => 'Showing replay';
	String get endReplay => 'Exit Replay';
	String get copyReplayData => 'Copy replay data';
	String get ranking => 'Ranking';
	String lastNDays({required Object n}) => 'Last ${n} days';
	String get backToTitle => 'Go back to title';
	String get hemisphere => 'Where are you located';
	String get withSensitive => 'Include notes with sensitive files';
	String userSaysSomethingSensitive({required Object name}) => 'Post by ${name} contains sensitive content';
	String get enableHorizontalSwipe => 'Swipe to switch tabs';
	String get loading => 'Loading';
	String get surrender => 'Cancel';
	String get gameRetry => 'Retry';
	late final _StringsMisskeyBubbleGameEnUs bubbleGame_ = _StringsMisskeyBubbleGameEnUs._(_root);
	late final _StringsMisskeyAnnouncementEnUs announcement_ = _StringsMisskeyAnnouncementEnUs._(_root);
	late final _StringsMisskeyInitialAccountSettingEnUs initialAccountSetting_ = _StringsMisskeyInitialAccountSettingEnUs._(_root);
	late final _StringsMisskeyInitialTutorialEnUs initialTutorial_ = _StringsMisskeyInitialTutorialEnUs._(_root);
	late final _StringsMisskeyTimelineDescriptionEnUs timelineDescription_ = _StringsMisskeyTimelineDescriptionEnUs._(_root);
	late final _StringsMisskeyServerRulesEnUs serverRules_ = _StringsMisskeyServerRulesEnUs._(_root);
	late final _StringsMisskeyServerSettingsEnUs serverSettings_ = _StringsMisskeyServerSettingsEnUs._(_root);
	late final _StringsMisskeyAccountMigrationEnUs accountMigration_ = _StringsMisskeyAccountMigrationEnUs._(_root);
	late final _StringsMisskeyAchievementsEnUs achievements_ = _StringsMisskeyAchievementsEnUs._(_root);
	late final _StringsMisskeyRoleEnUs role_ = _StringsMisskeyRoleEnUs._(_root);
	late final _StringsMisskeySensitiveMediaDetectionEnUs sensitiveMediaDetection_ = _StringsMisskeySensitiveMediaDetectionEnUs._(_root);
	late final _StringsMisskeyEmailUnavailableEnUs emailUnavailable_ = _StringsMisskeyEmailUnavailableEnUs._(_root);
	late final _StringsMisskeyFfVisibilityEnUs ffVisibility_ = _StringsMisskeyFfVisibilityEnUs._(_root);
	late final _StringsMisskeySignupEnUs signup_ = _StringsMisskeySignupEnUs._(_root);
	late final _StringsMisskeyAccountDeleteEnUs accountDelete_ = _StringsMisskeyAccountDeleteEnUs._(_root);
	late final _StringsMisskeyAdEnUs ad_ = _StringsMisskeyAdEnUs._(_root);
	late final _StringsMisskeyForgotPasswordEnUs forgotPassword_ = _StringsMisskeyForgotPasswordEnUs._(_root);
	late final _StringsMisskeyGalleryEnUs gallery_ = _StringsMisskeyGalleryEnUs._(_root);
	late final _StringsMisskeyEmailEnUs email_ = _StringsMisskeyEmailEnUs._(_root);
	late final _StringsMisskeyPluginEnUs plugin_ = _StringsMisskeyPluginEnUs._(_root);
	late final _StringsMisskeyPreferencesBackupsEnUs preferencesBackups_ = _StringsMisskeyPreferencesBackupsEnUs._(_root);
	late final _StringsMisskeyRegistryEnUs registry_ = _StringsMisskeyRegistryEnUs._(_root);
	late final _StringsMisskeyAboutMisskeyEnUs aboutMisskey_ = _StringsMisskeyAboutMisskeyEnUs._(_root);
	late final _StringsMisskeyDisplayOfSensitiveMediaEnUs displayOfSensitiveMedia_ = _StringsMisskeyDisplayOfSensitiveMediaEnUs._(_root);
	late final _StringsMisskeyInstanceTickerEnUs instanceTicker_ = _StringsMisskeyInstanceTickerEnUs._(_root);
	late final _StringsMisskeyServerDisconnectedBehaviorEnUs serverDisconnectedBehavior_ = _StringsMisskeyServerDisconnectedBehaviorEnUs._(_root);
	late final _StringsMisskeyChannelEnUs channel_ = _StringsMisskeyChannelEnUs._(_root);
	late final _StringsMisskeyMenuDisplayEnUs menuDisplay_ = _StringsMisskeyMenuDisplayEnUs._(_root);
	late final _StringsMisskeyWordMuteEnUs wordMute_ = _StringsMisskeyWordMuteEnUs._(_root);
	late final _StringsMisskeyInstanceMuteEnUs instanceMute_ = _StringsMisskeyInstanceMuteEnUs._(_root);
	late final _StringsMisskeyThemeEnUs theme_ = _StringsMisskeyThemeEnUs._(_root);
	late final _StringsMisskeySfxEnUs sfx_ = _StringsMisskeySfxEnUs._(_root);
	late final _StringsMisskeySoundSettingsEnUs soundSettings_ = _StringsMisskeySoundSettingsEnUs._(_root);
	late final _StringsMisskeyAgoEnUs ago_ = _StringsMisskeyAgoEnUs._(_root);
	late final _StringsMisskeyTimeInEnUs timeIn_ = _StringsMisskeyTimeInEnUs._(_root);
	late final _StringsMisskeyTimeEnUs time_ = _StringsMisskeyTimeEnUs._(_root);
	late final _StringsMisskeyX2faEnUs x2fa_ = _StringsMisskeyX2faEnUs._(_root);
	late final _StringsMisskeyPermissionsEnUs permissions_ = _StringsMisskeyPermissionsEnUs._(_root);
	late final _StringsMisskeyAuthEnUs auth_ = _StringsMisskeyAuthEnUs._(_root);
	late final _StringsMisskeyAntennaSourcesEnUs antennaSources_ = _StringsMisskeyAntennaSourcesEnUs._(_root);
	late final _StringsMisskeyWeekdayEnUs weekday_ = _StringsMisskeyWeekdayEnUs._(_root);
	late final _StringsMisskeyWidgetsEnUs widgets_ = _StringsMisskeyWidgetsEnUs._(_root);
	late final _StringsMisskeyCwEnUs cw_ = _StringsMisskeyCwEnUs._(_root);
	late final _StringsMisskeyPollEnUs poll_ = _StringsMisskeyPollEnUs._(_root);
	late final _StringsMisskeyVisibilityEnUs visibility_ = _StringsMisskeyVisibilityEnUs._(_root);
	late final _StringsMisskeyPostFormEnUs postForm_ = _StringsMisskeyPostFormEnUs._(_root);
	late final _StringsMisskeyProfileEnUs profile_ = _StringsMisskeyProfileEnUs._(_root);
	late final _StringsMisskeyExportOrImportEnUs exportOrImport_ = _StringsMisskeyExportOrImportEnUs._(_root);
	late final _StringsMisskeyChartsEnUs charts_ = _StringsMisskeyChartsEnUs._(_root);
	late final _StringsMisskeyInstanceChartsEnUs instanceCharts_ = _StringsMisskeyInstanceChartsEnUs._(_root);
	late final _StringsMisskeyTimelinesEnUs timelines_ = _StringsMisskeyTimelinesEnUs._(_root);
	late final _StringsMisskeyPlayEnUs play_ = _StringsMisskeyPlayEnUs._(_root);
	late final _StringsMisskeyPagesEnUs pages_ = _StringsMisskeyPagesEnUs._(_root);
	late final _StringsMisskeyRelayStatusEnUs relayStatus_ = _StringsMisskeyRelayStatusEnUs._(_root);
	late final _StringsMisskeyNotificationEnUs notification_ = _StringsMisskeyNotificationEnUs._(_root);
	late final _StringsMisskeyDeckEnUs deck_ = _StringsMisskeyDeckEnUs._(_root);
	late final _StringsMisskeyDialogEnUs dialog_ = _StringsMisskeyDialogEnUs._(_root);
	late final _StringsMisskeyDisabledTimelineEnUs disabledTimeline_ = _StringsMisskeyDisabledTimelineEnUs._(_root);
	late final _StringsMisskeyDrivecleanerEnUs drivecleaner_ = _StringsMisskeyDrivecleanerEnUs._(_root);
	late final _StringsMisskeyWebhookSettingsEnUs webhookSettings_ = _StringsMisskeyWebhookSettingsEnUs._(_root);
	late final _StringsMisskeyModerationLogTypesEnUs moderationLogTypes_ = _StringsMisskeyModerationLogTypesEnUs._(_root);
	late final _StringsMisskeyFileViewerEnUs fileViewer_ = _StringsMisskeyFileViewerEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerEnUs externalResourceInstaller_ = _StringsMisskeyExternalResourceInstallerEnUs._(_root);
	late final _StringsMisskeyDataSaverEnUs dataSaver_ = _StringsMisskeyDataSaverEnUs._(_root);
	late final _StringsMisskeyHemisphereEnUs hemisphere_ = _StringsMisskeyHemisphereEnUs._(_root);
	late final _StringsMisskeyReversiEnUs reversi_ = _StringsMisskeyReversiEnUs._(_root);
	late final _StringsMisskeyOfflineScreenEnUs offlineScreen_ = _StringsMisskeyOfflineScreenEnUs._(_root);
}

// Path: misskeyIO
class _StringsMisskeyIOEnUs {
	_StringsMisskeyIOEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMisskeyIOSkebStatusEnUs skebStatus_ = _StringsMisskeyIOSkebStatusEnUs._(_root);
}

// Path: misskey.bubbleGame_
class _StringsMisskeyBubbleGameEnUs {
	_StringsMisskeyBubbleGameEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get howToPlay => 'How to play';
	String get hold => 'Hold';
	late final _StringsMisskeyBubbleGameScoreEnUs score_ = _StringsMisskeyBubbleGameScoreEnUs._(_root);
	late final _StringsMisskeyBubbleGameHowToPlayEnUs howToPlay_ = _StringsMisskeyBubbleGameHowToPlayEnUs._(_root);
}

// Path: misskey.announcement_
class _StringsMisskeyAnnouncementEnUs {
	_StringsMisskeyAnnouncementEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get forExistingUsers => 'Existing users only';
	String get forExistingUsersDescription => 'This announcement will only be shown to users existing at the point of publishment if enabled. If disabled, those newly signing up after it has been posted will also see it.';
	String get needConfirmationToRead => 'Require separate read confirmation';
	String get needConfirmationToReadDescription => 'A separate prompt to confirm marking this announcement as read will be displayed if enabled. This announcement will also be excluded from any "Mark all as read" functionality.';
	String get end => 'Archive announcement';
	String get tooManyActiveAnnouncementDescription => 'Having too many active announcements may worsen the user experience. Please consider archiving announcements that have become obsolete.';
	String get readConfirmTitle => 'Mark as read?';
	String readConfirmText({required Object title}) => 'This will mark the contents of "${title}" as read.';
	String get shouldNotBeUsedToPresentPermanentInfo => 'It\'s best to use announcements to publish fresh and time-bound information, not for information that will be relevant in the long term.';
	String get dialogAnnouncementUxWarn => 'Having two or more dialog-style notifications simultaneously can significantly impact the user experience, so please use them carefully.';
	String get silence => 'No notification';
	String get silenceDescription => 'Turning this on will skip the notification of this announcement and the user won\'t need to read it.';
}

// Path: misskey.initialAccountSetting_
class _StringsMisskeyInitialAccountSettingEnUs {
	_StringsMisskeyInitialAccountSettingEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get accountCreated => 'Your account was successfully created!';
	String get letsStartAccountSetup => 'For starters, let\'s set up your profile.';
	String get letsFillYourProfile => 'First, let\'s set up your profile.';
	String get profileSetting => 'Profile settings';
	String get privacySetting => 'Privacy settings';
	String get theseSettingsCanEditLater => 'You can always change these settings later.';
	String get youCanEditMoreSettingsInSettingsPageLater => 'There are many more settings you can configure from the "Settings" page. Be sure to visit it later.';
	String get followUsers => 'Try following some users that interest you to build up your timeline.';
	String pushNotificationDescription({required Object name}) => 'Enabling push notifications will allow you to receive notifications from ${name} directly on your device.';
	String get initialAccountSettingCompleted => 'Profile setup complete!';
	String haveFun({required Object name}) => 'Enjoy ${name}!';
	String youCanContinueTutorial({required Object name}) => 'You can proceed to a tutorial on how to use ${name} (Misskey) or you can exit the setup here and start using it immediately.';
	String get startTutorial => 'Start Tutorial';
	String get skipAreYouSure => 'Really skip profile setup?';
	String get laterAreYouSure => 'Really do profile setup later?';
}

// Path: misskey.initialTutorial_
class _StringsMisskeyInitialTutorialEnUs {
	_StringsMisskeyInitialTutorialEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get launchTutorial => 'Start Tutorial';
	String get title => 'Tutorial';
	String get wellDone => 'Well done!';
	String get skipAreYouSure => 'Quit Tutorial?';
	late final _StringsMisskeyInitialTutorialLandingEnUs landing_ = _StringsMisskeyInitialTutorialLandingEnUs._(_root);
	late final _StringsMisskeyInitialTutorialNoteEnUs note_ = _StringsMisskeyInitialTutorialNoteEnUs._(_root);
	late final _StringsMisskeyInitialTutorialReactionEnUs reaction_ = _StringsMisskeyInitialTutorialReactionEnUs._(_root);
	late final _StringsMisskeyInitialTutorialTimelineEnUs timeline_ = _StringsMisskeyInitialTutorialTimelineEnUs._(_root);
	late final _StringsMisskeyInitialTutorialPostNoteEnUs postNote_ = _StringsMisskeyInitialTutorialPostNoteEnUs._(_root);
	late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs howToMakeAttachmentsSensitive_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs._(_root);
	late final _StringsMisskeyInitialTutorialDoneEnUs done_ = _StringsMisskeyInitialTutorialDoneEnUs._(_root);
}

// Path: misskey.timelineDescription_
class _StringsMisskeyTimelineDescriptionEnUs {
	_StringsMisskeyTimelineDescriptionEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'In the Home timeline, you can see notes from accounts you follow.';
	String get local => 'In the Local timeline, you can see notes from all users on this server.';
	String get social => 'The Social timeline displays notes from both the Home and Local timelines.';
	String get global => 'In the Global timeline, you can see notes from all connected servers.';
}

// Path: misskey.serverRules_
class _StringsMisskeyServerRulesEnUs {
	_StringsMisskeyServerRulesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get description => 'A set of rules to be displayed before registration. Setting a summary of the Terms of Service is recommended.';
}

// Path: misskey.serverSettings_
class _StringsMisskeyServerSettingsEnUs {
	_StringsMisskeyServerSettingsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get iconUrl => 'Icon URL';
	String appIconDescription({required Object host}) => 'Specifies the icon to use when ${host} is displayed as an app.';
	String get appIconUsageExample => 'E.g. As PWA, or when displayed as a home screen bookmark on a phone';
	String get appIconStyleRecommendation => 'As the icon may be cropped to a square or circle, an icon with colored margin around the content is recommended.';
	String appIconResolutionMustBe({required Object resolution}) => 'The minimum resolution is ${resolution}.';
	String get manifestJsonOverride => 'manifest.json Override';
	String get shortName => 'Short name';
	String get shortNameDescription => 'A shorthand for the instance\'s name that can be displayed if the full official name is long.';
	String get fanoutTimelineDescription => 'Greatly increases performance of timeline retrieval and reduces load on the database when enabled. In exchange, memory usage of Redis will increase. Consider disabling this in case of low server memory or server instability.';
	String get fanoutTimelineDbFallback => 'Fallback to database';
	String get fanoutTimelineDbFallbackDescription => 'When enabled, the timeline will fall back to the database for additional queries if the timeline is not cached. Disabling it further reduces the server load by eliminating the fallback process, but limits the range of timelines that can be retrieved.';
}

// Path: misskey.accountMigration_
class _StringsMisskeyAccountMigrationEnUs {
	_StringsMisskeyAccountMigrationEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get moveFrom => 'Migrate another account to this one';
	String get moveFromSub => 'Create alias to another account';
	String moveFromLabel({required Object n}) => 'Original Account #${n}';
	String get moveFromDescription => 'You must create an alias for the account to move from on this account.\nEnter the account to migrate from in the following format: @username@server.example.com\nTo delete the alias, leave the field empty (not recommended).';
	String get moveTo => 'Migrate this account to a different one';
	String get moveToLabel => 'Account to move to:';
	String get moveCannotBeUndone => 'Account migration cannot be undone.';
	String get moveAccountDescription => 'This will migrate your account to a different one.\n　・Followers from this account will automatically be migrated to the new account\n　・This account will unfollow all users it is currently following\n　・You will be unable to create new notes etc. on this account\n\nWhile migration of followers is automatic, you must manually prepare some steps to migrate the list of users you are following. To do so, carry out a follows export that you will later import on the new account in the settings menu. The same procedure applies to your lists as well as your muted and blocked users.\n\n(This explanation applies to Misskey v13.12.0 and later. Other ActivityPub software, such as Mastodon, might function differently.)';
	String get moveAccountHowTo => 'To migrate, first create an alias for this account on the account to move to.\nAfter you have created the alias, enter the account to move to in the following format: @username@server.example.com';
	String get startMigration => 'Migrate';
	String migrationConfirm({required Object account}) => 'Really migrate this account to ${account}? Once started, this process cannot be stopped or taken back, and you will not be able to use this account in its original state anymore.';
	String get movedAndCannotBeUndone => '\nThis account has been migrated.\nMigration cannot be reversed.';
	String get postMigrationNote => 'This account will unfollow all accounts it is currently following 24 hours after migration finishes.\nBoth the number of follows and followers will then become zero. To avoid your followers from being unable to see followers only posts of this account, they will however continue following this account.';
	String get movedTo => 'New account:';
}

// Path: misskey.achievements_
class _StringsMisskeyAchievementsEnUs {
	_StringsMisskeyAchievementsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get earnedAt => 'Unlocked at';
	late final _StringsMisskeyAchievementsTypesEnUs types_ = _StringsMisskeyAchievementsTypesEnUs._(_root);
}

// Path: misskey.role_
class _StringsMisskeyRoleEnUs {
	_StringsMisskeyRoleEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get new_ => 'New role';
	String get edit => 'Edit role';
	String get name => 'Role name';
	String get description => 'Role description';
	String get permission => 'Role permissions';
	String get descriptionOfPermission => '<b>Moderators</b> can perform basic moderation operations.\n<b>Administrators</b> can change all settings of the instance.';
	String get assignTarget => 'Assignment type';
	String get descriptionOfAssignTarget => '<b>Manual</b> to manually change who is part of this role and who is not.\n<b>Conditional</b> to have users be automatically assigned and removed from this role based on a condition.';
	String get manual => 'Manual';
	String get manualRoles => 'Manual roles';
	String get conditional => 'Conditional';
	String get conditionalRoles => 'Conditional roles';
	String get condition => 'Condition';
	String get isConditionalRole => 'This is a conditional role.';
	String get isPublic => 'Public role';
	String get descriptionOfIsPublic => 'This role will be displayed in the profiles of assigned users.';
	String get options => 'Options';
	String get policies => 'Policies';
	String get baseRole => 'Role template';
	String get useBaseValue => 'Use role template value';
	String get chooseRoleToAssign => 'Select the role to assign';
	String get iconUrl => 'Icon URL';
	String get asBadge => 'Show as badge';
	String get descriptionOfAsBadge => 'This role\'s icon will be displayed next to the username of users with this role if turned on.';
	String get isExplorable => 'Make role explorable';
	String get descriptionOfIsExplorable => 'This role\'s timeline and the list of users with this will be made public if enabled.';
	String get displayOrder => 'Position';
	String get descriptionOfDisplayOrder => 'The higher the number, the higher its UI position.';
	String get canEditMembersByModerator => 'Allow moderators to edit the list of members for this role';
	String get descriptionOfCanEditMembersByModerator => 'When turned on, moderators as well as administrators will be able to assign and unassign users to this role. When turned off, only administrators will be able to assign users.';
	String get priority => 'Priority';
	late final _StringsMisskeyRolePriorityEnUs priority_ = _StringsMisskeyRolePriorityEnUs._(_root);
	late final _StringsMisskeyRoleOptionsEnUs options_ = _StringsMisskeyRoleOptionsEnUs._(_root);
	late final _StringsMisskeyRoleConditionEnUs condition_ = _StringsMisskeyRoleConditionEnUs._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _StringsMisskeySensitiveMediaDetectionEnUs {
	_StringsMisskeySensitiveMediaDetectionEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get description => 'Reduces the effort of server moderation through automatically recognizing sensitive media via Machine Learning. This will slightly increase the load on the server.';
	String get sensitivity => 'Detection sensitivity';
	String get sensitivityDescription => 'Reducing the sensitivity will lead to fewer misdetections (false positives) whereas increasing it will lead to fewer missed detections (false negatives).';
	String get setSensitiveFlagAutomatically => 'Mark as sensitive';
	String get setSensitiveFlagAutomaticallyDescription => 'The results of the internal detection will be retained even if this option is turned off.';
	String get analyzeVideos => 'Enable analysis of videos';
	String get analyzeVideosDescription => 'Analyzes videos in addition to images. This will slightly increase the load on the server.';
}

// Path: misskey.emailUnavailable_
class _StringsMisskeyEmailUnavailableEnUs {
	_StringsMisskeyEmailUnavailableEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get used => 'This email address is already being used';
	String get format => 'The format of this email address is invalid';
	String get disposable => 'Disposable email addresses may not be used';
	String get mx => 'This email server is invalid';
	String get smtp => 'This email server is not responding';
	String get banned => 'You cannot register with this email address';
}

// Path: misskey.ffVisibility_
class _StringsMisskeyFfVisibilityEnUs {
	_StringsMisskeyFfVisibilityEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get public => 'Public';
	String get followers => 'Visible to followers only';
	String get private => 'Private';
}

// Path: misskey.signup_
class _StringsMisskeySignupEnUs {
	_StringsMisskeySignupEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get almostThere => 'Almost there';
	String get emailAddressInfo => 'Please enter your email address. It will not be made public.';
	String emailSent({required Object email}) => 'A confirmation email has been sent to your email address (${email}). Please click the included link to complete account creation.';
}

// Path: misskey.accountDelete_
class _StringsMisskeyAccountDeleteEnUs {
	_StringsMisskeyAccountDeleteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get accountDelete => 'Delete account';
	String get mayTakeTime => 'As account deletion is a resource-heavy process, it may take some time to complete depending on how much content you have created and how many files you have uploaded.';
	String get sendEmail => 'Once account deletion has been completed, an email will be sent to the email address registered to this account.';
	String get requestAccountDelete => 'Request account deletion';
	String get started => 'Deletion has been started.';
	String get inProgress => 'Deletion is currently in progress';
}

// Path: misskey.ad_
class _StringsMisskeyAdEnUs {
	_StringsMisskeyAdEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get back => 'Back';
	String get reduceFrequencyOfThisAd => 'Show this ad less';
	String get hide => 'Hide';
	String get timezoneinfo => 'The day of the week is determined from the server\'s timezone.';
	String get adsSettings => 'Ad settings';
	String get notesPerOneAd => 'Real-time update ad placement interval (Notes per ad)';
	String get setZeroToDisable => 'Set this value to 0 to disable real-time update ads';
	String get adsTooClose => 'The current ad interval may significantly worsen the user experience due to being too low.';
}

// Path: misskey.forgotPassword_
class _StringsMisskeyForgotPasswordEnUs {
	_StringsMisskeyForgotPasswordEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get enterEmail => 'Enter the email address you used to register. A link with which you can reset your password will then be sent to it.';
	String get ifNoEmail => 'If you did not use an email during registration, please contact the instance administrator instead.';
	String get contactAdmin => 'This instance does not support using email addresses, please contact the instance administrator to reset your password instead.';
}

// Path: misskey.gallery_
class _StringsMisskeyGalleryEnUs {
	_StringsMisskeyGalleryEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get my => 'My Gallery';
	String get liked => 'Liked Posts';
	String get like => 'Like';
	String get unlike => 'Remove like';
}

// Path: misskey.email_
class _StringsMisskeyEmailEnUs {
	_StringsMisskeyEmailEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMisskeyEmailFollowEnUs follow_ = _StringsMisskeyEmailFollowEnUs._(_root);
	late final _StringsMisskeyEmailReceiveFollowRequestEnUs receiveFollowRequest_ = _StringsMisskeyEmailReceiveFollowRequestEnUs._(_root);
}

// Path: misskey.plugin_
class _StringsMisskeyPluginEnUs {
	_StringsMisskeyPluginEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get install => 'Install plugins';
	String get installWarn => 'Please do not install untrustworthy plugins.';
	String get manage => 'Manage plugins';
	String get viewSource => 'View source';
}

// Path: misskey.preferencesBackups_
class _StringsMisskeyPreferencesBackupsEnUs {
	_StringsMisskeyPreferencesBackupsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get list => 'Created backups';
	String get saveNew => 'Save new backup';
	String get loadFile => 'Load from file';
	String get apply => 'Apply to this device';
	String get save => 'Save changes';
	String get inputName => 'Please enter a name for this backup';
	String get cannotSave => 'Saving failed';
	String nameAlreadyExists({required Object name}) => 'A backup called "${name}" already exists. Please enter a different name.';
	String applyConfirm({required Object name}) => 'Do you really want to apply the "${name}" backup to this device? Existing settings of this device will be overwritten.';
	String saveConfirm({required Object name}) => 'Save backup as ${name}?';
	String deleteConfirm({required Object name}) => 'Delete the ${name} backup?';
	String renameConfirm({required Object old, required Object new_}) => 'Rename this backup from "${old}" to "${new_}"?';
	String get noBackups => 'No backups exist. You may backup your client settings on this server by using "Create new backup".';
	String createdAt({required Object date, required Object time}) => 'Created at: ${date} ${time}';
	String updatedAt({required Object date, required Object time}) => 'Updated at: ${date} ${time}';
	String get cannotLoad => 'Loading failed';
	String get invalidFile => 'Invalid file format';
}

// Path: misskey.registry_
class _StringsMisskeyRegistryEnUs {
	_StringsMisskeyRegistryEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get scope => 'Scope';
	String get key => 'Key';
	String get keys => 'Keys';
	String get domain => 'Domain';
	String get createKey => 'Create key';
}

// Path: misskey.aboutMisskey_
class _StringsMisskeyAboutMisskeyEnUs {
	_StringsMisskeyAboutMisskeyEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get about => 'Misskey is open-source software being developed by syuilo since 2014.';
	String get contributors => 'Main contributors';
	String get allContributors => 'All contributors';
	String get source => 'Source code';
	String get original => 'Original';
	String thisIsModifiedVersion({required Object name}) => '${name} uses a modified version of the original Misskey.';
	String get translation => 'Translate Misskey';
	String get donate => 'Donate to Misskey';
	String get morePatrons => 'We also appreciate the support of many other helpers not listed here. Thank you! 🥰';
	String get patrons => 'Patrons';
	String get projectMembers => 'Project members';
}

// Path: misskey.displayOfSensitiveMedia_
class _StringsMisskeyDisplayOfSensitiveMediaEnUs {
	_StringsMisskeyDisplayOfSensitiveMediaEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get respect => 'Hide media marked as sensitive';
	String get ignore => 'Display media marked as sensitive';
	String get force => 'Hide all media';
}

// Path: misskey.instanceTicker_
class _StringsMisskeyInstanceTickerEnUs {
	_StringsMisskeyInstanceTickerEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get none => 'Never show';
	String get remote => 'Show for remote users';
	String get always => 'Always show';
}

// Path: misskey.serverDisconnectedBehavior_
class _StringsMisskeyServerDisconnectedBehaviorEnUs {
	_StringsMisskeyServerDisconnectedBehaviorEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get reload => 'Automatically reload';
	String get dialog => 'Show warning dialog';
	String get quiet => 'Show unobtrusive warning';
}

// Path: misskey.channel_
class _StringsMisskeyChannelEnUs {
	_StringsMisskeyChannelEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create => 'Create channel';
	String get edit => 'Edit channel';
	String get setBanner => 'Set banner';
	String get removeBanner => 'Remove banner';
	String get featured => 'Trending';
	String get owned => 'Owned';
	String get following => 'Followed';
	String usersCount({required Object n}) => '${n} Participants';
	String notesCount({required Object n}) => '${n} Notes';
	String get nameAndDescription => 'Name and description';
	String get nameOnly => 'Name only';
	String get allowRenoteToExternal => 'Allow renote and quote outside the channel';
}

// Path: misskey.menuDisplay_
class _StringsMisskeyMenuDisplayEnUs {
	_StringsMisskeyMenuDisplayEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sideFull => 'Side';
	String get sideIcon => 'Side (Icons)';
	String get top => 'Top';
	String get hide => 'Hide';
}

// Path: misskey.wordMute_
class _StringsMisskeyWordMuteEnUs {
	_StringsMisskeyWordMuteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get muteWords => 'Muted words';
	String get muteWordsDescription => 'Separate with spaces for an AND condition or with line breaks for an OR condition.';
	String get muteWordsDescription2 => 'Surround keywords with slashes to use regular expressions.';
}

// Path: misskey.instanceMute_
class _StringsMisskeyInstanceMuteEnUs {
	_StringsMisskeyInstanceMuteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get instanceMuteDescription => 'This will mute any notes/renotes from the listed instances, including those of users replying to a user from a muted instance.';
	String get instanceMuteDescription2 => 'Separate with newlines';
	String get title => 'Hides notes from listed instances.';
	String get heading => 'List of instances to be muted';
}

// Path: misskey.theme_
class _StringsMisskeyThemeEnUs {
	_StringsMisskeyThemeEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get explore => 'Explore Themes';
	String get install => 'Install a theme';
	String get manage => 'Manage themes';
	String get code => 'Theme code';
	String get description => 'Description';
	String installed({required Object name}) => '${name} has been installed';
	String get installedThemes => 'Installed themes';
	String get builtinThemes => 'Built-in themes';
	String get alreadyInstalled => 'This theme is already installed';
	String get invalid => 'The format of this theme is invalid';
	String get make => 'Make a theme';
	String get base => 'Base';
	String get addConstant => 'Add constant';
	String get constant => 'Constant';
	String get defaultValue => 'Default value';
	String get color => 'Color';
	String get refProp => 'Reference a property';
	String get refConst => 'Reference a constant';
	String get key => 'Key';
	String get func => 'Functions';
	String get funcKind => 'Function type';
	String get argument => 'Argument';
	String get basedProp => 'Referenced property';
	String get alpha => 'Opacity';
	String get darken => 'Darken';
	String get lighten => 'Lighten';
	String get inputConstantName => 'Enter a name for this constant';
	String get importInfo => 'If you enter theme code here, you can import it to the theme editor';
	String deleteConstantConfirm({required Object const_}) => 'Do you really want to delete the constant ${const_}?';
	late final _StringsMisskeyThemeKeysEnUs keys = _StringsMisskeyThemeKeysEnUs._(_root);
}

// Path: misskey.sfx_
class _StringsMisskeySfxEnUs {
	_StringsMisskeySfxEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get note => 'New note';
	String get noteMy => 'Own note';
	String get notification => 'Notifications';
	String get antenna => 'Antennas';
	String get channel => 'Channel notifications';
	String get reaction => 'On choosing a reaction';
}

// Path: misskey.soundSettings_
class _StringsMisskeySoundSettingsEnUs {
	_StringsMisskeySoundSettingsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get driveFile => 'Use an audio file in Drive.';
	String get driveFileWarn => 'Select an audio file from Drive.';
	String get driveFileTypeWarn => 'This file is not supported';
	String get driveFileTypeWarnDescription => 'Select an audio file';
	String get driveFileDurationWarn => 'The audio is too long.';
	String get driveFileDurationWarnDescription => 'Long audio may disrupt using Misskey. Still continue?';
}

// Path: misskey.ago_
class _StringsMisskeyAgoEnUs {
	_StringsMisskeyAgoEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get future => 'Future';
	String get justNow => 'Just now';
	String secondsAgo({required Object n}) => '${n}s ago';
	String minutesAgo({required Object n}) => '${n}m ago';
	String hoursAgo({required Object n}) => '${n}h ago';
	String daysAgo({required Object n}) => '${n}d ago';
	String weeksAgo({required Object n}) => '${n}w ago';
	String monthsAgo({required Object n}) => '${n}mo ago';
	String yearsAgo({required Object n}) => '${n}y ago';
	String get invalid => 'None';
}

// Path: misskey.timeIn_
class _StringsMisskeyTimeInEnUs {
	_StringsMisskeyTimeInEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String seconds({required Object n}) => 'In ${n}s';
	String minutes({required Object n}) => 'In ${n}m';
	String hours({required Object n}) => 'In ${n}h';
	String days({required Object n}) => 'In ${n}d';
	String weeks({required Object n}) => 'In ${n}w';
	String months({required Object n}) => 'In ${n}mo';
	String years({required Object n}) => 'In ${n}y';
}

// Path: misskey.time_
class _StringsMisskeyTimeEnUs {
	_StringsMisskeyTimeEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get second => 'Second(s)';
	String get minute => 'Minute(s)';
	String get hour => 'Hour(s)';
	String get day => 'Day(s)';
}

// Path: misskey.x2fa_
class _StringsMisskeyX2faEnUs {
	_StringsMisskeyX2faEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get alreadyRegistered => 'You have already registered a 2-factor authentication device.';
	String get registerTOTP => 'Register authenticator app';
	String step1({required Object a, required Object b}) => 'First, install an authentication app (such as ${a} or ${b}) on your device.';
	String get step2 => 'Then, scan the QR code displayed on this screen.';
	String get step2Click => 'Clicking on this QR code will allow you to register 2FA to your security key or phone authenticator app.';
	String get step2Uri => 'Enter the following URI if you are using a desktop program';
	String get step3Title => 'Enter an authentication code';
	String get step3 => 'Enter the authentication code (token) provided by your app to finish setup.';
	String get setupCompleted => 'Setup complete';
	String get step4 => 'From now on, any future login attempts will ask for such a login token.';
	String get securityKeyNotSupported => 'Your browser does not support security keys.';
	String get registerTOTPBeforeKey => 'Please set up an authenticator app to register a security or pass key.';
	String get securityKeyInfo => 'Besides fingerprint or PIN authentication, you can also setup authentication via hardware security keys that support FIDO2 to further secure your account.';
	String get registerSecurityKey => 'Register a security or pass key';
	String get securityKeyName => 'Enter a key name';
	String get tapSecurityKey => 'Please follow your browser to register the security or pass key';
	String get removeKey => 'Remove security key';
	String removeKeyConfirm({required Object name}) => 'Really delete the ${name} key?';
	String get whyTOTPOnlyRenew => 'The authenticator app cannot be removed as long as a security key is registered.';
	String get renewTOTP => 'Reconfigure authenticator app';
	String get renewTOTPConfirm => 'This will cause verification codes from your previous app to stop working';
	String get renewTOTPOk => 'Reconfigure';
	String get renewTOTPCancel => 'Cancel';
	String get checkBackupCodesBeforeCloseThisWizard => 'Before you close this window, please note the following backup codes.';
	String get backupCodes => 'Backup codes';
	String get backupCodesDescription => 'You can use these codes to gain access to your account in case of becoming unable to use your two-factor authentificator app. Each can only be used once. Please keep them in a safe place.';
	String get backupCodeUsedWarning => 'A backup code has been used. Please reconfigure two-factor authentification as soon as possible if you are no longer able to use it.';
	String get backupCodesExhaustedWarning => 'All backup codes have been used. Should you lose access to your two-factor authentification app, you will be unable to access this account. Please reconfigure two-factor authentification.';
}

// Path: misskey.permissions_
class _StringsMisskeyPermissionsEnUs {
	_StringsMisskeyPermissionsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get readAccount => 'View your account information';
	String get writeAccount => 'Edit your account information';
	String get readBlocks => 'View your list of blocked users';
	String get writeBlocks => 'Edit your list of blocked users';
	String get readDrive => 'Access your Drive files and folders';
	String get writeDrive => 'Edit or delete your Drive files and folders';
	String get readFavorites => 'View your list of favorites';
	String get writeFavorites => 'Edit your list of favorites';
	String get readFollowing => 'View information on who you follow';
	String get writeFollowing => 'Follow or unfollow other accounts';
	String get readMessaging => 'View your chats';
	String get writeMessaging => 'Compose or delete chat messages';
	String get readMutes => 'View your list of muted users';
	String get writeMutes => 'Edit your list of muted users';
	String get writeNotes => 'Compose or delete notes';
	String get readNotifications => 'View your notifications';
	String get writeNotifications => 'Manage your notifications';
	String get readReactions => 'View your reactions';
	String get writeReactions => 'Edit your reactions';
	String get writeVotes => 'Vote on a poll';
	String get readPages => 'View your Pages';
	String get writePages => 'Edit or delete your Pages';
	String get readPageLikes => 'View list of liked Pages';
	String get writePageLikes => 'Edit list of liked Pages';
	String get readUserGroups => 'View your user groups';
	String get writeUserGroups => 'Edit or delete your user groups';
	String get readChannels => 'View your channels';
	String get writeChannels => 'Edit your channels';
	String get readGallery => 'View your gallery';
	String get writeGallery => 'Edit your gallery';
	String get readGalleryLikes => 'View your list of liked gallery posts';
	String get writeGalleryLikes => 'Edit your list of liked gallery posts';
	String get readFlash => 'View Play';
	String get writeFlash => 'Edit Plays';
	String get readFlashLikes => 'View list of liked Plays';
	String get writeFlashLikes => 'Edit list of liked Plays';
	String get readAdminAbuseUserReports => 'View user reports';
	String get writeAdminDeleteAccount => 'Delete user account';
	String get writeAdminDeleteAllFilesOfAUser => 'Delete all files of a user';
	String get readAdminIndexStats => 'View database index stats';
	String get readAdminTableStats => 'View database table stats';
	String get readAdminUserIps => 'View user IP addresses';
	String get readAdminMeta => 'View instance metadata';
	String get writeAdminResetPassword => 'Reset user password';
	String get writeAdminResolveAbuseUserReport => 'Resolve user report';
	String get writeAdminSendEmail => 'Send email';
	String get readAdminServerInfo => 'View server info';
	String get readAdminShowModerationLog => 'View moderation log';
	String get readAdminShowUser => 'View private user info';
	String get readAdminShowUsers => 'View private user info';
	String get writeAdminSuspendUser => 'Suspend user';
	String get writeAdminUnsetUserAvatar => 'Remove user avatar';
	String get writeAdminUnsetUserBanner => 'Remove user banner';
	String get writeAdminUnsuspendUser => 'Unsuspend user';
	String get writeAdminMeta => 'Manage instance metadata';
	String get writeAdminUserNote => 'Manage moderation note';
	String get writeAdminRoles => 'Manage roles';
	String get readAdminRoles => 'View roles';
	String get writeAdminRelays => 'Manage relays';
	String get readAdminRelays => 'View relays';
	String get writeAdminInviteCodes => 'Manage invite codes';
	String get readAdminInviteCodes => 'View invite codes';
	String get writeAdminAnnouncements => 'Manage announcements';
	String get readAdminAnnouncements => 'View announcements';
	String get writeAdminAvatarDecorations => 'Manage avatar decorations';
	String get readAdminAvatarDecorations => 'View avatar decorations';
	String get writeAdminFederation => 'Manage federation data';
	String get writeAdminAccount => 'Manage user account';
	String get readAdminAccount => 'View user account';
	String get writeAdminEmoji => 'Manage emoji';
	String get readAdminEmoji => 'View emoji';
	String get writeAdminQueue => 'Manage job queue';
	String get readAdminQueue => 'View job queue info';
	String get writeAdminPromo => 'Manage promotion notes';
	String get writeAdminDrive => 'Manage user drive';
	String get readAdminDrive => 'View user drive info';
	String get readAdminStream => 'Use WebSocket API for Admin';
	String get writeAdminAd => 'Manage ads';
	String get readAdminAd => 'View ads';
	String get writeInviteCodes => 'Create invite codes';
	String get readInviteCodes => 'Get invite codes';
	String get writeClipFavorite => 'Manage favorited clips';
	String get readClipFavorite => 'View favorited clips';
	String get readFederation => 'Get federation data';
	String get writeReportAbuse => 'Report violation';
}

// Path: misskey.auth_
class _StringsMisskeyAuthEnUs {
	_StringsMisskeyAuthEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get shareAccessTitle => 'Granting application permissions';
	String shareAccess({required Object name}) => 'Would you like to authorize "${name}" to access this account?';
	String get shareAccessAsk => 'Are you sure you want to authorize this application to access your account?';
	String permission({required Object name}) => '${name} requests the following permissions';
	String get permissionAsk => 'This application requests the following permissions';
	String get pleaseGoBack => 'Please go back to the application';
	String get callback => 'Returning to the application';
	String get denied => 'Access denied';
	String get pleaseLogin => 'Please log in to authorize applications.';
}

// Path: misskey.antennaSources_
class _StringsMisskeyAntennaSourcesEnUs {
	_StringsMisskeyAntennaSourcesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get all => 'All notes';
	String get homeTimeline => 'Notes from followed users';
	String get users => 'Notes from specific users';
	String get userList => 'Notes from a specified list of users';
	String get userBlacklist => 'All notes except for those of one or more specified users';
}

// Path: misskey.weekday_
class _StringsMisskeyWeekdayEnUs {
	_StringsMisskeyWeekdayEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sunday => 'Sunday';
	String get monday => 'Monday';
	String get tuesday => 'Tuesday';
	String get wednesday => 'Wednesday';
	String get thursday => 'Thursday';
	String get friday => 'Friday';
	String get saturday => 'Saturday';
}

// Path: misskey.widgets_
class _StringsMisskeyWidgetsEnUs {
	_StringsMisskeyWidgetsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profile => 'Profile';
	String get instanceInfo => 'Instance Information';
	String get memo => 'Sticky notes';
	String get notifications => 'Notifications';
	String get timeline => 'Timeline';
	String get calendar => 'Calendar';
	String get trends => 'Trending';
	String get clock => 'Clock';
	String get rss => 'RSS reader';
	String get rssTicker => 'RSS-Ticker';
	String get activity => 'Activity';
	String get photos => 'Photos';
	String get digitalClock => 'Digital clock';
	String get unixClock => 'UNIX clock';
	String get federation => 'Federation';
	String get instanceCloud => 'Instance cloud';
	String get postForm => 'Posting form';
	String get slideshow => 'Slideshow';
	String get button => 'Button';
	String get onlineUsers => 'Online users';
	String get jobQueue => 'Job Queue';
	String get serverMetric => 'Server metrics';
	String get aiscript => 'AiScript console';
	String get aiscriptApp => 'AiScript App';
	String get aichan => 'Ai';
	String get userList => 'User list';
	late final _StringsMisskeyWidgetsUserListEnUs userList_ = _StringsMisskeyWidgetsUserListEnUs._(_root);
	String get clicker => 'Clicker';
	String get birthdayFollowings => 'Users who celebrate their birthday today';
}

// Path: misskey.cw_
class _StringsMisskeyCwEnUs {
	_StringsMisskeyCwEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hide => 'Hide';
	String get show => 'Show content';
	String chars({required Object count}) => '${count} characters';
	String files({required Object count}) => '${count} file(s)';
}

// Path: misskey.poll_
class _StringsMisskeyPollEnUs {
	_StringsMisskeyPollEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noOnlyOneChoice => 'At least two choices are needed';
	String choiceN({required Object n}) => 'Choice ${n}';
	String get noMore => 'You cannot add more choices';
	String get canMultipleVote => 'Allow selecting multiple choices';
	String get expiration => 'End poll';
	String get infinite => 'Never';
	String get at => 'End at...';
	String get after => 'End after...';
	String get deadlineDate => 'End date';
	String get deadlineTime => 'Time';
	String get duration => 'Duration';
	String votesCount({required Object n}) => '${n} votes';
	String totalVotes({required Object n}) => '${n} votes in total';
	String get vote => 'Vote';
	String get showResult => 'View results';
	String get voted => 'Voted';
	String get closed => 'Ended';
	String remainingDays({required Object d, required Object h}) => '${d} day(s) ${h} hour(s) remaining';
	String remainingHours({required Object h, required Object m}) => '${h} hour(s) ${m} minute(s) remaining';
	String remainingMinutes({required Object m, required Object s}) => '${m} minute(s) ${s} second(s) remaining';
	String remainingSeconds({required Object s}) => '${s} second(s) remaining';
}

// Path: misskey.visibility_
class _StringsMisskeyVisibilityEnUs {
	_StringsMisskeyVisibilityEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get public => 'Public';
	String get publicDescription => 'Your note will be visible for all users';
	String get home => 'Home';
	String get homeDescription => 'Post to home timeline only';
	String get followers => 'Followers';
	String get followersDescription => 'Make visible to your followers only';
	String get specified => 'Direct';
	String get specifiedDescription => 'Make visible for specified users only';
	String get disableFederation => 'Defederate';
	String get disableFederationDescription => 'Don\'t transmit to other instances';
}

// Path: misskey.postForm_
class _StringsMisskeyPostFormEnUs {
	_StringsMisskeyPostFormEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get replyPlaceholder => 'Reply to this note...';
	String get quotePlaceholder => 'Quote this note...';
	String get channelPlaceholder => 'Post to a channel...';
	late final _StringsMisskeyPostFormPlaceholdersEnUs placeholders_ = _StringsMisskeyPostFormPlaceholdersEnUs._(_root);
}

// Path: misskey.profile_
class _StringsMisskeyProfileEnUs {
	_StringsMisskeyProfileEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
	String get username => 'Username';
	String get description => 'Bio';
	String get youCanIncludeHashtags => 'You can also include hashtags in your bio.';
	String get metadata => 'Additional Information';
	String get metadataEdit => 'Edit additional Information';
	String get metadataDescription => 'Using these, you can display additional information fields in your profile.';
	String get metadataLabel => 'Label';
	String get metadataContent => 'Content';
	String get changeAvatar => 'Change avatar';
	String get changeBanner => 'Change banner';
	String get verifiedLinkDescription => 'By entering an URL that contains a link to your profile here, an ownership verification icon can be displayed next to the field.';
	String avatarDecorationMax({required Object max}) => 'You can add up to ${max} decorations.';
}

// Path: misskey.exportOrImport_
class _StringsMisskeyExportOrImportEnUs {
	_StringsMisskeyExportOrImportEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get allNotes => 'All notes';
	String get favoritedNotes => 'Favorite notes';
	String get clips => 'Clip';
	String get followingList => 'Followed users';
	String get muteList => 'Muted users';
	String get blockingList => 'Blocked users';
	String get userLists => 'User lists';
	String get excludeMutingUsers => 'Exclude muted users';
	String get excludeInactiveUsers => 'Exclude inactive users';
	String get withReplies => 'Include replies from imported users in the timeline';
}

// Path: misskey.charts_
class _StringsMisskeyChartsEnUs {
	_StringsMisskeyChartsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get federation => 'Federation';
	String get apRequest => 'Requests';
	String get usersIncDec => 'Difference in the number of users';
	String get usersTotal => 'Total number of users';
	String get activeUsers => 'Active users';
	String get notesIncDec => 'Difference in the number of notes';
	String get localNotesIncDec => 'Difference in the number of local notes';
	String get remoteNotesIncDec => 'Difference in the number of remote notes';
	String get notesTotal => 'Total number of notes';
	String get filesIncDec => 'Difference in the number of files';
	String get filesTotal => 'Total number of files';
	String get storageUsageIncDec => 'Difference in storage usage';
	String get storageUsageTotal => 'Total storage usage';
}

// Path: misskey.instanceCharts_
class _StringsMisskeyInstanceChartsEnUs {
	_StringsMisskeyInstanceChartsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get requests => 'Requests';
	String get users => 'Difference in the number of users';
	String get usersTotal => 'Cumulative number of users';
	String get notes => 'Difference in the number of notes';
	String get notesTotal => 'Cumulative number of notes';
	String get ff => 'Difference in the number of followed users / followers ';
	String get ffTotal => 'Cumulative number of followed users / followers';
	String get cacheSize => 'Difference in cache size';
	String get cacheSizeTotal => 'Cumulative total cache size';
	String get files => 'Difference in the number of files';
	String get filesTotal => 'Cumulative number of files';
}

// Path: misskey.timelines_
class _StringsMisskeyTimelinesEnUs {
	_StringsMisskeyTimelinesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get local => 'Local';
	String get social => 'Social';
	String get global => 'Global';
}

// Path: misskey.play_
class _StringsMisskeyPlayEnUs {
	_StringsMisskeyPlayEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get new_ => 'Create Play';
	String get edit => 'Edit Play';
	String get created => 'Play created';
	String get updated => 'Play edited';
	String get deleted => 'Play deleted';
	String get pageSetting => 'Play settings';
	String get editThisPage => 'Edit this Play';
	String get viewSource => 'View source';
	String get my => 'My Plays';
	String get liked => 'Liked Plays';
	String get featured => 'Popular';
	String get title => 'Title';
	String get script => 'Script';
	String get summary => 'Description';
}

// Path: misskey.pages_
class _StringsMisskeyPagesEnUs {
	_StringsMisskeyPagesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get newPage => 'Create a new Page';
	String get editPage => 'Edit this Page';
	String get readPage => 'Viewing this Page\'s source';
	String get created => 'Page successfully created';
	String get updated => 'Page successfully edited';
	String get deleted => 'Page successfully deleted';
	String get pageSetting => 'Page settings';
	String get nameAlreadyExists => 'The specified Page URL already exists';
	String get invalidNameTitle => 'The specified Page URL is invalid';
	String get invalidNameText => 'Make sure the Page title is not empty';
	String get editThisPage => 'Edit this Page';
	String get viewSource => 'View source';
	String get viewPage => 'View your Pages';
	String get like => 'Like';
	String get unlike => 'Remove like';
	String get my => 'My Pages';
	String get liked => 'Liked Pages';
	String get featured => 'Popular';
	String get inspector => 'Inspector';
	String get contents => 'Contents';
	String get content => 'Page block';
	String get variables => 'Variables';
	String get title => 'Title';
	String get url => 'Page URL';
	String get summary => 'Page summary';
	String get alignCenter => 'Center elements';
	String get hideTitleWhenPinned => 'Hide Page title when pinned to profile';
	String get font => 'Font';
	String get fontSerif => 'Serif';
	String get fontSansSerif => 'Sans Serif';
	String get eyeCatchingImageSet => 'Set thumbnail';
	String get eyeCatchingImageRemove => 'Delete thumbnail';
	String get chooseBlock => 'Add a block';
	String get selectType => 'Select a type';
	String get contentBlocks => 'Content';
	String get inputBlocks => 'Input';
	String get specialBlocks => 'Special';
	late final _StringsMisskeyPagesBlocksEnUs blocks = _StringsMisskeyPagesBlocksEnUs._(_root);
}

// Path: misskey.relayStatus_
class _StringsMisskeyRelayStatusEnUs {
	_StringsMisskeyRelayStatusEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get requesting => 'Pending';
	String get accepted => 'Accepted';
	String get rejected => 'Rejected';
}

// Path: misskey.notification_
class _StringsMisskeyNotificationEnUs {
	_StringsMisskeyNotificationEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fileUploaded => 'File successfully uploaded';
	String youGotMention({required Object name}) => '${name} mentioned you';
	String youGotReply({required Object name}) => '${name} replied to you';
	String youGotQuote({required Object name}) => '${name} quoted you';
	String youRenoted({required Object name}) => 'Renote from ${name}';
	String get youWereFollowed => 'followed you';
	String get youReceivedFollowRequest => 'You\'ve received a follow request';
	String get yourFollowRequestAccepted => 'Your follow request was accepted';
	String get pollEnded => 'Poll results have become available';
	String get newNote => 'New note';
	String unreadAntennaNote({required Object name}) => 'Antenna ${name}';
	String get roleAssigned => 'Role given';
	String get emptyPushNotificationMessage => 'Push notifications have been updated';
	String get achievementEarned => 'Achievement unlocked';
	String get testNotification => 'Test notification';
	String get checkNotificationBehavior => 'Check notification appearance';
	String get sendTestNotification => 'Send test notification';
	String get notificationWillBeDisplayedLikeThis => 'Notifications look like this';
	String reactedBySomeUsers({required Object n}) => '${n} users reacted';
	String renotedBySomeUsers({required Object n}) => 'Renote from ${n} users';
	String followedBySomeUsers({required Object n}) => 'Followed by ${n} users';
	String get flushNotification => 'Clear notifications';
	late final _StringsMisskeyNotificationTypesEnUs types_ = _StringsMisskeyNotificationTypesEnUs._(_root);
	late final _StringsMisskeyNotificationActionsEnUs actions_ = _StringsMisskeyNotificationActionsEnUs._(_root);
}

// Path: misskey.deck_
class _StringsMisskeyDeckEnUs {
	_StringsMisskeyDeckEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get alwaysShowMainColumn => 'Always show main column';
	String get columnAlign => 'Align columns';
	String get addColumn => 'Add column';
	String get configureColumn => 'Column settings';
	String get swapLeft => 'Swap with the left column';
	String get swapRight => 'Swap with the right column';
	String get swapUp => 'Swap with the above column';
	String get swapDown => 'Swap with the below column';
	String get stackLeft => 'Stack on left column';
	String get popRight => 'Pop column to the right';
	String get profile => 'Profile';
	String get newProfile => 'New profile';
	String get deleteProfile => 'Delete profile';
	String get introduction => 'Create the perfect interface for you by arranging columns freely!';
	String get introduction2 => 'Click on the + on the right of the screen to add new colums whenever you want.';
	String get widgetsIntroduction => 'Please select "Edit widgets" in the column menu and add a widget.';
	String get useSimpleUiForNonRootPages => 'Use simple UI for navigated pages';
	String get usedAsMinWidthWhenFlexible => 'Minimum width will be used for this when the "Auto-adjust width" option is enabled';
	String get flexible => 'Auto-adjust width';
	late final _StringsMisskeyDeckColumnsEnUs columns_ = _StringsMisskeyDeckColumnsEnUs._(_root);
}

// Path: misskey.dialog_
class _StringsMisskeyDialogEnUs {
	_StringsMisskeyDialogEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String charactersExceeded({required Object current, required Object max}) => 'You\'ve exceeded the maximum character limit! Currently at ${current} of ${max}.';
	String charactersBelow({required Object current, required Object min}) => 'You\'re below the minimum character limit! Currently at ${current} of ${min}.';
}

// Path: misskey.disabledTimeline_
class _StringsMisskeyDisabledTimelineEnUs {
	_StringsMisskeyDisabledTimelineEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Timeline disabled';
	String get description => 'You cannot use this timeline under your current roles.';
}

// Path: misskey.drivecleaner_
class _StringsMisskeyDrivecleanerEnUs {
	_StringsMisskeyDrivecleanerEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get orderBySizeDesc => 'Descending Filesizes';
	String get orderByCreatedAtAsc => 'Ascending Dates';
}

// Path: misskey.webhookSettings_
class _StringsMisskeyWebhookSettingsEnUs {
	_StringsMisskeyWebhookSettingsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createWebhook => 'Create Webhook';
	String get name => 'Name';
	String get secret => 'Secret';
	String get events => 'Webhook Events';
	String get active => 'Enabled';
	late final _StringsMisskeyWebhookSettingsEventsEnUs events_ = _StringsMisskeyWebhookSettingsEventsEnUs._(_root);
}

// Path: misskey.moderationLogTypes_
class _StringsMisskeyModerationLogTypesEnUs {
	_StringsMisskeyModerationLogTypesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createRole => 'Role created';
	String get deleteRole => 'Role deleted';
	String get updateRole => 'Role updated';
	String get assignRole => 'Assigned to role';
	String get unassignRole => 'Removed from role';
	String get suspend => 'Suspended';
	String get unsuspend => 'Unsuspended';
	String get addCustomEmoji => 'Custom emoji added';
	String get updateCustomEmoji => 'Custom emoji updated';
	String get deleteCustomEmoji => 'Custom emoji deleted';
	String get updateServerSettings => 'Server settings updated';
	String get updateUserNote => 'Moderation note updated';
	String get deleteDriveFile => 'File deleted';
	String get deleteNote => 'Note deleted';
	String get createGlobalAnnouncement => 'Global announcement created';
	String get createUserAnnouncement => 'User announcement created';
	String get updateGlobalAnnouncement => 'Global announcement updated';
	String get updateUserAnnouncement => 'User announcement updated';
	String get deleteGlobalAnnouncement => 'Global announcement deleted';
	String get deleteUserAnnouncement => 'User announcement deleted';
	String get resetPassword => 'Password reset';
	String get suspendRemoteInstance => 'Remote instance suspended';
	String get unsuspendRemoteInstance => 'Remote instance unsuspended';
	String get updateRemoteInstanceNote => 'Moderation note updated for remote instance.';
	String get markSensitiveDriveFile => 'File marked as sensitive';
	String get unmarkSensitiveDriveFile => 'File unmarked as sensitive';
	String get resolveAbuseReport => 'Report resolved';
	String get createInvitation => 'Invite generated';
	String get createAd => 'Ad created';
	String get deleteAd => 'Ad deleted';
	String get updateAd => 'Ad updated';
	String get createAvatarDecoration => 'Avatar decoration created';
	String get updateAvatarDecoration => 'Avatar decoration updated';
	String get deleteAvatarDecoration => 'Avatar decoration deleted';
	String get unsetUserAvatar => 'Unset this user\'s avatar';
	String get unsetUserBanner => 'Unset this user\'s banner';
}

// Path: misskey.fileViewer_
class _StringsMisskeyFileViewerEnUs {
	_StringsMisskeyFileViewerEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'File details';
	String get type => 'File type';
	String get size => 'Filesize';
	String get url => 'URL';
	String get uploadedAt => 'Uploaded at';
	String get attachedNotes => 'Attached notes';
	String get thisPageCanBeSeenFromTheAuthor => 'This page can only be seen by the user who uploaded this file.';
}

// Path: misskey.externalResourceInstaller_
class _StringsMisskeyExternalResourceInstallerEnUs {
	_StringsMisskeyExternalResourceInstallerEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Install from external site';
	String get checkVendorBeforeInstall => 'Make sure the distributor of this resource is trustworthy before installation.';
	late final _StringsMisskeyExternalResourceInstallerPluginEnUs plugin_ = _StringsMisskeyExternalResourceInstallerPluginEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerThemeEnUs theme_ = _StringsMisskeyExternalResourceInstallerThemeEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerMetaEnUs meta_ = _StringsMisskeyExternalResourceInstallerMetaEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerVendorInfoEnUs vendorInfo_ = _StringsMisskeyExternalResourceInstallerVendorInfoEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsEnUs errors_ = _StringsMisskeyExternalResourceInstallerErrorsEnUs._(_root);
}

// Path: misskey.dataSaver_
class _StringsMisskeyDataSaverEnUs {
	_StringsMisskeyDataSaverEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMisskeyDataSaverMediaEnUs media_ = _StringsMisskeyDataSaverMediaEnUs._(_root);
	late final _StringsMisskeyDataSaverAvatarEnUs avatar_ = _StringsMisskeyDataSaverAvatarEnUs._(_root);
	late final _StringsMisskeyDataSaverUrlPreviewEnUs urlPreview_ = _StringsMisskeyDataSaverUrlPreviewEnUs._(_root);
	late final _StringsMisskeyDataSaverCodeEnUs code_ = _StringsMisskeyDataSaverCodeEnUs._(_root);
}

// Path: misskey.hemisphere_
class _StringsMisskeyHemisphereEnUs {
	_StringsMisskeyHemisphereEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get N => 'Northern Hemisphere';
	String get S => 'Southern Hemisphere';
	String get caption => 'Used in some client settings to determine season.';
}

// Path: misskey.reversi_
class _StringsMisskeyReversiEnUs {
	_StringsMisskeyReversiEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get reversi => 'Reversi';
	String get gameSettings => 'Game settings';
	String get chooseBoard => 'Choose a board';
	String get blackOrWhite => 'Black/White';
	String blackIs({required Object name}) => '${name} is playing Black';
	String get rules => 'Rules';
	String get thisGameIsStartedSoon => 'The game will begin shortly';
	String get waitingForOther => 'Waiting for opponent\'s turn';
	String get waitingForMe => 'Waiting for your turn';
	String get waitingBoth => 'Get ready';
	String get ready => 'Ready';
	String get cancelReady => 'Not ready';
	String get opponentTurn => 'Opponent\'s turn';
	String get myTurn => 'Your turn';
	String turnOf({required Object name}) => 'It\'s ${name}\'s turn';
	String pastTurnOf({required Object name}) => '${name}\'s turn';
	String get surrender => 'Surrender';
	String get surrendered => 'Surrendered';
	String get timeout => 'Out of time';
	String get drawn => 'Draw';
	String won({required Object name}) => '${name} wins';
	String get black => 'Black';
	String get white => 'White';
	String get total => 'Total';
	String turnCount({required Object count}) => 'Turn ${count}';
	String get myGames => 'My rounds';
	String get allGames => 'All rounds';
	String get ended => 'Ended';
	String get playing => 'Currently playing';
	String get isLlotheo => 'The one with fewer stones wins (Llotheo)';
	String get loopedMap => 'Looping map';
	String get canPutEverywhere => 'Tiles are placeable everywhere';
	String get timeLimitForEachTurn => 'Time limit for turn';
	String get freeMatch => 'Free Match';
	String get lookingForPlayer => 'Finding opponent...';
	String get gameCanceled => 'The game has been cancelled.';
	String get shareToTlTheGameWhenStart => 'Share Game to timeline when started';
	String get iStartedAGame => 'The game has begun! #MisskeyReversi';
	String get opponentHasSettingsChanged => 'The opponent has changed their settings.';
	String get allowIrregularRules => 'Irregular rules (completely free)';
	String get disallowIrregularRules => 'No irregular rules';
	String get showBoardLabels => 'Display row and column numbering on the board';
	String get useAvatarAsStone => 'Turn stones into user avatars';
}

// Path: misskey.offlineScreen_
class _StringsMisskeyOfflineScreenEnUs {
	_StringsMisskeyOfflineScreenEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Offline - cannot connect to the server';
	String get header => 'Unable to connect to the server';
}

// Path: misskeyIO.skebStatus_
class _StringsMisskeyIOSkebStatusEnUs {
	_StringsMisskeyIOSkebStatusEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMisskeyIOSkebStatusGenresEnUs genres_ = _StringsMisskeyIOSkebStatusGenresEnUs._(_root);
	String get seeking => 'Seeking';
	String get stopped => 'Stopped';
	String get client => 'Client';
	String yenX({required Object x}) => 'JPY ${x}';
	String nWorks({required Object n}) => 'Delivered ${n} works';
	String nRequests({required Object n}) => 'Requested ${n} times';
}

// Path: misskey.bubbleGame_.score_
class _StringsMisskeyBubbleGameScoreEnUs {
	_StringsMisskeyBubbleGameScoreEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get score => 'Score';
	String get scoreYen => 'Amount of money earned';
	String get highScore => 'High score';
	String get maxChain => 'Maximum number of chains';
	String yen({required Object yen}) => '${yen} Yen';
	String estimatedQty({required Object qty}) => '${qty} Pieces';
	String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} Onigiri';
}

// Path: misskey.bubbleGame_.howToPlay_
class _StringsMisskeyBubbleGameHowToPlayEnUs {
	_StringsMisskeyBubbleGameHowToPlayEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get section1 => 'Adjust the position and drop the object into the box.';
	String get section2 => 'When two objects of the same type touch each other, they will change into a different object and you score points.';
	String get section3 => 'The game is over when objects overflow from the box. Aim for a high score by fusing objects together while you avoid overflowing the box!';
}

// Path: misskey.initialTutorial_.landing_
class _StringsMisskeyInitialTutorialLandingEnUs {
	_StringsMisskeyInitialTutorialLandingEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome to the Tutorial';
	String get description => 'Here, you can learn the basics of using Misskey and its features.';
}

// Path: misskey.initialTutorial_.note_
class _StringsMisskeyInitialTutorialNoteEnUs {
	_StringsMisskeyInitialTutorialNoteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'What is a Note?';
	String get description => 'Posts on Misskey are called \'Notes.\' Notes are arranged chronologically on the timeline and are updated in real-time.';
	String get reply => 'Click on this button to reply to a message. It\'s also possible to reply to replies, continuing the conversation like a thread.';
	String get renote => 'You can share that note to your own timeline. You can also quote them with your comments.';
	String get reaction => 'You can add reactions to the Note. More details will be explained on the next page.';
	String get menu => 'You can view Note details, copy links, and perform various other actions.';
}

// Path: misskey.initialTutorial_.reaction_
class _StringsMisskeyInitialTutorialReactionEnUs {
	_StringsMisskeyInitialTutorialReactionEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'What are Reactions?';
	String get description => 'Notes can be reacted to with various emojis. Reactions allow you to express nuances that may not be conveyed with just a \'like.\'';
	String get letsTryReacting => 'Reactions can be added by clicking the \'+\' button on the note. Try reacting to this sample note!';
	String get reactToContinue => 'Add a reaction to proceed.';
	String get reactNotification => 'You\'ll receive real-time notifications when someone reacts to your note.';
	String get reactDone => 'You can undo a reaction by pressing the \'-\' button.';
}

// Path: misskey.initialTutorial_.timeline_
class _StringsMisskeyInitialTutorialTimelineEnUs {
	_StringsMisskeyInitialTutorialTimelineEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'The Concept of Timelines';
	String get description1 => 'Misskey provides multiple timelines based on usage (some may not be available depending on the server\'s policies).';
	String get home => 'You can view notes from accounts you follow.';
	String get local => 'You can view notes from all users on this server.';
	String get social => 'Notes from the Home and Local timelines will be displayed.';
	String get global => 'You can view notes from all connected servers.';
	String get description2 => 'You can switch between timelines at the top of the screen at any time.';
	String description3({required Object link}) => 'Additionally, there are list timelines and channel timelines. For more details, please refer to ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _StringsMisskeyInitialTutorialPostNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Note Posting Settings';
	String get description1 => 'When posting a note on Misskey, various options are available. The posting form looks like this.';
	late final _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs visibility_ = _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs._(_root);
	late final _StringsMisskeyInitialTutorialPostNoteCwEnUs cw_ = _StringsMisskeyInitialTutorialPostNoteCwEnUs._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'How to Mark Attachments as Sensitive?';
	String get description => 'For attachments that are required by server guidelines or that should not be left intact, add a "sensitive" flag.';
	String get tryThisFile => 'Try marking the image attached in this form as sensitive!';
	late final _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs exampleNote_ = _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs._(_root);
	String get method => 'To mark an attachment as sensitive, click the file thumbnail, open the menu, and click "Mark as Sensitive."';
	String get sensitiveSucceeded => 'When attaching files, please set sensitivities in accordance with the server guidelines.';
	String get doItToContinue => 'Mark the attachment file as sensitive to proceed.';
}

// Path: misskey.initialTutorial_.done_
class _StringsMisskeyInitialTutorialDoneEnUs {
	_StringsMisskeyInitialTutorialDoneEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'You\'ve completed the tutorial! 🎉';
	String description({required Object link}) => 'The functions introduced here are just a small part. For a more detailed understanding of using Misskey, please refer to ${link}.';
}

// Path: misskey.achievements_.types_
class _StringsMisskeyAchievementsTypesEnUs {
	_StringsMisskeyAchievementsTypesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMisskeyAchievementsTypesNotes1EnUs notes1_ = _StringsMisskeyAchievementsTypesNotes1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes10EnUs notes10_ = _StringsMisskeyAchievementsTypesNotes10EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes100EnUs notes100_ = _StringsMisskeyAchievementsTypesNotes100EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes500EnUs notes500_ = _StringsMisskeyAchievementsTypesNotes500EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes1000EnUs notes1000_ = _StringsMisskeyAchievementsTypesNotes1000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes5000EnUs notes5000_ = _StringsMisskeyAchievementsTypesNotes5000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes10000EnUs notes10000_ = _StringsMisskeyAchievementsTypesNotes10000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes20000EnUs notes20000_ = _StringsMisskeyAchievementsTypesNotes20000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes30000EnUs notes30000_ = _StringsMisskeyAchievementsTypesNotes30000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes40000EnUs notes40000_ = _StringsMisskeyAchievementsTypesNotes40000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes50000EnUs notes50000_ = _StringsMisskeyAchievementsTypesNotes50000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes60000EnUs notes60000_ = _StringsMisskeyAchievementsTypesNotes60000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes70000EnUs notes70000_ = _StringsMisskeyAchievementsTypesNotes70000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes80000EnUs notes80000_ = _StringsMisskeyAchievementsTypesNotes80000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes90000EnUs notes90000_ = _StringsMisskeyAchievementsTypesNotes90000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNotes100000EnUs notes100000_ = _StringsMisskeyAchievementsTypesNotes100000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin3EnUs login3_ = _StringsMisskeyAchievementsTypesLogin3EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin7EnUs login7_ = _StringsMisskeyAchievementsTypesLogin7EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin15EnUs login15_ = _StringsMisskeyAchievementsTypesLogin15EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin30EnUs login30_ = _StringsMisskeyAchievementsTypesLogin30EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin60EnUs login60_ = _StringsMisskeyAchievementsTypesLogin60EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin100EnUs login100_ = _StringsMisskeyAchievementsTypesLogin100EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin200EnUs login200_ = _StringsMisskeyAchievementsTypesLogin200EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin300EnUs login300_ = _StringsMisskeyAchievementsTypesLogin300EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin400EnUs login400_ = _StringsMisskeyAchievementsTypesLogin400EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin500EnUs login500_ = _StringsMisskeyAchievementsTypesLogin500EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin600EnUs login600_ = _StringsMisskeyAchievementsTypesLogin600EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin700EnUs login700_ = _StringsMisskeyAchievementsTypesLogin700EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin800EnUs login800_ = _StringsMisskeyAchievementsTypesLogin800EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin900EnUs login900_ = _StringsMisskeyAchievementsTypesLogin900EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLogin1000EnUs login1000_ = _StringsMisskeyAchievementsTypesLogin1000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNoteClipped1EnUs noteClipped1_ = _StringsMisskeyAchievementsTypesNoteClipped1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNoteFavorited1EnUs noteFavorited1_ = _StringsMisskeyAchievementsTypesNoteFavorited1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs myNoteFavorited1_ = _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesProfileFilledEnUs profileFilled_ = _StringsMisskeyAchievementsTypesProfileFilledEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesMarkedAsCatEnUs markedAsCat_ = _StringsMisskeyAchievementsTypesMarkedAsCatEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowing1EnUs following1_ = _StringsMisskeyAchievementsTypesFollowing1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowing10EnUs following10_ = _StringsMisskeyAchievementsTypesFollowing10EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowing50EnUs following50_ = _StringsMisskeyAchievementsTypesFollowing50EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowing100EnUs following100_ = _StringsMisskeyAchievementsTypesFollowing100EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowing300EnUs following300_ = _StringsMisskeyAchievementsTypesFollowing300EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers1EnUs followers1_ = _StringsMisskeyAchievementsTypesFollowers1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers10EnUs followers10_ = _StringsMisskeyAchievementsTypesFollowers10EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers50EnUs followers50_ = _StringsMisskeyAchievementsTypesFollowers50EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers100EnUs followers100_ = _StringsMisskeyAchievementsTypesFollowers100EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers300EnUs followers300_ = _StringsMisskeyAchievementsTypesFollowers300EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers500EnUs followers500_ = _StringsMisskeyAchievementsTypesFollowers500EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFollowers1000EnUs followers1000_ = _StringsMisskeyAchievementsTypesFollowers1000EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesCollectAchievements30EnUs collectAchievements30_ = _StringsMisskeyAchievementsTypesCollectAchievements30EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesViewAchievements3minEnUs viewAchievements3min_ = _StringsMisskeyAchievementsTypesViewAchievements3minEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesILoveMisskeyEnUs iLoveMisskey_ = _StringsMisskeyAchievementsTypesILoveMisskeyEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesFoundTreasureEnUs foundTreasure_ = _StringsMisskeyAchievementsTypesFoundTreasureEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesClient30minEnUs client30min_ = _StringsMisskeyAchievementsTypesClient30minEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesClient60minEnUs client60min_ = _StringsMisskeyAchievementsTypesClient60minEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs noteDeletedWithin1min_ = _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs postedAtLateNight_ = _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs postedAt0min0sec_ = _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesSelfQuoteEnUs selfQuote_ = _StringsMisskeyAchievementsTypesSelfQuoteEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesHtl20npmEnUs htl20npm_ = _StringsMisskeyAchievementsTypesHtl20npmEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesViewInstanceChartEnUs viewInstanceChart_ = _StringsMisskeyAchievementsTypesViewInstanceChartEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs outputHelloWorldOnScratchpad_ = _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesOpen3windowsEnUs open3windows_ = _StringsMisskeyAchievementsTypesOpen3windowsEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs driveFolderCircularReference_ = _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesReactWithoutReadEnUs reactWithoutRead_ = _StringsMisskeyAchievementsTypesReactWithoutReadEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesClickedClickHereEnUs clickedClickHere_ = _StringsMisskeyAchievementsTypesClickedClickHereEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs justPlainLucky_ = _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs setNameToSyuilo_ = _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs passedSinceAccountCreated1_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs passedSinceAccountCreated2_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs passedSinceAccountCreated3_ = _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs loggedInOnBirthday_ = _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs loggedInOnNewYearsDay_ = _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesCookieClickedEnUs cookieClicked_ = _StringsMisskeyAchievementsTypesCookieClickedEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesBrainDiverEnUs brainDiver_ = _StringsMisskeyAchievementsTypesBrainDiverEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs smashTestNotificationButton_ = _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesTutorialCompletedEnUs tutorialCompleted_ = _StringsMisskeyAchievementsTypesTutorialCompletedEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs bubbleGameExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs._(_root);
	late final _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs bubbleGameDoubleExplodingHead_ = _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs._(_root);
}

// Path: misskey.role_.priority_
class _StringsMisskeyRolePriorityEnUs {
	_StringsMisskeyRolePriorityEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get low => 'Low';
	String get middle => 'Medium';
	String get high => 'High';
}

// Path: misskey.role_.options_
class _StringsMisskeyRoleOptionsEnUs {
	_StringsMisskeyRoleOptionsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get gtlAvailable => 'Can view the global timeline';
	String get ltlAvailable => 'Can view the local timeline';
	String get canPublicNote => 'Can send public notes';
	String get mentionMax => 'Maximum number of mentions in a note';
	String get canInvite => 'Can create instance invite codes';
	String get inviteLimit => 'Invite limit';
	String get inviteLimitCycle => 'Invite limit cooldown';
	String get inviteExpirationTime => 'Invite expiration interval';
	String get canManageCustomEmojis => 'Can manage custom emojis';
	String get canManageAvatarDecorations => 'Manage avatar decorations';
	String get driveCapacity => 'Drive capacity';
	String get alwaysMarkNsfw => 'Always mark files as NSFW';
	String get pinMax => 'Maximum number of pinned notes';
	String get antennaMax => 'Maximum number of antennas';
	String get wordMuteMax => 'Maximum number of characters allowed in word mutes';
	String get webhookMax => 'Maximum number of Webhooks';
	String get clipMax => 'Maximum number of Clips';
	String get noteEachClipsMax => 'Maximum number of notes within a clip';
	String get userListMax => 'Maximum number of user lists';
	String get userEachUserListsMax => 'Maximum number of users within a user list';
	String get rateLimitFactor => 'Rate limit';
	String get descriptionOfRateLimitFactor => 'Lower rate limits are less restrictive, higher ones more restrictive. ';
	String get canHideAds => 'Can hide ads';
	String get canSearchNotes => 'Usage of note search';
	String get canUseTranslator => 'Translator usage';
	String get avatarDecorationLimit => 'Maximum number of avatar decorations that can be applied';
}

// Path: misskey.role_.condition_
class _StringsMisskeyRoleConditionEnUs {
	_StringsMisskeyRoleConditionEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get roleAssignedTo => 'Assigned to manual roles';
	String get isLocal => 'Local user';
	String get isRemote => 'Remote user';
	String get createdLessThan => 'Less than X has passed since account creation';
	String get createdMoreThan => 'More than X has passed since account creation';
	String get followersLessThanOrEq => 'Has X or fewer followers';
	String get followersMoreThanOrEq => 'Has X or more followers';
	String get followingLessThanOrEq => 'Follows X or fewer accounts';
	String get followingMoreThanOrEq => 'Follows X or more accounts';
	String get notesLessThanOrEq => 'Post count is less than/equal to';
	String get notesMoreThanOrEq => 'Post count is greater than/equal to';
	String get and => 'AND-Condition';
	String get or => 'OR-Condition';
	String get not => 'NOT-Condition';
}

// Path: misskey.email_.follow_
class _StringsMisskeyEmailFollowEnUs {
	_StringsMisskeyEmailFollowEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'You\'ve got a new follower';
}

// Path: misskey.email_.receiveFollowRequest_
class _StringsMisskeyEmailReceiveFollowRequestEnUs {
	_StringsMisskeyEmailReceiveFollowRequestEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'You\'ve received a follow request';
}

// Path: misskey.theme_.keys
class _StringsMisskeyThemeKeysEnUs {
	_StringsMisskeyThemeKeysEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get accent => 'Accent';
	String get bg => 'Background';
	String get fg => 'Text';
	String get focus => 'Focus';
	String get indicator => 'Indicator';
	String get panel => 'Panel';
	String get shadow => 'Shadow';
	String get header => 'Header';
	String get navBg => 'Sidebar background';
	String get navFg => 'Sidebar text';
	String get navHoverFg => 'Sidebar text (Hover)';
	String get navActive => 'Sidebar text (Active)';
	String get navIndicator => 'Sidebar indicator';
	String get link => 'Link';
	String get hashtag => 'Hashtag';
	String get mention => 'Mention';
	String get mentionMe => 'Mentions (Me)';
	String get renote => 'Renote';
	String get modalBg => 'Modal background';
	String get divider => 'Divider';
	String get scrollbarHandle => 'Scrollbar handle';
	String get scrollbarHandleHover => 'Scrollbar handle (Hover)';
	String get dateLabelFg => 'Date label text';
	String get infoBg => 'Information background';
	String get infoFg => 'Information text';
	String get infoWarnBg => 'Warning background';
	String get infoWarnFg => 'Warning text';
	String get toastBg => 'Notification background';
	String get toastFg => 'Notification text';
	String get buttonBg => 'Button background';
	String get buttonHoverBg => 'Button background (Hover)';
	String get inputBorder => 'Input field border';
	String get listItemHoverBg => 'List item background (Hover)';
	String get driveFolderBg => 'Drive folder background';
	String get wallpaperOverlay => 'Wallpaper overlay';
	String get badge => 'Badge';
	String get messageBg => 'Chat background';
	String get accentDarken => 'Accent (Darkened)';
	String get accentLighten => 'Accent (Lightened)';
	String get fgHighlighted => 'Highlighted Text';
}

// Path: misskey.widgets_.userList_
class _StringsMisskeyWidgetsUserListEnUs {
	_StringsMisskeyWidgetsUserListEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get chooseList => 'Select a list';
}

// Path: misskey.postForm_.placeholders_
class _StringsMisskeyPostFormPlaceholdersEnUs {
	_StringsMisskeyPostFormPlaceholdersEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get a => 'What are you up to?';
	String get b => 'What\'s happening around you?';
	String get c => 'What\'s on your mind?';
	String get d => 'What do you want to say?';
	String get e => 'Start writing...';
	String get f => 'Waiting for you to write...';
}

// Path: misskey.pages_.blocks
class _StringsMisskeyPagesBlocksEnUs {
	_StringsMisskeyPagesBlocksEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => 'Text';
	String get textarea => 'Text area';
	String get section => 'Section';
	String get image => 'Images';
	String get button => 'Button';
	String get note => 'Embedded note';
	late final _StringsMisskeyPagesBlocksNoteEnUs note_ = _StringsMisskeyPagesBlocksNoteEnUs._(_root);
}

// Path: misskey.notification_.types_
class _StringsMisskeyNotificationTypesEnUs {
	_StringsMisskeyNotificationTypesEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get all => 'All';
	String get note => 'New notes';
	String get follow => 'New followers';
	String get mention => 'Mentions';
	String get reply => 'Replies';
	String get renote => 'Renotes';
	String get quote => 'Quotes';
	String get reaction => 'Reactions';
	String get pollEnded => 'Polls ending';
	String get receiveFollowRequest => 'Received follow requests';
	String get followRequestAccepted => 'Accepted follow requests';
	String get roleAssigned => 'Role given';
	String get achievementEarned => 'Achievement unlocked';
	String get app => 'Notifications from linked apps';
}

// Path: misskey.notification_.actions_
class _StringsMisskeyNotificationActionsEnUs {
	_StringsMisskeyNotificationActionsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get followBack => 'followed you back';
	String get reply => 'Reply';
	String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _StringsMisskeyDeckColumnsEnUs {
	_StringsMisskeyDeckColumnsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get main => 'Main';
	String get widgets => 'Widgets';
	String get notifications => 'Notifications';
	String get tl => 'Timeline';
	String get antenna => 'Antennas';
	String get list => 'List';
	String get channel => 'Channel';
	String get mentions => 'Mentions';
	String get direct => 'Direct notes';
	String get roleTimeline => 'Role Timeline';
}

// Path: misskey.webhookSettings_.events_
class _StringsMisskeyWebhookSettingsEventsEnUs {
	_StringsMisskeyWebhookSettingsEventsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get follow => 'When following a user';
	String get followed => 'When being followed';
	String get note => 'When posting a note';
	String get reply => 'When receiving a reply';
	String get renote => 'When renoted';
	String get reaction => 'When receiving a reaction';
	String get mention => 'When being mentioned';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _StringsMisskeyExternalResourceInstallerPluginEnUs {
	_StringsMisskeyExternalResourceInstallerPluginEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Do you want to install this plugin?';
	String get metaTitle => 'Plugin information';
}

// Path: misskey.externalResourceInstaller_.theme_
class _StringsMisskeyExternalResourceInstallerThemeEnUs {
	_StringsMisskeyExternalResourceInstallerThemeEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Do you want to install this theme?';
	String get metaTitle => 'Theme information';
}

// Path: misskey.externalResourceInstaller_.meta_
class _StringsMisskeyExternalResourceInstallerMetaEnUs {
	_StringsMisskeyExternalResourceInstallerMetaEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get base => 'Base color scheme';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _StringsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_StringsMisskeyExternalResourceInstallerVendorInfoEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Distributor information';
	String get endpoint => 'Referenced endpoint';
	String get hashVerify => 'Hash verification';
}

// Path: misskey.externalResourceInstaller_.errors_
class _StringsMisskeyExternalResourceInstallerErrorsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs invalidParams_ = _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs resourceTypeNotSupported_ = _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs failedToFetch_ = _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs hashUnmatched_ = _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs pluginParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs pluginInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs themeParseFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs._(_root);
	late final _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs themeInstallFailed_ = _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs._(_root);
}

// Path: misskey.dataSaver_.media_
class _StringsMisskeyDataSaverMediaEnUs {
	_StringsMisskeyDataSaverMediaEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Loading Media';
	String get description => 'Prevents images/videos from being loaded automatically. Hidden images/videos will be loaded when tapped.';
}

// Path: misskey.dataSaver_.avatar_
class _StringsMisskeyDataSaverAvatarEnUs {
	_StringsMisskeyDataSaverAvatarEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Avatar image';
	String get description => 'Stop avatar image animation. Animated images can be larger in file size than normal  images, potentially leading to further reductions in data traffic.';
}

// Path: misskey.dataSaver_.urlPreview_
class _StringsMisskeyDataSaverUrlPreviewEnUs {
	_StringsMisskeyDataSaverUrlPreviewEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'URL preview thumbnails';
	String get description => 'URL preview thumbnail images will no longer be loaded.';
}

// Path: misskey.dataSaver_.code_
class _StringsMisskeyDataSaverCodeEnUs {
	_StringsMisskeyDataSaverCodeEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Code highlighting';
	String get description => 'If code highlighting notations are used in MFM, etc., they will not load until tapped. Syntax highlighting requires downloading the highlight definition files for each programming language. Therefore, disabling the automatic loading of these files is expected to reduce the amount of communication data.';
}

// Path: misskeyIO.skebStatus_.genres_
class _StringsMisskeyIOSkebStatusGenresEnUs {
	_StringsMisskeyIOSkebStatusGenresEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get art => 'Artwork';
	String get comic => 'Comic';
	String get voice => 'Voice';
	String get novel => 'Text';
	String get video => 'Movie';
	String get music => 'Music';
	String get correction => 'Advice';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _StringsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_StringsMisskeyInitialTutorialPostNoteVisibilityEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get description => 'You can limit who can view your note.';
	String get public => 'Your note will be visible for all users.';
	String get home => 'Public only on the Home timeline. People visiting your profile, via followers, and through renotes can see it.';
	String get followers => 'Visible to followers only. Only followers can see it and no one else, and it cannot be renoted by others.';
	String get direct => 'Visible only to specified users, and the recipient will be notified. It can be used as an alternative to direct messaging.';
	String get doNotSendConfidencialOnDirect1 => 'Be careful when sending sensitive information!';
	String get doNotSendConfidencialOnDirect2 => 'Administrators of the server can see what you write. Be careful with sensitive information when sending direct notes to users on untrusted servers.';
	String get localOnly => 'Posting with this flag will not federate the note to other servers. Users on other servers will not be able to view these notes directly, regardless of the display settings above.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _StringsMisskeyInitialTutorialPostNoteCwEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Content Warning';
	String get description => 'Instead of the body, the content written in \'comments\' field will be displayed. Pressing "read more" will reveal the body.';
	late final _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs exampleNote_ = _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs._(_root);
	String get useCases => 'This is used when following the server guidelines for necessary notes or for self-restriction of spoiler or sensitive text.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_StringsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get note => 'Oops, messed up opening the natto lid...';
}

// Path: misskey.achievements_.types_.notes1_
class _StringsMisskeyAchievementsTypesNotes1EnUs {
	_StringsMisskeyAchievementsTypesNotes1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'just setting up my msky';
	String get description => 'Post your first note';
	String get flavor => 'Have a good time with Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _StringsMisskeyAchievementsTypesNotes10EnUs {
	_StringsMisskeyAchievementsTypesNotes10EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Some notes';
	String get description => 'Post 10 notes';
}

// Path: misskey.achievements_.types_.notes100_
class _StringsMisskeyAchievementsTypesNotes100EnUs {
	_StringsMisskeyAchievementsTypesNotes100EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'A lot of notes';
	String get description => 'Post 100 notes';
}

// Path: misskey.achievements_.types_.notes500_
class _StringsMisskeyAchievementsTypesNotes500EnUs {
	_StringsMisskeyAchievementsTypesNotes500EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Covered in notes';
	String get description => 'Post 500 notes';
}

// Path: misskey.achievements_.types_.notes1000_
class _StringsMisskeyAchievementsTypesNotes1000EnUs {
	_StringsMisskeyAchievementsTypesNotes1000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'A mountain of notes';
	String get description => 'Post 1,000 notes';
}

// Path: misskey.achievements_.types_.notes5000_
class _StringsMisskeyAchievementsTypesNotes5000EnUs {
	_StringsMisskeyAchievementsTypesNotes5000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Overflowing notes';
	String get description => 'Post 5,000 notes';
}

// Path: misskey.achievements_.types_.notes10000_
class _StringsMisskeyAchievementsTypesNotes10000EnUs {
	_StringsMisskeyAchievementsTypesNotes10000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Supernote';
	String get description => 'Post 10,000 notes';
}

// Path: misskey.achievements_.types_.notes20000_
class _StringsMisskeyAchievementsTypesNotes20000EnUs {
	_StringsMisskeyAchievementsTypesNotes20000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Need... more... notes...';
	String get description => 'Post 20,000 notes';
}

// Path: misskey.achievements_.types_.notes30000_
class _StringsMisskeyAchievementsTypesNotes30000EnUs {
	_StringsMisskeyAchievementsTypesNotes30000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Notes notes notes!';
	String get description => 'Post 30,000 notes';
}

// Path: misskey.achievements_.types_.notes40000_
class _StringsMisskeyAchievementsTypesNotes40000EnUs {
	_StringsMisskeyAchievementsTypesNotes40000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Note factory';
	String get description => 'Post 40,000 notes';
}

// Path: misskey.achievements_.types_.notes50000_
class _StringsMisskeyAchievementsTypesNotes50000EnUs {
	_StringsMisskeyAchievementsTypesNotes50000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Planet of notes';
	String get description => 'Post 50,000 notes';
}

// Path: misskey.achievements_.types_.notes60000_
class _StringsMisskeyAchievementsTypesNotes60000EnUs {
	_StringsMisskeyAchievementsTypesNotes60000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Note quasar';
	String get description => 'Post 60,000 notes';
}

// Path: misskey.achievements_.types_.notes70000_
class _StringsMisskeyAchievementsTypesNotes70000EnUs {
	_StringsMisskeyAchievementsTypesNotes70000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Note black hole';
	String get description => 'Post 70,000 notes';
}

// Path: misskey.achievements_.types_.notes80000_
class _StringsMisskeyAchievementsTypesNotes80000EnUs {
	_StringsMisskeyAchievementsTypesNotes80000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Note galaxy';
	String get description => 'Post 80,000 notes';
}

// Path: misskey.achievements_.types_.notes90000_
class _StringsMisskeyAchievementsTypesNotes90000EnUs {
	_StringsMisskeyAchievementsTypesNotes90000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Note universe';
	String get description => 'Post 90,000 notes';
}

// Path: misskey.achievements_.types_.notes100000_
class _StringsMisskeyAchievementsTypesNotes100000EnUs {
	_StringsMisskeyAchievementsTypesNotes100000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	String get description => 'Post 100,000 notes';
	String get flavor => 'You sure have a lot to say.';
}

// Path: misskey.achievements_.types_.login3_
class _StringsMisskeyAchievementsTypesLogin3EnUs {
	_StringsMisskeyAchievementsTypesLogin3EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Beginner I';
	String get description => 'Log in for a total of 3 days';
	String get flavor => 'Starting today, just call me Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _StringsMisskeyAchievementsTypesLogin7EnUs {
	_StringsMisskeyAchievementsTypesLogin7EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Beginner II';
	String get description => 'Log in for a total of 7 days';
	String get flavor => 'Feel like you\'ve gotten the hang of things yet?';
}

// Path: misskey.achievements_.types_.login15_
class _StringsMisskeyAchievementsTypesLogin15EnUs {
	_StringsMisskeyAchievementsTypesLogin15EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Beginner III';
	String get description => 'Log in for a total of 15 days';
}

// Path: misskey.achievements_.types_.login30_
class _StringsMisskeyAchievementsTypesLogin30EnUs {
	_StringsMisskeyAchievementsTypesLogin30EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Misskist I';
	String get description => 'Log in for a total of 30 days';
}

// Path: misskey.achievements_.types_.login60_
class _StringsMisskeyAchievementsTypesLogin60EnUs {
	_StringsMisskeyAchievementsTypesLogin60EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Misskist II';
	String get description => 'Log in for a total of 60 days';
}

// Path: misskey.achievements_.types_.login100_
class _StringsMisskeyAchievementsTypesLogin100EnUs {
	_StringsMisskeyAchievementsTypesLogin100EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Misskist III';
	String get description => 'Log in for a total of 100 days';
	String get flavor => 'Violent Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _StringsMisskeyAchievementsTypesLogin200EnUs {
	_StringsMisskeyAchievementsTypesLogin200EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Regular I';
	String get description => 'Log in for a total of 200 days';
}

// Path: misskey.achievements_.types_.login300_
class _StringsMisskeyAchievementsTypesLogin300EnUs {
	_StringsMisskeyAchievementsTypesLogin300EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Regular II';
	String get description => 'Log in for a total of 300 days';
}

// Path: misskey.achievements_.types_.login400_
class _StringsMisskeyAchievementsTypesLogin400EnUs {
	_StringsMisskeyAchievementsTypesLogin400EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Regular III';
	String get description => 'Log in for a total of 400 days';
}

// Path: misskey.achievements_.types_.login500_
class _StringsMisskeyAchievementsTypesLogin500EnUs {
	_StringsMisskeyAchievementsTypesLogin500EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Expert I';
	String get description => 'Log in for a total of 500 days';
	String get flavor => 'My friends, it has often been said that I like notes';
}

// Path: misskey.achievements_.types_.login600_
class _StringsMisskeyAchievementsTypesLogin600EnUs {
	_StringsMisskeyAchievementsTypesLogin600EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Expert II';
	String get description => 'Log in for a total of 600 days';
}

// Path: misskey.achievements_.types_.login700_
class _StringsMisskeyAchievementsTypesLogin700EnUs {
	_StringsMisskeyAchievementsTypesLogin700EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Expert III';
	String get description => 'Log in for a total of 700 days';
}

// Path: misskey.achievements_.types_.login800_
class _StringsMisskeyAchievementsTypesLogin800EnUs {
	_StringsMisskeyAchievementsTypesLogin800EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Master of Notes I';
	String get description => 'Log in for a total of 800 days';
}

// Path: misskey.achievements_.types_.login900_
class _StringsMisskeyAchievementsTypesLogin900EnUs {
	_StringsMisskeyAchievementsTypesLogin900EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Master of Notes II';
	String get description => 'Log in for a total of 900 days';
}

// Path: misskey.achievements_.types_.login1000_
class _StringsMisskeyAchievementsTypesLogin1000EnUs {
	_StringsMisskeyAchievementsTypesLogin1000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Master of Notes III';
	String get description => 'Log in for a total of 1,000 days';
	String get flavor => 'Thank you for using Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _StringsMisskeyAchievementsTypesNoteClipped1EnUs {
	_StringsMisskeyAchievementsTypesNoteClipped1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Must... clip...';
	String get description => 'Clip your first note';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _StringsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesNoteFavorited1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Stargazer';
	String get description => 'Favorite your first note';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_StringsMisskeyAchievementsTypesMyNoteFavorited1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Seeking Stars';
	String get description => 'Have somebody else favorite one of your notes';
}

// Path: misskey.achievements_.types_.profileFilled_
class _StringsMisskeyAchievementsTypesProfileFilledEnUs {
	_StringsMisskeyAchievementsTypesProfileFilledEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Well-prepared';
	String get description => 'Set up your profile';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _StringsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_StringsMisskeyAchievementsTypesMarkedAsCatEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'I Am a Cat';
	String get description => 'Mark your account as a cat';
	String get flavor => 'I\'ll give you a name later.';
}

// Path: misskey.achievements_.types_.following1_
class _StringsMisskeyAchievementsTypesFollowing1EnUs {
	_StringsMisskeyAchievementsTypesFollowing1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Following your first user';
	String get description => 'Follow a user';
}

// Path: misskey.achievements_.types_.following10_
class _StringsMisskeyAchievementsTypesFollowing10EnUs {
	_StringsMisskeyAchievementsTypesFollowing10EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Keep up... keep up...';
	String get description => 'Follow 10 users';
}

// Path: misskey.achievements_.types_.following50_
class _StringsMisskeyAchievementsTypesFollowing50EnUs {
	_StringsMisskeyAchievementsTypesFollowing50EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Lots of friends';
	String get description => 'Follow 50 accounts';
}

// Path: misskey.achievements_.types_.following100_
class _StringsMisskeyAchievementsTypesFollowing100EnUs {
	_StringsMisskeyAchievementsTypesFollowing100EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '100 Friends';
	String get description => 'Follow 100 accounts';
}

// Path: misskey.achievements_.types_.following300_
class _StringsMisskeyAchievementsTypesFollowing300EnUs {
	_StringsMisskeyAchievementsTypesFollowing300EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Friend overload';
	String get description => 'Follow 300 accounts';
}

// Path: misskey.achievements_.types_.followers1_
class _StringsMisskeyAchievementsTypesFollowers1EnUs {
	_StringsMisskeyAchievementsTypesFollowers1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'First follower';
	String get description => 'Gain 1 follower';
}

// Path: misskey.achievements_.types_.followers10_
class _StringsMisskeyAchievementsTypesFollowers10EnUs {
	_StringsMisskeyAchievementsTypesFollowers10EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Follow me!';
	String get description => 'Gain 10 followers';
}

// Path: misskey.achievements_.types_.followers50_
class _StringsMisskeyAchievementsTypesFollowers50EnUs {
	_StringsMisskeyAchievementsTypesFollowers50EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Coming in crowds';
	String get description => 'Gain 50 followers';
}

// Path: misskey.achievements_.types_.followers100_
class _StringsMisskeyAchievementsTypesFollowers100EnUs {
	_StringsMisskeyAchievementsTypesFollowers100EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Popular';
	String get description => 'Gain 100 followers';
}

// Path: misskey.achievements_.types_.followers300_
class _StringsMisskeyAchievementsTypesFollowers300EnUs {
	_StringsMisskeyAchievementsTypesFollowers300EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Please form a single line';
	String get description => 'Gain 300 followers';
}

// Path: misskey.achievements_.types_.followers500_
class _StringsMisskeyAchievementsTypesFollowers500EnUs {
	_StringsMisskeyAchievementsTypesFollowers500EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Radio Tower';
	String get description => 'Gain 500 followers';
}

// Path: misskey.achievements_.types_.followers1000_
class _StringsMisskeyAchievementsTypesFollowers1000EnUs {
	_StringsMisskeyAchievementsTypesFollowers1000EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Influencer';
	String get description => 'Gain 1,000 followers';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _StringsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_StringsMisskeyAchievementsTypesCollectAchievements30EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Achievement Collector';
	String get description => 'Earn 30 achievements';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _StringsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_StringsMisskeyAchievementsTypesViewAchievements3minEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Likes Achievements';
	String get description => 'Look at your list of achievements for at least 3 minutes';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _StringsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_StringsMisskeyAchievementsTypesILoveMisskeyEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'I Love Misskey';
	String get description => 'Post "I ❤ #Misskey"';
	String get flavor => 'Misskey\'s development team greatly appreciates your support!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _StringsMisskeyAchievementsTypesFoundTreasureEnUs {
	_StringsMisskeyAchievementsTypesFoundTreasureEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Treasure Hunt';
	String get description => 'You\'ve found the hidden treasure';
}

// Path: misskey.achievements_.types_.client30min_
class _StringsMisskeyAchievementsTypesClient30minEnUs {
	_StringsMisskeyAchievementsTypesClient30minEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Short break';
	String get description => 'Keep Misskey opened for at least 30 minutes';
}

// Path: misskey.achievements_.types_.client60min_
class _StringsMisskeyAchievementsTypesClient60minEnUs {
	_StringsMisskeyAchievementsTypesClient60minEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'No "Miss" in Misskey';
	String get description => 'Keep Misskey opened for at least 60 minutes';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_StringsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Nevermind';
	String get description => 'Delete a note within a minute of posting it';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _StringsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_StringsMisskeyAchievementsTypesPostedAtLateNightEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Nocturnal';
	String get description => 'Post a note late at night';
	String get flavor => 'It\'s about time to go to bed.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _StringsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_StringsMisskeyAchievementsTypesPostedAt0min0secEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Speaking Clock';
	String get description => 'Post a note at 00:00';
	String get flavor => 'Click Click Click Claaang';
}

// Path: misskey.achievements_.types_.selfQuote_
class _StringsMisskeyAchievementsTypesSelfQuoteEnUs {
	_StringsMisskeyAchievementsTypesSelfQuoteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Self-Reference';
	String get description => 'Quote your own note';
}

// Path: misskey.achievements_.types_.htl20npm_
class _StringsMisskeyAchievementsTypesHtl20npmEnUs {
	_StringsMisskeyAchievementsTypesHtl20npmEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Flowing Timeline';
	String get description => 'Have the speed of your home timeline exceed 20 npm (notes per minute)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _StringsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_StringsMisskeyAchievementsTypesViewInstanceChartEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Analyst';
	String get description => 'View your instance\'s charts';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_StringsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Hello, world!';
	String get description => 'Output "hello world" in the Scratchpad';
}

// Path: misskey.achievements_.types_.open3windows_
class _StringsMisskeyAchievementsTypesOpen3windowsEnUs {
	_StringsMisskeyAchievementsTypesOpen3windowsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Multi-Window';
	String get description => 'Have at least 3 windows open at the same time';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_StringsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Circular Reference';
	String get description => 'Attempt to create a recursively nested folder in Drive';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _StringsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_StringsMisskeyAchievementsTypesReactWithoutReadEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Did you really read that?';
	String get description => 'React on a note that\'s over 100 characters long within 3 seconds of it being posted';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _StringsMisskeyAchievementsTypesClickedClickHereEnUs {
	_StringsMisskeyAchievementsTypesClickedClickHereEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Click here';
	String get description => 'You\'ve clicked here';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _StringsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_StringsMisskeyAchievementsTypesJustPlainLuckyEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Just Plain Lucky';
	String get description => 'Has a chance to be obtained with a probability of 0.005% every 10 seconds';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_StringsMisskeyAchievementsTypesSetNameToSyuiloEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'God Complex';
	String get description => 'Set your name to "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'One Year Anniversary';
	String get description => 'One year has passed since your account was created';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Two Year Anniversary';
	String get description => 'Two years have passed since your account was created';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_StringsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Three Year Anniversary';
	String get description => 'Three years have passed since your account was created';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Happy Birthday';
	String get description => 'Log in on your birthday';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_StringsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Happy New Year!';
	String get description => 'Logged in on the first day of the year';
	String get flavor => 'To another great year on this instance';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _StringsMisskeyAchievementsTypesCookieClickedEnUs {
	_StringsMisskeyAchievementsTypesCookieClickedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'A game in which you click cookies';
	String get description => 'Clicked the cookie';
	String get flavor => 'Wait, are you on the correct website?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _StringsMisskeyAchievementsTypesBrainDiverEnUs {
	_StringsMisskeyAchievementsTypesBrainDiverEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Brain Diver';
	String get description => 'Post the link to Brain Diver';
	String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_StringsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Test overflow';
	String get description => 'Trigger the notification test repeatedly within an extremely short time';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _StringsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_StringsMisskeyAchievementsTypesTutorialCompletedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Misskey Elementary Course Diploma';
	String get description => 'Tutorial completed';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '🤯';
	String get description => 'The biggest object in the bubble game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_StringsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Double🤯';
	String get description => 'Two of the biggest objects in the bubble game at the same time';
	String get flavor => 'You can fill a lunch box like this 🤯 🤯 a bit.';
}

// Path: misskey.pages_.blocks.note_
class _StringsMisskeyPagesBlocksNoteEnUs {
	_StringsMisskeyPagesBlocksNoteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get id => 'Note ID';
	String get idDescription => 'You can alternatively paste the note URL here.';
	String get detailed => 'Detailed view';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Invalid parameters';
	String get description => 'There is not enough information to load data from an external site. Please confirm the entered URL.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'This external resource is not supported';
	String get description => 'The type of this external resource is not supported. Please contact the site administrator.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Failed to fetch data';
	String get fetchErrorDescription => 'An error occurred communicating with the external site. If trying again does not fix this issue, please contact the site administrator.';
	String get parseErrorDescription => 'An error occurred processing the data loaded from the external site. Please contact the site administrator.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Data verification failed';
	String get description => 'An error occurred verifying the integrity of the fetched data. As a security measure, installation cannot continue. Please contact the site administrator.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'AiScript Error';
	String get description => 'The requested data was fetched successfully, but an error occurred during AiScript parsing. Please contact the plugin author. Error details can be viewed in the Javascript console.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Plugin installation failed';
	String get description => 'A problem occurred during plugin installation. Please try again. Error details can be viewed in the Javascript console.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Theme parsing failed';
	String get description => 'The requested data was fetched successfully, but an error occurred during theme parsing. Please contact the theme author. Error details can be viewed in the Javascript console.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_StringsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Failed to install theme';
	String get description => 'A problem occurred during theme installation. Please try again. Error details can be viewed in the Javascript console.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_StringsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cw => 'This will surely make you hungry!';
	String get note => 'Just had a chocolate-glazed donut 🍩😋';
}
