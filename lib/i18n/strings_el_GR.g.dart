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
class TranslationsElGr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsElGr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.elGr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <el-GR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsElGr _root = this; // ignore: unused_field

	@override 
	TranslationsElGr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsElGr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaElGr aria = _TranslationsAriaElGr._(_root);
	@override late final _TranslationsMisskeyElGr misskey = _TranslationsMisskeyElGr._(_root);
}

// Path: aria
class _TranslationsAriaElGr extends TranslationsAriaEnUs {
	_TranslationsAriaElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Θέλετε σίγουρα να ακολουθήσετε τον λογαριασμό '),
		name,
		const TextSpan(text: ';'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Κοινοποιήθηκε από '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Θέλετε σίγουρα να σταματήσετε να ακολουθείτε το μέλος '),
		name,
		const TextSpan(text: ';'),
	]);
}

// Path: misskey
class _TranslationsMisskeyElGr extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Ελληνικά';
	@override String monthAndDay({required Object day, required Object month}) => '${day}/${month}';
	@override String get search => 'Αναζήτηση';
	@override String get notifications => 'Ειδοποιήσεις';
	@override String get username => 'Όνομα μέλους';
	@override String get password => 'Κωδικός πρόσβασης';
	@override String get forgotPassword => 'Ξέχασα τον κωδικό πρόσβασης';
	@override String get fetchingAsApObject => 'Μαζεύοντας από το Fediverse...';
	@override String get ok => 'Εντάξει';
	@override String get gotIt => 'Τό\'πιασα!';
	@override String get cancel => 'Ακύρωση';
	@override String get enterUsername => 'Εισάγετε το όνομα μέλους';
	@override String renotedBy({required Object user}) => 'Κοινοποιήθηκε από ${user}';
	@override String get noNotes => 'Δεν υπάρχουν σημειώματα';
	@override String get noNotifications => 'Δεν υπάρχουν ειδοποιήσεις';
	@override String get settings => 'Ρυθμίσεις';
	@override String get basicSettings => 'Βασικές ρυθμίσεις';
	@override String get otherSettings => 'Άλλες ρυθμίσεις';
	@override String get openInWindow => 'Άνοιγμα σε παράθυρο';
	@override String get profile => 'Προφίλ';
	@override String get timeline => 'Χρονολόγιο';
	@override String get noAccountDescription => 'Αυτό το μέλος δεν έχει γράψει βιογραφικό ακόμη.';
	@override String get login => 'Σύνδεση';
	@override String get loggingIn => 'Συνδέεστε';
	@override String get logout => 'Αποσύνδεση';
	@override String get signup => 'Δημιουργία λογαριασμού';
	@override String get uploading => 'Ανέβασμα...';
	@override String get save => 'Αποθήκευση';
	@override String get users => 'Μέλη';
	@override String get addUser => 'Προσθήκη μέλους';
	@override String get favorite => 'Προσθήκη στα αγαπημένα';
	@override String get favorites => 'Αγαπημένα';
	@override String get unfavorite => 'Αφαίρεση από αγαπημένα';
	@override String get favorited => 'Προστέθηκε στα αγαπημένα.';
	@override String get alreadyFavorited => 'Έχει ήδη προστεθεί στα αγαπημένα.';
	@override String get cantFavorite => 'Αδυναμία προσθήκης στα αγαπημένα.';
	@override String get pin => 'Καρφίτσωμα στο προφίλ';
	@override String get unpin => 'Ξεκαρφίτσωμα από το προφίλ';
	@override String get copyContent => 'Αντιγραφή περιεχομένων';
	@override String get copyLink => 'Αντιγραφή συνδέσμου';
	@override String get delete => 'Διαγραφή';
	@override String get deleteAndEdit => 'Διαγραφή και επεξεργασία';
	@override String get deleteAndEditConfirm => 'Σίγουρα θέλετε να διαγράψετε αυτό το σημείωμα και να το επεξεργαστείτε; Θα χάσετε όλες τις αντιδράσεις, κοινοποιήσεις και απαντήσεις σε αυτό.';
	@override String get addToList => 'Προσθήκη στη λίστα';
	@override String get sendMessage => 'Αποστολή μηνύματος';
	@override String get copyUsername => 'Αντιγραφή ονόματος μέλους';
	@override String get searchUser => 'Αναζήτηση μέλους';
	@override String get reply => 'Απάντηση';
	@override String get loadMore => 'Φόρτωσε περισσότερα';
	@override String get showMore => 'Δείξε περισσότερα';
	@override String get showLess => 'Κλείσιμο';
	@override String get youGotNewFollower => 'σε ακολούθησε';
	@override String get receiveFollowRequest => 'Λάβατε αίτημα ακολούθησης';
	@override String get followRequestAccepted => 'Το αίτημα ακολούθησης έγινε δεκτό';
	@override String get mention => 'Επισήμανση';
	@override String get mentions => 'Επισημάνσεις';
	@override String get directNotes => 'Απευθείας σημειώματα';
	@override String get importAndExport => 'Εισαγωγή / Εξαγωγή';
	@override String get import => 'Εισαγωγή';
	@override String get export => 'Εξαγωγή';
	@override String get files => 'Αρχεία';
	@override String get download => 'Λήψη';
	@override String driveFileDeleteConfirm({required Object name}) => 'Θέλετε σίγουρα να διαγράψετε το αρχείο "${name}"; Τα σημειώματα με αυτό το συνημμένο αρχείο επίσης θα διαγραφούν.';
	@override String unfollowConfirm({required Object name}) => 'Θέλετε σίγουρα να σταματήσετε να ακολουθείτε το μέλος ${name};';
	@override String get exportRequested => 'Ζητήσατε μία εξαγωγή. Αυτό μπορεί να πάρει κάποιον χρόνο. Επίσης θα προστεθεί στον Δίσκο σας μόλις ολοκληρωθεί.';
	@override String get importRequested => 'Ζητήσατε μία εισαγωγή. Αυτό μπορεί να πάρει κάποιον χρόνο.';
	@override String get lists => 'Λίστες';
	@override String get noLists => 'Δεν έχετε λίστες';
	@override String get note => 'Σημείωμα';
	@override String get notes => 'Σημειώματα';
	@override String get following => 'Ακολουθεί';
	@override String get followers => 'Ακολουθούν';
	@override String get followsYou => 'Σε ακολουθεί';
	@override String get createList => 'Δημιουργία λίστας';
	@override String get manageLists => 'Διαχείριση λιστών';
	@override String get error => 'Σφάλμα';
	@override String get somethingHappened => 'Προέκυψε ένα σφάλμα';
	@override String get retry => 'Προσπάθεια ξανά';
	@override String get pageLoadError => 'Ένα σφάλμα προέκυψε φορτώνοντας τη σελίδα.';
	@override String get pageLoadErrorDescription => 'Αυτό κανονικά προκαλείται από σφάλματα δικτύου ή από την προσωρινή μνήμη του προγράμματος περιήγησης. Δοκιμάστε να σβήσετε την προσωρινή μνήμη (cache) και ξαναδοκιμάστε μετά από λίγο.';
	@override String get serverIsDead => 'Αυτός ο server δεν αποκρίνεται. Παρακαλώ περιμέντε λίγο και δοκιμάστε ξανά.';
	@override String get youShouldUpgradeClient => 'Για να δείτε αυτή τη σελίδα, παρακαλώ επαναφορτώστε για να ενημερωθεί το πρόγραμμα.';
	@override String get enterListName => 'Πληκτρολογήστε ένα όνομα για τη λίστα';
	@override String get privacy => 'Ιδιωτικότητα';
	@override String get makeFollowManuallyApprove => 'Τα αιτήματα ακολούθησης χρειάζονται έγκριση';
	@override String get defaultNoteVisibility => 'Προεπιλεγμένη ορατότητα';
	@override String get follow => 'Ακολουθήστε';
	@override String get followRequest => 'Στείλτε αίτημα ακολούθησης';
	@override String get followRequests => 'Αιτήματα ακολούθησης';
	@override String get unfollow => 'Να μην ακολουθώ';
	@override String get followRequestPending => 'Το αίτημα ακολούθησης εκκρεμεί';
	@override String get enterEmoji => 'Εισάγετε ένα emoji';
	@override String get renote => 'Κοινοποίηση σημειώματος';
	@override String get unrenote => 'Ακύρωση κοινοποίησης';
	@override String get renoted => 'Κοινοποιήθηκε.';
	@override String get cantRenote => 'Αυτή η δημοσίευση δεν μπορεί να κοινοποιηθεί.';
	@override String get cantReRenote => 'Μία κοινοποίηση δεν μπορεί να κοινοποιηθεί.';
	@override String get quote => 'Παράθεση';
	@override String get pinnedNote => 'Καρφιτσωμένο σημείωμα';
	@override String get pinned => 'Καρφίτσωμα στο προφίλ';
	@override String get you => 'Εσύ';
	@override String get clickToShow => 'Κάντε κλικ για εμφάνιση';
	@override String get add => 'Προσθέστε';
	@override String get reaction => 'Αντιδράσεις';
	@override String get reactions => 'Αντιδράσεις';
	@override String get reactionSettingDescription2 => 'Σύρετε για να αλλάξετε τη σειρά, κάντε κλικ για να διαγράψετε, πατήστε "+" για να προσθέσετε.';
	@override String get rememberNoteVisibility => 'Θυμήσου τις ρυθμίσεις ορατότητας σημειώματος';
	@override String get attachCancel => 'Διαγραφή αρχείου';
	@override String get enterFileName => 'Πληκτρολογήστε όνομα αρχείου';
	@override String get mute => 'Σίγαση';
	@override String get unmute => 'Άρση σίγασης';
	@override String get block => 'Μπλοκάρισμα';
	@override String get unblock => 'Άρση μπλοκαρίσματος';
	@override String get suspend => 'Αποβολή';
	@override String get unsuspend => 'Άρση αποβολής';
	@override String get blockConfirm => 'Θέλετε σίγουρα να μπλοκάρετε αυτόν τον λογαριασμό;';
	@override String get unblockConfirm => 'Θέλετε σίγουρα να ξεμπλοκάρετε αυτόν τον λογαριασμό;';
	@override String get suspendConfirm => 'Θέλετε σίγουρα να αποβάλλετε αυτόν τον λογαριασμό;';
	@override String get unsuspendConfirm => 'Θέλετε σίγουρα να άρετε την αποβολή αυτού του λογαριασμού;';
	@override String get selectList => 'Επιλέξτε μία λίστα';
	@override String get selectAntenna => 'Επιλέξτε μία αντένα';
	@override String get selectWidget => 'Επιλέξτε ένα μαραφέτι';
	@override String get editWidgets => 'Επεξεργασία μαραφετίων';
	@override String get editWidgetsExit => 'Ολοκληρώθηκε';
	@override String get customEmojis => 'Επιπλέον emoji';
	@override String get emojiName => 'Όνομα emoji';
	@override String get addEmoji => 'Προσθήκη emoji';
	@override String get settingGuide => 'Συνιστώμενες ρυθμίσεις';
	@override String get flagAsBot => 'Αυτός ο λογαριασμός είναι bot';
	@override String get flagAsCat => 'Αυτός ο λογαριασμός είναι γάτα';
	@override String get flagShowTimelineReplies => 'Εμφάνιση απαντήσεων στο χρονολόγιο';
	@override String get addAccount => 'Προσθήκη λογαριασμού';
	@override String get general => 'Γενικές';
	@override String get wallpaper => 'Ταπετσαρία';
	@override String get setWallpaper => 'Ορισμός ταπετσαρίας';
	@override String get removeWallpaper => 'Διαγραφή ταπετσαρίας';
	@override String searchWith({required Object q}) => 'Αναζήτηση: ${q}';
	@override String get youHaveNoLists => 'Δεν έχετε λίστες';
	@override String followConfirm({required Object name}) => 'Θέλετε σίγουρα να ακολουθήσετε τον λογαριασμό ${name};';
	@override String get host => 'Φιλοξενεί';
	@override String get selectUser => 'Επιλέξτε ένα μέλος';
	@override String get recipient => 'Αποδέκτης-τρια';
	@override String get annotation => 'Σχόλια';
	@override String get federation => 'Ομοσπονδία';
	@override String get storageUsage => 'Χρήση χώρου';
	@override String get version => 'Έκδοση';
	@override String get metadata => 'Μεταδεδομένα';
	@override String get network => 'Δίκτυο';
	@override String get disk => 'Δίσκος';
	@override String get instanceInfo => 'Πληροφορίες του instance';
	@override String get statistics => 'Στατιστικά';
	@override String get clearQueue => 'Εκκαθάριση ουράς';
	@override String get clearQueueConfirmTitle => 'Θέλετε να διαγράψετε την ουρά;';
	@override String get clearCachedFiles => 'Εκκαθάριση προσωρινής μνήμης';
	@override String get done => 'Ολοκληρώθηκε';
	@override String get attachFile => 'Επισύναψη αρχείων';
	@override String get more => 'Περισσότερα!';
	@override String get noSuchUser => 'Το μέλος δεν βρέθηκε';
	@override String get announcements => 'Ανακοινώσεις';
	@override String get imageUrl => 'URL εικόνας';
	@override String get remove => 'Διαγραφή';
	@override String get removed => 'Η διαγραφή ολοκληρώθηκε επιτυχώς';
	@override String get saved => 'Αποθηκεύτηκε';
	@override String get upload => 'Ανεβάστε';
	@override String get fromDrive => 'Από τον Αποθηκευτικό Χώρο';
	@override String get fromUrl => 'Από URL';
	@override String get uploadFromUrl => 'Ανεβάστε από URL';
	@override String get explore => 'Εξερευνήστε';
	@override String get messageRead => 'Διαβάστηκε';
	@override String nUsersRead({required Object n}) => 'διαβάστηκε από ${n}';
	@override String get start => 'Ας αρχίσουμε';
	@override String get home => 'Κεντρικό';
	@override String get activity => 'Δραστηριότητα';
	@override String get images => 'Εικόνες';
	@override String get image => 'Εικόνες';
	@override String get birthday => 'Γενέθλια';
	@override String get registeredDate => 'Έγινε μέλος στις';
	@override String get location => 'Τοποθεσία';
	@override String get theme => 'Θέματα';
	@override String get light => 'Ανοιχτόχρωμο';
	@override String get dark => 'Σκούρο';
	@override String get drive => 'Αποθηκευτικός Χώρος';
	@override String get fileName => 'Όνομα αρχείου';
	@override String get selectFile => 'Επιλέξτε ένα αρχείο';
	@override String get selectFiles => 'Επιλέξτε αρχεία';
	@override String get selectFolder => 'Επιλέξτε φάκελο';
	@override String get selectFolders => 'Επιλέξτε φακέλους';
	@override String get renameFile => 'Μετονομασία αρχείου';
	@override String get addFile => 'Προσθήκη αρχείου';
	@override String get emptyDrive => 'Ο Αποθηκευτικός Χώρος σας είναι άδειος';
	@override String get copyUrl => 'Αντιγραφή URL';
	@override String get rename => 'Αλλαγή ονόματος';
	@override String get avatar => 'Εικονίδιο';
	@override String get banner => 'Πανό';
	@override String get reload => 'Ανανέωση';
	@override String get doNothing => 'Αγνόηση';
	@override String get watch => 'Παρακολούθηση';
	@override String get unwatch => 'Τέλος παρακολούθησης';
	@override String get accept => 'Αποδοχή';
	@override String get reject => 'Απόρριψη';
	@override String get normal => 'Κανονικό';
	@override String get instanceName => 'Όνομα instance';
	@override String get thisYear => 'Έτος';
	@override String get thisMonth => 'Μήνας';
	@override String get today => 'Σήμερα';
	@override String dayX({required Object day}) => '${day}';
	@override String get pages => 'Σελίδες';
	@override String get connectService => 'Σύνδεση';
	@override String get disconnectService => 'Αποσύνδεση';
	@override String get registration => 'Εγγραφή';
	@override String get pinnedPages => 'Καρφιτσωμένες Σελίδες';
	@override String get pinnedNotes => 'Καρφιτσωμένα σημειώματα';
	@override String get antennas => 'Αντένες';
	@override String get manageAntennas => 'Διαχείριση αντενών';
	@override String get name => 'Όνομα';
	@override String get antennaSource => 'Πηγή αντένας';
	@override String get antennaKeywords => 'Λέξεις-κλειδιά για παρακολούθηση';
	@override String get antennaExcludeKeywords => 'Λέξεις-κλειδιά για αποκλεισμό';
	@override String get notifyAntenna => 'Ειδοποίηση για νέα σημειώματα';
	@override String get withFileAntenna => 'Μόνο σημειώματα με αρχεία';
	@override String get caseSensitive => 'Διάκριση Πεζών-Κεφαλαίων';
	@override String get popularTags => 'Δημοφιλείς ετικέτες';
	@override String get userList => 'Λίστες';
	@override String get about => 'Πληροφορίες';
	@override String get moderator => 'Συντονιστής';
	@override String get moderation => 'Συντονισμός';
	@override String get markAsReadAllNotifications => 'Όλες οι ειδοποιήσεις διαβάστηκαν';
	@override String get members => 'Μέλη';
	@override String get transfer => 'Μεταφορά';
	@override String get title => 'Τίτλος';
	@override String get text => 'Κείμενο';
	@override String get enable => 'Ενεργοποίηση';
	@override String get next => 'Επόμενο';
	@override String noteOf({required Object user}) => 'Σημείωμα από ${user}';
	@override String get quoteAttached => 'Παράθεση';
	@override String get signinRequired => 'Παρακαλούμε δημιουργήστε λογαριασμό ή συνδεθείτε πριν συνεχίσετε';
	@override String get category => 'Κατηγορία';
	@override String get tags => 'Ετικέτες';
	@override String get createAccount => 'Δημιουργία λογαριασμού';
	@override String get local => 'Τοπικό';
	@override String get remote => 'Απομακρυσμένo';
	@override String get total => 'Σύνολο';
	@override String get appearance => 'Εμφάνιση';
	@override String get accountSettings => 'Ρυθμίσεις λογαριασμού';
	@override String get sounds => 'Ήχοι';
	@override String get sound => 'Ήχοι';
	@override String get listen => 'Ακρόαση';
	@override String get showInPage => 'Εμφάνιση στη σελίδα';
	@override String get volume => 'Ένταση';
	@override String get masterVolume => 'Κύρια ένταση';
	@override String get details => 'Λεπτομέρειες';
	@override String get install => 'Εγκατάσταση';
	@override String get uninstall => 'Κατάργηση εγκατάστασης';
	@override String get manage => 'Διαχείριση';
	@override String get smtpHost => 'Φιλοξενεί';
	@override String get smtpUser => 'Όνομα μέλους';
	@override String get smtpPass => 'Κωδικός πρόσβασης';
	@override String get notificationSetting => 'Ρυθμίσεις ειδοποιήσεων';
	@override String get notificationSettingDesc => 'Επιλέξτε τους τύπους ειδοποιήσεων που εμφανίζονται';
	@override String get switchUi => 'Αλλαγή UI';
	@override String get clip => 'Κλιπ';
	@override String get driveFilesCount => 'Αριθμός αρχείων Αποθηκευτικού Χώρου';
	@override String get driveUsage => 'Χρήση Αποθηκευτικού Χώρου';
	@override String get noteFavoritesCount => 'Αριθμός αγαπημένων σημειωμάτων';
	@override String get clips => 'Κλιπ';
	@override String get clearCache => 'Εκκαθάριση προσωρινής μνήμης';
	@override String get emailNotification => 'Ειδοποιήσεις μέσω mail';
	@override String get inChannelSearch => 'Αναζήτηση στο κανάλι';
	@override String get info => 'Πληροφορίες';
	@override String get notRecommended => 'Δεν προτείνεται';
	@override String get switchAccount => 'Αλλαγή λογαριασμού';
	@override String get user => 'Μέλη';
	@override String get administration => 'Διαχείριση';
	@override String get switch_ => 'Εναλλαγή';
	@override String get gallery => 'Γκαλερί';
	@override String get global => 'Παγκόσμιο';
	@override String get searchResult => 'Αποτελέσματα αναζήτησης';
	@override String get learnMore => 'Μάθετε περισσότερα';
	@override String get controlPanel => 'Πίνακας ελέγχου';
	@override String get manageAccounts => 'Διαχείριση Λογαριασμών';
	@override String get searchByGoogle => 'Αναζήτηση';
	@override String get file => 'Αρχεία';
	@override String get recommended => 'Προτεινόμενα';
	@override String get cannotUploadBecauseNoFreeSpace => 'Το ανέβασμα απέτυχε λόγω ανεπαρκούς Αποθηκευτικού Χώρου';
	@override String get icon => 'Εικονίδιο';
	@override String get replies => 'Απάντηση';
	@override String get renotes => 'Κοινοποίηση σημειώματος';
	@override String get postForm => 'Φόρμα δημοσίευσης';
	@override String get information => 'Πληροφορίες';
	@override late final _TranslationsMisskeyChatElGr chat_ = _TranslationsMisskeyChatElGr._(_root);
	@override late final _TranslationsMisskeyEmailElGr email_ = _TranslationsMisskeyEmailElGr._(_root);
	@override late final _TranslationsMisskeyChannelElGr channel_ = _TranslationsMisskeyChannelElGr._(_root);
	@override late final _TranslationsMisskeyThemeElGr theme_ = _TranslationsMisskeyThemeElGr._(_root);
	@override late final _TranslationsMisskeySfxElGr sfx_ = _TranslationsMisskeySfxElGr._(_root);
	@override late final _TranslationsMisskeyAgoElGr ago_ = _TranslationsMisskeyAgoElGr._(_root);
	@override late final _TranslationsMisskeyPermissionsElGr permissions_ = _TranslationsMisskeyPermissionsElGr._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesElGr antennaSources_ = _TranslationsMisskeyAntennaSourcesElGr._(_root);
	@override late final _TranslationsMisskeyWidgetsElGr widgets_ = _TranslationsMisskeyWidgetsElGr._(_root);
	@override late final _TranslationsMisskeyCwElGr cw_ = _TranslationsMisskeyCwElGr._(_root);
	@override late final _TranslationsMisskeyVisibilityElGr visibility_ = _TranslationsMisskeyVisibilityElGr._(_root);
	@override late final _TranslationsMisskeyProfileElGr profile_ = _TranslationsMisskeyProfileElGr._(_root);
	@override late final _TranslationsMisskeyExportOrImportElGr exportOrImport_ = _TranslationsMisskeyExportOrImportElGr._(_root);
	@override late final _TranslationsMisskeyChartsElGr charts_ = _TranslationsMisskeyChartsElGr._(_root);
	@override late final _TranslationsMisskeyTimelinesElGr timelines_ = _TranslationsMisskeyTimelinesElGr._(_root);
	@override late final _TranslationsMisskeyPagesElGr pages_ = _TranslationsMisskeyPagesElGr._(_root);
	@override late final _TranslationsMisskeyNotificationElGr notification_ = _TranslationsMisskeyNotificationElGr._(_root);
	@override late final _TranslationsMisskeyDeckElGr deck_ = _TranslationsMisskeyDeckElGr._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsElGr webhookSettings_ = _TranslationsMisskeyWebhookSettingsElGr._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesElGr moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesElGr._(_root);
	@override late final _TranslationsMisskeyReversiElGr reversi_ = _TranslationsMisskeyReversiElGr._(_root);
	@override late final _TranslationsMisskeySearchElGr search_ = _TranslationsMisskeySearchElGr._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorElGr watermarkEditor_ = _TranslationsMisskeyWatermarkEditorElGr._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatElGr extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get members => 'Μέλη';
	@override String get home => 'Κεντρικό';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailElGr extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowElGr follow_ = _TranslationsMisskeyEmailFollowElGr._(_root);
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelElGr extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get featured => 'Δημοφιλή';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeElGr extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyThemeKeysElGr keys = _TranslationsMisskeyThemeKeysElGr._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxElGr extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get note => 'Σημειώματα';
	@override String get notification => 'Ειδοποιήσεις';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoElGr extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get future => 'Μελλοντικό';
	@override String get justNow => 'Μόλις τώρα';
	@override String secondsAgo({required Object n}) => '${n} δευτερόλεπτο(α) πριν';
	@override String minutesAgo({required Object n}) => '${n} λεπτό(ά) πριν';
	@override String hoursAgo({required Object n}) => '${n} ώρα(ες) πριν';
	@override String daysAgo({required Object n}) => '${n} μέρα(ες) πριν';
	@override String weeksAgo({required Object n}) => '${n} εβδομάδα(ες) πριν';
	@override String monthsAgo({required Object n}) => '${n} μήνα(ες) πριν';
	@override String yearsAgo({required Object n}) => '${n} έτος(η) πριν';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsElGr extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get writeDrive => 'Επεξεργαστείτε ή διαγράψτε τα αρχεία και τους φακέλους του Αποθηκευτικού Χώρου σας';
	@override String get readFavorites => 'Δείτε τη λίστα των αγαπημένων σας';
	@override String get writeFavorites => 'Επεξεργαστείτε τη λίστα των αγαπημένων σας';
	@override String get readMessaging => 'Δείτε τις συνομιλίες σας';
	@override String get writeMessaging => 'Γράψτε ή διαγράψτε μηνύματα συνομιλίας';
	@override String get readNotifications => 'Δείτε τις ειδοποιήσεις σας';
	@override String get writeNotifications => 'Διαχειριστείτε τις ειδοποιήσεις σας';
	@override String get readPages => 'Δείτε τις Σελίδες σας';
	@override String get writePages => 'Επεξεργαστείτε ή διαγράψτε τις σελίδες σας';
	@override String get writeChat => 'Γράψτε ή διαγράψτε μηνύματα συνομιλίας';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesElGr extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get all => 'Όλα τα σημειώματα';
	@override String get homeTimeline => 'Σημειώματα από μέλη που ακολουθείτε';
	@override String get users => 'Σημειώματα από συγκεκριμένα μέλη';
	@override String get userList => 'Σημειώματα από καθορισμένη λίστα μελών';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsElGr extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Προφίλ';
	@override String get instanceInfo => 'Πληροφορίες του instance';
	@override String get notifications => 'Ειδοποιήσεις';
	@override String get timeline => 'Χρονολόγιο';
	@override String get calendar => 'Ημερολόγιο';
	@override String get trends => 'Δημοφιλή';
	@override String get clock => 'Ρολόι';
	@override String get activity => 'Δραστηριότητα';
	@override String get photos => 'Φωτογραφίες';
	@override String get digitalClock => 'Ψηφιακό ρολόι';
	@override String get federation => 'Ομοσπονδία';
	@override String get postForm => 'Φόρμα δημοσίευσης';
	@override String get button => 'Κουμπί';
	@override String get onlineUsers => 'Συνδεδεμένα μέλη';
	@override late final _TranslationsMisskeyWidgetsUserListElGr userList_ = _TranslationsMisskeyWidgetsUserListElGr._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwElGr extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get show => 'Δείτε περισσότερα';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityElGr extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Κεντρικό';
	@override String get homeDescription => 'Δημοσίευση στο κεντρικό χρονολόγιο μόνο';
	@override String get followers => 'Ακολουθούν';
	@override String get specified => 'Απευθείας σημειώματα';
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileElGr extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Όνομα';
	@override String get username => 'Όνομα μέλους';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportElGr extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Όλα τα σημειώματα';
	@override String get clips => 'Κλιπ';
	@override String get followingList => 'Ακολουθεί';
	@override String get muteList => 'Μέλη σε σίγαση';
	@override String get blockingList => 'Μπλοκαρισμένα μέλη';
	@override String get userLists => 'Λίστες';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsElGr extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Ομοσπονδία';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesElGr extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Κεντρικό';
	@override String get local => 'Τοπικό';
	@override String get social => 'Κοινωνικό';
	@override String get global => 'Παγκόσμιο';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesElGr extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get viewPage => 'Δείτε τις Σελίδες σας';
	@override late final _TranslationsMisskeyPagesBlocksElGr blocks = _TranslationsMisskeyPagesBlocksElGr._(_root);
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationElGr extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get youWereFollowed => 'σε ακολούθησε';
	@override late final _TranslationsMisskeyNotificationTypesElGr types_ = _TranslationsMisskeyNotificationTypesElGr._(_root);
	@override late final _TranslationsMisskeyNotificationActionsElGr actions_ = _TranslationsMisskeyNotificationActionsElGr._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckElGr extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get widgetsIntroduction => 'Παρακαλούμε επιλέξτε "Επεξεργασία μαραφετίων" στο μενού και προσθέστε μαραφέτι.';
	@override late final _TranslationsMisskeyDeckColumnsElGr columns_ = _TranslationsMisskeyDeckColumnsElGr._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsElGr extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Όνομα';
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesElGr extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Αποβολή';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiElGr extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get total => 'Σύνολο';
}

// Path: misskey.search_
class _TranslationsMisskeySearchElGr extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get searchScopeLocal => 'Τοπικό';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorElGr extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get image => 'Εικόνες';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowElGr extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Έχετε ένα νέο ακόλουθο';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysElGr extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get panel => 'Πίνακας';
	@override String get mention => 'Επισήμανση';
	@override String get renote => 'Κοινοποίηση σημειώματος';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListElGr extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Επιλέξτε μία λίστα';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksElGr extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get image => 'Εικόνες';
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesElGr extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Νέοι ακόλουθοι';
	@override String get mention => 'Επισήμανση';
	@override String get renote => 'Κοινοποίηση σημειώματος';
	@override String get quote => 'Παράθεση';
	@override String get reaction => 'Αντιδράσεις';
	@override String get login => 'Σύνδεση';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsElGr extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Απάντηση';
	@override String get renote => 'Κοινοποίηση σημειώματος';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsElGr extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsElGr._(TranslationsElGr root) : this._root = root, super.internal(root);

	final TranslationsElGr _root; // ignore: unused_field

	// Translations
	@override String get widgets => 'Μαραφέτια';
	@override String get notifications => 'Ειδοποιήσεις';
	@override String get tl => 'Χρονολόγιο';
	@override String get antenna => 'Αντένες';
	@override String get list => 'Λίστα';
	@override String get mentions => 'Επισημάνσεις';
	@override String get direct => 'Απευθείας σημειώματα';
}
