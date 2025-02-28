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
class TranslationsIdId extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIdId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.idId,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <id-ID>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsIdId _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsAriaIdId aria = _TranslationsAriaIdId._(_root);
	@override late final _TranslationsMisskeyIdId misskey = _TranslationsMisskeyIdId._(_root);
}

// Path: aria
class _TranslationsAriaIdId extends TranslationsAriaEnUs {
	_TranslationsAriaIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'Tentang Aria';
	@override String get accessToken => 'Token akses';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Aria adalah fork dari '),
		miria,
		const TextSpan(text: '.\nTerjemahan Aria berdasarkan dari berkas terjemahan dari '),
		misskey,
		const TextSpan(text: '.\nKami ingin menunjukkan apresiasi kami kepada semua kontributor projek ini.'),
	]);
	@override String get addTab => 'Tambah tab';
	@override String get alwaysExpandCw => 'Selalu tampilkan isi Content Warning';
	@override String get alwaysExpandLongNote => 'Selalu tampilkan isi note panjang';
	@override String get alwaysExpandMediaInSubNote => 'Selalu tampilkan media di subnote';
	@override String get alwaysShowAllReactions => 'Selalu tampilkan semua reaksi';
	@override String get alwaysShowTabHeader => 'Selalu tampilkan informasi tab';
	@override String get authenticate => 'Autentikasi';
	@override String get authenticated => 'Terautentikasi';
	@override String get avatarSize => 'Ukuran avatar';
	@override String get background => 'Latar belakang';
	@override String get buttonTypes => 'Jenis tombol';
	@override String get calculating => 'Mengkalkulasi...';
	@override String get confirmBeforeFollow => 'Konfirmasi sebelum mengikuti';
	@override String get confirmBeforePost => 'Konfirmasi sebelum mengunggah note';
	@override String get confirmBeforeReact => 'Konfirmasi sebelum menambahkan reaksi';
	@override String get copied => 'Disalin ke papan klip';
	@override String get copyName => 'Salin nama';
	@override String get crop => 'Potong';
	@override String get custom => 'Kustom';
	@override String get defaultReaction => 'Reaksi standar';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Apakah anda ingin menghapus tab ${n} terkait dengan akun ini?',
		other: 'Apakah anda ingin menghapus tab ${n} terkait dengan akun ini?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Anda yakin ingin menghapus ${n} berkas?',
		other: 'Anda yakin ingin menghapus ${n} berkas?',
	);
	@override String get deleteTabConfirm => 'Anda yakin ingin menghapus tab ini?';
	@override String get disableDataSaverWhenOnWifi => 'Matikan penghematan data ketika terhubung via Wi-Fi';
	@override String get disableSubscribingNotes => 'Matikan pembaruan reaksi secara tepat waktu';
	@override String get discardChangesConfirm => 'Apa anda yakin untuk membuang pengubahan pengaturan dan kembali?';
	@override String get displayOfThumbnail => 'Tampilan thumbnail';
	@override String get doubleTapToShow => 'Tab dua kali untuk menampilkan';
	@override String get downloaded => 'Terunduh';
	@override String get draw => 'Gambar';
	@override String get editImage => 'Sunting gambar';
	@override String get emojiPickerAutofocus => 'Tampilkan keyboard saat membuka pemilih emoji';
	@override String get emojiPickerScale => 'Ukuran pemilih emoji';
	@override String get emojiPickerUseDialog => 'Tampilkan pemilih emoji sebagai dialog';
	@override String get enableEmojiFadeIn => 'Nyalakan animasi fade-in untuk emoji kustom';
	@override String get enableFederation => 'Nyalakan federasi';
	@override String get enablePredictiveBack => 'Nyalakan animasi untuk predictive back';
	@override String get enableSpellCheck => 'Nyalakan pemeriksaan ejaan';
	@override String get endpoint => 'Endpoint';
	@override String get expandNote => 'Tampilkan note';
	@override String get extraMentionsWarning => 'Note ini memiliki mention yang tidak tercantum di target balasan note';
	@override String get fileNotFound => 'Berkas tidak ditemukan';
	@override String get findServer => 'Cari server Misskey';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Apakah kamu yakin ingin mengikuti '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get font => 'Font';
	@override String get fromDevice => 'Dari perangkat';
	@override String get guest => 'Pengunjung';
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria diterjemahkan ke dalam banyak bahasa oleh sukarelawan. Kamu juga dapat ikut membantu menerjemahkannya di '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan iconAttribution({required InlineSpan sevenc_nanashi, required InlineSpan cc_by}) => TextSpan(children: [
		const TextSpan(text: 'Icon dari Aria dibuat oleh '),
		sevenc_nanashi,
		const TextSpan(text: ' dan memiliki lisensi di bawah '),
		cc_by,
		const TextSpan(text: '.'),
	]);
	@override String get importCompleted => 'Impor selesai';
	@override String get importConfirm => 'Apakah anda yakin akan mengimpor pengaturan? Pengaturan yang ada akan tergantikan.';
	@override String get invalidListFormat => 'Format daftar tidak berlaku';
	@override String jumpTo({required Object x}) => 'Lompat ke ${x}';
	@override String get keepOpen => 'Tetap buka';
	@override String get keepTimelinePosition => 'Jaga posisi timeline';
	@override String get lineHeight => 'Tinggi baris';
	@override String get loginWithAccessToken => 'Masuk dengan token akses';
	@override String get margin => 'Marjin';
	@override String get media => 'Media';
	@override String get mentionToRemoteWarning => 'Note ini mengandung mention kepada user dari server lain';
	@override String get mergeReactionsByName => 'Gabungkan reaksi dengan nama yang sama';
	@override String get moved => 'Dipindahkan';
	@override String get muted => 'Dibisukan';
	@override String get mutedEmojis => 'Emoji yang dibisukan';
	@override String nFiles({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '${n} berkas',
		other: '${n} berkas',
	);
	@override String get newFollowRequestReceived => 'Ada permintaan ikuti baru';
	@override String get newNotes => 'Note baru';
	@override String get newNotificationReceived => 'Ada notifikasi baru';
	@override String get newNotifications => 'Notifikasi baru';
	@override String get noAccounts => 'Tidak ada akun';
	@override String get noTabs => 'Tidak ada tab';
	@override String get noThemes => 'Tidak ada tema';
	@override String get noteDoubleTapAction => 'Aksi untuk ketukan ganda pada note';
	@override String get noteFooterSize => 'Ukuran tombol untuk aksi note';
	@override String get noteLongPressAction => 'Aksi untuk ketukan panjang note';
	@override String get noteTapAction => 'Aksi untuk ketukan note';
	@override String get notesAfterRenotes => 'Note setelah renote';
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' orang sedang daring'),
	]);
	@override String get opacity => 'Opacity';
	@override String get openAsGuest => 'Buka sebagai guest';
	@override String get openInAnotherAccount => 'Buka dengan akun lainnya';
	@override String get openInBrowser => 'Buka di browser';
	@override String get openInExternalBrowser => 'Buka di browser eksternal';
	@override String get openInInternalBrowser => 'Buka di browser internal';
	@override String get openMenu => 'Buka menu';
	@override TextSpan openScratchpadAndRunCode({required InlineSpan scratchpad}) => TextSpan(children: [
		const TextSpan(text: 'Buka '),
		scratchpad,
		const TextSpan(text: ' di browser anda, lalu masukkan kode di bawah ini dan jalankan.'),
	]);
	@override String get openSensitiveMediaOnDoubleTap => 'Buka media sensitif dengan ketukan ganda';
	@override String get parameters => 'Parameter';
	@override String get paste => 'Tempel';
	@override TextSpan pastePinnedEmojisDescription({required InlineSpan url}) => TextSpan(children: [
		const TextSpan(text: 'Tempel daftar emoji dengan format JSON untuk menyematkan emoji. Anda bisa menyalin emoji yang sudah tersematkan dari Misskey Web di '),
		url,
		const TextSpan(text: '.'),
	]);
	@override String get pasteResponseBelow => 'Tempel respon di bawah.';
	@override String get pinToEmojiPicker => 'Sematkan ke pemilih emoji';
	@override String get playAudio => 'Putar audio';
	@override String get playVideo => 'Putar video';
	@override String get pleaseCopyResponse => 'Mohon salin respon ini';
	@override String get postConfirm => 'Apa anda yakin untuk mengunggah note ini?';
	@override String get reactionConfirm => 'Apa anda yakin untuk menambahkan reaksi?';
	@override String get recentlyUsedEmojis => 'Emoji yang terakhir dipakai';
	@override String get renoteConfirm => 'Apa anda yakin untuk me-renote note ini?';
	@override String get renoteToChannel => 'Renote kepada kanal';
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'direnote oleh '),
		user,
	]);
	@override String get reset => 'Atur ulang';
	@override String get rotate => 'Putar';
	@override String get scale => 'Skala';
	@override String get selectIcon => 'Pilih icon';
	@override TextSpan selfRenotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Swa-renote oleh '),
		user,
	]);
	@override String get serverUrl => 'URL Server';
	@override String get settingsFileForAria => 'Berkas pengaturan untuk Aria';
	@override TextSpan settingsForUser({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Pengaturan untuk '),
		user,
	]);
	@override String get showAvatarsInNote => 'Tampilkan avatar di note';
	@override String get showAvatarsInSubNote => 'Tampilkan avatar di subnote';
	@override String get showEntireImage => 'Tampilkan keseluruhan gambar';
	@override String get showExpandedImage => 'Tampilkan gambar yang diperbesar';
	@override String get showImage => 'Tampilkan gambar';
	@override String get showLikeButtonInNoteFooter => 'Tambahkan "Sukai" ke menu aksi note';
	@override String get showMenuButtonInTabBar => 'Tampilkan tombol menu di kolom tab';
	@override String get showNoteCreatedAt => 'Tampilkan tanggal pembuatan note';
	@override String get showNoteFooter => 'Tampilkan tombol aksi di note';
	@override String get showNoteReactionsViewer => 'Tampilkan penampil reaksi di note';
	@override String get showPopupOnNewNote => 'Tampilkan popup pada note baru';
	@override String get showQuoteButtonInNoteFooter => 'Tambahkan "Quote" pada menu aksi note';
	@override String get showReactionsCountForEachTypes => 'Lihat jumlah reaksi pada tiap jenis reaksi';
	@override String get showRenotesCount => 'Lihat jumlah renote pada note';
	@override String get showRepliesCount => 'Lihat jumlah reply pada note';
	@override String get showSelfRenotes => 'Tampilkan swa-renote';
	@override String get showSmallButtons => 'Tampilkan tombol berukuran kecil';
	@override String get showSquaredButtons => 'Tampilkan tombol dengan tampilan kotak';
	@override String get showStackTrace => 'Tampilkan lacak berkas';
	@override String get showSubNoteFooter => 'Tampilkan tombol aksi di subnote';
	@override String get showSubNoteReactionsViewer => 'Tampilkan penampil reaksi di subnote';
	@override String get showTabHeaderInOneLine => 'Tampilkan informasi tab dalam satu baris';
	@override String get showTimelineLastViewedAt => 'Tampilkan tanggal terakhir timeline dilihat';
	@override String get showTimelineTabBarAtBottom => 'Tampilkan kolom tab timeline di bawah layar';
	@override String get showTranslateButtonInNoteFooter => 'Tambahkan opsi "Terjemah" pada menu aksi note';
	@override String get sinceDate => 'Sejak';
	@override String get stackTrace => 'Lacak berkas';
	@override String get streamingChannel => 'Kanal siaran';
	@override String get swapCw => 'Tukar komentar dengan isi';
	@override String get tabName => 'Nama tab';
	@override String get tabType => 'Jenis tab';
	@override String get tabs => 'Tab';
	@override String get tapToShow => 'Ketuk untuk menampilkan';
	@override String get timeMachine => 'Mesin waktu';
	@override String get timelinesPageButtons => 'Tombol laman timeline';
	@override String get unfavorited => 'Dihapus dari daftar favorit';
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Berhenti mengikuti '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get untilDate => 'Hingga';
	@override String get uploaded => 'Terunggah';
	@override String get useThisEmoji => 'Gunakan emoji ini';
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' mengatakan sesuatu'),
	]);
	@override TextSpan userSaysSomethingSensitive({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Postingan oleh '),
		name,
		const TextSpan(text: ' mengandung konten sensitif'),
	]);
	@override String get vibrateNote => 'Getarkan untuk note baru';
	@override String get vibrateNotification => 'Getarkan untuk notifikasi baru';
	@override String get webBrowser => 'Peramban web';
}

// Path: misskey
class _TranslationsMisskeyIdId extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Bahasa Indonesia';
	@override String get headlineMisskey => 'Jaringan terhubung melalui catatan';
	@override String get introMisskey => 'Selamat datang! Misskey adalah perangkat mikroblog tercatu bersifat sumber terbuka.\nMulailah menuliskan catatan, bagikan peristiwa terkini, serta ceritakan segala tentangmu.📡\nTunjukkan juga reaksimu pada catatan pengguna lain.👍\nMari jelajahi dunia baru🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} adalah sebuah layanan (instance) yang menggunakan platform sumber terbuka <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day} ${month}';
	@override String get search => 'Penelusuran';
	@override String get notifications => 'Notifikasi';
	@override String get username => 'Nama Pengguna';
	@override String get password => 'Kata sandi';
	@override String get forgotPassword => 'Lupa Kata Sandi';
	@override String get fetchingAsApObject => 'Mengambil data dari Fediverse...';
	@override String get ok => 'OK';
	@override String get gotIt => 'Saya mengerti';
	@override String get cancel => 'Batalkan';
	@override String get noThankYou => 'Tidak sekarang.';
	@override String get enterUsername => 'Masukkan nama pengguna';
	@override String renotedBy({required Object user}) => 'direnote oleh ${user}';
	@override String get noNotes => 'Tidak ada catatan';
	@override String get noNotifications => 'Tidak ada notifikasi';
	@override String get instance => 'Instansi';
	@override String get settings => 'Pengaturan';
	@override String get notificationSettings => 'Atur Notifikasi';
	@override String get basicSettings => 'Pengaturan umum';
	@override String get otherSettings => 'Pengaturan lainnya';
	@override String get openInWindow => 'Buka di jendela';
	@override String get profile => 'Profil';
	@override String get timeline => 'Lini masa';
	@override String get noAccountDescription => 'Pengguna ini belum menulis bio';
	@override String get login => 'Masuk';
	@override String get loggingIn => 'Sedang masuk';
	@override String get logout => 'Keluar';
	@override String get signup => 'Daftar';
	@override String get uploading => 'Sedang mengunggah';
	@override String get save => 'Simpan';
	@override String get users => 'Pengguna';
	@override String get addUser => 'Tambah pengguna';
	@override String get favorite => 'Favorit';
	@override String get favorites => 'Favorit';
	@override String get unfavorite => 'Hapus favorit';
	@override String get favorited => 'Ditambahkan ke favorit';
	@override String get alreadyFavorited => 'Telah ditambahkan ke favorit';
	@override String get cantFavorite => 'Tidak dapat menambahkan ke favorit';
	@override String get pin => 'Sematkan ke profil';
	@override String get unpin => 'Lepas sematan dari profil';
	@override String get copyContent => 'Salin konten';
	@override String get copyLink => 'Salin tautan';
	@override String get copyLinkRenote => 'Salin tautan renote';
	@override String get delete => 'Hapus';
	@override String get deleteAndEdit => 'Hapus dan sunting';
	@override String get deleteAndEditConfirm => 'Apakah kamu yakin ingin menghapus note ini dan menyuntingnya? Kamu akan kehilangan semua reaksi, renote dan balasan di note ini.';
	@override String get addToList => 'Tambahkan ke daftar';
	@override String get addToAntenna => 'Tambahkan ke Antena';
	@override String get sendMessage => 'Kirim pesan';
	@override String get copyRSS => 'Salin RSS';
	@override String get copyUsername => 'Salin nama pengguna';
	@override String get copyUserId => 'Salin ID pengguna';
	@override String get copyNoteId => 'Salin ID catatan';
	@override String get copyFileId => 'Salin Berkas';
	@override String get copyFolderId => 'Salin Folder';
	@override String get copyProfileUrl => 'Salin Alamat Web Profil';
	@override String get searchUser => 'Cari pengguna';
	@override String get searchThisUsersNotes => 'Mencari catatan pengguna';
	@override String get reply => 'Balas';
	@override String get loadMore => 'Selebihnya';
	@override String get showMore => 'Selebihnya';
	@override String get showLess => 'Tutup';
	@override String get youGotNewFollower => 'Mengikuti kamu';
	@override String get receiveFollowRequest => 'Ingin mengikuti kamu';
	@override String get followRequestAccepted => 'Permintaan mengikuti telah disetujui';
	@override String get mention => 'Sebut';
	@override String get mentions => 'Sebutan';
	@override String get directNotes => 'Catatan langsung';
	@override String get importAndExport => 'Impor & Ekspor';
	@override String get import => 'Impor';
	@override String get export => 'Ekspor';
	@override String get files => 'Berkas';
	@override String get download => 'Unduh';
	@override String driveFileDeleteConfirm({required Object name}) => 'Hapus ${name}? Catatan dengan berkas terkait juga akan terhapus.';
	@override String unfollowConfirm({required Object name}) => 'Berhenti mengikuti ${name}?';
	@override String get exportRequested => 'Kamu telah meminta ekspor. Ini akan memakan waktu sesaat. Setelah ekspor selesai, berkas yang dihasilkan akan ditambahkan ke Drive';
	@override String get importRequested => 'Kamu telah meminta impor. Ini akan memakan waktu sesaat.';
	@override String get lists => 'Daftar';
	@override String get noLists => 'Kamu tidak memiliki daftar apapun';
	@override String get note => 'Catatan';
	@override String get notes => 'Catatan';
	@override String get following => 'Ikuti';
	@override String get followers => 'Pengikut';
	@override String get followsYou => 'Mengikuti kamu';
	@override String get createList => 'Buat daftar';
	@override String get manageLists => 'Sunting daftar';
	@override String get error => 'Galat';
	@override String get somethingHappened => 'Terjadi kesalahan';
	@override String get retry => 'Coba lagi';
	@override String get pageLoadError => 'Gagal memuat halaman.';
	@override String get pageLoadErrorDescription => 'Umumnya disebabkan jaringan atau tembolok peramban. Cobalah bersihkan tembolok peramban lalu tunggu sesaat sebelum mencoba kembali.';
	@override String get serverIsDead => 'Tidak ada respon dari peladen. Mohon tunggu dan coba beberapa saat lagi.';
	@override String get youShouldUpgradeClient => 'Untuk melihat halaman ini, mohon muat ulang untuk memutakhirkan klienmu.';
	@override String get enterListName => 'Masukkan nama daftar';
	@override String get privacy => 'Privasi';
	@override String get makeFollowManuallyApprove => 'Permintaan mengikuti butuh persetujuan';
	@override String get defaultNoteVisibility => 'Privasi bawaan catatan';
	@override String get follow => 'Ikuti';
	@override String get followRequest => 'Permintaan mengikuti';
	@override String get followRequests => 'Permintaan mengikuti';
	@override String get unfollow => 'Berhenti mengikuti';
	@override String get followRequestPending => 'Permintaan mengikuti yang menunggu';
	@override String get enterEmoji => 'Masukkan emoji';
	@override String get renote => 'Renote';
	@override String get unrenote => 'Hapus renote';
	@override String get renoted => 'Telah direnote';
	@override String renotedToX({required Object name}) => '${name} telah merenote';
	@override String get cantRenote => 'Postingan ini tidak dapat direnote';
	@override String get cantReRenote => 'Renote tidak dapat direnote';
	@override String get quote => 'Kutip';
	@override String get inChannelRenote => 'Hanya renote dalam kanal';
	@override String get inChannelQuote => 'Hanya kutip dalam kanal';
	@override String get renoteToChannel => 'Renote ke kanal';
	@override String get renoteToOtherChannel => 'Renote ke kanal lainnya';
	@override String get pinnedNote => 'Catatan yang disematkan';
	@override String get pinned => 'Sematkan ke profil';
	@override String get you => 'Kamu';
	@override String get clickToShow => 'Klik untuk melihat';
	@override String get sensitive => 'Konten sensitif';
	@override String get add => 'Tambahkan';
	@override String get reaction => 'Reaksi';
	@override String get reactions => 'Reaksi';
	@override String get emojiPicker => 'Emoji Picker';
	@override String get pinnedEmojisForReactionSettingDescription => 'Atur sematan emoji pada reaksi';
	@override String get pinnedEmojisSettingDescription => 'Atur sematan emoji pada masukan emoji';
	@override String get emojiPickerDisplay => 'Tampilan Emoji Picker';
	@override String get overwriteFromPinnedEmojisForReaction => 'Timpa dari pengaturan reaksi';
	@override String get overwriteFromPinnedEmojis => 'Timpa dari pengaturan umum';
	@override String get reactionSettingDescription2 => 'Geser untuk memindah urutan emoji, klik untuk menghapus, tekan "+" untuk menambahkan';
	@override String get rememberNoteVisibility => 'Ingat pengaturan visibilitas catatan';
	@override String get attachCancel => 'Hapus lampiran';
	@override String get deleteFile => 'Berkas dihapus';
	@override String get markAsSensitive => 'Tandai sebagai konten sensitif';
	@override String get unmarkAsSensitive => 'Hapus tanda konten sensitif';
	@override String get enterFileName => 'Masukkan nama berkas';
	@override String get mute => 'Bisukan';
	@override String get unmute => 'Hapus bisukan';
	@override String get renoteMute => 'Matikan renote';
	@override String get renoteUnmute => 'Batal mematikan renote';
	@override String get block => 'Blokir';
	@override String get unblock => 'Buka blokir';
	@override String get suspend => 'Tangguhkan';
	@override String get unsuspend => 'Batalkan penangguhan';
	@override String get blockConfirm => 'Apakah kamu yakin ingin memblokir akun ini?';
	@override String get unblockConfirm => 'Apakah kamu yakin ingin membuka blokir akun ini?';
	@override String get suspendConfirm => 'Apakah kamu yakin ingin menangguhkan akun ini?';
	@override String get unsuspendConfirm => 'Apakah kamu yakin ingin membatalkan penangguhan akun ini?';
	@override String get selectList => 'Pilih daftar';
	@override String get editList => 'Sunting daftar';
	@override String get selectChannel => 'Pilih kanal';
	@override String get selectAntenna => 'Pilih Antena';
	@override String get editAntenna => 'Sunting antena';
	@override String get createAntenna => 'Membuat antena.';
	@override String get selectWidget => 'Pilih gawit';
	@override String get editWidgets => 'Sunting gawit';
	@override String get editWidgetsExit => 'Selesai';
	@override String get customEmojis => 'Emoji kustom';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Nama emoji';
	@override String get emojiUrl => 'URL Emoji';
	@override String get addEmoji => 'Tambahkan emoji';
	@override String get settingGuide => 'Pengaturan rekomendasi';
	@override String get cacheRemoteFiles => 'Tembolokkan berkas dari instansi luar';
	@override String get cacheRemoteFilesDescription => 'Ketika pengaturan ini dinonaktifkan, berkas dari instansi luar akan dimuat langsung. Menonaktifkan ini akan mengurangi penggunaan penyimpanan peladen, namun dapat menyebabkan peningkatan lalu lintas bandwidth, karena keluku tidak dihasilkan.';
	@override String get youCanCleanRemoteFilesCache => 'Kamu dapat mengosongkan tembolok dengan mengeklik tombol 🗑️ pada layar manajemen berkas.';
	@override String get cacheRemoteSensitiveFiles => 'Tembolokkan berkas dari instansi luar';
	@override String get cacheRemoteSensitiveFilesDescription => 'Menonaktifkan pengaturan ini menyebabkan berkas sensitif dari instansi luar ditautkan secara langsung, bukan ditembolok.';
	@override String get flagAsBot => 'Atur akun ini sebagai Bot';
	@override String get flagAsBotDescription => 'Jika akun ini dikendalikan oleh program, tetapkanlah opsi ini. Jika diaktifkan, ini akan berfungsi sebagai tanda bagi pengembang lain untuk mencegah interaksi berantai dengan bot lain dan menyesuaikan sistem internal Misskey untuk memperlakukan akun ini sebagai bot.';
	@override String get flagAsCat => 'Atur akun ini sebagai kucing';
	@override String get flagAsCatDescription => 'Nyalakan tanda ini untuk menandai akun ini sebagai kucing.';
	@override String get flagShowTimelineReplies => 'Tampilkan balasan di lini masa';
	@override String get flagShowTimelineRepliesDescription => 'Menampilkan balasan pengguna dari catatan pengguna lain di lini masa apabila dinyalakan.';
	@override String get autoAcceptFollowed => 'Setujui otomatis permintaan mengikuti dari pengguna yang kamu ikuti';
	@override String get addAccount => 'Tambahkan akun';
	@override String get reloadAccountsList => 'Muat ulang daftar akun';
	@override String get loginFailed => 'Gagal untuk masuk';
	@override String get showOnRemote => 'Lihat profil asli';
	@override String get continueOnRemote => 'Lihat di peladen asal';
	@override String get chooseServerOnMisskeyHub => 'Pilih peladen dari Misskey Hub';
	@override String get specifyServerHost => 'Tentukan domain peladen';
	@override String get inputHostName => 'Masukkan nama domain';
	@override String get general => 'Umum';
	@override String get wallpaper => 'Wallpaper';
	@override String get setWallpaper => 'Atur wallpaper';
	@override String get removeWallpaper => 'Hapus wallpaper';
	@override String searchWith({required Object q}) => 'Cari: ${q}';
	@override String get youHaveNoLists => 'Kamu tidak memiliki daftar apapun';
	@override String followConfirm({required Object name}) => 'Apakah kamu yakin ingin mengikuti ${name}?';
	@override String get proxyAccount => 'Akun proksi';
	@override String get proxyAccountDescription => 'Akun proksi merupakan sebuah akun yang bertindak sebagai pengikut instansi luar untuk pengguna dalam kondisi tertentu. Sebagai contoh, ketika pengguna menambahkan seorang pengguna instansi luar ke dalam daftar, aktivitas dari pengguna instansi luar tidak akan disampaikan ke instansi apabila tidak ada pengguna lokal yang mengikuti pengguna tersebut, dengan begitu akun proksilah yang akan mengikutinya.';
	@override String get host => 'Host';
	@override String get selectSelf => 'Pilih diri sendiri';
	@override String get selectUser => 'Pilih pengguna';
	@override String get recipient => 'Penerima';
	@override String get annotation => 'Keterangan konten';
	@override String get federation => 'Federasi';
	@override String get instances => 'Instansi';
	@override String get registeredAt => 'Terdaftar';
	@override String get latestRequestReceivedAt => 'Permintaan terakhir diterima pada';
	@override String get latestStatus => 'Status terakhir';
	@override String get storageUsage => 'Penggunaan penyimpanan';
	@override String get charts => 'Grafik';
	@override String get perHour => 'per Jam';
	@override String get perDay => 'per Hari';
	@override String get stopActivityDelivery => 'Berhenti mengirim aktivitas';
	@override String get blockThisInstance => 'Blokir instansi ini';
	@override String get silenceThisInstance => 'Senyapkan instansi ini';
	@override String get operations => 'Tindakan';
	@override String get software => 'Perangkat lunak';
	@override String get version => 'Versi';
	@override String get metadata => 'Metadata';
	@override String withNFiles({required Object n}) => '${n} berkas';
	@override String get monitor => 'Pantau';
	@override String get jobQueue => 'Antrian kerja';
	@override String get cpuAndMemory => 'CPU dan Memori';
	@override String get network => 'Jaringan';
	@override String get disk => 'Diska';
	@override String get instanceInfo => 'Informasi Instansi';
	@override String get statistics => 'Statistik';
	@override String get clearQueue => 'Bersihkan antrian';
	@override String get clearQueueConfirmTitle => 'Apakah kamu yakin ingin membersihkan antrian?';
	@override String get clearQueueConfirmText => 'Seluruh sisa catatan yang tidak tersampaikan di dalam antrian tidak akan difederasi. Biasanya operasi ini TIDAK dibutuhkan.';
	@override String get clearCachedFiles => 'Hapus tembolok';
	@override String get clearCachedFilesConfirm => 'Apakah kamu yakin ingin menghapus seluruh tembolok berkas instansi luar?';
	@override String get blockedInstances => 'Instansi terblokir';
	@override String get blockedInstancesDescription => 'Daftar nama host dari instansi yang diperlukan untuk diblokir. Instansi yang didaftarkan tidak akan dapat berkomunikasi dengan instansi ini.';
	@override String get silencedInstances => 'Instansi yang disenyapkan';
	@override String get silencedInstancesDescription => 'Daftar nama host dari instansi yang ingin kamu senyapkan. Semua akun dari instansi yang terdaftar akan diperlakukan sebagai disenyapkan. Hal ini membuat akun hanya dapat membuat permintaan mengikuti, dan tidak dapat menyebutkan akun lokal apabila tidak mengikuti. Hal ini tidak akan mempengaruhi instansi yang diblokir.';
	@override String get federationAllowedHosts => 'Server yang membolehkan federasi';
	@override String get muteAndBlock => 'Bisukan / Blokir';
	@override String get mutedUsers => 'Pengguna yang dibisukan';
	@override String get blockedUsers => 'Pengguna yang diblokir';
	@override String get noUsers => 'Tidak ada pengguna';
	@override String get editProfile => 'Sunting profil';
	@override String get noteDeleteConfirm => 'Apakah kamu yakin ingin menghapus catatan ini?';
	@override String get pinLimitExceeded => 'Kamu tidak dapat menyematkan catatan lagi';
	@override String get intro => 'Instalasi Misskey telah selesai! Mohon untuk membuat pengguna admin.';
	@override String get done => 'Selesai';
	@override String get processing => 'Memproses';
	@override String get preview => 'Pratinjau';
	@override String get default_ => 'Bawaan';
	@override String defaultValueIs({required Object value}) => 'Bawaan: ${value}';
	@override String get noCustomEmojis => 'Tidak ada emoji kustom';
	@override String get noJobs => 'Tidak ada kerja';
	@override String get federating => 'memfederasi';
	@override String get blocked => 'Diblokir';
	@override String get suspended => 'Ditangguhkan';
	@override String get all => 'Semua';
	@override String get subscribing => 'Berlangganan';
	@override String get publishing => 'Sedang menyiarkan langsung';
	@override String get notResponding => 'Tidak ada respon';
	@override String get instanceFollowing => 'Mengikuti instansi';
	@override String get instanceFollowers => 'Pengikut instansi';
	@override String get instanceUsers => 'Pengguna pada instansi ini';
	@override String get changePassword => 'Ubah kata sandi';
	@override String get security => 'Keamanan';
	@override String get retypedNotMatch => 'Input tidak sama';
	@override String get currentPassword => 'Kata sandi saat ini';
	@override String get newPassword => 'Kata sandi baru';
	@override String get newPasswordRetype => 'Ulangi kata sandi baru';
	@override String get attachFile => 'Lampirkan berkas';
	@override String get more => 'Lainnya';
	@override String get featured => 'Sorotan';
	@override String get usernameOrUserId => 'Nama pengguna atau User ID';
	@override String get noSuchUser => 'Pengguna tidak ditemukan';
	@override String get lookup => 'Cari';
	@override String get announcements => 'Pengumuman';
	@override String get imageUrl => 'URL Gambar';
	@override String get remove => 'Hapus';
	@override String get removed => 'Telah dihapus';
	@override String removeAreYouSure({required Object x}) => 'Apakah kamu yakin ingin menghapus "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Apakah kamu yakin ingin menghapus "${x}"?';
	@override String get resetAreYouSure => 'Yakin mau atur ulang?';
	@override String get areYouSure => 'Apakah kamu yakin?';
	@override String get saved => 'Telah disimpan';
	@override String get messaging => 'Pesan';
	@override String get upload => 'Unggah';
	@override String get keepOriginalUploading => 'Simpan gambar asli';
	@override String get keepOriginalUploadingDescription => 'Simpan gambar yang diunggah sebagaimana gambar aslinya. Bila dimatikan, versi tampilan web akan dihasilkan pada saat diunggah.';
	@override String get fromDrive => 'Dari Drive';
	@override String get fromUrl => 'Dari URL';
	@override String get uploadFromUrl => 'Unggah dari URL';
	@override String get uploadFromUrlDescription => 'URL berkas yang ingin kamu unggah';
	@override String get uploadFromUrlRequested => 'Pengunggahan telah diminta';
	@override String get uploadFromUrlMayTakeTime => 'Membutuhkan beberapa waktu hingga pengunggahan selesai';
	@override String get explore => 'Jelajahi';
	@override String get messageRead => 'Telah dibaca';
	@override String get noMoreHistory => 'Tidak ada sejarah lagi';
	@override String get startMessaging => 'Mulai mengirim pesan';
	@override String nUsersRead({required Object n}) => 'Dibaca oleh ${n}';
	@override String agreeTo({required Object x0}) => 'Saya setuju kepada ${x0}';
	@override String get agree => 'Setuju';
	@override String get agreeBelow => 'Saya setuju dengan di bawah ini';
	@override String get basicNotesBeforeCreateAccount => 'Catatan penting';
	@override String get termsOfService => 'Syarat dan ketentuan';
	@override String get start => 'Mulai';
	@override String get home => 'Beranda';
	@override String get remoteUserCaution => 'Informasi ini mungkin tidak mutakhir, karena pengguna ini berasal dari peladen instansi luar.';
	@override String get activity => 'Aktivitas';
	@override String get images => 'Gambar';
	@override String get image => 'Gambar';
	@override String get birthday => 'Tanggal lahir';
	@override String yearsOld({required Object age}) => '${age} tahun';
	@override String get registeredDate => 'Bergabung pada';
	@override String get location => 'Lokasi';
	@override String get theme => 'Tema';
	@override String get themeForLightMode => 'Tema untuk Mode Terang';
	@override String get themeForDarkMode => 'Tema untuk Mode Gelap';
	@override String get light => 'Terang';
	@override String get dark => 'Gelap';
	@override String get lightThemes => 'Tema Terang';
	@override String get darkThemes => 'Tema gelap';
	@override String get syncDeviceDarkMode => 'Sinkronkan mode gelap dengan pengaturan perangkat';
	@override String get drive => 'Drive';
	@override String get fileName => 'Nama berkas';
	@override String get selectFile => 'Pilih berkas';
	@override String get selectFiles => 'Pilih berkas';
	@override String get selectFolder => 'Pilih folder';
	@override String get selectFolders => 'Pilih folder';
	@override String get fileNotSelected => 'Tidak ada file yang dipilih';
	@override String get renameFile => 'Ubah nama berkas';
	@override String get folderName => 'Nama folder';
	@override String get createFolder => 'Buat folder';
	@override String get renameFolder => 'Ubah nama folder';
	@override String get deleteFolder => 'Hapus folder';
	@override String get folder => 'Folder';
	@override String get addFile => 'Tambahkan berkas';
	@override String get showFile => 'Tampilkan berkas';
	@override String get emptyDrive => 'Drive kosong';
	@override String get emptyFolder => 'Folder kosong';
	@override String get unableToDelete => 'Tidak dapat menghapus';
	@override String get inputNewFileName => 'Masukkan nama berkas yang baru';
	@override String get inputNewDescription => 'Masukkan keterangan disini';
	@override String get inputNewFolderName => 'Masukkan nama folder yang baru';
	@override String get circularReferenceFolder => 'Folder tujuan adalah subfolder dari folder yang ingin kamu pindahkan.';
	@override String get hasChildFilesOrFolders => 'Karena folder ini tidak kosong, maka tidak dapat dihapus.';
	@override String get copyUrl => 'Salin tautan';
	@override String get rename => 'Ubah nama';
	@override String get avatar => 'Avatar';
	@override String get banner => 'Banner';
	@override String get displayOfSensitiveMedia => 'Tampilkan media NSFW';
	@override String get whenServerDisconnected => 'Ketika kehilangan koneksi dengan peladen';
	@override String get disconnectedFromServer => 'Terputus koneksi dari peladen';
	@override String get reload => 'Muat ulang';
	@override String get doNothing => 'Abaikan';
	@override String get reloadConfirm => 'Apakah kamu ingin memuat ulang lini masa?';
	@override String get watch => 'Tonton';
	@override String get unwatch => 'Batal tonton';
	@override String get accept => 'Terima';
	@override String get reject => 'Tolak';
	@override String get normal => 'Normal';
	@override String get instanceName => 'Nama instansi';
	@override String get instanceDescription => 'Tentang instansi';
	@override String get maintainerName => 'Pengelola';
	@override String get maintainerEmail => 'Surel pengelola';
	@override String get tosUrl => 'URL Syarat dan Ketentuan';
	@override String get thisYear => 'Tahun ini';
	@override String get thisMonth => 'Bulan ini';
	@override String get today => 'Hari ini';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Halaman';
	@override String get integration => 'Integrasi';
	@override String get connectService => 'Sambungkan';
	@override String get disconnectService => 'Putuskan';
	@override String get enableLocalTimeline => 'Nyalakan lini masa lokal';
	@override String get enableGlobalTimeline => 'Nyalakan lini masa global';
	@override String get disablingTimelinesInfo => 'Admin dan Moderator akan selalu memiliki akses ke semua lini masa meskipun lini masa tersebut tidak diaktifkan.';
	@override String get registration => 'Pendaftaran';
	@override String get invite => 'Undang';
	@override String get driveCapacityPerLocalAccount => 'Kapasitas drive per pengguna lokal';
	@override String get driveCapacityPerRemoteAccount => 'Kapasitas drive per pengguna remote';
	@override String get inMb => 'dalam Megabytes';
	@override String get bannerUrl => 'URL Banner';
	@override String get backgroundImageUrl => 'URL Gambar latar';
	@override String get basicInfo => 'Informasi Umum';
	@override String get pinnedUsers => 'Pengguna yang disematkan';
	@override String get pinnedUsersDescription => 'Tuliskan satu nama pengguna dalam satu baris. Pengguna yang dituliskan disini akan disematkan dalam bilah "Jelajahi".';
	@override String get pinnedPages => 'Halaman yang disematkan';
	@override String get pinnedPagesDescription => 'Masukkan tautan dari halaman yang kamu ingin sematkan ke halaman utama dari instansi ini, dipisah dengan membuat baris baru.';
	@override String get pinnedClipId => 'ID dari klip yang disematkan';
	@override String get pinnedNotes => 'Catatan yang disematkan';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Nyalakan hCaptcha';
	@override String get hcaptchaSiteKey => 'Site Key';
	@override String get hcaptchaSecretKey => 'Secret Key';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Nyalakan mCaptcha';
	@override String get mcaptchaSiteKey => 'Site key';
	@override String get mcaptchaSecretKey => 'Secret Key';
	@override String get mcaptchaInstanceUrl => 'URL instansi mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Nyalakan reCAPTCHA';
	@override String get recaptchaSiteKey => 'Site key';
	@override String get recaptchaSecretKey => 'Secret Key';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Nyalakan Turnstile';
	@override String get turnstileSiteKey => 'Site key';
	@override String get turnstileSecretKey => 'Secret Key';
	@override String get avoidMultiCaptchaConfirm => 'Menggunakan banyak Captcha dapat menyebabkan gangguan. Apakah kamu ingin untuk menonaktifkan Captcha yang lain? Kamu dapat membiarkan fitur ini tetap aktif dengan menekan tombol batal.';
	@override String get antennas => 'Antena';
	@override String get manageAntennas => 'Pengelola Antena';
	@override String get name => 'Nama';
	@override String get antennaSource => 'Sumber Antenna';
	@override String get antennaKeywords => 'Kata kunci yang diterima';
	@override String get antennaExcludeKeywords => 'Kata kunci yang dikecualikan';
	@override String get antennaExcludeBots => 'Kecualikan akun bot';
	@override String get antennaKeywordsDescription => 'Pisahkan dengan spasi untuk kondisi AND. Pisahkan dengan baris baru untuk kondisi OR.';
	@override String get notifyAntenna => 'Beritahu untuk catatan baru';
	@override String get withFileAntenna => 'Hanya tampilkan catatan dengan berkas yang dilampirkan';
	@override String get enableServiceworker => 'Aktifkan ServiceWorker';
	@override String get antennaUsersDescription => 'Tuliskan satu nama pengguna per baris';
	@override String get caseSensitive => 'Peka huruf besar dan huruf kecil';
	@override String get withReplies => 'Termasuk balasan';
	@override String get connectedTo => 'Akun berikut terhubung';
	@override String get notesAndReplies => 'Catatan dan balasan';
	@override String get withFiles => 'Media';
	@override String get silence => 'Senyapkan';
	@override String get silenceConfirm => 'Apakah kamu yakin ingin menyenyapkan pengguna ini?';
	@override String get unsilence => 'Batalkan senyap';
	@override String get unsilenceConfirm => 'Apakah kamu ingin untuk batal menyenyapkan pengguna ini?';
	@override String get popularUsers => 'Pengguna populer';
	@override String get recentlyUpdatedUsers => 'Pengguna dengan aktivitas terkini';
	@override String get recentlyRegisteredUsers => 'Pengguna baru saja bergabung';
	@override String get recentlyDiscoveredUsers => 'Pengguna baru saja dilihat';
	@override String exploreUsersCount({required Object count}) => 'Terdapat ${count} pengguna';
	@override String get exploreFediverse => 'Jelajahi Fediverse';
	@override String get popularTags => 'Tag populer';
	@override String get userList => 'Daftar';
	@override String get about => 'Informasi';
	@override String get aboutMisskey => 'Tentang Misskey';
	@override String get administrator => 'Admin';
	@override String get token => 'Token';
	@override String get x2fa => 'Autentikasi 2-faktor';
	@override String get setupOf2fa => 'Atur autentikasi 2-faktor';
	@override String get totp => 'Aplikasi autentikator';
	@override String get totpDescription => 'Gunakan aplikasi autentikator untuk mendapatkan kata sandi sekali pakai';
	@override String get moderator => 'Moderator';
	@override String get moderation => 'Moderasi';
	@override String get moderationNote => 'Catatan moderasi';
	@override String get addModerationNote => 'Tambahkan catatan moderasi';
	@override String get moderationLogs => 'Log moderasi';
	@override String nUsersMentioned({required Object n}) => '${n} pengguna disebut';
	@override String get securityKeyAndPasskey => 'Security key dan passkey';
	@override String get securityKey => 'Kunci keamanan';
	@override String get lastUsed => 'Terakhir digunakan';
	@override String lastUsedAt({required Object t}) => 'Penggunaan terakhir: ${t}';
	@override String get unregister => 'Batalkan pendaftaran';
	@override String get passwordLessLogin => 'Setel login tanpa kata sandi';
	@override String get passwordLessLoginDescription => 'Bolehkan masuk tanpa kata sandi dengan menggunakan hanya security-key atau passkey';
	@override String get resetPassword => 'Atur ulang kata sandi';
	@override String newPasswordIs({required Object password}) => 'Kata sandi baru adalah "${password}"';
	@override String get reduceUiAnimation => 'Kurangi animasi antarmuka';
	@override String get share => 'Bagikan';
	@override String get notFound => 'Tidak dapat ditemukan';
	@override String get notFoundDescription => 'Tidak ada halaman sesuai dengan URL yang ditentukan.';
	@override String get uploadFolder => 'Lokasi unggah folder bawaan';
	@override String get markAsReadAllNotifications => 'Tandai semua notifikasi telah dibaca';
	@override String get markAsReadAllUnreadNotes => 'Tandai semua catatan telah dibaca';
	@override String get markAsReadAllTalkMessages => 'Tandai semua pesan telah dibaca';
	@override String get help => 'Bantuan';
	@override String get inputMessageHere => 'Ketik pesan disini';
	@override String get close => 'Tutup';
	@override String get invites => 'Undangan';
	@override String get members => 'Anggota';
	@override String get transfer => 'Transfer';
	@override String get title => 'Judul';
	@override String get text => 'Teks';
	@override String get enable => 'Aktifkan';
	@override String get next => 'Selanjutnya';
	@override String get retype => 'Masukkan ulang';
	@override String noteOf({required Object user}) => 'Catatan milik ${user}';
	@override String get quoteAttached => 'Dikutip';
	@override String get quoteQuestion => 'Apakah kamu ingin menambahkan kutipan?';
	@override String get attachAsFileQuestion => 'Teks dalam papan klip terlalu panjang. Apakah kamu ingin melampirkannya sebagai berkas teks?';
	@override String get noMessagesYet => 'Tidak ada pesan';
	@override String get newMessageExists => 'Kamu mendapatkan pesan baru';
	@override String get onlyOneFileCanBeAttached => 'Kamu hanya dapat melampirkan satu berkas ke dalam pesan';
	@override String get signinRequired => 'Silahkan login';
	@override String get invitations => 'Undangan';
	@override String get invitationCode => 'Kode undangan';
	@override String get checking => 'Memeriksa';
	@override String get available => 'Tersedia';
	@override String get unavailable => 'Tidak tersedia';
	@override String get usernameInvalidFormat => 'Hanya dapat menerima karakter a-z, A-Z dan angka 0-9.';
	@override String get tooShort => 'Terlalu pendek';
	@override String get tooLong => 'Terlalu panjang';
	@override String get weakPassword => 'Kata sandi lemah';
	@override String get normalPassword => 'Kata sandi baik';
	@override String get strongPassword => 'Kata sandi kuat';
	@override String get passwordMatched => 'Kata sandi sama';
	@override String get passwordNotMatched => 'Kata sandi tidak sama';
	@override String signinWith({required Object x}) => 'Masuk dengan ${x}';
	@override String get signinFailed => 'Tidak dapat masuk. Nama pengguna atau kata sandi yang kamu masukkan salah.';
	@override String get or => 'atau';
	@override String get language => 'Bahasa';
	@override String get uiLanguage => 'Bahasa antarmuka pengguna';
	@override String aboutX({required Object x}) => 'Tentang ${x}';
	@override String get emojiStyle => 'Gaya emoji';
	@override String get native => 'Native';
	@override String get menuStyle => 'Gaya menu';
	@override String get style => 'Gaya';
	@override String get showNoteActionsOnlyHover => 'Hanya tampilkan aksi catatan saat ditunjuk';
	@override String get showReactionsCount => 'Lihat jumlah reaksi dalam catatan';
	@override String get noHistory => 'Tidak ada riwayat';
	@override String get signinHistory => 'Riwayat masuk';
	@override String get enableAdvancedMfm => 'Nyalakan MFM tingkat lanjut';
	@override String get enableAnimatedMfm => 'Nyalakan animasi MFM';
	@override String get doing => 'Sedang berkerja...';
	@override String get category => 'Kategori';
	@override String get tags => 'Tandai';
	@override String get docSource => 'Sumber dari dokumen ini';
	@override String get createAccount => 'Buat akun';
	@override String get existingAccount => 'Akun yang ada';
	@override String get regenerate => 'Buat ulang';
	@override String get fontSize => 'Ukuran huruf';
	@override String get mediaListWithOneImageAppearance => 'Tinggi daftar media dengan satu gambar saja';
	@override String limitTo({required Object x}) => 'Batasi pada ${x}';
	@override String get noFollowRequests => 'Kamu tidak memiliki permintaan mengikuti yang menunggu';
	@override String get openImageInNewTab => 'Buka gambar di tab baru';
	@override String get dashboard => 'Dasbor';
	@override String get local => 'Lokal';
	@override String get remote => 'Remote';
	@override String get total => 'Jumlah';
	@override String get weekOverWeekChanges => 'Mingguan';
	@override String get dayOverDayChanges => 'Harian';
	@override String get appearance => 'Tampilan';
	@override String get clientSettings => 'Pengaturan Klien';
	@override String get accountSettings => 'Pengaturan Akun';
	@override String get promotion => 'Promosi';
	@override String get promote => 'Promosikan';
	@override String get numberOfDays => 'Jumlah hari';
	@override String get hideThisNote => 'Sembunyikan catatan ini';
	@override String get showFeaturedNotesInTimeline => 'Tampilkan catatan yang diunggulkan di lini masa';
	@override String get objectStorage => 'Object Storage';
	@override String get useObjectStorage => 'Gunakan object storage';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'Prefix URL digunakan untuk mengonstruksi URL ke object (media) referencing. Tentukan URL jika kamu menggunakan CDN atau Proxy. Jika tidak, tentukan alamat yang dapat diakses secara publik sesuai dengan panduan dari layanan yang akan kamu gunakan. Contohnya: \'https://<bucket>.s3.amazonaws.com\' untuk AWS S3, dan \'https://storage.googleapis.com/<bucket>\' untuk GCS.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Mohon tentukan nama bucket yang digunakan pada layanan yang telah dikonfigurasi.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Berkas tidak akan disimpan dalam direktori dari prefix ini.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Kosongkan bagian ini jika kamu menggunakan AWS S3, jika tidak tentukan endpoint sebagai \'<host>\' atau \'<host>:<port>\' sesuai dengan panduan dari layanan yang akan kamu gunakan.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => 'Tentukan region seperti \'xx-east-1\'. Jika layanan kamu tidak memiliki perbedaan mengenai region, kosongkan saja atau isi dengan \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Gunakan SSL';
	@override String get objectStorageUseSSLDesc => 'Matikan ini jika kamu tidak akan menggunakan HTTPS untuk koneksi API';
	@override String get objectStorageUseProxy => 'Hubungkan melalui Proxy';
	@override String get objectStorageUseProxyDesc => 'Matikan ini jika kamu tidak akan menggunakan Proxy untuk koneksi ObjectStorage';
	@override String get objectStorageSetPublicRead => 'Setel "public-read" disaat mengunggah';
	@override String get s3ForcePathStyleDesc => 'Jika s3ForcePathStyle dinyalakan, nama bucket harus dimasukkan dalam path URL dan bukan URL nama host tersebut. Kamu perlu menyalakan pengaturan ini jika menggunakan layanan seperti instansi Minio yang self-hosted.';
	@override String get serverLogs => 'Log Peladen';
	@override String get deleteAll => 'Hapus semua';
	@override String get showFixedPostForm => 'Tampilkan form posting di atas lini masa';
	@override String get showFixedPostFormInChannel => 'Tampilkan form posting di atas lini masa (Kanal)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Termasuk balasan dari pengguna baru yang diikuti pada lini masa secara bawaan';
	@override String get newNoteRecived => 'Kamu mendapat catatan baru';
	@override String get sounds => 'Bunyi';
	@override String get sound => 'Bunyi';
	@override String get listen => 'Dengarkan';
	@override String get none => 'Tidak ada';
	@override String get showInPage => 'Tampilkan di halaman';
	@override String get popout => 'Pop-out';
	@override String get volume => 'Volume';
	@override String get masterVolume => 'Master volume';
	@override String get notUseSound => 'Tidak ada keluaran suara';
	@override String get useSoundOnlyWhenActive => 'Hanya keluarkan suara jika Misskey sedang aktif';
	@override String get details => 'Selengkapnya';
	@override String get chooseEmoji => 'Pilih emoji';
	@override String get unableToProcess => 'Operasi tersebut tidak dapat diselesaikan.';
	@override String get recentUsed => 'Baru saja digunakan';
	@override String get install => 'Pasang';
	@override String get uninstall => 'Copot pemasangan';
	@override String get installedApps => 'Aplikasi yang diijinkan';
	@override String get nothing => 'Tidak ada sama sekali disini';
	@override String get installedDate => 'Diijinkan';
	@override String get lastUsedDate => 'Terakhir digunakan';
	@override String get state => 'Kondisi';
	@override String get sort => 'Urutkan';
	@override String get ascendingOrder => 'Urutkan naik';
	@override String get descendingOrder => 'Urutkan menurun';
	@override String get scratchpad => 'Scratchpad';
	@override String get scratchpadDescription => 'Scratchpad menyediakan lingkungan eksperimen untuk AiScript. Kamu  bisa menulis, mengeksuksi, serta mengecek hasil yang berinteraksi dengan Misskey.';
	@override String get output => 'Keluaran';
	@override String get script => 'Script';
	@override String get disablePagesScript => 'Nonaktifkan script pada halaman';
	@override String get updateRemoteUser => 'Perbaharui informasi pengguna instansi luar';
	@override String get unsetUserAvatar => 'Hapus avatar';
	@override String get unsetUserAvatarConfirm => 'Apakah kamu yakin ingin menghapus avatar?';
	@override String get unsetUserBanner => 'Hapus banner';
	@override String get unsetUserBannerConfirm => 'Apakah kamu yakin ingin menghapus banner?';
	@override String get deleteAllFiles => 'Hapus semua berkas';
	@override String get deleteAllFilesConfirm => 'Apakah kamu yakin ingin menghapus semua berkas?';
	@override String get removeAllFollowing => 'Batalkan mengikuti semua pengguna';
	@override String removeAllFollowingDescription({required Object host}) => 'Batal mengikuti semua akun dari ${host}. Mohon jalankan ini ketika instansi sudah tidak ada lagi.';
	@override String get userSuspended => 'Pengguna ini telah ditangguhkan';
	@override String get userSilenced => 'Pengguna ini telah disenyapkan.';
	@override String get yourAccountSuspendedTitle => 'Akun ini ditangguhkan';
	@override String get yourAccountSuspendedDescription => 'Akun ini ditangguhkan karena melanggar ketentuan penggunaan layanan peladen atau semacamnya. Hubungi admin apabila ingin mengetahui alasan lebih lanjut. Mohon untuk tidak membuat akun baru.';
	@override String get tokenRevoked => 'Token tidak valid';
	@override String get tokenRevokedDescription => 'Token ini telah kedaluwarsa. Mohon masuk lagi.';
	@override String get accountDeleted => 'Akun telah dihapus';
	@override String get accountDeletedDescription => 'Akun ini telah dihapus.';
	@override String get menu => 'Menu';
	@override String get divider => 'Pembagi';
	@override String get addItem => 'Tambahkan item';
	@override String get rearrange => 'Tata ulang';
	@override String get relays => 'Relay';
	@override String get addRelay => 'Tambahkan relay';
	@override String get inboxUrl => 'URL Kotak masuk';
	@override String get addedRelays => 'Relay yang ditambahkan';
	@override String get serviceworkerInfo => 'Harus diaktifkan untuk notifikasi dorong.';
	@override String get deletedNote => 'Catatan yang dihapus';
	@override String get invisibleNote => 'Catatan yang disembunyikan';
	@override String get enableInfiniteScroll => 'Aktifkan gulir tak terbatas';
	@override String get visibility => 'Visibilitas';
	@override String get poll => 'Angket';
	@override String get useCw => 'Sembunyikan konten';
	@override String get enablePlayer => 'Buka pemutar video';
	@override String get disablePlayer => 'Tutup pemutar video';
	@override String get expandTweet => 'Perluas utas';
	@override String get themeEditor => 'Penyunting tema';
	@override String get description => 'Deskripsi';
	@override String get describeFile => 'Tambahkan keterangan';
	@override String get enterFileDescription => 'Masukkan keterangan';
	@override String get author => 'Pembuat';
	@override String get leaveConfirm => 'Ada perubahan yang belum disimpan. Apakah kamu ingin membuangnya?';
	@override String get manage => 'Manajemen';
	@override String get plugins => 'Plugin';
	@override String get preferencesBackups => 'Aturan pencadangan';
	@override String get deck => 'Dek';
	@override String get undeck => 'Keluar dari dek';
	@override String get useBlurEffectForModal => 'Gunakan efek buram untuk modal';
	@override String get useFullReactionPicker => 'Gunakan pemilih reaksi ukuran penuh';
	@override String get width => 'Lebar';
	@override String get height => 'Tinggi';
	@override String get large => 'Besar';
	@override String get medium => 'Sedang';
	@override String get small => 'Kecil';
	@override String get generateAccessToken => 'Buat token akses';
	@override String get permission => 'Izin';
	@override String get adminPermission => 'Wewenang Izin Admin';
	@override String get enableAll => 'Aktifkan semua';
	@override String get disableAll => 'Nonaktifkan semua';
	@override String get tokenRequested => 'Berikan ijin akses ke akun';
	@override String get pluginTokenRequestedDescription => 'Plugin ini dapat menggunakan setelan ijin disini.';
	@override String get notificationType => 'Jenis notifikasi';
	@override String get edit => 'Sunting';
	@override String get emailServer => 'Peladen surel';
	@override String get enableEmail => 'Nyalakan distribusi surel';
	@override String get emailConfigInfo => 'Digunakan untuk mengonfirmasi surel kamu disaat mendaftar dan lupa kata sandi';
	@override String get email => 'Surel';
	@override String get emailAddress => 'Alamat surel';
	@override String get smtpConfig => 'Konfigurasi peladen SMTP';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Nama Pengguna';
	@override String get smtpPass => 'Kata sandi';
	@override String get emptyToDisableSmtpAuth => 'Kosongkan nama pengguna dan kata sandi untuk menonaktifkan verifikasi SMTP';
	@override String get smtpSecure => 'Gunakan SSL/TLS implisit untuk koneksi SMTP';
	@override String get smtpSecureInfo => 'Matikan ini ketika menggunakan STARTTLS';
	@override String get testEmail => 'Tes pengiriman surel';
	@override String get wordMute => 'Bisukan kata';
	@override String get hardWordMute => 'Pembisuan kata keras';
	@override String get regexpError => 'Kesalahan ekspresi reguler';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Galat terjadi pada baris ${line} ekspresi reguler dari ${tab} kata yang dibisukan:';
	@override String get instanceMute => 'Bisukan instansi';
	@override String userSaysSomething({required Object name}) => '${name} mengatakan sesuatu';
	@override String get makeActive => 'Aktifkan';
	@override String get display => 'Tampilkan';
	@override String get copy => 'Salin';
	@override String get metrics => 'Metrik';
	@override String get overview => 'Ikhtisar';
	@override String get logs => 'Log';
	@override String get delayed => 'Terlambat';
	@override String get database => 'Basis data';
	@override String get channel => 'Kanal';
	@override String get create => 'Buat';
	@override String get notificationSetting => 'Pengaturan Notifikasi';
	@override String get notificationSettingDesc => 'Pilih tipe notifikasi untuk ditampilkan';
	@override String get useGlobalSetting => 'Gunakan setelan global';
	@override String get useGlobalSettingDesc => 'Jika dinyalakan, setelan notifikasi akun kamu akan digunakan. Jika dimatikan, pengaturan secara individu dapat dibuat.';
	@override String get other => 'Lainnya';
	@override String get regenerateLoginToken => 'Perbarui token login';
	@override String get regenerateLoginTokenDescription => 'Perbarui token yang digunakan secara internal saat login. Normalnya aksi ini tidak diperlukan. Jika diperbarui, semua perangkat akan dilogout.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Kata kunci ini digunakan untuk mencari emoji kustom yang dicari.';
	@override String get setMultipleBySeparatingWithSpace => 'Kamu dapat menyetel banyak dengan memisahkannya menggunakan spasi.';
	@override String get fileIdOrUrl => 'File-ID atau URL';
	@override String get behavior => 'Perilaku';
	@override String get sample => 'Contoh';
	@override String get abuseReports => 'Laporkan';
	@override String get reportAbuse => 'Laporkan';
	@override String get reportAbuseRenote => 'Laporkan renote';
	@override String reportAbuseOf({required Object name}) => 'Laporkan ${name}';
	@override String get fillAbuseReportDescription => 'Mohon isi rincian laporan. Jika laporan ini mengenai catatan yang spesifik, mohon lampirkan serta URL catatan tersebut.';
	@override String get abuseReported => 'Laporan kamu telah dikirimkan. Terima kasih.';
	@override String get reporter => 'Pelapor';
	@override String get reporteeOrigin => 'Yang dilaporkan';
	@override String get reporterOrigin => 'Pelapor';
	@override String get send => 'Kirim';
	@override String get openInNewTab => 'Buka di tab baru';
	@override String get openInSideView => 'Buka di tampilan samping';
	@override String get defaultNavigationBehaviour => 'Navigasi bawaan';
	@override String get editTheseSettingsMayBreakAccount => 'Menyunting pengaturan ini memiliki kemungkinan untuk merusak akun kamu.';
	@override String get instanceTicker => 'Informasi pengguna pada instansi';
	@override String waitingFor({required Object x}) => 'Menunggu untuk ${x}';
	@override String get random => 'Acak';
	@override String get system => 'Sistem';
	@override String get switchUi => 'Ubah UI';
	@override String get desktop => 'Desktop';
	@override String get clip => 'Klip';
	@override String get createNew => 'Buat baru';
	@override String get optional => 'Opsional';
	@override String get createNewClip => 'Buat klip baru';
	@override String get unclip => 'Batalkan klip';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Catatan ini sudah disertakan di klip "${name}". Yakin ingin membatalkan catatan dari klip ini?';
	@override String get public => 'Publik';
	@override String get private => 'Tersembunyi';
	@override String i18nInfo({required Object link}) => 'Misskey diterjemahkan ke dalam banyak bahasa oleh sukarelawan. Kamu juga dapat ikut membantu menerjemahkannya di ${link}.';
	@override String get manageAccessTokens => 'Kelola token akses';
	@override String get accountInfo => 'Informasi akun';
	@override String get notesCount => 'Jumlah catatan';
	@override String get repliesCount => 'Jumlah balasan terkirim';
	@override String get renotesCount => 'Jumlah renote terkirim';
	@override String get repliedCount => 'Jumlah balasan diterima';
	@override String get renotedCount => 'Jumlah renote diterima';
	@override String get followingCount => 'Jumlah akun yang diikuti';
	@override String get followersCount => 'Jumlah pengikut';
	@override String get sentReactionsCount => 'Jumlah reaksi yang terkirim';
	@override String get receivedReactionsCount => 'Jumlah reaksi yang diterima';
	@override String get pollVotesCount => 'Jumlah suara yang terkirim';
	@override String get pollVotedCount => 'Jumlah suara yang diterima dalam angket';
	@override String get yes => 'Iya';
	@override String get no => 'Tidak';
	@override String get driveFilesCount => 'Jumlah berkas drive';
	@override String get driveUsage => 'Penggunaan ruang penyimpanan drive';
	@override String get noCrawle => 'Tolak pengindeksan perayap web';
	@override String get noCrawleDescription => 'Meminta mesin pencari untuk tidak mengindeks halaman profil kamu, catatan, Halaman, dll.';
	@override String get lockedAccountInfo => 'Kecuali kamu menyetel visibilitas catatan milikmu ke "Hanya pengikut", catatan milikmu akan dapat dilihat oleh siapa saja, bahkan jika kamu memerlukan pengikut untuk disetujui secara manual.';
	@override String get alwaysMarkSensitive => 'Tandai media dalam catatan sebagai media sensitif';
	@override String get loadRawImages => 'Tampilkan lampiran gambar secara penuh daripada thumbnail';
	@override String get disableShowingAnimatedImages => 'Jangan mainkan gambar bergerak';
	@override String get highlightSensitiveMedia => 'Sorot media sensitif';
	@override String get verificationEmailSent => 'Surel verifikasi telah dikirimkan. Mohon akses tautan yang telah disertakan untuk menyelesaikan verifikasi.';
	@override String get notSet => 'Tidak disetel';
	@override String get emailVerified => 'Surel telah diverifikasi';
	@override String get noteFavoritesCount => 'Jumlah catatan yang difavoritkan';
	@override String get pageLikesCount => 'Jumlah suka yang diterima Halaman';
	@override String get pageLikedCount => 'Jumlah Halaman yang disukai';
	@override String get contact => 'Kontak';
	@override String get useSystemFont => 'Gunakan font bawaan sistem operasi';
	@override String get clips => 'Klip';
	@override String get experimentalFeatures => 'Fitur eksperimental';
	@override String get experimental => 'Eksperimental';
	@override String get thisIsExperimentalFeature => 'Fitur ini eksperimental. Fungsionalitas dari fitur ini dapat berubah sewaktu-waktu dan mungkin tidak bekerja sesuai semestinya.';
	@override String get developer => 'Pengembang';
	@override String get makeExplorable => 'Buat akun tampil di "Jelajahi"';
	@override String get makeExplorableDescription => 'Jika kamu mematikan ini, akun kamu tidak akan muncul di menu "Jelajahi"';
	@override String get showGapBetweenNotesInTimeline => 'Tampilkan jarak diantara catatan pada lini masa';
	@override String get duplicate => 'Duplikat';
	@override String get left => 'Kiri';
	@override String get center => 'Tengah';
	@override String get wide => 'Lebar';
	@override String get narrow => 'Sempit';
	@override String get reloadToApplySetting => 'Pengaturan ini akan diterapkan saat memuat halaman kembali. Apakah kamu ingin memuat halaman kembali sekarang?';
	@override String get needReloadToApply => 'Pengaturan ini hanya akan diterapkan setelah memuat ulang halaman.';
	@override String get showTitlebar => 'Tampilkan bilah judul';
	@override String get clearCache => 'Hapus tembolok';
	@override String onlineUsersCount({required Object n}) => '${n} orang sedang daring';
	@override String nUsers({required Object n}) => '${n} Pengguna';
	@override String nNotes({required Object n}) => '${n} Catatan';
	@override String get sendErrorReports => 'Kirim laporan kesalahan';
	@override String get sendErrorReportsDescription => 'Ketika dinyalakan, informasi kesalahan rinci akan dibagikan dengan Misskey ketika masalah terjadi, hal ini untuk membantu kualitas Misskey. Fitur ini memungkinkan memuat informasi seperti sistem operasi yang kamu gunakan dan versinya, aplikasi peramban yang kamu gunakan, riwayat aktivitas kamu, dll.';
	@override String get myTheme => 'Tema saya';
	@override String get backgroundColor => 'Latar Belakang';
	@override String get accentColor => 'Aksen';
	@override String get textColor => 'Teks';
	@override String get saveAs => 'Simpan sebagai…';
	@override String get advanced => 'Tingkat lanjut';
	@override String get advancedSettings => 'Pengaturan Lanjut';
	@override String get value => 'Nilai';
	@override String get createdAt => 'Dibuat pada';
	@override String get updatedAt => 'Diperbarui pada';
	@override String get saveConfirm => 'Simpan perubahan?';
	@override String get deleteConfirm => 'Yakin hapus?';
	@override String get invalidValue => 'Nilai tidak valid.';
	@override String get registry => 'Registri';
	@override String get closeAccount => 'Tutup akun';
	@override String get currentVersion => 'Versi saat ini';
	@override String get latestVersion => 'Versi terkini';
	@override String get youAreRunningUpToDateClient => 'Kamu menggunakan versi terkini dari klienmu.';
	@override String get newVersionOfClientAvailable => 'Versi terbaru dari klien kamu telah tersedia.';
	@override String get usageAmount => 'Penggunaan';
	@override String get capacity => 'Kapasitas';
	@override String get inUse => 'Digunakan';
	@override String get editCode => 'Sunting kode';
	@override String get apply => 'Terapkan';
	@override String get receiveAnnouncementFromInstance => 'Terima pengumuman dari instansi ini';
	@override String get emailNotification => 'Notifikasi surel';
	@override String get publish => 'Terbitkan';
	@override String get inChannelSearch => 'Cari di kanal';
	@override String get useReactionPickerForContextMenu => 'Buka pemilih reaksi dengan klik-kanan';
	@override String typingUsers({required Object users}) => '${users} sedang mengetik...';
	@override String get jumpToSpecifiedDate => 'Loncat ke tanggal spesifik';
	@override String get showingPastTimeline => 'Sedang menampilkan lini masa lama';
	@override String get clear => 'Bersihkan';
	@override String get markAllAsRead => 'Tandai semua telah dibaca';
	@override String get goBack => 'Kembali';
	@override String get unlikeConfirm => 'Yakin ingin hapus sukamu?';
	@override String get fullView => 'Tampilan penuh';
	@override String get quitFullView => 'Keluar tampilan penuh';
	@override String get addDescription => 'Tambahkan deskripsi';
	@override String get userPagePinTip => 'Kamu dapat membuat catatan untuk ditampilkan disini dengan memilih "Sematkan ke profil" dari menu pada catatan individu.';
	@override String get notSpecifiedMentionWarning => 'Catatan ini mengandung sebutan dari pengguna yang tidak dimuat sebagai penerima';
	@override String get info => 'Informasi';
	@override String get userInfo => 'Informasi pengguna';
	@override String get unknown => 'Tidak diketahui';
	@override String get onlineStatus => 'Status daring';
	@override String get hideOnlineStatus => 'Sembunyikan status daring';
	@override String get hideOnlineStatusDescription => 'Menyembunyikan status daring kamu akan mengurangi kenyamanan untuk beberapa fungsi, seperti contohnya pencarian.';
	@override String get online => 'Daring';
	@override String get active => 'Aktif';
	@override String get offline => 'Luring';
	@override String get notRecommended => 'Tidak disarankan';
	@override String get botProtection => 'Perlindungan Bot';
	@override String get instanceBlocking => 'Instansi yang diblokir';
	@override String get selectAccount => 'Pilih akun';
	@override String get switchAccount => 'Ganti akun';
	@override String get enabled => 'Aktif';
	@override String get disabled => 'Nonaktif';
	@override String get quickAction => 'Aksi cepat';
	@override String get user => 'Pengguna';
	@override String get administration => 'Manajemen';
	@override String get accounts => 'Akun';
	@override String get switch_ => 'Beralih';
	@override String get noMaintainerInformationWarning => 'Informasi pengelola belum disetel.';
	@override String get noBotProtectionWarning => 'Proteksi bot belum disetel.';
	@override String get configure => 'Setel';
	@override String get postToGallery => 'Posting ke galeri';
	@override String get postToHashtag => 'Catat ke tagar ini';
	@override String get gallery => 'Galeri';
	@override String get recentPosts => 'Postingan terbaru';
	@override String get popularPosts => 'Postingan populer';
	@override String get shareWithNote => 'Bagikan dengan catatan';
	@override String get ads => 'Iklan';
	@override String get expiration => 'Batas akhir';
	@override String get startingperiod => 'Mulai';
	@override String get memo => 'Memo';
	@override String get priority => 'Prioritas';
	@override String get high => 'Tinggi';
	@override String get middle => 'Sedang';
	@override String get low => 'Rendah';
	@override String get emailNotConfiguredWarning => 'Alamat surel tidak disetel.';
	@override String get ratio => 'Rasio';
	@override String get previewNoteText => 'Tampilkan pratinjau';
	@override String get customCss => 'Custom CSS';
	@override String get customCssWarn => 'Pengaturan ini seharusnya digunakan jika kamu tahu cara kerjanya. Memasukkan nilai yang tidak tepat dapat menyebabkan klien tidak berfungsi semestinya.';
	@override String get global => 'Global';
	@override String get squareAvatars => 'Tampilkan avatar sebagai persegi';
	@override String get sent => 'Kirim';
	@override String get received => 'Diterima';
	@override String get searchResult => 'Hasil Penelusuran';
	@override String get hashtags => 'Tagar';
	@override String get troubleshooting => 'Penyelesaian Masalah';
	@override String get useBlurEffect => 'Gunakan efek blur pada antarmuka';
	@override String get learnMore => 'Pelajari lebih lanjut';
	@override String get misskeyUpdated => 'Misskey telah dimutakhirkan!';
	@override String get whatIsNew => 'Lihat perubahan pemutakhiran';
	@override String get translate => 'Terjemahkan';
	@override String translatedFrom({required Object x}) => 'Terjemahkan dari ${x}';
	@override String get accountDeletionInProgress => 'Penghapusan akun sedang dalam proses';
	@override String get usernameInfo => 'Nama yang mengidentifikasikan akun kamu dari yang lain pada peladen ini. Kamu dapat menggunakan alfabet (a~z, A~Z), digit (0~9) atau garis bawah (_). Username tidak dapat diubah setelahnya.';
	@override String get aiChanMode => 'Mode Ai';
	@override String get devMode => 'Mode pengembang';
	@override String get keepCw => 'Biarkan peringatan konten';
	@override String get pubSub => 'Akun Pub/Sub';
	@override String get lastCommunication => 'Komunikasi terakhir';
	@override String get resolved => 'Selesai';
	@override String get unresolved => 'Belum selesai';
	@override String get breakFollow => 'Hapus pengikut';
	@override String get breakFollowConfirm => 'Yakin untuk menghapus pengikut ini?';
	@override String get itsOn => 'Aktif';
	@override String get itsOff => 'Nonaktif';
	@override String get on => 'Nyala';
	@override String get off => 'Mati';
	@override String get emailRequiredForSignup => 'Membutuhkan alamat surel untuk mendaftar';
	@override String get unread => 'Belum dibaca';
	@override String get filter => 'Saring';
	@override String get controlPanel => 'Panel kendali';
	@override String get manageAccounts => 'Kelola Akun';
	@override String get makeReactionsPublic => 'Tampilkan riwayat reaksi ke publik';
	@override String get makeReactionsPublicDescription => 'Pengaturan ini akan membuat daftar dari semua reaksi masa lalu kamu ditampilkan secara publik.';
	@override String get classic => 'Klasik';
	@override String get muteThread => 'Bisukan thread';
	@override String get unmuteThread => 'Suarakan thread';
	@override String get followingVisibility => 'Visibilitas mengikuti';
	@override String get followersVisibility => 'Visibilitas pengikut';
	@override String get continueThread => 'Lihat lanjutan thread';
	@override String get deleteAccountConfirm => 'Akun akan dihapus. Apakah kamu yakin?';
	@override String get incorrectPassword => 'Kata sandi salah.';
	@override String voteConfirm({required Object choice}) => 'Konfirmasi suara kamu untuk (${choice})？';
	@override String get hide => 'Sembunyikan';
	@override String get useDrawerReactionPickerForMobile => 'Tampilkan bilah reaksi sebagai laci di ponsel';
	@override String welcomeBackWithName({required Object name}) => 'Selamat datang kembali, ${name}.';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Mohon klik [${ok}] untuk menyelesaikan verifikasi email.';
	@override String get overridedDeviceKind => 'Tipe perangkat';
	@override String get smartphone => 'Ponsel';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Otomatis';
	@override String get themeColor => 'Warna Tema';
	@override String get size => 'Ukuran';
	@override String get numberOfColumn => 'Jumlah per kolom';
	@override String get searchByGoogle => 'Penelusuran';
	@override String get instanceDefaultLightTheme => 'Bawaan instan tema terang';
	@override String get instanceDefaultDarkTheme => 'Bawaan instan tema gelap';
	@override String get instanceDefaultThemeDescription => 'Masukkan kode tema di format obyek.';
	@override String get mutePeriod => 'Batas waktu bisu';
	@override String get period => 'Batas akhir';
	@override String get indefinitely => 'Selamanya';
	@override String get tenMinutes => '10 Menit';
	@override String get oneHour => '1 Jam';
	@override String get oneDay => '1 Hari';
	@override String get oneWeek => '1 Bulan';
	@override String get oneMonth => 'satu bulan';
	@override String get threeMonths => '3 bulan';
	@override String get oneYear => '1 tahun';
	@override String get threeDays => '3 hari';
	@override String get reflectMayTakeTime => 'Mungkin perlu beberapa saat untuk dicerminkan.';
	@override String get failedToFetchAccountInformation => 'Gagal untuk mendapatkan informasi akun';
	@override String get rateLimitExceeded => 'Batas sudah terlampaui';
	@override String get cropImage => 'potong gambar';
	@override String get cropImageAsk => 'Ingin memotong gambar?';
	@override String get cropYes => 'Potong';
	@override String get cropNo => 'Gunakan apa adanya';
	@override String get file => 'Berkas';
	@override String recentNHours({required Object n}) => '${n} jam terakhir';
	@override String recentNDays({required Object n}) => '${n} hari terakhir';
	@override String get noEmailServerWarning => 'Mail Server tidak disetel.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Ada laporan yang belum diselesaikan.';
	@override String get recommended => 'Disarankan';
	@override String get check => 'Cek';
	@override String get driveCapOverrideLabel => 'Ubah kapasitas drive untuk user ini';
	@override String get driveCapOverrideCaption => 'Setel ulang kapasitas ke bawaan dengan memasukkan nilai 0 atau lebih rendah.';
	@override String get requireAdminForView => 'Kamu harus login dengan akun administrator untuk melihat ini.';
	@override String get isSystemAccount => 'Akun yang dibuat dan otomatis dioperasikan oleh sistem.';
	@override String typeToConfirm({required Object x}) => 'Mohon masukkan ${x} untuk mengonfirmasi';
	@override String get deleteAccount => 'Hapus Akun';
	@override String get document => 'Dokumen';
	@override String get numberOfPageCache => 'Jumlah halaman ditembolokkan';
	@override String get numberOfPageCacheDescription => 'Menaikkan jumlah ini akan meningkatkan kenyamanan untuk pengguna, namun dapat menyebabkan lonjakan beban pada peladen dan juga memori yang digunakan.';
	@override String get logoutConfirm => 'Anda yakin ingin keluar?';
	@override String get lastActiveDate => 'Terakhir digunakan';
	@override String get statusbar => 'Bilah status';
	@override String get pleaseSelect => 'Pilih opsi...';
	@override String get reverse => 'Balik';
	@override String get colored => 'Diwarnai';
	@override String get refreshInterval => 'Jeda pembaharuan';
	@override String get label => 'Label';
	@override String get type => 'Tipe';
	@override String get speed => 'Kecepatan';
	@override String get slow => 'Lambat';
	@override String get fast => 'Cepat';
	@override String get sensitiveMediaDetection => 'Deteksi media NSFW';
	@override String get localOnly => 'Hanya lokal';
	@override String get remoteOnly => 'Hanya luar instansi';
	@override String get failedToUpload => 'Gagal mengunggah';
	@override String get cannotUploadBecauseInappropriate => 'Berkas ini tidak dapat diunggah karena sebagian dari berkas terdeteksi berpotensi NSFW.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Gagal mengunggah karena kekurangan kapasitas Drive.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Berkas ini tidak dapat diunggah karena melebihi batas ukuran berkas.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Penandaan NSFW otomatis';
	@override String get enableAutoSensitiveDescription => 'Mendeteksi otomatis dan menandai media NSFW menggunakan Pembelajaran Mesin jika memungkinkan. Meskipun opsi ini dimatikan, ada kemungkinan dinyalakan secara menyeluruh pada instansi peladen.';
	@override String get activeEmailValidationDescription => 'Membolehkan validasi alamat surel ketat dengan mengecek apakah alamat surel tersebut temporer dan bisa berkomunikasi dengan surel tersebut. Ketidak tidak dicentang, hanya format surel yang divalidasi.';
	@override String get navbar => 'Bilah navigasi';
	@override String get shuffle => 'Acak';
	@override String get account => 'Akun';
	@override String get move => 'Pindah';
	@override String get pushNotification => 'Notifikasi dorong';
	@override String get subscribePushNotification => 'Nyalakan notifikasi dorong';
	@override String get unsubscribePushNotification => 'Matikan notifikasi dorong';
	@override String get pushNotificationAlreadySubscribed => 'Notifikasi dorong telah dinyalakan';
	@override String get pushNotificationNotSupported => 'Browser atau instansi kamu tidak mendukung notifikasi dorong';
	@override String get sendPushNotificationReadMessage => 'Hapus notifikasi dorong ketika notifikasi relevan atau pesan telah dibaca';
	@override String get sendPushNotificationReadMessageCaption => 'Notifikasi berisi teks「」akan ditampilkan dalam waktu pendek. Ini mungkin dapat menambah pemakaian baterai pada perangkat kamu.';
	@override String get windowMaximize => 'Maksimalkan';
	@override String get windowMinimize => 'Minimalkan';
	@override String get windowRestore => 'Kembalikan';
	@override String get caption => 'Keterangan';
	@override String get loggedInAsBot => 'Sedang login sebagai bot';
	@override String get tools => 'Alat';
	@override String get cannotLoad => 'Tidak dapat memuat';
	@override String get numberOfProfileView => 'tayang profil';
	@override String get like => 'Suka';
	@override String get unlike => 'Tidak Suka';
	@override String get numberOfLikes => 'Jumlah yang disukai';
	@override String get show => 'Tampilkan';
	@override String get neverShow => 'Jangan tampilkan lagi';
	@override String get remindMeLater => 'Mungkin nanti';
	@override String get didYouLikeMisskey => 'Apakah kamu mulai menyukai Misskey?';
	@override String pleaseDonate({required Object host}) => '${host} menggunakan perangkat lunak bebas yaitu Misskey. Kami sangat mengapresiasi sekali donasi dari kamu agar pengembangan Misskey tetap dapat berlanjut!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Sumber kode terkait tersedia di ${anchor}';
	@override String get roles => 'Peran';
	@override String get role => 'Peran';
	@override String get noRole => 'Peran tidak temukan';
	@override String get normalUser => 'Pengguna umum';
	@override String get undefined => 'Tak terdefinisi';
	@override String get assign => 'Tetapkan\n';
	@override String get unassign => 'Batalkan penetapan';
	@override String get color => 'Warna';
	@override String get manageCustomEmojis => 'Kelola Emoji Kustom';
	@override String get manageAvatarDecorations => 'Kelola dekorasi avatar';
	@override String get youCannotCreateAnymore => 'Kamu melewati batas pembuatan.';
	@override String get cannotPerformTemporary => 'Sementara Tidak Tersedia';
	@override String get cannotPerformTemporaryDescription => 'Aksi ini tidak dapat dilakukan sementara karena melewati batas eksekusi. Mohon tunggu sejenak dan coba lagi.';
	@override String get invalidParamError => 'Parameter tidak valid';
	@override String get invalidParamErrorDescription => 'Parameter permintaan tidak valid. Hal ini biasanya disebabkan oleh bug, namun juga dapat terjadi karena input melebihi batas ukuran atau semacamnya.';
	@override String get permissionDeniedError => 'Operasi ditolak';
	@override String get permissionDeniedErrorDescription => 'Akun ini tidak memiliki izin untuk melakukan aksi ini.';
	@override String get preset => 'Prasetel';
	@override String get selectFromPresets => 'Pilih dari prasetel';
	@override String get achievements => 'Pencapaian';
	@override String get gotInvalidResponseError => 'Respon peladen tidak valid';
	@override String get gotInvalidResponseErrorDescription => 'Peladen tidak dapat dijangkau atau sedang dalam perawatan. Mohon coba lagi nanti.';
	@override String get thisPostMayBeAnnoying => 'Catatan ini mungkin dapat mengganggu orang lain.';
	@override String get thisPostMayBeAnnoyingHome => 'Catat ke lini masa beranda';
	@override String get thisPostMayBeAnnoyingCancel => 'Batalkan';
	@override String get thisPostMayBeAnnoyingIgnore => 'Tetap catat';
	@override String get collapseRenotes => 'Tutup renote yang sudah kamu lihat';
	@override String get internalServerError => 'Kesalahan internal peladen';
	@override String get internalServerErrorDescription => 'Peladen sedang mengalami galat tak terduga';
	@override String get copyErrorInfo => 'Salin detil galat';
	@override String get joinThisServer => 'Gabung peladen ini';
	@override String get exploreOtherServers => 'Cari peladen lain';
	@override String get letsLookAtTimeline => 'LIhat lini masa';
	@override String get disableFederationConfirm => 'Matikan federasi?';
	@override String get disableFederationConfirmWarn => 'Mematikan federasi tidak membuat kiriman menjadi privat. Umumnya, mematikan federasi tidak diperlukan.';
	@override String get disableFederationOk => 'Matikan federasi';
	@override String get invitationRequiredToRegister => 'Instansi ini dalam mode undangan-saja. Kamu harus memasukkan kode undangan yang valid untuk mendaftar.';
	@override String get emailNotSupported => 'Instansi ini tidak mendukung mengirim surel';
	@override String get postToTheChannel => 'Catat ke kanal';
	@override String get cannotBeChangedLater => 'Hal ini nantinya tidak dapat diubah lagi.';
	@override String get reactionAcceptance => 'Penerimaan reaksi';
	@override String get likeOnly => 'Hanya suka';
	@override String get likeOnlyForRemote => 'Semua (Hanya suka dari instansi luar)';
	@override String get nonSensitiveOnly => 'Hanya non-sensitif';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Hanya non-sensitif (Hanya suka dari instansi luar)';
	@override String get rolesAssignedToMe => 'Peran yang ditugaskan ke saya';
	@override String get resetPasswordConfirm => 'Yakin untuk mereset kata sandimu?';
	@override String get sensitiveWords => 'Kata sensitif';
	@override String get sensitiveWordsDescription => 'Visibilitas dari semua catatan mengandung kata yang telah diatur akan dijadikan "Beranda" secara otomatis. Kamu dapat mendaftarkan kata tersebut lebih dari satu dengan menuliskannya di baris baru.';
	@override String get sensitiveWordsDescription2 => 'Menggunakan spasi akan membuat ekspresi AND dan kata kunci disekitarnya dengan garis miring akan mengubahnya menjadi ekspresi reguler.';
	@override String get prohibitedWords => 'Kata yang dilarang';
	@override String get prohibitedWordsDescription => 'Menyalakan kesalahan ketika mencoba untuk memposting catatan dengan set kata-kata yang termasuk. Beberapa kata dapat diatur dan dipisahkan dengan baris baru.';
	@override String get prohibitedWordsDescription2 => 'Menggunakan spasi akan membuat ekspresi AND dan kata kunci disekitarnya dengan garis miring akan mengubahnya menjadi ekspresi reguler.';
	@override String get hiddenTags => 'Tagar tersembunyi';
	@override String get hiddenTagsDescription => 'Pilih tanda yang mana akan tidak diperlihatkan dalam daftar tren.\nTanda lebih dari satu dapat didaftarkan dengan tiap baris.';
	@override String get notesSearchNotAvailable => 'Pencarian catatan tidak tersedia.';
	@override String get license => 'Lisensi';
	@override String get unfavoriteConfirm => 'Yakin ingin menghapusnya dari favorit?';
	@override String get myClips => 'Klip saya';
	@override String get drivecleaner => 'Pembersih Drive';
	@override String get retryAllQueuesNow => 'Coba jalankan lagi semua antrian';
	@override String get retryAllQueuesConfirmTitle => 'Yakin ingin mencoba lagi semuanya?';
	@override String get retryAllQueuesConfirmText => 'Hal ini akan meningkatkan beban sementara ke peladen.';
	@override String get enableChartsForRemoteUser => 'Buat bagan data pengguna instansi luar';
	@override String get enableChartsForFederatedInstances => 'Buat bagan data peladen instansi luar';
	@override String get showClipButtonInNoteFooter => 'Tambahkan "Klip" ke menu aksi catatan';
	@override String get reactionsDisplaySize => 'Ukuran tampilan reaksi';
	@override String get limitWidthOfReaction => 'Batasi lebar maksimum reaksi dan tampilkan dalam ukuran terbatasi.';
	@override String get noteIdOrUrl => 'ID catatan atau URL';
	@override String get video => 'Video';
	@override String get videos => 'Video';
	@override String get audio => 'Suara';
	@override String get audioFiles => 'Berkas Suara';
	@override String get dataSaver => 'Penghemat data';
	@override String get accountMigration => 'Pemindahan akun';
	@override String get accountMoved => 'Pengguna ini telah berpindah ke akun baru:';
	@override String get accountMovedShort => 'Akun ini telah dipindahkan.';
	@override String get operationForbidden => 'Operasi dilarang';
	@override String get forceShowAds => 'Selalu tampilkan iklan';
	@override String get addMemo => 'Tambahkan memo';
	@override String get editMemo => 'Sunting memo';
	@override String get reactionsList => 'Reaksi';
	@override String get renotesList => 'Renote';
	@override String get notificationDisplay => 'Notifikasi';
	@override String get leftTop => 'Kiri atas';
	@override String get rightTop => 'Kanan atas';
	@override String get leftBottom => 'Kiri bawah';
	@override String get rightBottom => 'Kanan bawah';
	@override String get stackAxis => 'Arah tumpukan';
	@override String get vertical => 'Vertikal';
	@override String get horizontal => 'Horisontal';
	@override String get position => 'Posisi';
	@override String get serverRules => 'Aturan peladen';
	@override String get pleaseConfirmBelowBeforeSignup => 'Mohon konfirmasi di bawah ini sebelum mendaftar.';
	@override String get pleaseAgreeAllToContinue => 'Kamu harus menyetujui semua kolom di atas untuk melanjutkan.';
	@override String get continue_ => 'Lanjutkan';
	@override String get preservedUsernames => 'Nama pengguna tercadangkan';
	@override String get preservedUsernamesDescription => 'Daftar nama pengguna yang dicadangkan dipisah dengan baris baru. Nama pengguna berikut akan tidak dapat dipakai pada pembuatan akun normal, namun dapat digunakan oleh admin untuk membuat akun baru. Akun yang sudah ada dengan menggunakan nama pengguna ini tidak akan terpengaruh.';
	@override String get createNoteFromTheFile => 'Buat catatan dari berkas ini';
	@override String get archive => 'Arsipkan';
	@override String get archived => 'Diarsipkan';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Yakin untuk mengarsipkan ${name}?';
	@override String get channelArchiveConfirmDescription => 'Kanal yang diarsipkan tidak akan muncul pada daftar kanal atau hasil pencarian. Postingan baru juga tidak dapat ditambahkan lagi.';
	@override String get thisChannelArchived => 'Kanal ini telah diarsipkan.';
	@override String get displayOfNote => 'Tampilan catatan';
	@override String get initialAccountSetting => 'Atur profil';
	@override String get youFollowing => 'Mengikuti';
	@override String get preventAiLearning => 'Tolak penggunaan Pembelajaran Mesin (AI Generatif)';
	@override String get preventAiLearningDescription => 'Minta perayap web untuk tidak menggunakan materi teks atau gambar yang telah diposting ke dalam set data Pembelajaran Mesin (Prediktif / Generatif). Hal ini dicapai dengan menambahkan flag HTML-Response "noai" ke masing-masing konten. Pencegahan penuh mungkin tidak dapat dicapai dengan flag ini, karena juga dapat diabaikan begitu saja.';
	@override String get options => 'Opsi peran';
	@override String get specifyUser => 'Pengguna spesifik';
	@override String get openTagPageConfirm => 'Apakah ingin membuka laman tagar?';
	@override String get failedToPreviewUrl => 'Tidak dapat dipratinjau';
	@override String get update => 'Perbarui';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Peran yang dapat menggunakan emoji ini sebagai reaksi';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Jika peran tidak ditentukan, semua pengguna dapat menggunakan emoji ini sebagai reaksi.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Peran ini harus publik.';
	@override String get cancelReactionConfirm => 'Yakin untuk menghapus reaksimu?';
	@override String get changeReactionConfirm => 'Yakin untuk mengganti reaksimu?';
	@override String get later => 'Nanti saja';
	@override String get goToMisskey => 'Ke Misskey';
	@override String get additionalEmojiDictionary => 'Kamus emoji tambahan';
	@override String get installed => 'Terpasang';
	@override String get branding => 'Merek';
	@override String get enableServerMachineStats => 'Tampilkan informasi mesin peladen menjadi publik';
	@override String get enableIdenticonGeneration => 'Nyalakan pembuatan Identicon per pengguna';
	@override String get turnOffToImprovePerformance => 'Matikan untuk tingkatkan performa.';
	@override String get createInviteCode => 'Buat kode undangan';
	@override String get createWithOptions => 'Buat dengan opsi';
	@override String get createCount => 'Jumlah undangan';
	@override String get inviteCodeCreated => 'Kode undangan dibuat';
	@override String get inviteLimitExceeded => 'Kamu telah mencapai jumlah maksimum kode undangan yang dapat dibuat.';
	@override String createLimitRemaining({required Object limit}) => 'Kode undangan yang dapat dibuat: tersisa ${limit}';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Kamu dapat membuat hingga ${limit} kode undangan dalam ${time}.';
	@override String get expirationDate => 'Tanggal kedaluwarsa';
	@override String get noExpirationDate => 'tidak ada tanggal kedaluwarsa';
	@override String get inviteCodeUsedAt => 'Kode undangan digunakan pada';
	@override String get registeredUserUsingInviteCode => 'Undangan digunakan oleh';
	@override String get waitingForMailAuth => 'Menunggu verifikasi surel';
	@override String get inviteCodeCreator => 'Undangan dibuat oleh';
	@override String get usedAt => 'Digunakan pada';
	@override String get unused => 'Tidak digunakan';
	@override String get used => 'Digunakan';
	@override String get expired => 'Kedaluwarsa';
	@override String get doYouAgree => 'Apa kamu setuju?';
	@override String get beSureToReadThisAsItIsImportant => 'Mohon baca informasi penting berikut.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Saya telah membaca "${x}" dan menyetujui.';
	@override String get dialog => 'Dialog';
	@override String get icon => 'Avatar';
	@override String get forYou => 'Untuk Anda';
	@override String get currentAnnouncements => 'Pengumuman Saat Ini';
	@override String get pastAnnouncements => 'Pengumuman Terdahulu';
	@override String get youHaveUnreadAnnouncements => 'Terdapat pengumuman yang belum dibaca';
	@override String get useSecurityKey => 'Mohon ikuti instruksi peramban atau perangkat kamu untuk menggunakan kunci pengaman atau passkey.';
	@override String get replies => 'Balas';
	@override String get renotes => 'Renote';
	@override String get loadReplies => 'Tampilkan balasan';
	@override String get loadConversation => 'Tampilkan percakapan';
	@override String get pinnedList => 'Daftar yang dipin';
	@override String get keepScreenOn => 'Biarkan layar tetap menyala';
	@override String get verifiedLink => 'Tautan kepemilikan telah diverifikasi';
	@override String get notifyNotes => 'Beritahu mengenai catatan baru';
	@override String get unnotifyNotes => 'Berhenti memberitahu mengenai catatan baru';
	@override String get authentication => 'Autentikasi';
	@override String get authenticationRequiredToContinue => 'Mohon autentikasikan terlebih dahulu sebelum melanjutkan';
	@override String get dateAndTime => 'Tanggal dan Waktu';
	@override String get showRenotes => 'Tampilkan renote';
	@override String get edited => 'Telah disunting';
	@override String get notificationRecieveConfig => 'Pengaturan notifikasi';
	@override String get mutualFollow => 'Saling mengikuti';
	@override String get followingOrFollower => 'Mengikuti atau pengikut';
	@override String get fileAttachedOnly => 'Hanya catatan dengan berkas';
	@override String get showRepliesToOthersInTimeline => 'Tampilkan balasan ke pengguna lain dalam lini masa';
	@override String get hideRepliesToOthersInTimeline => 'Sembunyikan balasan ke orang lain dari lini masa';
	@override String get showRepliesToOthersInTimelineAll => 'Tampilkan balasan ke lainnya dari semua orang yang kamu ikuti di lini masa';
	@override String get hideRepliesToOthersInTimelineAll => 'Sembuyikan balasan ke lainnya dari semua orang yang kamu ikuti di lini masa';
	@override String get confirmShowRepliesAll => 'Operasi ini tidak dapat diubah. Apakah kamu yakin untuk menampilkan balasan ke lainnya dari semua orang yang kamu ikuti di lini masa?';
	@override String get confirmHideRepliesAll => 'Operasi ini tidak dapat diubah. Apakah kamu yakin untuk menyembunyikan balasan ke lainnya dari semua orang yang kamu ikuti di lini masa?';
	@override String get externalServices => 'Layanan eksternal';
	@override String get sourceCode => 'Sumber kode';
	@override String get sourceCodeIsNotYetProvided => 'Sumber kode belum tersedia. Hubungi admin untuk memperbaiki masalah ini.';
	@override String get repositoryUrl => 'URL Repositori';
	@override String get repositoryUrlDescription => 'Jika kamu menggunakan Misskey begitu saja (tanpa ada perubahan dalam kode sumber), masukkan https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Apabila kamu masih mempublikasikan repositori, kamu setidaknya harus menyediakan berkas tarball. Lihat .config/example.yml untuk informasi lebih lanjut.';
	@override String get feedback => 'Umpan balik';
	@override String get feedbackUrl => 'URL Umpan balik';
	@override String get impressum => 'Impressum';
	@override String get impressumUrl => 'Tautan Impressum';
	@override String get impressumDescription => 'Pada beberapa negara seperti Jerman, inklusi dari informasi kontak operator (sebuah Impressum) diperlukan secara legal untuk situs web komersil.';
	@override String get privacyPolicy => 'Kebijakan Privasi';
	@override String get privacyPolicyUrl => 'Tautan Kebijakan Privasi';
	@override String get tosAndPrivacyPolicy => 'Syarat dan Ketentuan serta Kebijakan Privasi';
	@override String get avatarDecorations => 'Dekorasi avatar';
	@override String get attach => 'Lampirkan';
	@override String get detach => 'Hapus';
	@override String get detachAll => 'Lepas Semua';
	@override String get angle => 'Sudut';
	@override String get flip => 'Balik';
	@override String get showAvatarDecorations => 'Tampilkan dekorasi avatar';
	@override String get releaseToRefresh => 'Lepaskan untuk memuat ulang';
	@override String get refreshing => 'Sedang memuat ulang...';
	@override String get pullDownToRefresh => 'Tarik ke bawah untuk memuat ulang';
	@override String get disableStreamingTimeline => 'Nonaktifkan pembaharuan lini masa real-time';
	@override String get useGroupedNotifications => 'Tampilkan notifikasi secara dikelompokkan';
	@override String get signupPendingError => 'Terdapat masalah ketika memverifikasi alamat surel. Tautan kemungkinan telah kedaluwarsa.';
	@override String get cwNotationRequired => 'Jika "Sembunyikan konten" diaktifkan, deskripsi harus disediakan.';
	@override String get doReaction => 'Tambahkan reaksi';
	@override String get code => 'Kode';
	@override String get reloadRequiredToApplySettings => 'Muat ulang diperlukan untuk menerapkan pengaturan.';
	@override String remainingN({required Object n}) => 'Sisa : ${n}';
	@override String get overwriteContentConfirm => 'Apakah kamu yakin untuk menimpa konten saat ini?';
	@override String get seasonalScreenEffect => 'Efek layar musiman';
	@override String get decorate => 'Dekor';
	@override String get addMfmFunction => 'Tambahkan dekorasi';
	@override String get enableQuickAddMfmFunction => 'Tampilkan pemilih MFM tingkat lanjut';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Efek Suara';
	@override String get soundWillBePlayed => 'Suara yang akan dimainkan';
	@override String get showReplay => 'Lihat tayangan ulang';
	@override String get replay => 'Tayangan ulang';
	@override String get replaying => 'Menayangkan Ulang';
	@override String get endReplay => 'Keluat dari tayangan ulang';
	@override String get copyReplayData => 'Salin data tayangan ulang';
	@override String get ranking => 'Peringkat';
	@override String lastNDays({required Object n}) => '${n} hari terakhir';
	@override String get backToTitle => 'Ke Judul';
	@override String get hemisphere => 'Letak kamu tinggal';
	@override String get withSensitive => 'Lampirkan catatan dengan berkas sensitif';
	@override String userSaysSomethingSensitive({required Object name}) => 'Postingan oleh ${name} mengandung konten sensitif';
	@override String get enableHorizontalSwipe => 'Geser untuk mengganti tab';
	@override String get loading => 'Memuat...';
	@override String get surrender => 'Batalkan';
	@override String get gameRetry => 'Coba lagi';
	@override String get notUsePleaseLeaveBlank => 'Kosongi bila tidak digunakan';
	@override String get useTotp => 'Gunakan TOTP';
	@override String get useBackupCode => 'Gunakan kode cadangan';
	@override String get launchApp => 'Luncurkan Aplikasi';
	@override String get useNativeUIForVideoAudioPlayer => 'Gunakan antarmuka peramban ketika memainkan video dan audio';
	@override String get keepOriginalFilename => 'Simpan nama berkas asli';
	@override String get keepOriginalFilenameDescription => 'Apabila pengaturan ini dimatikan, nama berkas akan diganti dengan string acak secara otomatis ketika kamu mengunggah berkas.';
	@override String get noDescription => 'Tidak ada deskripsi';
	@override String get alwaysConfirmFollow => 'Selalu konfirmasi ketika mengikuti';
	@override String get inquiry => 'Hubungi kami';
	@override String get tryAgain => 'Silahkan coba lagi.';
	@override String get createdLists => 'Senarai yang dibuat';
	@override String get createdAntennas => 'Antena yang dibuat';
	@override String fromX({required Object x}) => 'Dari ${x}';
	@override String get noteOfThisUser => 'Catatan oleh pengguna ini';
	@override String get clipNoteLimitExceeded => 'Klip ini tak bisa ditambahi lagi catatan.';
	@override String get performance => 'Kinerja';
	@override String get modified => 'Diubah';
	@override String thereAreNChanges({required Object n}) => 'Ada ${n} perubahan';
	@override String get prohibitedWordsForNameOfUser => 'Kata yang dilarang untuk nama pengguna';
	@override late final _TranslationsMisskeyAbuseUserReportIdId abuseUserReport_ = _TranslationsMisskeyAbuseUserReportIdId._(_root);
	@override late final _TranslationsMisskeyDeliveryIdId delivery_ = _TranslationsMisskeyDeliveryIdId._(_root);
	@override late final _TranslationsMisskeyBubbleGameIdId bubbleGame_ = _TranslationsMisskeyBubbleGameIdId._(_root);
	@override late final _TranslationsMisskeyAnnouncementIdId announcement_ = _TranslationsMisskeyAnnouncementIdId._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingIdId initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialIdId initialTutorial_ = _TranslationsMisskeyInitialTutorialIdId._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionIdId timelineDescription_ = _TranslationsMisskeyTimelineDescriptionIdId._(_root);
	@override late final _TranslationsMisskeyServerRulesIdId serverRules_ = _TranslationsMisskeyServerRulesIdId._(_root);
	@override late final _TranslationsMisskeyServerSettingsIdId serverSettings_ = _TranslationsMisskeyServerSettingsIdId._(_root);
	@override late final _TranslationsMisskeyAccountMigrationIdId accountMigration_ = _TranslationsMisskeyAccountMigrationIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsIdId achievements_ = _TranslationsMisskeyAchievementsIdId._(_root);
	@override late final _TranslationsMisskeyRoleIdId role_ = _TranslationsMisskeyRoleIdId._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionIdId sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionIdId._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableIdId emailUnavailable_ = _TranslationsMisskeyEmailUnavailableIdId._(_root);
	@override late final _TranslationsMisskeyFfVisibilityIdId ffVisibility_ = _TranslationsMisskeyFfVisibilityIdId._(_root);
	@override late final _TranslationsMisskeySignupIdId signup_ = _TranslationsMisskeySignupIdId._(_root);
	@override late final _TranslationsMisskeyAccountDeleteIdId accountDelete_ = _TranslationsMisskeyAccountDeleteIdId._(_root);
	@override late final _TranslationsMisskeyAdIdId ad_ = _TranslationsMisskeyAdIdId._(_root);
	@override late final _TranslationsMisskeyForgotPasswordIdId forgotPassword_ = _TranslationsMisskeyForgotPasswordIdId._(_root);
	@override late final _TranslationsMisskeyGalleryIdId gallery_ = _TranslationsMisskeyGalleryIdId._(_root);
	@override late final _TranslationsMisskeyEmailIdId email_ = _TranslationsMisskeyEmailIdId._(_root);
	@override late final _TranslationsMisskeyPluginIdId plugin_ = _TranslationsMisskeyPluginIdId._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsIdId preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsIdId._(_root);
	@override late final _TranslationsMisskeyRegistryIdId registry_ = _TranslationsMisskeyRegistryIdId._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyIdId aboutMisskey_ = _TranslationsMisskeyAboutMisskeyIdId._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaIdId displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaIdId._(_root);
	@override late final _TranslationsMisskeyInstanceTickerIdId instanceTicker_ = _TranslationsMisskeyInstanceTickerIdId._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorIdId serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorIdId._(_root);
	@override late final _TranslationsMisskeyChannelIdId channel_ = _TranslationsMisskeyChannelIdId._(_root);
	@override late final _TranslationsMisskeyMenuDisplayIdId menuDisplay_ = _TranslationsMisskeyMenuDisplayIdId._(_root);
	@override late final _TranslationsMisskeyWordMuteIdId wordMute_ = _TranslationsMisskeyWordMuteIdId._(_root);
	@override late final _TranslationsMisskeyInstanceMuteIdId instanceMute_ = _TranslationsMisskeyInstanceMuteIdId._(_root);
	@override late final _TranslationsMisskeyThemeIdId theme_ = _TranslationsMisskeyThemeIdId._(_root);
	@override late final _TranslationsMisskeySfxIdId sfx_ = _TranslationsMisskeySfxIdId._(_root);
	@override late final _TranslationsMisskeySoundSettingsIdId soundSettings_ = _TranslationsMisskeySoundSettingsIdId._(_root);
	@override late final _TranslationsMisskeyAgoIdId ago_ = _TranslationsMisskeyAgoIdId._(_root);
	@override late final _TranslationsMisskeyTimeInIdId timeIn_ = _TranslationsMisskeyTimeInIdId._(_root);
	@override late final _TranslationsMisskeyTimeIdId time_ = _TranslationsMisskeyTimeIdId._(_root);
	@override late final _TranslationsMisskeyX2faIdId x2fa_ = _TranslationsMisskeyX2faIdId._(_root);
	@override late final _TranslationsMisskeyPermissionsIdId permissions_ = _TranslationsMisskeyPermissionsIdId._(_root);
	@override late final _TranslationsMisskeyAuthIdId auth_ = _TranslationsMisskeyAuthIdId._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesIdId antennaSources_ = _TranslationsMisskeyAntennaSourcesIdId._(_root);
	@override late final _TranslationsMisskeyWeekdayIdId weekday_ = _TranslationsMisskeyWeekdayIdId._(_root);
	@override late final _TranslationsMisskeyWidgetsIdId widgets_ = _TranslationsMisskeyWidgetsIdId._(_root);
	@override late final _TranslationsMisskeyCwIdId cw_ = _TranslationsMisskeyCwIdId._(_root);
	@override late final _TranslationsMisskeyPollIdId poll_ = _TranslationsMisskeyPollIdId._(_root);
	@override late final _TranslationsMisskeyVisibilityIdId visibility_ = _TranslationsMisskeyVisibilityIdId._(_root);
	@override late final _TranslationsMisskeyPostFormIdId postForm_ = _TranslationsMisskeyPostFormIdId._(_root);
	@override late final _TranslationsMisskeyProfileIdId profile_ = _TranslationsMisskeyProfileIdId._(_root);
	@override late final _TranslationsMisskeyExportOrImportIdId exportOrImport_ = _TranslationsMisskeyExportOrImportIdId._(_root);
	@override late final _TranslationsMisskeyChartsIdId charts_ = _TranslationsMisskeyChartsIdId._(_root);
	@override late final _TranslationsMisskeyInstanceChartsIdId instanceCharts_ = _TranslationsMisskeyInstanceChartsIdId._(_root);
	@override late final _TranslationsMisskeyTimelinesIdId timelines_ = _TranslationsMisskeyTimelinesIdId._(_root);
	@override late final _TranslationsMisskeyPlayIdId play_ = _TranslationsMisskeyPlayIdId._(_root);
	@override late final _TranslationsMisskeyPagesIdId pages_ = _TranslationsMisskeyPagesIdId._(_root);
	@override late final _TranslationsMisskeyRelayStatusIdId relayStatus_ = _TranslationsMisskeyRelayStatusIdId._(_root);
	@override late final _TranslationsMisskeyNotificationIdId notification_ = _TranslationsMisskeyNotificationIdId._(_root);
	@override late final _TranslationsMisskeyDeckIdId deck_ = _TranslationsMisskeyDeckIdId._(_root);
	@override late final _TranslationsMisskeyDialogIdId dialog_ = _TranslationsMisskeyDialogIdId._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineIdId disabledTimeline_ = _TranslationsMisskeyDisabledTimelineIdId._(_root);
	@override late final _TranslationsMisskeyDrivecleanerIdId drivecleaner_ = _TranslationsMisskeyDrivecleanerIdId._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsIdId webhookSettings_ = _TranslationsMisskeyWebhookSettingsIdId._(_root);
	@override late final _TranslationsMisskeyAbuseReportIdId abuseReport_ = _TranslationsMisskeyAbuseReportIdId._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesIdId moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesIdId._(_root);
	@override late final _TranslationsMisskeyFileViewerIdId fileViewer_ = _TranslationsMisskeyFileViewerIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerIdId externalResourceInstaller_ = _TranslationsMisskeyExternalResourceInstallerIdId._(_root);
	@override late final _TranslationsMisskeyDataSaverIdId dataSaver_ = _TranslationsMisskeyDataSaverIdId._(_root);
	@override late final _TranslationsMisskeyHemisphereIdId hemisphere_ = _TranslationsMisskeyHemisphereIdId._(_root);
	@override late final _TranslationsMisskeyReversiIdId reversi_ = _TranslationsMisskeyReversiIdId._(_root);
	@override late final _TranslationsMisskeyOfflineScreenIdId offlineScreen_ = _TranslationsMisskeyOfflineScreenIdId._(_root);
	@override late final _TranslationsMisskeyUrlPreviewSettingIdId urlPreviewSetting_ = _TranslationsMisskeyUrlPreviewSettingIdId._(_root);
	@override late final _TranslationsMisskeyMediaControlsIdId mediaControls_ = _TranslationsMisskeyMediaControlsIdId._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsIdId remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsIdId._(_root);
	@override late final _TranslationsMisskeySearchIdId search_ = _TranslationsMisskeySearchIdId._(_root);
}

// Path: misskey.abuseUserReport_
class _TranslationsMisskeyAbuseUserReportIdId extends TranslationsMisskeyAbuseUserReportEnUs {
	_TranslationsMisskeyAbuseUserReportIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get accept => 'Setuju';
	@override String get reject => 'Tolak';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryIdId extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get status => 'Status pengiriman';
	@override String get stop => 'Ditangguhkan';
	@override String get resume => 'Lanjutkan pengiriman';
	@override late final _TranslationsMisskeyDeliveryTypeIdId type_ = _TranslationsMisskeyDeliveryTypeIdId._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGameIdId extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGameIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get howToPlay => 'Cara bermain';
	@override String get hold => 'Tahan';
	@override late final _TranslationsMisskeyBubbleGameScoreIdId score_ = _TranslationsMisskeyBubbleGameScoreIdId._(_root);
	@override late final _TranslationsMisskeyBubbleGameHowToPlayIdId howToPlay_ = _TranslationsMisskeyBubbleGameHowToPlayIdId._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementIdId extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get forExistingUsers => 'Hanya pengguna yang telah ada';
	@override String get forExistingUsersDescription => 'Pengumuman ini akan dimunculkan ke pengguna yang sudah ada dari titik waktu publikasi jika dinyalakan. Apabila dimatikan, mereka yang baru mendaftar setelah publikasi ini akan juga melihatnya.';
	@override String get needConfirmationToRead => 'Membutuhkan konfirmasi terpisah bahwa telah dibaca';
	@override String get needConfirmationToReadDescription => 'Permintaan terpisah untuk mengonfirmasi menandai pengumuman ini telah dibaca akan ditampilkan apabila fitur ini dinyalakan. Pengumuman ini juga akan dikecualikan dari fungsi "Tandai semua telah dibaca".';
	@override String get end => 'Arsipkan pengumuman';
	@override String get tooManyActiveAnnouncementDescription => 'Terlalu banyak pengumuman dapat memperburuk pengalaman pengguna. Mohon pertimbangkan untuk mengarsipkan pengumuman yang sudah usang/tidak relevan.';
	@override String get readConfirmTitle => 'Tandai telah dibaca?';
	@override String readConfirmText({required Object title}) => 'Aksi ini akan menandai konten dari "${title}" telah dibaca.';
	@override String get shouldNotBeUsedToPresentPermanentInfo => 'Karena dapat berdampak pada pengalaman pengguna untuk pengguna baru, sangat direkomendasikan untuk menggunakan notifikasi secara mengalir daripada tetap.';
	@override String get dialogAnnouncementUxWarn => 'Memiliki dua atau lebih gaya dialog notifikasi secara bersamaan dapat berdampak signifikan pada pengalaman pengguna, mohon untuk menggunakannya dengan hati-hati.';
	@override String get silence => 'Tiada notifikasi';
	@override String get silenceDescription => 'Apabila diaktifkan, notifikasi dari pengumuman ini akan dilewatkan dan pengguna tidak perlu membacanya.';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingIdId extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Akun kamu telah sukses dibuat!';
	@override String get letsStartAccountSetup => 'Untuk pemula, ayo atur profilmu dulu.';
	@override String get letsFillYourProfile => 'Pertama, ayo atur profilmu dulu.';
	@override String get profileSetting => 'Pengaturan profil';
	@override String get privacySetting => 'Pengaturan privasi';
	@override String get theseSettingsCanEditLater => 'Kamu selalu bisa mengganti pengaturan ini lain kali.';
	@override String get youCanEditMoreSettingsInSettingsPageLater => 'Ada banyak pengaturan yang dapat kamu atur dari halaman "Pengaturan". Pastikan untuk mengunjungi halaman tersebut nanti.';
	@override String get followUsers => 'Coba ikuti beberapa pengguna yang menarik bagimu untuk membangun lini masa akunmu.';
	@override String pushNotificationDescription({required Object name}) => 'Menyalakan notifikasi dorong akan membuatmu menerima notifikasi dari ${name} secara langsung ke perangkatmu.';
	@override String get initialAccountSettingCompleted => 'Pengaturan profil selesai!';
	@override String haveFun({required Object name}) => 'Selamat menikmati, ${name}!';
	@override String youCanContinueTutorial({required Object name}) => 'Kamu dapat menjutkan ke tutorial dalam bagaimana menggunakan ${name} (Misskey) atau kamu dapat keluar dari pemasangan ini dan langsung menggunakannya segera.';
	@override String get startTutorial => 'Mulai Tutorial';
	@override String get skipAreYouSure => 'Yakin melewati atur profil?';
	@override String get laterAreYouSure => 'Yakin banget untuk atur profil nanti?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialIdId extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Lihat Tutorial';
	@override String get title => 'Tutorial';
	@override String get wellDone => 'Kerja bagus!';
	@override String get skipAreYouSure => 'Berhenti dari Tutorial?';
	@override late final _TranslationsMisskeyInitialTutorialLandingIdId landing_ = _TranslationsMisskeyInitialTutorialLandingIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialNoteIdId note_ = _TranslationsMisskeyInitialTutorialNoteIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionIdId reaction_ = _TranslationsMisskeyInitialTutorialReactionIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialTimelineIdId timeline_ = _TranslationsMisskeyInitialTutorialTimelineIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteIdId postNote_ = _TranslationsMisskeyInitialTutorialPostNoteIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveIdId howToMakeAttachmentsSensitive_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialDoneIdId done_ = _TranslationsMisskeyInitialTutorialDoneIdId._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionIdId extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get home => 'Pada linimasa Beranda, kamu dapat melihat catatan dari akun yang kamu ikuti.';
	@override String get local => 'Pada linimasa Lokal, kamu dapat melihat catatan dari semua pengguna yang ada pada peladen ini.';
	@override String get social => 'Linimasa sosial menampilkan catatan dari kedua linimasa Beranda dan Lokal.';
	@override String get global => 'Pada linimasa Global, kamu dapat melihat catatan dari semua peladen yang terhubung.';
}

// Path: misskey.serverRules_
class _TranslationsMisskeyServerRulesIdId extends TranslationsMisskeyServerRulesEnUs {
	_TranslationsMisskeyServerRulesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get description => 'Daftar peraturan akan ditampilkan sebelum pendaftaran. Mengatur ringkasan dari Syarat dan Ketentuan sangat direkomendasikan.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsIdId extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'URL ikon';
	@override String appIconDescription({required Object host}) => 'Tentukan ikon yang digunakan ketika ${host} ditampilkan sebagai aplikasi.';
	@override String get appIconUsageExample => 'Contoh: Sebagai PWA, atau ketika ditampilkan sebagai markah layar beranda pada ponsel';
	@override String get appIconStyleRecommendation => 'Karena ikon berkemungkinan dipotong menjadi persegi atau lingkaran, ikon dengan margin terwanai di sekeliling konten sangat direkomendasikan.';
	@override String appIconResolutionMustBe({required Object resolution}) => 'Minimum resolusi adalah ${resolution}.';
	@override String get manifestJsonOverride => 'Ambil alih manifest.json';
	@override String get shortName => 'Nama pendek';
	@override String get shortNameDescription => 'Inisial untuk nama instansi yang dapat ditampilkan apabila nama lengkap resmi terlalu panjang.';
	@override String get fanoutTimelineDescription => 'Dapat meningkatkan performa dalam pengambilan data linimasa dan mengurangi beban pada database ketika dinyalakan. Sebagai gantinya, penggunaan memory pada Redis akan meningkan. Pertimbangkan untuk menonaktifkan fitur ini jika mengalami kekurangan memori pada server atau menyebabkan server tidak stabil.';
	@override String get fanoutTimelineDbFallback => 'Fallback ke database';
	@override String get fanoutTimelineDbFallbackDescription => 'Ketika diaktifkan, lini masa akan fallback ke database untuk melakukan kueri tambahan apabila linimasa tidak disimpan dalam cache. Menonaktifkan ini dapat mengurangi beban server dengan mengeliminasi proses fallback, namun dapat berakibat membatasi jarak data dari lini masa yang dapat diambil.';
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationIdId extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Pindahkan akun lain ke akun ini';
	@override String get moveFromSub => 'Buat alias ke akun lain';
	@override String moveFromLabel({required Object n}) => 'Akun asli #${n}';
	@override String get moveFromDescription => 'Kamu harus membuat alias untuk akun asal kamu berpindah ke akun ini\nMasukkan alias akun asal kamu berpindah ke dalam format berikut: @namapengguna@nama.server.com\nUntuk menghapus alias, kosongkan kolom ini (tidak direkomendasikan).';
	@override String get moveTo => 'Pindahkan akun ini ke akun lain';
	@override String get moveToLabel => 'Akun tujuan pindah:';
	@override String get moveCannotBeUndone => 'Pemindahan akun tidak dapat diurungkan.';
	@override String get moveAccountDescription => 'Hal ini akan memindahkan akun kamu ke akun lain.\n　・Pengikut dari akun ini akan secara otomatis dipindahkan ke akun baru\n　・Akun ini akan berhenti mengikuti dari semua pengguna yang sedang kamu ikuti\n　・Kamu akan tidak dapat membuat catatan baru dan lain-lain pada akun ini\n\nMeskipun pemindahan pengikut dilakukan secara otomatis, kamu harus mempersiapkan beberapa langkah secara manual untuk memindahkan daftar pengguna yang sedang kamu ikuti. Untuk melakukan tersebut, lakukan ekspor daftar ikuti yang nantinya dapat kamu impor pada menu pengaturan di akun baru kamu. Prosedur yang sama juga dapat diterapkan pada daftar seperti pengguna yang kamu bisukan atau blokir.\n\n(Penjelasan ini hanya berlaku pada Misskey versi 13.12.0 dan setelahnya. Perangkat lunak ActivityPub lainnya seperti Mastodon berkemungkinan befungsi berbeda.)';
	@override String get moveAccountHowTo => 'Untuk pindah, pertama buat alias untuk akun ini pada akun tujuan kamu berpindah.\nSetelah kamu membuat alias, masukkan akun tujuan kamu berpindah ke dalam format berikut:\n@namapengguna@nama.server.com';
	@override String get startMigration => 'Pindahkan';
	@override String migrationConfirm({required Object account}) => 'Yakin untuk memindahkan akun ini ke ${account}? Sekali dimulai, proses ini tidak dapat dihentikan atau ditarik kembali, dan kamu tidak dapat menggunakan akun ini lagi dalam keadaan asli semula.';
	@override String get movedAndCannotBeUndone => '\nAkun ini telah dipindahkan.\nPemindahan tidak dapat diurungkan.';
	@override String get postMigrationNote => '24 jam setelah pemindahan akun selesai, akun ini akan berhenti mengikuti semua akun yang sedang diikuti. Angka mengikut dan pengikut akan menjadi nol. Untuk menghindari pengikut kamu tidak dapat melihat postingan hanya pengikut saja dalam postingan ini, mereka akan tetap mengikuti akun ini.';
	@override String get movedTo => 'Akun baru tujuan pindah:';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsIdId extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Terbuka pada';
	@override late final _TranslationsMisskeyAchievementsTypesIdId types_ = _TranslationsMisskeyAchievementsTypesIdId._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleIdId extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Buat peran';
	@override String get edit => 'Sunting peran';
	@override String get name => 'Nama peran';
	@override String get description => 'Deskripsi peran';
	@override String get permission => 'Perijinan peran';
	@override String get descriptionOfPermission => '<b>Moderator</b> dapat melakukan operasi moderasi dasar.\n<b>Administrator</b> dapat mengubah seluruh pengaturan instansi.';
	@override String get assignTarget => 'Tipe tugas';
	@override String get descriptionOfAssignTarget => '<b>Manual</b> untuk mengganti secara manual siapa yang mendapatkan peran ini dan siapa yang tidak.\n<b>Kondisional</b> untuk pengguna secara otomatis dimasukkan atau dihapus dari peran berdasarkan kondisi yang ditentukan.';
	@override String get manual => 'Manual';
	@override String get manualRoles => 'Peran manual';
	@override String get conditional => 'Kondisional';
	@override String get conditionalRoles => 'Peran kondisional';
	@override String get condition => 'Kondisi';
	@override String get isConditionalRole => 'Ini adalah peran kondisional';
	@override String get isPublic => 'Publikkan Peran';
	@override String get descriptionOfIsPublic => 'Siapapun dapat melihat daftar pengguna yang ditugaskan pada peran ini. Tambahan juga peran ini akan ditampilkan ke dalam profil pengguna tentang peran yang ditugaskan.';
	@override String get options => 'Opsi peran';
	@override String get policies => 'Kebijakan';
	@override String get baseRole => 'Templat peran';
	@override String get useBaseValue => 'Gunakan nilai templat peran';
	@override String get chooseRoleToAssign => 'Pilih peran yang ditugaskan';
	@override String get iconUrl => 'URL ikon';
	@override String get asBadge => 'Tampilkan sebagai lencana';
	@override String get descriptionOfAsBadge => 'Ikon peran ini akan ditampilkan bersebelahan dengan username pengguna yang memiliki peran ini jika dinyalakan.';
	@override String get isExplorable => 'Buat peran dapat terjelajahi';
	@override String get descriptionOfIsExplorable => 'Lini masa peran ini dan daftar pengguna dengan peran ini akan dibuat publik apabila dinyalakan.';
	@override String get displayOrder => 'Urutan';
	@override String get descriptionOfDisplayOrder => 'Semakin tinggi angka, semakin tinggi posisi antarmukanya.';
	@override String get canEditMembersByModerator => 'Perbolehkan moderator untuk menyunting daftar anggota untuk peran ini';
	@override String get descriptionOfCanEditMembersByModerator => 'Ketika dinyalakan, moderator beserta administrator dapat menugaskan ataupun mencabut pengguna ke peran ini. Ketika dimatikan, hanya administrator saja yang dapat menugaskan pengguna ke peran ini.';
	@override String get priority => 'Prioritas';
	@override late final _TranslationsMisskeyRolePriorityIdId priority_ = _TranslationsMisskeyRolePriorityIdId._(_root);
	@override late final _TranslationsMisskeyRoleOptionsIdId options_ = _TranslationsMisskeyRoleOptionsIdId._(_root);
	@override late final _TranslationsMisskeyRoleConditionIdId condition_ = _TranslationsMisskeyRoleConditionIdId._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionIdId extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get description => 'Mengurangi usaha moderasi peladen dengan mengenali media NSFW secara otomatis menggunakan Pembelajaran Mesin. Fungsi ini akan sedikit menaikkan beban peladen.';
	@override String get sensitivity => 'Sensitivitas deteksi';
	@override String get sensitivityDescription => 'Mengurangi sensitivitas akan mengurangi misdeteksi (false positive) sedangkan meningkatkannya akan menambah misdeteksi (false positive).';
	@override String get setSensitiveFlagAutomatically => 'Tandai sebagai NSFW';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Hasil dari deteksi internal akan dipertahankan meskipun fungsi ini dimatikan.';
	@override String get analyzeVideos => 'Nyalakan analisis terhadap video';
	@override String get analyzeVideosDescription => 'Analisa video sebagai tambahan dari gambar. Ini akan sedikit meningkatkan beban ke peladen.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableIdId extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get used => 'Alamat surel ini telah digunakan';
	@override String get format => 'Format tidak valid.';
	@override String get disposable => 'Alamat surel temporer tidak dapat digunakan';
	@override String get mx => 'Peladen alamat surel ini tidak valid';
	@override String get smtp => 'Peladen alamat surel ini tidak merespon';
	@override String get banned => 'Kamu tidak dapat mendaftar dengan alamat surel ini';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityIdId extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publik';
	@override String get followers => 'Tampil untuk pengikut saja';
	@override String get private => 'Tersembunyi';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupIdId extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Hampir selesai';
	@override String get emailAddressInfo => 'Mohon masukkan alamat surel kamu.';
	@override String emailSent({required Object email}) => 'Konfirmasi surel telah dikirimkan ke alamat surel kamu (${email}). Mohon klik tautan yang tercantum di dalamnya untuk menyelesaikan pembuatan akun.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteIdId extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Hapus akun';
	@override String get mayTakeTime => 'Karena penghapusan akun merupakan proses yang berat dan intensif, kemungkinan dapat membutuhkan waktu untuk menyelesaikan tergantung daripada berapa banyak konten yang kamu buat dan berapa banyak berkas yang telah kamu unggah.';
	@override String get sendEmail => 'Setelah penghapusan akun selesai, pemberitahuan akan dikirimkan ke alamat surel yang terdaftarkan pada akun ini.';
	@override String get requestAccountDelete => 'Minta penghapusan akun';
	@override String get started => 'Penghapusan telah dimulai';
	@override String get inProgress => 'Penghapusan sedang dalam proses';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdIdId extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get back => 'Kembali';
	@override String get reduceFrequencyOfThisAd => 'Tampilkan iklan ini lebih sedikit';
	@override String get hide => 'Jangan tampilkan';
	@override String get timezoneinfo => 'Hari dalam satu minggu ditentukan dari zona waktu peladen.';
	@override String get adsSettings => 'Pengaturan iklan';
	@override String get notesPerOneAd => 'Interval penempatan pemutakhiran iklan secara real-time (catatan per iklan)';
	@override String get setZeroToDisable => 'Atur nilai ini ke 0 untuk menonaktifkan pemutakhiran iklan secara real-time';
	@override String get adsTooClose => 'Interval iklan saat ini kemungkinan memperburuk pengalaman pengguna secara signifikan karena diatur pada nilai yang terlalu rendah.';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordIdId extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Masukkan alamat surel yang kamu gunakan pada saat mendaftar. Sebuah tautan untuk mengatur ulang kata sandi kamu akan dikirimkan ke alamat surel tersebut.';
	@override String get ifNoEmail => 'Apabila kamu tidak menggunakan surel pada saat pendaftaran, mohon hubungi admin segera.';
	@override String get contactAdmin => 'Instansi ini tidak mendukung menggunakan alamat surel, mohon kontak admin untuk mengatur ulang password kamu.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryIdId extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get my => 'Postingan saya';
	@override String get liked => 'Postingan yang disukai';
	@override String get like => 'Suka';
	@override String get unlike => 'Hapus suka';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailIdId extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowIdId follow_ = _TranslationsMisskeyEmailFollowIdId._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestIdId receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestIdId._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginIdId extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get install => 'Memasang plugin';
	@override String get installWarn => 'Mohon jangan memasang plugin yang tidak dapat dipercayai.';
	@override String get manage => 'Manajemen plugin';
	@override String get viewSource => 'Lihat sumber';
	@override String get viewLog => 'Tampilkan log';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsIdId extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get list => 'Cadangan yang dibuat';
	@override String get saveNew => 'Simpan cadangan baru';
	@override String get loadFile => 'Muat dari berkas';
	@override String get apply => 'Terapkan pada perangkat ini';
	@override String get save => 'Simpan perubahan';
	@override String get inputName => 'Mohon masukkan nama untuk cadangan ini';
	@override String get cannotSave => 'Gagal menyimpan';
	@override String nameAlreadyExists({required Object name}) => 'Cadangan bernama "${name}" sudah ada. Mohon gunakan nama lain.';
	@override String applyConfirm({required Object name}) => 'Apakah kamu yakin untuk menerapkan cadangan "${name}" ke perangkat ini? Pengaturan yang sudah ada di perangkat ini nantinya akan ditimpa.';
	@override String saveConfirm({required Object name}) => 'Simpan cadangan sebagai ${name}?';
	@override String deleteConfirm({required Object name}) => 'Hapus cadangan ${name}?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Ganti cadangan ini dari "${old}" ke "${new_}"?';
	@override String get noBackups => 'Tidak ada cadangan. Kamu dapat mencadangkan pengaturanmu di peladen ini dengan menggunakan "Buat cadangan baru".';
	@override String createdAt({required Object date, required Object time}) => 'Dibuat pada: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Diperbarui pada: ${date} ${time}';
	@override String get cannotLoad => 'Gagal memuat';
	@override String get invalidFile => 'Format berkas tidak valid';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryIdId extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Lingkup';
	@override String get key => 'Kunci';
	@override String get keys => 'Kunci';
	@override String get domain => 'Domain';
	@override String get createKey => 'Buat kunci';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyIdId extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey adalah perangkat lunak sumber terbuka yang sedang dikembangkan oleh syuilo sejak 2014.';
	@override String get contributors => 'Kontributor utama';
	@override String get allContributors => 'Seluruh kontributor';
	@override String get source => 'Sumber kode';
	@override String get original => 'Asli';
	@override String thisIsModifiedVersion({required Object name}) => '${name} menggunakan versi modifikasi dari Misskey yang asli.';
	@override String get translation => 'Terjemahkan Misskey';
	@override String get donate => 'Donasi ke Misskey';
	@override String get morePatrons => 'Kami sangat mengapresiasi dukungan dari banyak penolong lain yang tidak tercantum disini. Terima kasih! 🥰';
	@override String get patrons => 'Pendukung';
	@override String get projectMembers => 'Anggota proyek';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaIdId extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Sembunyikan media yang ditandai sensitif';
	@override String get ignore => 'Tampilkan media yang ditandai sensitif';
	@override String get force => 'Sembunyikan semua media';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerIdId extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get none => 'Jangan tampilkan';
	@override String get remote => 'Tampilkan untuk pengguna instansi luar';
	@override String get always => 'Selalu tampilkan';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorIdId extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Muat ulang otomatis';
	@override String get dialog => 'Tampilkan dialog peringatan';
	@override String get quiet => 'Tampilkan peringatan tidak mengganggu';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelIdId extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get create => 'Buat Kanal';
	@override String get edit => 'Sunting Kanal';
	@override String get setBanner => 'Setel banner';
	@override String get removeBanner => 'Hapus banner';
	@override String get featured => 'Tren';
	@override String get owned => 'Dimiliki';
	@override String get following => 'Mengikuti';
	@override String usersCount({required Object n}) => '${n} Partisipan';
	@override String notesCount({required Object n}) => 'terdapat ${n} catatan';
	@override String get nameAndDescription => 'Nama dan deskripsi';
	@override String get nameOnly => 'Hanya nama';
	@override String get allowRenoteToExternal => 'Perbolehkan catat ulang dan kutipan di luar dari kanal';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayIdId extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Horisontal';
	@override String get sideIcon => 'Horisontal (Ikon)';
	@override String get top => 'Atas';
	@override String get hide => 'Sembunyikan';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteIdId extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Kata yang dibisukan';
	@override String get muteWordsDescription => 'Pisahkan dengan spasi untuk kondisi AND. Pisahkan dengan baris baru untuk kondisi OR.';
	@override String get muteWordsDescription2 => 'Kurung kata kunci dengan garis miring untuk menggunakan ekspresi reguler.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteIdId extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Pengaturan ini akan membisukan note/renote apa saja dari instansi yang terdaftar, termasuk pengguna yang membalas pengguna lain dalam instansi yang dibisukan.';
	@override String get instanceMuteDescription2 => 'Pisah dengan baris baru';
	@override String get title => 'Sembunyikan note dari instansi terdaftar.';
	@override String get heading => 'Daftar instansi yang akan dibisukan';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeIdId extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Jelajahi tema';
	@override String get install => 'Pasang tema';
	@override String get manage => 'Manajer tema';
	@override String get code => 'Kode tema';
	@override String get description => 'Deskripsi';
	@override String installed({required Object name}) => '${name} telah dipasang';
	@override String get installedThemes => 'Tema yang dipasang';
	@override String get builtinThemes => 'Tema bawaan';
	@override String get alreadyInstalled => 'Tema telah dipasang';
	@override String get invalid => 'Format tema tidak valid';
	@override String get make => 'Buat tema';
	@override String get base => 'Dasar';
	@override String get addConstant => 'Tambah konstanta';
	@override String get constant => 'Konstanta';
	@override String get defaultValue => 'Nilai bawaan';
	@override String get color => 'Warna';
	@override String get refProp => 'Referensikan properti';
	@override String get refConst => 'Referensikan konstanta';
	@override String get key => 'Kunci';
	@override String get func => 'Fungsi';
	@override String get funcKind => 'Tipe fungsi';
	@override String get argument => 'Argumen';
	@override String get basedProp => 'Mereferensikan properti';
	@override String get alpha => 'Opasitas';
	@override String get darken => 'Mengelamkan';
	@override String get lighten => 'Menerangkan';
	@override String get inputConstantName => 'Masukkan nama untuk konstanta';
	@override String get importInfo => 'Jika kamu memasukkan kode tema disini, kamu dapat mengimpornya ke penyunting tema';
	@override String deleteConstantConfirm({required Object const_}) => 'apakah kamu ingin menghapus konstanta ${const_}?';
	@override late final _TranslationsMisskeyThemeKeysIdId keys = _TranslationsMisskeyThemeKeysIdId._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxIdId extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get note => 'Catatan';
	@override String get noteMy => 'Catatan (Saya)';
	@override String get notification => 'Notifikasi';
	@override String get reaction => 'Ketika memilih reaksi';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsIdId extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Menggunakan berkas audio dalam Drive';
	@override String get driveFileWarn => 'Pilih berkas audio dari Drive';
	@override String get driveFileTypeWarn => 'Berkas ini tidak didukung';
	@override String get driveFileTypeWarnDescription => 'Pilih berkas audio';
	@override String get driveFileDurationWarn => 'Audio ini terlalu panjang';
	@override String get driveFileDurationWarnDescription => 'Audio panjang dapat mengganggu penggunaan Misskey. Masih ingin melanjutkan?';
	@override String get driveFileError => 'Tak bisa memuat audio. Mohon ubah pengaturan';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoIdId extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get future => 'Masa depan';
	@override String get justNow => 'Baru saja';
	@override String secondsAgo({required Object n}) => '${n} detik lalu';
	@override String minutesAgo({required Object n}) => '${n} menit lalu';
	@override String hoursAgo({required Object n}) => '${n} jam lalu';
	@override String daysAgo({required Object n}) => '${n} hari lalu';
	@override String weeksAgo({required Object n}) => '${n} minggu lalu';
	@override String monthsAgo({required Object n}) => '${n} bulan lalu';
	@override String yearsAgo({required Object n}) => '${n} tahun lalu';
	@override String get invalid => 'Tidak ada sama sekali disini';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInIdId extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'dalam ${n} detik';
	@override String minutes({required Object n}) => 'dalam ${n} menit';
	@override String hours({required Object n}) => 'dalam ${n} jam';
	@override String days({required Object n}) => 'dalam ${n} hari';
	@override String weeks({required Object n}) => 'dalam ${n} minggu';
	@override String months({required Object n}) => 'dalam ${n} bulan';
	@override String years({required Object n}) => 'dalam ${n} tahun';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeIdId extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get second => 'detik';
	@override String get minute => 'menit';
	@override String get hour => 'jam';
	@override String get day => 'hari';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faIdId extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Kamu telah mendaftarkan perangkat autentikasi 2-faktor.';
	@override String get registerTOTP => 'Daftarkan aplikasi autentikator';
	@override String step1({required Object a, required Object b}) => 'Pertama, pasang aplikasi autentikasi (seperti ${a} atau ${b}) di perangkat kamu.';
	@override String get step2 => 'Lalu, pindai kode QR yang ada di layar.';
	@override String get step2Uri => 'Masukkan URI berikut jika kamu menggunakan program desktop';
	@override String get step3Title => 'Masukkan kode autentikasi';
	@override String get step3 => 'Masukkan token yang telah disediakan oleh aplikasimu untuk menyelesaikan pemasangan.';
	@override String get setupCompleted => 'Penyetelan autentikasi 2-faktor selesai';
	@override String get step4 => 'Mulai sekarang, upaya login apapun akan meminta token login dari aplikasi autentikasi kamu.';
	@override String get securityKeyNotSupported => 'Peramban kamu tidak mendukung security key.';
	@override String get registerTOTPBeforeKey => 'Mohon atur aplikasi autentikator untuk mendaftarkan security key atau passkey.';
	@override String get securityKeyInfo => 'Kamu dapat memasang autentikasi WebAuthN untuk mengamankan proses login lebih lanjut dengan tidak hanya perangkat keras kunci keamanan yang mendukung FIDO2, namun juga sidik jari atau autentikasi PIN pada perangkatmu.';
	@override String get registerSecurityKey => 'Daftarkan security key atau passkey.';
	@override String get securityKeyName => 'Masukkan nama key.';
	@override String get tapSecurityKey => 'Mohon ikuti peramban kamu untuk mendaftarkan security key atau passkey';
	@override String get removeKey => 'Hapus security key';
	@override String removeKeyConfirm({required Object name}) => 'Hapus cadangan ${name}?';
	@override String get whyTOTPOnlyRenew => 'Aplikasi autentikator tidak dapat dihapus selama security key masih terdaftar.';
	@override String get renewTOTP => 'Atur ulang aplikasi autentikator';
	@override String get renewTOTPConfirm => 'Hal ini akan menyebabkan kode verifikasi dari aplikasi autentikator sebelumnya berhenti bekerja';
	@override String get renewTOTPOk => 'Atur ulang';
	@override String get renewTOTPCancel => 'Tidak sekarang.';
	@override String get checkBackupCodesBeforeCloseThisWizard => 'Sebelum kamu menutup jendela ini, pastikan untuk memperhatikan dan mencadangkan kode cadangan berikut.';
	@override String get backupCodes => 'Kode Pencadangan';
	@override String get backupCodesDescription => 'Kamu dapat menggunakan kode ini untuk mendapatkan akses ke akun kamu apabila berada dalam situasi tidak dapat menggunakan aplikasi autentikasi 2-faktor yang kamu miliki. Setiap kode hanya dapat digunakan satu kali. Mohon simpan kode ini di tempat yang aman.';
	@override String get backupCodeUsedWarning => 'Kode cadangan telah digunakan. Mohon mengatur ulang autentikasi 2-faktor secepatnya apabila kamu sudah tidak dapat menggunakannya lagi.';
	@override String get backupCodesExhaustedWarning => 'Semua kode cadangan telah digunakan. Apabila kamu kehilangan akses pada aplikasi autentikasi 2-faktor milikmu, kamu tidak dapat mengakses akun ini lagi. Mohon atur ulang autentikasi 2-faktor kamu.';
	@override String get moreDetailedGuideHere => 'Berikut panduan detilnya';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsIdId extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Lihat informasi akun';
	@override String get writeAccount => 'Sunting informasi akun';
	@override String get readBlocks => 'Lihat daftar orang yang diblokir';
	@override String get writeBlocks => 'Sunting daftar orang yang diblokir';
	@override String get readDrive => 'Akses berkas dan folder drive';
	@override String get writeDrive => 'Sunting atau hapus berkas dan folder drive';
	@override String get readFavorites => 'Lihat daftar favorit';
	@override String get writeFavorites => 'Sunting daftar favorit';
	@override String get readFollowing => 'Lihat informasi mengikuti';
	@override String get writeFollowing => 'Ikuti atau Stop Ikuti akun lain';
	@override String get readMessaging => 'Lihat obrolan';
	@override String get writeMessaging => 'Buat atau hapus obrolan';
	@override String get readMutes => 'Lihat daftar orang yang dibisukan';
	@override String get writeMutes => 'Sunting daftar orang yang dibisukan';
	@override String get writeNotes => 'Buat atau hapus catatan';
	@override String get readNotifications => 'Lihat notifikasi';
	@override String get writeNotifications => 'Sunting notifikasi';
	@override String get readReactions => 'Lihat reaksi';
	@override String get writeReactions => 'Sunting reaksi';
	@override String get writeVotes => 'Beri suara';
	@override String get readPages => 'Lihat halaman';
	@override String get writePages => 'Sunting atau hapus halaman';
	@override String get readPageLikes => 'Lihat suka pada halaman';
	@override String get writePageLikes => 'Sunting suka pada Halaman';
	@override String get readUserGroups => 'Lihat grup pengguna';
	@override String get writeUserGroups => 'Sunting atau hapus grup pengguna';
	@override String get readChannels => 'Lihat Kanal';
	@override String get writeChannels => 'Sunting Kanal';
	@override String get readGallery => 'Lihat galeri';
	@override String get writeGallery => 'Sunting galeri';
	@override String get readGalleryLikes => 'Lihat daftar postingan galeri yang disukai';
	@override String get writeGalleryLikes => 'Sunting daftar postingan galeri yang disukai';
	@override String get readFlash => 'Lihat Play';
	@override String get writeFlash => 'Sunting Play';
	@override String get readFlashLikes => 'Lihat daftar Play yang disukai';
	@override String get writeFlashLikes => 'Sunting daftar Play yang disukai';
	@override String get readAdminAbuseUserReports => 'Lihat laporan pengguna';
	@override String get writeAdminDeleteAccount => 'Hapus akun pengguna';
	@override String get writeAdminDeleteAllFilesOfAUser => 'Hapus semua berkas dari seorang pengguna';
	@override String get readAdminIndexStats => 'Lihat statistik indeks basis data';
	@override String get readAdminTableStats => 'Lihat statistik tabel basis data';
	@override String get readAdminUserIps => 'Lihat alamat IP pengguna';
	@override String get readAdminMeta => 'Lihat metadata instansi';
	@override String get writeAdminResetPassword => 'Atur ulang kata sandi pengguna';
	@override String get writeAdminResolveAbuseUserReport => 'Selesaikan laporan pengguna';
	@override String get writeAdminSendEmail => 'Mengirim surel';
	@override String get readAdminServerInfo => 'Lihat informasi peladen';
	@override String get readAdminShowModerationLog => 'Lihat log moderasi';
	@override String get readAdminShowUser => 'Lihat informasi pengguna privat';
	@override String get writeAdminSuspendUser => 'Tangguhkan pengguna';
	@override String get writeAdminUnsetUserAvatar => 'Hapus avatar pengguna';
	@override String get writeAdminUnsetUserBanner => 'Hapus banner pengguna';
	@override String get writeAdminUnsuspendUser => 'Batalkan penangguhan pengguna';
	@override String get writeAdminMeta => 'Kelola metadata instansi';
	@override String get writeAdminUserNote => 'Kelola moderasi catatan';
	@override String get writeAdminRoles => 'Kelola peran';
	@override String get readAdminRoles => 'Lihat peran';
	@override String get writeAdminRelays => 'Kelola relay';
	@override String get readAdminRelays => 'Lihat relay';
	@override String get writeAdminInviteCodes => 'Kelola kode undangan';
	@override String get readAdminInviteCodes => 'Lihat kode undangan';
	@override String get writeAdminAnnouncements => 'Kelola pengumuman';
	@override String get readAdminAnnouncements => 'Lihat Pengumuman';
	@override String get writeAdminAvatarDecorations => 'Kelola dekorasi avatar';
	@override String get readAdminAvatarDecorations => 'Lihat dekorasi avatar';
	@override String get writeAdminFederation => 'Kelola data federasi';
	@override String get writeAdminAccount => 'Kelola akun pengguna';
	@override String get readAdminAccount => 'Lihat akun pengguna';
	@override String get writeAdminEmoji => 'Kelola emoji';
	@override String get readAdminEmoji => 'Lihat emoji';
	@override String get writeAdminQueue => 'Kelola antrian kerja';
	@override String get readAdminQueue => 'Lihat informasi antrian kerja';
	@override String get writeAdminPromo => 'Kelola catatan promosi';
	@override String get writeAdminDrive => 'Kelola drive pengguna';
	@override String get readAdminDrive => 'Kelola informasi drive pengguna';
	@override String get readAdminStream => 'Gunakan API WebSocket untuk Admin';
	@override String get writeAdminAd => 'Kelola iklan';
	@override String get readAdminAd => 'Lihat iklan';
	@override String get writeInviteCodes => 'Membuat kode undangan';
	@override String get readInviteCodes => 'Mendapatkan kode undangan';
	@override String get writeClipFavorite => 'Kelola klip yang difavoritkan';
	@override String get readClipFavorite => 'Lihat klip yang difavoritkan';
	@override String get readFederation => 'Mendapatkan data federasi';
	@override String get writeReportAbuse => 'Melaporkan pelanggaran';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthIdId extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Mendapatkan ijin akses aplikasi';
	@override String shareAccess({required Object name}) => 'Apakah kamu ingin mengijinkan "${name}" untuk mengakses akun ini?';
	@override String get shareAccessAsk => 'Apakah kamu ingin mengijinkan aplikasi ini untuk mengakses akun kamu?';
	@override String permission({required Object name}) => '${name} meminta ijin berikut';
	@override String get permissionAsk => 'Aplikasi ini membutuhkan beberapa ijin, yaitu:';
	@override String get pleaseGoBack => 'Mohon kembali ke aplikasi kamu';
	@override String get callback => 'Mengembalikan kamu ke aplikasi';
	@override String get denied => 'Akses ditolak';
	@override String get pleaseLogin => 'Mohon masuk untuk otorisasi aplikasi.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesIdId extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get all => 'Semua catatan';
	@override String get homeTimeline => 'Catatan dari pengguna yang diikuti';
	@override String get users => 'Catatan dari pengguna tertentu';
	@override String get userList => 'Catatan dari daftar tertentu';
	@override String get userBlacklist => 'Semua catatan kecuali untuk satu pengguna atau lebih yang telah ditentukan';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayIdId extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Minggu';
	@override String get monday => 'Senin';
	@override String get tuesday => 'Selasa';
	@override String get wednesday => 'Rabu';
	@override String get thursday => 'Kamis';
	@override String get friday => 'Jumat';
	@override String get saturday => 'Sabtu';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsIdId extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Informasi Instansi';
	@override String get memo => 'Catatan memo';
	@override String get notifications => 'Notifikasi';
	@override String get timeline => 'Lini masa';
	@override String get calendar => 'Kalender';
	@override String get trends => 'Tren';
	@override String get clock => 'Jam';
	@override String get rss => 'Pembaca RSS';
	@override String get rssTicker => 'RSS-Ticker';
	@override String get activity => 'Aktivitas';
	@override String get photos => 'Foto';
	@override String get digitalClock => 'Jam digital';
	@override String get unixClock => 'Jam UNIX';
	@override String get federation => 'Federasi';
	@override String get instanceCloud => 'Instansi awan';
	@override String get postForm => 'Buat catatan';
	@override String get slideshow => 'Slideshow';
	@override String get button => 'Tombol';
	@override String get onlineUsers => 'Pengguna online';
	@override String get jobQueue => 'Antrian kerja';
	@override String get serverMetric => 'Statistik peladen';
	@override String get aiscript => 'Konsol AiScript';
	@override String get aiscriptApp => 'Aplikasi AiScript';
	@override String get aichan => 'Ai';
	@override String get userList => 'Daftar pengguna';
	@override late final _TranslationsMisskeyWidgetsUserListIdId userList_ = _TranslationsMisskeyWidgetsUserListIdId._(_root);
	@override String get clicker => 'Pengeklik';
	@override String get birthdayFollowings => 'Pengguna yang merayakan hari ulang tahunnya hari ini';
}

// Path: misskey.cw_
class _TranslationsMisskeyCwIdId extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Sembunyikan';
	@override String get show => 'Lihat konten';
	@override String chars({required Object count}) => '${count} karakter';
	@override String files({required Object count}) => '${count} berkas';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollIdId extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Dibutuhkan sedikitnya dua pilihan';
	@override String choiceN({required Object n}) => 'Pilihan ${n}';
	@override String get noMore => 'Kamu tidak dapat menambahkan pilihan lagi';
	@override String get canMultipleVote => 'Bolehkan memilih banyak';
	@override String get expiration => 'Batas akhir';
	@override String get infinite => 'Selamanya';
	@override String get at => 'Berakhir pada...';
	@override String get after => 'Berakhir setelah...';
	@override String get deadlineDate => 'Tanggal batas akhir';
	@override String get deadlineTime => 'jam';
	@override String get duration => 'Durasi';
	@override String votesCount({required Object n}) => '${n} suara';
	@override String totalVotes({required Object n}) => 'Total ${n} suara';
	@override String get vote => 'Beri suara';
	@override String get showResult => 'Lihat hasil';
	@override String get voted => 'Telah memilih';
	@override String get closed => 'Telah berakhir';
	@override String remainingDays({required Object d, required Object h}) => 'Berakhir dalam ${d} hari ${h} jam';
	@override String remainingHours({required Object h, required Object m}) => 'Berakhir dalam ${h} jam ${m} menit';
	@override String remainingMinutes({required Object m, required Object s}) => 'Berakhir dalam ${m} menit ${s} detik';
	@override String remainingSeconds({required Object s}) => 'Berakhir dalam ${s} detik';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityIdId extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publik';
	@override String get publicDescription => 'Catat ke lini masa global';
	@override String get home => 'Beranda';
	@override String get homeDescription => 'Catat ke lini masa beranda saja';
	@override String get followers => 'Pengikut';
	@override String get followersDescription => 'Catat ke pengikut saja';
	@override String get specified => 'Langsung';
	@override String get specifiedDescription => 'Catat ke pengguna yang ditentukan saja';
	@override String get disableFederation => 'Matikan federasi';
	@override String get disableFederationDescription => 'Jangan kirimkan ke instansi lain';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormIdId extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Balas ke catatan ini...';
	@override String get quotePlaceholder => 'Kutip catatan ini...';
	@override String get channelPlaceholder => 'Posting ke kanal';
	@override late final _TranslationsMisskeyPostFormPlaceholdersIdId placeholders_ = _TranslationsMisskeyPostFormPlaceholdersIdId._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileIdId extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nama';
	@override String get username => 'Nama Pengguna';
	@override String get description => 'Bio';
	@override String get youCanIncludeHashtags => 'Kamu juga dapat menambahkan tagar ke dalam bio.';
	@override String get metadata => 'Informasi tambahan';
	@override String get metadataEdit => 'Sunting informasi tambahan';
	@override String get metadataDescription => 'Kamu dapat menampilkan hingga 4 bagian informasi tambahan ke dalam profilmu.';
	@override String get metadataLabel => 'Label';
	@override String get metadataContent => 'Isi';
	@override String get changeAvatar => 'Ubah avatar';
	@override String get changeBanner => 'Ubah header';
	@override String get verifiedLinkDescription => 'Dengan memasukkan URL yang mengandung tautan ke profil kamu di sini, ikon verifikasi kepemilikan dapat ditampilkan di sebelah kolom ini.';
	@override String avatarDecorationMax({required Object max}) => 'Dapat ditambahkan hingga ${max} dekorasi.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportIdId extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Semua catatan';
	@override String get favoritedNotes => 'Catatan favorit';
	@override String get clips => 'Klip';
	@override String get followingList => 'Ikuti';
	@override String get muteList => 'Bisukan';
	@override String get blockingList => 'Blokir';
	@override String get userLists => 'Daftar';
	@override String get excludeMutingUsers => 'Kecualikan pengguna yang dibisukan';
	@override String get excludeInactiveUsers => 'Kecualikan pengguna tidak aktif';
	@override String get withReplies => 'Termasuk balasan dari pengguna yang diimpor ke dalam lini masa';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsIdId extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federasi';
	@override String get apRequest => 'Permintaan';
	@override String get usersIncDec => 'Perbedaan dalam # pengguna';
	@override String get usersTotal => 'Jumlah # pengguna';
	@override String get activeUsers => 'Pengguna aktif';
	@override String get notesIncDec => 'Perbedaan # dalam catatan';
	@override String get localNotesIncDec => 'Perbedaan # dalam catatan lokal';
	@override String get remoteNotesIncDec => 'Perbedaan # dalam catatan instansi luar';
	@override String get notesTotal => 'Total # catatan';
	@override String get filesIncDec => 'Perbedaan # dalam berkas';
	@override String get filesTotal => 'Jumlah # berkas';
	@override String get storageUsageIncDec => 'Perbedaan dalam penggunaan penyimpanan';
	@override String get storageUsageTotal => 'Jumlah penggunaan penyimpanan';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsIdId extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Permintaan';
	@override String get users => 'Perbedaan dalam # pengguna';
	@override String get usersTotal => 'Jumlah # pengguna kumulatif';
	@override String get notes => 'Perbedaan # dalam catatan';
	@override String get notesTotal => 'Jumlah # catatan kumulatif';
	@override String get ff => 'Perbedaan jumlah # dalam pengikut';
	@override String get ffTotal => 'Jumlah # pengikut kumulatif';
	@override String get cacheSize => 'Perbedaan dalam ukuran tembolok';
	@override String get cacheSizeTotal => 'Total ukuran tembolok kumulatif';
	@override String get files => 'Perbedaan dalam # berkas';
	@override String get filesTotal => 'Jumlah # berkas kumulatif';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesIdId extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get home => 'Beranda';
	@override String get local => 'Lokal';
	@override String get social => 'Sosial';
	@override String get global => 'Global';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayIdId extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Membuat Permainan';
	@override String get edit => 'Menyunting Permainan';
	@override String get created => 'Permainan sudah dibuat';
	@override String get updated => 'Permainan sudah diperbaharui';
	@override String get deleted => 'Hapus permainan';
	@override String get pageSetting => 'Pengaturan permainan';
	@override String get editThisPage => 'Sunting Permainan ini';
	@override String get viewSource => 'Lihat sumber';
	@override String get my => 'Permainan saya';
	@override String get liked => 'Permainan Disukai';
	@override String get featured => 'Populer';
	@override String get title => 'Judul';
	@override String get script => 'Script';
	@override String get summary => 'Deskripsi';
	@override String get visibilityDescription => 'Membuat catatan ini privat berarti tidak akan terlihat pada profil kamu, namun siapapun yang memiliki URL dari catatan ini akan dapat mengaksesnya.';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesIdId extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Buat halaman baru';
	@override String get editPage => 'Sunting halaman';
	@override String get readPage => 'Lihat sumber kode aktif';
	@override String get pageSetting => 'Pengaturan Halaman';
	@override String get nameAlreadyExists => 'URL Halaman yang ditentukan sudah ada';
	@override String get invalidNameTitle => 'URL Halaman yang ditentukan tidak valid';
	@override String get invalidNameText => 'Cek apabila Halaman tidak kosong';
	@override String get editThisPage => 'Sunting Halaman ini';
	@override String get viewSource => 'Lihat sumber';
	@override String get viewPage => 'Lihat Halaman';
	@override String get like => 'Suka';
	@override String get unlike => 'Hapus suka';
	@override String get my => 'Halaman saya';
	@override String get liked => 'Halaman yang disukai';
	@override String get featured => 'Populer';
	@override String get inspector => 'Inspektor';
	@override String get contents => 'Konten';
	@override String get content => 'Blokir Halaman';
	@override String get variables => 'Variabel';
	@override String get title => 'Judul';
	@override String get url => 'URL Halaman';
	@override String get summary => 'Ringkasan Halaman';
	@override String get alignCenter => 'Tengah';
	@override String get hideTitleWhenPinned => 'Sembunyikan judul halaman saat disematkan ke profil';
	@override String get font => 'Font';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans-serif';
	@override String get eyeCatchingImageSet => 'Setel gambar yang menarik';
	@override String get eyeCatchingImageRemove => 'Hapus gambar yang menarik';
	@override String get chooseBlock => 'Tambahkan blokir';
	@override String get selectType => 'Pilih jenis';
	@override String get contentBlocks => 'Konten';
	@override String get inputBlocks => 'Masukan';
	@override String get specialBlocks => 'Khusus';
	@override late final _TranslationsMisskeyPagesBlocksIdId blocks = _TranslationsMisskeyPagesBlocksIdId._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusIdId extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Menunggu';
	@override String get accepted => 'Disetujui';
	@override String get rejected => 'Ditolak';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationIdId extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Berkas telah berhasil diunggah';
	@override String youGotMention({required Object name}) => '${name} meyebut kamu';
	@override String youGotReply({required Object name}) => '${name} membalas kamu';
	@override String youGotQuote({required Object name}) => '${name} mengutip kamu';
	@override String youRenoted({required Object name}) => '${name} me-renote kamu';
	@override String get youWereFollowed => 'Mengikuti kamu';
	@override String get youReceivedFollowRequest => 'Kamu menerima permintaan mengikuti';
	@override String get yourFollowRequestAccepted => 'Permintaan mengikuti kamu telah diterima';
	@override String get pollEnded => 'Hasil Kuesioner telah keluar';
	@override String get newNote => 'Catatan baru';
	@override String unreadAntennaNote({required Object name}) => 'Antena ${name}';
	@override String get roleAssigned => 'Peran Diberikan';
	@override String get emptyPushNotificationMessage => 'Pembaruan notifikasi dorong';
	@override String get achievementEarned => 'Pencapaian didapatkan';
	@override String get testNotification => 'Tes notifikasi';
	@override String get checkNotificationBehavior => 'Cek tampilan notifikasi';
	@override String get sendTestNotification => 'Kirim tes notifikasi';
	@override String get notificationWillBeDisplayedLikeThis => 'Notifikasi akan terlihat seperti ini';
	@override String reactedBySomeUsers({required Object n}) => '${n} orang memberikan reaksi';
	@override String likedBySomeUsers({required Object n}) => '${n} pengguna menyukai catatan kamu';
	@override String renotedBySomeUsers({required Object n}) => '${n} orang telah merenote';
	@override String followedBySomeUsers({required Object n}) => '${n} orang telah mengikuti';
	@override String get flushNotification => 'Bersihkan notifikasi';
	@override late final _TranslationsMisskeyNotificationTypesIdId types_ = _TranslationsMisskeyNotificationTypesIdId._(_root);
	@override late final _TranslationsMisskeyNotificationActionsIdId actions_ = _TranslationsMisskeyNotificationActionsIdId._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckIdId extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Selalu tampilkan kolom utama';
	@override String get columnAlign => 'Luruskan kolom';
	@override String get addColumn => 'Tambahkan kolom';
	@override String get configureColumn => 'Atur kolom';
	@override String get swapLeft => 'Pindah ke kiri';
	@override String get swapRight => 'Pindah ke kanan';
	@override String get swapUp => 'Pindah ke atas';
	@override String get swapDown => 'Pindah ke bawah';
	@override String get stackLeft => 'Tumpukkan di kolom kiri';
	@override String get popRight => 'Keluarkan di kanan';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Profil baru';
	@override String get deleteProfile => 'Hapus profil';
	@override String get introduction => 'Buat antarmuka sempurna untukmu dengan menata kolom secara bebas!';
	@override String get introduction2 => 'Klik "+" pada kanan layar untuk menambahkan kolom baru kapanpun yang kamu mau.';
	@override String get widgetsIntroduction => 'Mohon pilih "Sunting gawit" pada menu kolom dan tambahkan gawit.';
	@override String get useSimpleUiForNonRootPages => 'Gunakan antarmuka sederhana ke halaman yang dituju';
	@override String get usedAsMinWidthWhenFlexible => 'Lebar minimum akan digunakan untuk ini ketika opsi "Atur-otomatis lebar" dinyalakan';
	@override String get flexible => 'Atur-otomatis lebar';
	@override late final _TranslationsMisskeyDeckColumnsIdId columns_ = _TranslationsMisskeyDeckColumnsIdId._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogIdId extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Kamu telah melebihi batas karakter maksimum! Saat ini pada ${current} dari ${max}.';
	@override String charactersBelow({required Object current, required Object min}) => 'Kamu berada di bawah batas minimum karakter! Saat ini pada ${current} dari ${min}.';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineIdId extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lini masa dinonaktifkan';
	@override String get description => 'Saat ini kamu tidak dapat menggunakan lini masa ini karena peran kamu saat ini.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerIdId extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Ukuran berkas (Turun)';
	@override String get orderByCreatedAtAsc => 'Tanggal (Naik)';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsIdId extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Buat Webhook';
	@override String get modifyWebhook => 'Sunting Webhook';
	@override String get name => 'Nama';
	@override String get secret => 'Secret';
	@override String get active => 'Aktif';
	@override late final _TranslationsMisskeyWebhookSettingsEventsIdId events_ = _TranslationsMisskeyWebhookSettingsEventsIdId._(_root);
	@override String get deleteConfirm => 'Apakah kamu yakin ingin menghapus Webhook?';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportIdId extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientIdId notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientIdId._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesIdId extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get createRole => 'Peran telah dibuat';
	@override String get deleteRole => 'Peran telah dihapus';
	@override String get updateRole => 'Peran telah diperbaharui';
	@override String get assignRole => 'Yang ditugaskan dalam peran';
	@override String get unassignRole => 'Dihapus dari peran';
	@override String get suspend => 'Tangguhkan';
	@override String get unsuspend => 'Batal ditangguhkan';
	@override String get addCustomEmoji => 'Emoji kustom ditambahkan';
	@override String get updateCustomEmoji => 'Emoji kustom diperbaharui';
	@override String get deleteCustomEmoji => 'Emoji kustom dihapus';
	@override String get updateServerSettings => 'Pengaturan peladen diperbaharui';
	@override String get updateUserNote => 'Catatan moderasi diperbaharui';
	@override String get deleteDriveFile => 'Berkas dihapus';
	@override String get deleteNote => 'Catatan dihapus';
	@override String get createGlobalAnnouncement => 'Pengumuman global dibuat';
	@override String get createUserAnnouncement => 'Pengumuman pengguna dibuat';
	@override String get updateGlobalAnnouncement => 'Pengumuman global diperbaharui';
	@override String get updateUserAnnouncement => 'Pengumuman pengguna diperbaharui';
	@override String get deleteGlobalAnnouncement => 'Pengumuman global telah dihapus';
	@override String get deleteUserAnnouncement => 'Pengumuman pengguna telah dihapus.';
	@override String get resetPassword => 'Atur ulang kata sandi';
	@override String get suspendRemoteInstance => 'Instansi luar telah ditangguhkan';
	@override String get unsuspendRemoteInstance => 'Instansi luar batal ditangguhkan';
	@override String get updateRemoteInstanceNote => 'Catatan moderasi telah diperbaharui untuk peladen luar.';
	@override String get markSensitiveDriveFile => 'Berkas ditandai sensitif';
	@override String get unmarkSensitiveDriveFile => 'Berkas batal ditandai sensitif';
	@override String get resolveAbuseReport => 'Laporan terselesaikan';
	@override String get createInvitation => 'Buat kode undangan';
	@override String get createAd => 'Iklan telah dibuat';
	@override String get deleteAd => 'Iklan telah dihapus';
	@override String get updateAd => 'Iklan telah diperbaharui';
	@override String get createAvatarDecoration => 'Buat dekorasi avatar';
	@override String get updateAvatarDecoration => 'Perbarui dekorasi avatar';
	@override String get deleteAvatarDecoration => 'Hapus dekorasi avatar';
	@override String get unsetUserAvatar => 'Hapus avatar pengguna';
	@override String get unsetUserBanner => 'Hapus banner pengguna';
	@override String get deleteAccount => 'Akun dihapus';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerIdId extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rincian berkas';
	@override String get type => 'Jenis berkas';
	@override String get size => 'Ukuran berkas';
	@override String get url => 'URL';
	@override String get uploadedAt => 'Diunggah pada';
	@override String get attachedNotes => 'Catatan yang dilampirkan';
	@override String get thisPageCanBeSeenFromTheAuthor => 'Halaman ini hanya dapat dilihat oleh pengguna yang mengunggah bekas ini.';
}

// Path: misskey.externalResourceInstaller_
class _TranslationsMisskeyExternalResourceInstallerIdId extends TranslationsMisskeyExternalResourceInstallerEnUs {
	_TranslationsMisskeyExternalResourceInstallerIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasang dari situs eksternal';
	@override String get checkVendorBeforeInstall => 'Pastikan sumber dari sumber daya ini terpercaya sebelum melakukan pemasangan.';
	@override late final _TranslationsMisskeyExternalResourceInstallerPluginIdId plugin_ = _TranslationsMisskeyExternalResourceInstallerPluginIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerThemeIdId theme_ = _TranslationsMisskeyExternalResourceInstallerThemeIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerMetaIdId meta_ = _TranslationsMisskeyExternalResourceInstallerMetaIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerVendorInfoIdId vendorInfo_ = _TranslationsMisskeyExternalResourceInstallerVendorInfoIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsIdId errors_ = _TranslationsMisskeyExternalResourceInstallerErrorsIdId._(_root);
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverIdId extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverMediaIdId media_ = _TranslationsMisskeyDataSaverMediaIdId._(_root);
	@override late final _TranslationsMisskeyDataSaverAvatarIdId avatar_ = _TranslationsMisskeyDataSaverAvatarIdId._(_root);
	@override late final _TranslationsMisskeyDataSaverUrlPreviewIdId urlPreview_ = _TranslationsMisskeyDataSaverUrlPreviewIdId._(_root);
	@override late final _TranslationsMisskeyDataSaverCodeIdId code_ = _TranslationsMisskeyDataSaverCodeIdId._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereIdId extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get N => 'Bumi belahan utara';
	@override String get S => 'Bumi belahan selatan';
	@override String get caption => 'Digunakan dalam beberapa pengaturan klien untuk menentukan musim.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiIdId extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get reversi => 'Reversi';
	@override String get gameSettings => 'Pengaturan permainan';
	@override String get chooseBoard => 'Pilih papan';
	@override String get blackOrWhite => 'Hitam/Putih';
	@override String blackIs({required Object name}) => '${name} bermain sebagai Hitam';
	@override String get rules => 'Aturan';
	@override String get thisGameIsStartedSoon => 'Permainan akan segera dimulai';
	@override String get waitingForOther => 'Menunggu langkah giliran dari lawan';
	@override String get waitingForMe => 'Menungguh langkah giliran dari kamu';
	@override String get waitingBoth => 'Bersiap';
	@override String get ready => 'Siap';
	@override String get cancelReady => 'Belum siap';
	@override String get opponentTurn => 'Giliran lawan';
	@override String get myTurn => 'Giliran kamu';
	@override String turnOf({required Object name}) => 'Giliran ${name}';
	@override String pastTurnOf({required Object name}) => 'Giliran ${name}';
	@override String get surrender => 'Menyerah';
	@override String get surrendered => 'Telah menyerah';
	@override String get timeout => 'Waktu habis';
	@override String get drawn => 'Seri';
	@override String won({required Object name}) => '${name} menang';
	@override String get black => 'Hitam';
	@override String get white => 'Putih';
	@override String get total => 'Jumlah';
	@override String turnCount({required Object count}) => 'Langkah ke ${count}';
	@override String get myGames => 'Rondeku';
	@override String get allGames => 'Semua ronde';
	@override String get ended => 'Selesai';
	@override String get playing => 'Sedang bermain';
	@override String get isLlotheo => 'Pemain dengan batu yang sedikit menang (Llotheo)';
	@override String get loopedMap => 'Peta melingkar';
	@override String get canPutEverywhere => 'Keping dapat ditaruh dimana saja';
	@override String get timeLimitForEachTurn => 'Batas waktu untuk gantian';
	@override String get freeMatch => 'Pertandingan bebas';
	@override String get lookingForPlayer => 'Mencari lawan...';
	@override String get gameCanceled => 'Permainan ini telah dibatalkan.';
	@override String get shareToTlTheGameWhenStart => 'Bagikan permainan ke lini masa ketika dimulai';
	@override String get iStartedAGame => 'Permainan telah dimulai! #MisskeyReversi';
	@override String get opponentHasSettingsChanged => 'Lawan telah mengganti pengaturan mereka.';
	@override String get allowIrregularRules => 'Aturan non-reguler (bebas sepenuhnya)';
	@override String get disallowIrregularRules => 'Tanpa aturan non-reguler';
	@override String get showBoardLabels => 'Tampilkan penomoran baris dan kolom pada papan';
	@override String get useAvatarAsStone => 'Ubah batu menjadi avatar pengguna';
}

// Path: misskey.offlineScreen_
class _TranslationsMisskeyOfflineScreenIdId extends TranslationsMisskeyOfflineScreenEnUs {
	_TranslationsMisskeyOfflineScreenIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luring - tidak dapat terhubung ke peladen';
	@override String get header => 'Tidak dapat tersambung ke server';
}

// Path: misskey.urlPreviewSetting_
class _TranslationsMisskeyUrlPreviewSettingIdId extends TranslationsMisskeyUrlPreviewSettingEnUs {
	_TranslationsMisskeyUrlPreviewSettingIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengaturan pratinjau URL';
	@override String get enable => 'Aktifkan pratinjau URL';
	@override String get timeout => 'Waktu timeout pratinjau URL (ms)';
	@override String get timeoutDescription => 'Apabila ini memakan waktu lama dari nilai yang ditentukan untuk mendapatkan pratinjau, pratinjau tidak akan dibuat.';
	@override String get maximumContentLength => 'Content-Length Maksimum (bytes)';
	@override String get maximumContentLengthDescription => 'Apabila Content-Length lebih besar dari nilai ini, pratinjau tidak akan dibuat.';
	@override String get requireContentLength => 'Buat pratinjau hanya ketika Content-Length dapat didapatkan';
	@override String get requireContentLengthDescription => 'Apabila peladen lain tidak memberika Content-Length, pratinjau tidak akan dibuat.';
	@override String get userAgent => 'User-Agent';
	@override String get userAgentDescription => 'Atur User-Agent yang digunakan untuk mengambil pratinjau. Apabila dibiarkan kosong, User-Agent bawaan akan digunakan.';
	@override String get summaryProxy => 'Titik akhir proksi yang membuat pratinjau';
	@override String get summaryProxyDescription => 'Bukan untuk Misskey, namun untuk menghasilkan pratinjau menggunakan Summaly Proxy.';
	@override String get summaryProxyDescription2 => 'Parameter berikut tertautkan dengan proksi sebagai string kueri. Apabila proksi tidak mendukung tersebut, nilai di dalamnya diabaikan.';
}

// Path: misskey.mediaControls_
class _TranslationsMisskeyMediaControlsIdId extends TranslationsMisskeyMediaControlsEnUs {
	_TranslationsMisskeyMediaControlsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get pip => 'Gambar dalam Gambar';
	@override String get playbackRate => 'Kecepatan Pemutaran';
	@override String get loop => 'Ulangi Pemutaran';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsIdId extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectIdId noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectIdId._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchIdId extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Semua';
	@override String get searchScopeLocal => 'Lokal';
	@override String get searchScopeUser => 'Pengguna spesifik';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeIdId extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get none => 'Sedang menyiarkan langsung';
	@override String get manuallySuspended => 'Ditangguhkan manual';
	@override String get goneSuspended => 'Sedang ditangguhkan untuk penghapusan peladen';
	@override String get autoSuspendedForNotResponding => 'Sedang ditangguhkan karena peladen tidak menjawab';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScoreIdId extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScoreIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get score => 'Skor';
	@override String get scoreYen => 'Jumlah uang didapat';
	@override String get highScore => 'Skor tertinggi';
	@override String get maxChain => 'Jumlah skor berantai';
	@override String yen({required Object yen}) => '${yen} Yen';
	@override String estimatedQty({required Object qty}) => '${qty} buah';
	@override String scoreSweets({required Object onigiriQtyWithUnit}) => '${onigiriQtyWithUnit} onigiri';
}

// Path: misskey.bubbleGame_.howToPlay_
class _TranslationsMisskeyBubbleGameHowToPlayIdId extends TranslationsMisskeyBubbleGameHowToPlayEnUs {
	_TranslationsMisskeyBubbleGameHowToPlayIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get section1 => 'Atur posisi dan jatuhkan obyek ke dalam kotak.';
	@override String get section2 => 'Ketika dua obyek menyentuh tipe yang sama satu sama lain, obyek tersebut akan berganti dan kamu mendapatkan poin skor.';
	@override String get section3 => 'Permainan berakhir jika obyek memenuhi kotak. Capai skor tertinggi dengan menggabungkan obyek bersama sambil menghindari obyek tersebut memenuhi kotak permainan!';
}

// Path: misskey.initialTutorial_.landing_
class _TranslationsMisskeyInitialTutorialLandingIdId extends TranslationsMisskeyInitialTutorialLandingEnUs {
	_TranslationsMisskeyInitialTutorialLandingIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selamat datang di Tutorial';
	@override String get description => 'Di sini kamu dapat mempelajari dasar-dasar dari penggunaan Misskey dan fitur-fiturnya.';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteIdId extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa itu Catatan?';
	@override String get description => 'Postingan di Misskey disebut sebagai \'Catatan\'. Catatan ditampilkan secara kronologis pada lini masa dan dimutakhirkan secara real-time.';
	@override String get reply => 'Klik pada tombol ini untuk membalas ke sebuah pesan. Bisa juga untuk membalas ke sebuah balasan dan melanjutkannya seperti percakapan selayaknya utas.';
	@override String get renote => 'Kamu dapat membagikan catatan ke lini masa milikmu. Kamu juga dapat mengutipnya dengan komentarmu.';
	@override String get reaction => 'Kamu dapat menambahkan reaksi ke Catatan. Detil lebih lanjut akan dijelaskan di halaman berikutnya.';
	@override String get menu => 'Kamu dapat melihat detil catatan, menyalin tautan, dan melakukan aksi lainnya.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionIdId extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa itu Reaksi?';
	@override String get description => 'Catatan dapat direaksi dengan berbagai emoji. Reaksi memperbolehkan kamu untuk mengekspresikan nuansa yang tidak dapat disampaikan hanya dengan sebuah "suka".';
	@override String get letsTryReacting => 'Reaksi dapat ditambahkan dengan mengklik tombol \'+\' pada catatan. Coba lakukan mereaksi contoh catatan ini!';
	@override String get reactToContinue => 'Tambahkan reaksi untuk melanjutkan.';
	@override String get reactNotification => 'Kamu akan menerima notifikasi real0time ketika seseorang mereaksi catatan kamu.';
	@override String get reactDone => 'Kamu dapat mengurungkan reaksi dengan menekan tombol \'-\'.';
}

// Path: misskey.initialTutorial_.timeline_
class _TranslationsMisskeyInitialTutorialTimelineIdId extends TranslationsMisskeyInitialTutorialTimelineEnUs {
	_TranslationsMisskeyInitialTutorialTimelineIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konsep Lini Masa';
	@override String get description1 => 'Misskey menyediakan berbagai lini masa sesuai dengan penggunaan (beberapa mungkin tidak tersedia karena bergantung dengan kebijakan peladen).';
	@override String get home => 'Kamu dapat melihat catatan dari akun yang kamu ikuti.';
	@override String get local => 'Kamu dapat melihat catatan dari semua pengguna yang ada pada peladen ini.';
	@override String get social => 'Catatan dari linimasa Beranda dan Lokal akan ditampilkan.';
	@override String get global => 'Kamu dapat melihat catatan dari semua peladen yang terhubung.';
	@override String get description2 => 'Kamu dapat mengganti linimasa di bagian atas layar kamu kapan saja.';
	@override String description3({required Object link}) => 'Sebagai tambahan, terdapat juga linimasa daftar dan linimasa kanal. Untuk detil lebih lanjut, silahkan melihat ke tautan berikut: ${link}.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteIdId extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengaturan posting Catatan';
	@override String get description1 => 'Ketika memposting catatan ke Misskey, terdapat beberapa opsi yang tersedia. Form posting terlihat seperti ini.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityIdId visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityIdId._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwIdId cw_ = _TranslationsMisskeyInitialTutorialPostNoteCwIdId._(_root);
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveIdId extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagaimana menandai lampiran sebagai sensitif?';
	@override String get description => 'Fungsi ini digunakan untuk lampiran yang dibutuhkan oleh panduan peladen atau sesuatu yang seharusnya tidak boleh dibiarkan begitu saja dengan cara menambahkan penanda "sensitif".';
	@override String get tryThisFile => 'Coba tandai gambar yang dilampirkan pada form ini sebagai sensitif!';
	@override late final _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteIdId exampleNote_ = _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteIdId._(_root);
	@override String get method => 'Untuk menandai lampiran sebagai sensitif, klik gambar pada berkas, buka menu, lalu klik "Tandai sebagai sensitif".';
	@override String get sensitiveSucceeded => 'Ketika melampirkan berkas, mohon atur sensitifitas sesuai dengan panduan peladen.';
	@override String get doItToContinue => 'Tandai berkas terlampir sebagai sensitif untuk melanjutkan.';
}

// Path: misskey.initialTutorial_.done_
class _TranslationsMisskeyInitialTutorialDoneIdId extends TranslationsMisskeyInitialTutorialDoneEnUs {
	_TranslationsMisskeyInitialTutorialDoneIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kamu telah menyelesaikan tutorial! 🎉';
	@override String description({required Object link}) => 'Fungsi yang diperkenalkan di sini merupakan sebagian kecil dari fitur yang ada. Untuk pemahaman lebih detil dalam menggunakan Misskey, kamu dapat merujuk ke ${link}.';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesIdId extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1IdId notes1_ = _TranslationsMisskeyAchievementsTypesNotes1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10IdId notes10_ = _TranslationsMisskeyAchievementsTypesNotes10IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100IdId notes100_ = _TranslationsMisskeyAchievementsTypesNotes100IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500IdId notes500_ = _TranslationsMisskeyAchievementsTypesNotes500IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000IdId notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000IdId notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000IdId notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000IdId notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000IdId notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000IdId notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000IdId notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000IdId notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000IdId notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000IdId notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000IdId notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000IdId notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3IdId login3_ = _TranslationsMisskeyAchievementsTypesLogin3IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7IdId login7_ = _TranslationsMisskeyAchievementsTypesLogin7IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15IdId login15_ = _TranslationsMisskeyAchievementsTypesLogin15IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30IdId login30_ = _TranslationsMisskeyAchievementsTypesLogin30IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60IdId login60_ = _TranslationsMisskeyAchievementsTypesLogin60IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100IdId login100_ = _TranslationsMisskeyAchievementsTypesLogin100IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200IdId login200_ = _TranslationsMisskeyAchievementsTypesLogin200IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300IdId login300_ = _TranslationsMisskeyAchievementsTypesLogin300IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400IdId login400_ = _TranslationsMisskeyAchievementsTypesLogin400IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500IdId login500_ = _TranslationsMisskeyAchievementsTypesLogin500IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600IdId login600_ = _TranslationsMisskeyAchievementsTypesLogin600IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700IdId login700_ = _TranslationsMisskeyAchievementsTypesLogin700IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800IdId login800_ = _TranslationsMisskeyAchievementsTypesLogin800IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900IdId login900_ = _TranslationsMisskeyAchievementsTypesLogin900IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000IdId login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1IdId noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1IdId noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1IdId myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledIdId profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatIdId markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1IdId following1_ = _TranslationsMisskeyAchievementsTypesFollowing1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10IdId following10_ = _TranslationsMisskeyAchievementsTypesFollowing10IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50IdId following50_ = _TranslationsMisskeyAchievementsTypesFollowing50IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100IdId following100_ = _TranslationsMisskeyAchievementsTypesFollowing100IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300IdId following300_ = _TranslationsMisskeyAchievementsTypesFollowing300IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1IdId followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10IdId followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50IdId followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100IdId followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300IdId followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500IdId followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000IdId followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30IdId collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minIdId viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyIdId iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureIdId foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minIdId client30min_ = _TranslationsMisskeyAchievementsTypesClient30minIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minIdId client60min_ = _TranslationsMisskeyAchievementsTypesClient60minIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minIdId noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightIdId postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secIdId postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteIdId selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmIdId htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartIdId viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadIdId outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsIdId open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceIdId driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadIdId reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereIdId clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyIdId justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloIdId setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1IdId passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2IdId passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3IdId passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3IdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayIdId loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayIdId loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedIdId cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverIdId brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonIdId smashTestNotificationButton_ = _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesTutorialCompletedIdId tutorialCompleted_ = _TranslationsMisskeyAchievementsTypesTutorialCompletedIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadIdId bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadIdId._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadIdId bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadIdId._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityIdId extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get low => 'Rendah';
	@override String get middle => 'Sedang';
	@override String get high => 'Tinggi';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsIdId extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Dapat melihat lini masa global';
	@override String get ltlAvailable => 'Dapat melihat lini masa lokal';
	@override String get canPublicNote => 'Dapat mengirim catatan publik';
	@override String get mentionMax => 'Jumlah maksimum sebutan dalam sebuah catatan';
	@override String get canInvite => 'Dapat membuat kode undangan instansi';
	@override String get inviteLimit => 'Batas jumlah undangan';
	@override String get inviteLimitCycle => 'Interval Penerbitan Kode Undangan';
	@override String get inviteExpirationTime => 'Interval kedaluwarsa undangan';
	@override String get canManageCustomEmojis => 'Dapat mengelola Emoji kustom';
	@override String get canManageAvatarDecorations => 'Kelola dekorasi avatar';
	@override String get driveCapacity => 'Kapasitas Drive';
	@override String get alwaysMarkNsfw => 'Selalu tandai berkas sebagai NSFW';
	@override String get pinMax => 'Jumlah maksimal catatan yang disematkan';
	@override String get antennaMax => 'Jumlah maksimum antena';
	@override String get wordMuteMax => 'Jumlah maksimum karakter yang diperbolehkan dalam membisukan kata';
	@override String get webhookMax => 'Jumlah maksimum Webhook';
	@override String get clipMax => 'Jumlah maksimum Klip';
	@override String get noteEachClipsMax => 'Jumlah maksimum catatan di dalam Klip';
	@override String get userListMax => 'Jumlah maksimum daftar pengguna';
	@override String get userEachUserListsMax => 'Jumlah maksimum pengguna dalam dsftar pengguna';
	@override String get rateLimitFactor => 'Batas kecepatan';
	@override String get descriptionOfRateLimitFactor => 'Batas kecepatan yang rendah tidak begitu membatasi, batas kecepatan tinggi lebih membatasi. ';
	@override String get canHideAds => 'Dapat menyembunyikan iklan';
	@override String get canSearchNotes => 'Penggunaan pencarian catatan';
	@override String get canUseTranslator => 'Penggunaan penerjemah';
	@override String get avatarDecorationLimit => 'Jumlah maksimum dekorasi avatar yang dapat diterapkan';
	@override String get canImportAntennas => 'Izinkan mengimpor antena';
	@override String get canImportUserLists => 'Izinkan mengimpor senarai';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionIdId extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get roleAssignedTo => 'Ditugaskan ke peran manual';
	@override String get isLocal => 'Pengguna lokal';
	@override String get isRemote => 'Pengguna remote';
	@override String get isCat => 'Pengguna Kucing';
	@override String get isBot => 'Pengguna Bot';
	@override String get isSuspended => 'Pengguna yang ditangguhkan';
	@override String get isLocked => 'Akun privat';
	@override String get isExplorable => 'Pengguna efektif yang akunnya dapat dicari';
	@override String get createdLessThan => 'Telah berlalu kurang dari X sejak pembuatan akun';
	@override String get createdMoreThan => 'Telah berlalu lebih dari X sejak pembuatan akun';
	@override String get followersLessThanOrEq => 'Memiliki pengikut X atau kurang dari tersebut';
	@override String get followersMoreThanOrEq => 'Memiliki pengikut X atau lebih dari tersebut';
	@override String get followingLessThanOrEq => 'Mengikuti X pengguna atau kurang dari itu';
	@override String get followingMoreThanOrEq => 'Mengikuti X pengguna atau lebih dari itu';
	@override String get notesLessThanOrEq => 'Jumlah postingan kurang dari sama dengan';
	@override String get notesMoreThanOrEq => 'Jumlah postingan lebih dari sama dengan';
	@override String get and => 'Kondisi-AND';
	@override String get or => 'Kondisi-OR';
	@override String get not => 'Kondisi-NOT';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowIdId extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mengikuti kamu';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestIdId extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kamu menerima permintaan mengikuti';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysIdId extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Aksen';
	@override String get bg => 'Latar belakang';
	@override String get fg => 'Teks';
	@override String get focus => 'Fokus';
	@override String get indicator => 'Indikator';
	@override String get panel => 'Panel';
	@override String get shadow => 'Bayangan';
	@override String get header => 'Header';
	@override String get navBg => 'Latar belakang bilah samping';
	@override String get navFg => 'Teks bilah samping';
	@override String get navHoverFg => 'Teks bilah samping (Mengambang)';
	@override String get navActive => 'Teks bilah samping (Aktif)';
	@override String get navIndicator => 'Indikator bilah samping';
	@override String get link => 'Tautan';
	@override String get hashtag => 'Tagar';
	@override String get mention => 'Sebut';
	@override String get mentionMe => 'Sebutan (saya)';
	@override String get renote => 'Renote';
	@override String get modalBg => 'Latar belakang modal';
	@override String get divider => 'Pembagi';
	@override String get scrollbarHandle => 'Pegangan bilah gulir';
	@override String get scrollbarHandleHover => 'Pegangan bilah gulir (Mengambang)';
	@override String get dateLabelFg => 'Teks label tanggal';
	@override String get infoBg => 'Latar belakang informasi';
	@override String get infoFg => 'Teks informasi';
	@override String get infoWarnBg => 'Latar belakang peringatan';
	@override String get infoWarnFg => 'Teks peringatan';
	@override String get toastBg => 'Latar belakang notifikasi';
	@override String get toastFg => 'Teks notifikasi';
	@override String get buttonBg => 'Latar belakang tombol';
	@override String get buttonHoverBg => 'Latar belakang tombol (Mengambang)';
	@override String get inputBorder => 'Batas bidang masukan';
	@override String get driveFolderBg => 'Latar belakang folder drive';
	@override String get wallpaperOverlay => 'Lapisan wallpaper';
	@override String get badge => 'Lencana';
	@override String get messageBg => 'Latar belakang obrolan';
	@override String get accentDarken => 'Aksen (Gelap)';
	@override String get accentLighten => 'Aksen (Terang)';
	@override String get fgHighlighted => 'Teks yang disorot';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListIdId extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Pilih daftar';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersIdId extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get a => 'Sedang apa kamu saat ini?';
	@override String get b => 'Apa yang terjadi di sekitarmu?';
	@override String get c => 'Apa yang sedang kamu pikirkan?';
	@override String get d => 'Yang ingin kamu sampaikan?';
	@override String get e => 'Tuliskan yang kamu ingin sampaikan...';
	@override String get f => 'Menunggu kamu untuk menulis....';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksIdId extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get text => 'Teks';
	@override String get textarea => 'Area teks';
	@override String get section => 'Bagian';
	@override String get image => 'Gambar';
	@override String get button => 'Tombol';
	@override String get dynamic => 'Blok Dinamis';
	@override String dynamicDescription({required Object play}) => 'Blok ini telah dihapus. Mohon gunakan ${play} dari sekarang.';
	@override String get note => 'Catatan yang ditanam';
	@override late final _TranslationsMisskeyPagesBlocksNoteIdId note_ = _TranslationsMisskeyPagesBlocksNoteIdId._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesIdId extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get all => 'Semua';
	@override String get note => 'Catatan baru';
	@override String get follow => 'Ikuti';
	@override String get mention => 'Sebut';
	@override String get reply => 'Balasan';
	@override String get renote => 'Renote';
	@override String get quote => 'Kutip';
	@override String get reaction => 'Reaksi';
	@override String get pollEnded => 'Jajak pendapat berakhir';
	@override String get receiveFollowRequest => 'Permintaan mengikuti diterima';
	@override String get followRequestAccepted => 'Permintaan mengikuti disetujui';
	@override String get roleAssigned => 'Peran Diberikan';
	@override String get achievementEarned => 'Pencapaian didapatkan';
	@override String get login => 'Masuk';
	@override String get app => 'Notifikasi dari aplikasi tertaut';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsIdId extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'Ikuti Kembali';
	@override String get reply => 'Balas';
	@override String get renote => 'Renote';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsIdId extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get main => 'Utama';
	@override String get widgets => 'Widget';
	@override String get notifications => 'Notifikasi';
	@override String get tl => 'Lini masa';
	@override String get antenna => 'Antena';
	@override String get list => 'Daftar';
	@override String get channel => 'Kanal';
	@override String get mentions => 'Sebutan';
	@override String get direct => 'Langsung';
	@override String get roleTimeline => 'Lini masa peran';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsIdId extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Ketika mengikuti pengguna';
	@override String get followed => 'Ketika diikuti pengguna';
	@override String get note => 'Ketika memposting catatan';
	@override String get reply => 'Ketika menerima balasan';
	@override String get renote => 'Ketika direnote';
	@override String get reaction => 'Ketika menerima reaksi';
	@override String get mention => 'Ketika sedang disebut';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientIdId extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeIdId recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeIdId._(_root);
	@override String get keywords => 'Kata kunci';
}

// Path: misskey.externalResourceInstaller_.plugin_
class _TranslationsMisskeyExternalResourceInstallerPluginIdId extends TranslationsMisskeyExternalResourceInstallerPluginEnUs {
	_TranslationsMisskeyExternalResourceInstallerPluginIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apakah kamu ingin memasang plugin ini?';
	@override String get metaTitle => 'Informasi plugin';
}

// Path: misskey.externalResourceInstaller_.theme_
class _TranslationsMisskeyExternalResourceInstallerThemeIdId extends TranslationsMisskeyExternalResourceInstallerThemeEnUs {
	_TranslationsMisskeyExternalResourceInstallerThemeIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apakah kamu ingin memasang tema ini?';
	@override String get metaTitle => 'Informasi tema';
}

// Path: misskey.externalResourceInstaller_.meta_
class _TranslationsMisskeyExternalResourceInstallerMetaIdId extends TranslationsMisskeyExternalResourceInstallerMetaEnUs {
	_TranslationsMisskeyExternalResourceInstallerMetaIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get base => 'Skema warna dasar';
}

// Path: misskey.externalResourceInstaller_.vendorInfo_
class _TranslationsMisskeyExternalResourceInstallerVendorInfoIdId extends TranslationsMisskeyExternalResourceInstallerVendorInfoEnUs {
	_TranslationsMisskeyExternalResourceInstallerVendorInfoIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informasi sumber';
	@override String get endpoint => 'Referensi Endpoint';
	@override String get hashVerify => 'Verifikasi hash';
}

// Path: misskey.externalResourceInstaller_.errors_
class _TranslationsMisskeyExternalResourceInstallerErrorsIdId extends TranslationsMisskeyExternalResourceInstallerErrorsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsIdId invalidParams_ = _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedIdId resourceTypeNotSupported_ = _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchIdId failedToFetch_ = _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedIdId hashUnmatched_ = _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedIdId pluginParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedIdId pluginInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedIdId themeParseFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedIdId._(_root);
	@override late final _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedIdId themeInstallFailed_ = _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedIdId._(_root);
}

// Path: misskey.dataSaver_.media_
class _TranslationsMisskeyDataSaverMediaIdId extends TranslationsMisskeyDataSaverMediaEnUs {
	_TranslationsMisskeyDataSaverMediaIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Memuat media';
	@override String get description => 'Mencegah gambar/video dimuat secara otomatis. Menyembunyikan gambar/video dan akan dimuat ketika diketuk.';
}

// Path: misskey.dataSaver_.avatar_
class _TranslationsMisskeyDataSaverAvatarIdId extends TranslationsMisskeyDataSaverAvatarEnUs {
	_TranslationsMisskeyDataSaverAvatarIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gambar avatar';
	@override String get description => 'Hentikan animasi gambar avatar. Gambar animasi dapat berukuran lebih besar dari gambar biasa, berpotensi pada pengurangan lalu lintas data lebih jauh.';
}

// Path: misskey.dataSaver_.urlPreview_
class _TranslationsMisskeyDataSaverUrlPreviewIdId extends TranslationsMisskeyDataSaverUrlPreviewEnUs {
	_TranslationsMisskeyDataSaverUrlPreviewIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gambar kecil URL pratinjau';
	@override String get description => 'Gambar kecil URL pratinjau tidak akan dimuat lagi.';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeIdId extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Penyorotan kode';
	@override String get description => 'Jika notasi penyorotan kode digunakan di MFM, dll. Fungsi tersebut tidak akan dimuat apabila tidak diketuk. Penyorotan sintaks membutuhkan pengunduhan berkas definisi penyorotan untuk setiap bahasa pemrograman. Oleh sebab itu, menonaktifkan pemuatan otomatis dari berkas ini dilakukan untuk mengurangi jumlah komunikasi data.';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectIdId extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tidak dapat ditemukan';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityIdId extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get description => 'Kamu dapat membatasi siapa yang dapat melihat catatan kamu.';
	@override String get public => 'Perlihatkan catatan ke semua pengguna.';
	@override String get home => 'Hanya publik ke lini masa Beranda. Pengguna yang mengunjungi profilmu melalui pengikut dan renote dapat melihatnya.';
	@override String get followers => 'Perlihatkan ke pengikut saja. Hanya pengikut yang dapat melihat postinganmu dan tidak dapat direnote oleh siapapun.';
	@override String get direct => 'Hanya perlihatkan ke pengguna spesifik dan penerima akan diberi tahu. Dapat juga digunakan sebagai alternatif dari pesan langsung.';
	@override String get doNotSendConfidencialOnDirect1 => 'Hati-hati ketika mengirim informasi yang sensitif!';
	@override String get doNotSendConfidencialOnDirect2 => 'Admin dari peladen dapat melihat apa yang kamu tulis. Hati-hati dengan informasi sensitif ketika mengirimkan catatan langsung kepada pengguna pada peladen yang tidak dipercaya.';
	@override String get localOnly => 'Memposting dengan opsi ini tidak akan memfederasi catatan ke peladen lain. Pengguna pada peladen lain tidak akan dapat melihat catatan ini secara langsung, meskipun dengan pengaturan visibilitas yang sudah diatur di atas.';
}

// Path: misskey.initialTutorial_.postNote_.cw_
class _TranslationsMisskeyInitialTutorialPostNoteCwIdId extends TranslationsMisskeyInitialTutorialPostNoteCwEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peringatan Konten (CW)';
	@override String get description => 'Alih-alih isinya, konten yang ditulis dalam kolom \'komentar\' akan ditampilkan. Menekan \'Selebihnya\' akan menampilkan isi konten.';
	@override late final _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteIdId exampleNote_ = _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteIdId._(_root);
	@override String get useCases => 'Fungsi ini digunakan ketika mengikutik panduan peladen untuk catatan yang dibutuhkan atau untuk membatasi diri dari teks sensitif atau spoiler.';
}

// Path: misskey.initialTutorial_.howToMakeAttachmentsSensitive_.exampleNote_
class _TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteIdId extends TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialHowToMakeAttachmentsSensitiveExampleNoteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get note => 'Ups, kesalahan banget buka penutup wadah natto...';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1IdId extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cus, baru gabung Misskey nih!';
	@override String get description => 'Catat catatan pertama kamu';
	@override String get flavor => 'Selamat bersenang-senang dengan Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10IdId extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beberapa catatan';
	@override String get description => 'Catat 10 catatan';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100IdId extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Banyak catatan';
	@override String get description => 'Catat 100 catatan';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500IdId extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tertumpuk catatan';
	@override String get description => 'Catat 500 catatan';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000IdId extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gunung catatan';
	@override String get description => 'Catat 1000 catatan';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000IdId extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luapan catatan';
	@override String get description => 'Catat 5000 catatan';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000IdId extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Catatan super';
	@override String get description => 'Catat 10 ribu catatan';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000IdId extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Butuh... banyak... catatan...';
	@override String get description => 'Catat 20 ribu catatan';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000IdId extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Catat, catat, catat !';
	@override String get description => 'Catat 30 ribu catatan';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000IdId extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pabrik catatan';
	@override String get description => 'Catat 40 ribu catatan';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000IdId extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Planet catatan';
	@override String get description => 'Catat 50 ribu catatan';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000IdId extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kuasar catatan';
	@override String get description => 'Catat 60 ribu catatan';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000IdId extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lubang hitam catatan';
	@override String get description => 'Catat 70 ribu catatan';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000IdId extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Galaksi catatan';
	@override String get description => 'Catat 80 ribu catatan';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000IdId extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Semesta catatan';
	@override String get description => 'Catat 90 ribu catatan';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000IdId extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Catat 100 ribu catatan';
	@override String get flavor => 'Banyak bacot ya kamu.';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3IdId extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemula I';
	@override String get description => 'Login selama 3 hari';
	@override String get flavor => 'Mulai hari ini, panggil gue Misskist';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7IdId extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemula II';
	@override String get description => 'Login selama 7 hari';
	@override String get flavor => 'Sudah mulai terbiasa?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15IdId extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemula III';
	@override String get description => 'Login selama 15 hari';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30IdId extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist I';
	@override String get description => 'Login selama 30 hari';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60IdId extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist II';
	@override String get description => 'Login selama 60 hari';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100IdId extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Misskist III';
	@override String get description => 'Login selama 100 hari';
	@override String get flavor => 'Violent Misskist';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200IdId extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reguler I';
	@override String get description => 'Login selama 200 hari';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300IdId extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reguler II';
	@override String get description => 'Login selama 300 hari';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400IdId extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reguler III';
	@override String get description => 'Login selama 400 hari';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500IdId extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran I';
	@override String get description => 'Login selama 500 hari';
	@override String get flavor => 'Kawanku, aku suka catatan.';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600IdId extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran II';
	@override String get description => 'Login selama 600 hari';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700IdId extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veteran III';
	@override String get description => 'Login selama 700 hari';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800IdId extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sepuh Catatan I';
	@override String get description => 'Login selama 800 hari';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900IdId extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sepuh Catatan II';
	@override String get description => 'Login selama 900 hari';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000IdId extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sepuh Catatan III';
	@override String get description => 'Login selama 1000 hari';
	@override String get flavor => 'Terima kasih telah menggunakan Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1IdId extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Harus... Ngeklip...';
	@override String get description => 'Klip catatan pertamamu';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1IdId extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengamat Bintang';
	@override String get description => 'Favoritkan catatan pertamamu';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1IdId extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pencari Bintang';
	@override String get description => 'Minta orang lain memfavoritkan salah satu catatanmu';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledIdId extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Siap Sedia';
	@override String get description => 'Atur profil kamu';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatIdId extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aku Seekor Kucing';
	@override String get description => 'Tandai akunmu sebagai kucing';
	@override String get flavor => 'Aku beri kamu nama nanti';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1IdId extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikuti pengguna lain pertamamu';
	@override String get description => 'Ikuti pengguna';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10IdId extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terusin... terusin...';
	@override String get description => 'Ikuti 10 pengguna lain';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50IdId extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Banyak teman';
	@override String get description => 'Ikuti 50 pengguna lain';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100IdId extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => '100 Teman';
	@override String get description => 'Ikuti 100 pengguna lain';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300IdId extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kelebihan teman';
	@override String get description => 'Mengikuti 300 pengguna lain';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1IdId extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengikut pertama';
	@override String get description => 'Dapatkan 1 pengikut';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10IdId extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ikuti aku!';
	@override String get description => 'Dapatkan 10 pengikut';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50IdId extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rame-rame';
	@override String get description => 'Dapatkan 50 pengikut';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100IdId extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Terkenal';
	@override String get description => 'Dapatkan 100 pengikut';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300IdId extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mohon antri satu baris';
	@override String get description => 'Dapatkan 300 pengikut';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500IdId extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stasiun Informasi';
	@override String get description => 'Dapatkan 500 pengikut';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000IdId extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Influencer';
	@override String get description => 'Dapatkan 1000 pengikut';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30IdId extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kolektor pencapaian';
	@override String get description => 'Dapatkan 30 pencapaian';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minIdId extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suka Pencapaian';
	@override String get description => 'Lugat daftar pencapaianmu setidaknya 3 menit';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyIdId extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => 'Catat "I ❤ #Misskey"';
	@override String get flavor => 'Tim pengembang misskey sangat mengapresiasi dukungan kamu!';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureIdId extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berburu Harta Karun';
	@override String get description => 'Kamu telah menemukan harta karun tersembunyi';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minIdId extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Istirahat pendek';
	@override String get description => 'Habiskan waktu 30 menit di Misskey';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minIdId extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tidak ada "Miss" dalam Misskey';
	@override String get description => 'Biarkan Misskey tetap terbuka setidaknya selama 60 menit';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minIdId extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eh, salah coy!';
	@override String get description => 'Hapus catatan kurang dari semenit kamu catat';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightIdId extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nokturnal';
	@override String get description => 'Catat catatan di tengah malam hari';
	@override String get flavor => 'Udah waktunya boboq.';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secIdId extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jam ngomong';
	@override String get description => 'Catat catatan di jam 00.00';
	@override String get flavor => 'Tik Tok Tik Toeeeng';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteIdId extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rujukan mandiri';
	@override String get description => 'Kutip catatanmu sendiri';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmIdId extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lini masa mengalir';
	@override String get description => 'Memiliki lini masa beranda dengan kecepatan melebihi 20 cpm (catatan per menit)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartIdId extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analis';
	@override String get description => 'Lihat bagan instansimu';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadIdId extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Halo, dunia!';
	@override String get description => 'Munculkan "hello world" di Scratchpad';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsIdId extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jendela ganda';
	@override String get description => 'Memiliki setidaknya 3 jendela yang terbuka secara bersamaan';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceIdId extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Referensi Siklus';
	@override String get description => 'Mencoba membuat folder bersarang rekursif di Drive';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadIdId extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beneran udah dibaca?';
	@override String get description => 'Mereaksi catatan dengan 100 karakter panjangnya dalam 3 detik setelah dicatat';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereIdId extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Klik di sini';
	@override String get description => 'Kamu telah mengeklik disini';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyIdId extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lagi Beruntung';
	@override String get description => 'Mendapatkan kesempatan dengan kemungkinan 0.01% setiap 10 detik';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloIdId extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'God Complex';
	@override String get description => 'Atur namamu jadi "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1IdId extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perayaan Satu Tahun';
	@override String get description => 'Satu tahun telah lewat sejak akunmu dibuat';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2IdId extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perayaan Dua Tahun';
	@override String get description => 'Dua tahun telah lewat sejak akunmu dibuat';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3IdId extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3IdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perayaan Tiga Tahun';
	@override String get description => 'Tiga tahun telah lewat sejak akunmu dibuat';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayIdId extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selamat Ulang Tahun';
	@override String get description => 'Login di hari ulang tahunmu';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayIdId extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selamat Tahun Baru!';
	@override String get description => 'Login di hari pertama tahun baru';
	@override String get flavor => 'Untuk tahun baru yang berkah bagi instansi ini';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedIdId extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permainan dimana kamu mengeklik kue';
	@override String get description => 'Mengeklik kue';
	@override String get flavor => 'Tunggu, apakah kamu sedang berada di website yang benar?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverIdId extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Posting tautan mengenai Brain Diver';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.achievements_.types_.smashTestNotificationButton_
class _TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonIdId extends TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonEnUs {
	_TranslationsMisskeyAchievementsTypesSmashTestNotificationButtonIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tes overflow';
	@override String get description => 'Picu tes notifikasi secara berulang dalam waktu yang sangat pendek';
}

// Path: misskey.achievements_.types_.tutorialCompleted_
class _TranslationsMisskeyAchievementsTypesTutorialCompletedIdId extends TranslationsMisskeyAchievementsTypesTutorialCompletedEnUs {
	_TranslationsMisskeyAchievementsTypesTutorialCompletedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ijazah Sekolah Dasar Misskey';
	@override String get description => 'Tutorial selesai';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadIdId extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Obyek paling terbesar di permainan gelembung';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadIdId extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ganda 🤯';
	@override String get description => 'Dua dari obyek paling terbesar pada permainan gelembung di waktu yang sama';
	@override String get flavor => 'Kamu dapat mengisi kotak makan siang seperti ini 🤯 🤯.';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteIdId extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID Catatan';
	@override String get idDescription => 'Kamu dapat menyetel ini dengan menempelkan tautan URL Catatan.';
	@override String get detailed => 'Tampilan rincian';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeIdId extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Surel';
	@override String get webhook => 'Webhook';
}

// Path: misskey.externalResourceInstaller_.errors_.invalidParams_
class _TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsIdId extends TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsInvalidParamsIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parameter tidak valid';
	@override String get description => 'Tidak cukup informasi untuk memuat data dari situs eksternal. Mohon konfirmasi kembali URL yang dimasukkan.';
}

// Path: misskey.externalResourceInstaller_.errors_.resourceTypeNotSupported_
class _TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedIdId extends TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsResourceTypeNotSupportedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sumber daya eksternal ini tidak didukung';
	@override String get description => 'Tipe sumber daya eksternal ini tidak didukung. Mohon kontak administrator dari situs tersebut.';
}

// Path: misskey.externalResourceInstaller_.errors_.failedToFetch_
class _TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchIdId extends TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsFailedToFetchIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gagal memuat data';
	@override String get fetchErrorDescription => 'Kesalahan terjadi ketika menghubungkan dengan situs eksternal. Jika percobaan kembali tidak dapat memperbaiki masalah ini, mohon hubungi administrator dari situs tersebut.';
	@override String get parseErrorDescription => 'Kesalahan terjadi dalam memproses data yang dimuat dari situs eksternal. Mohon hubungi administrator dari situs tersebut.';
}

// Path: misskey.externalResourceInstaller_.errors_.hashUnmatched_
class _TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedIdId extends TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsHashUnmatchedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verifikasi data gagal';
	@override String get description => 'Kesalahan terjadi dalam memverifikasi integritas data yang diambil. Sebagai pencegahan keamanan, pemasangan tidak dapat dilanjutkan. Mohon hubungi administrator dari situs tersebut.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedIdId extends TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginParseFailedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kesalahan AiScript';
	@override String get description => 'Data yang diminta telah diambil dengan sukses, namun kesalahan terjadi ketika AiScript melakukan parsing. Mohon hubungi pembuat plugin. Detil kesalahan dapat dilihat pada konsol Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.pluginInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedIdId extends TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsPluginInstallFailedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemasangan plugin gagal';
	@override String get description => 'Kesalahan terjadi ketika pemasangan plugin. Mohon coba lagi. Detil kesalahan dapat dilihat pada konsol Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeParseFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedIdId extends TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeParseFailedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parsing tema gagal';
	@override String get description => 'Data yang diminta telah diambil dengan sukses, namun kesalahan terjadi ketika tema melakukan parsing. Mohon hubungi pembuat tema. Detil kesalahan dapat dilihat pada konsol Javascript.';
}

// Path: misskey.externalResourceInstaller_.errors_.themeInstallFailed_
class _TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedIdId extends TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedEnUs {
	_TranslationsMisskeyExternalResourceInstallerErrorsThemeInstallFailedIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemasangan tema gagal';
	@override String get description => 'Kesalahan terjadi ketika pemasangan tema. Mohon coba lagi. Detil kesalahan dapat dilihat pada konsol Javascript.';
}

// Path: misskey.initialTutorial_.postNote_.cw_.exampleNote_
class _TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteIdId extends TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteCwExampleNoteIdId._(TranslationsIdId root) : this._root = root, super.internal(root);

	final TranslationsIdId _root; // ignore: unused_field

	// Translations
	@override String get cw => 'Peringatan: Bikin Lapar!';
	@override String get note => 'Baru aja makan donat berlapis coklat 🍩😋';
}
