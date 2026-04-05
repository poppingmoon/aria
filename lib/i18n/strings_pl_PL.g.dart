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
class TranslationsPlPl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPlPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.plPl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <pl-PL>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsPlPl _root = this; // ignore: unused_field

	@override 
	TranslationsPlPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPlPl(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaPlPl aria = _TranslationsAriaPlPl._(_root);
	@override late final _TranslationsMisskeyPlPl misskey = _TranslationsMisskeyPlPl._(_root);
}

// Path: aria
class _TranslationsAriaPlPl extends TranslationsAriaEnUs {
	_TranslationsAriaPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get aboutAria => 'O Arii';
	@override TextSpan acceptFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Czy na pewno chcesz zaakceptować prośbę o obserwowanie od '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get accessToken => 'Token dostępu';
	@override String get accessTokenUpdated => 'Pomyślnie zaktualizowano token dostępu';
	@override String get accountAdded => 'Pomyślnie dodano konto';
	@override TextSpan acknowledgements({required InlineSpan miria, required InlineSpan misskey}) => TextSpan(children: [
		const TextSpan(text: 'Aria jest rozwidleniem projektu '),
		miria,
		const TextSpan(text: '.\nLokalizacja Arii opiera się na plikach lokalizacyjnych '),
		misskey,
		const TextSpan(text: '.\nChcielibyśmy wyrazić naszą wdzięczność wszystkim współtwórcom tych projektów.'),
	]);
	@override String get addTab => 'Dodaj kartę';
	@override String get alwaysExpandCw => 'Zawsze wyświetlaj ostrzeżenie dotyczące treści';
	@override String get alwaysExpandLongNote => 'Zawsze rozwijaj długą notatkę';
	@override String get alwaysExpandMediaInSubNote => 'Zawsze rozwijaj multimedia w pod mnotatce';
	@override String get alwaysShowAllReactions => 'Always show all reactions';
	@override String get alwaysShowTabHeader => 'Zawsze wyświetlaj informacje o zakładkach';
	@override String get authenticate => 'Uwierzytelnianie';
	@override String get authenticated => 'Uwierzytelniony';
	@override String get avatarSize => 'Rozmiar awatara';
	@override String get background => 'Tło';
	@override String get buttonTypes => 'Typy przycisków';
	@override String get cache => 'Pamięć podręczna';
	@override String get calculating => 'Obliczenie...';
	@override TextSpan cancelFollowRequestConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Czy na pewno chcesz anulować prośbę o obserwowanie użytkownika '),
		name,
		const TextSpan(text: '?'),
	]);
	@override String get clientInfo => 'Informacje o kliencie';
	@override String get confirmBeforeFollow => 'Potwierdź przed kontynuacją';
	@override String get confirmBeforePost => 'Potwierdź przed wysłaniem';
	@override String get confirmBeforeReact => 'Potwierdź przed reakcją';
	@override String get confirmBeforeRenote => 'Potwierdź przed ponownym wprowadzeniem';
	@override String get copied => 'Skopiowano do schowka';
	@override String get copyName => 'Skopiuj nazwę';
	@override String get crop => 'Przyciąć';
	@override String get custom => 'Niestandardowe';
	@override String get defaultReaction => 'Domyślna reakcja';
	@override String deleteAccountTabsConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Czy chcesz usunąć ${n} zakładkę związaną z tym kontem?',
		other: 'Czy chcesz usunąć ${n} kart powiązanych z tym kontem?',
	);
	@override String deleteFilesConfirm({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Czy na pewno chcesz usunąć ${n} plik?',
		other: 'Czy na pewno chcesz usunąć ${n} plików?',
	);
	@override String get deleteTabConfirm => 'Czy na pewno chcesz usunąć tę kartę?';
	@override String get device => 'Urządzenie';
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Czy na pewno chcesz zaobserwować '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria jest tłumaczone na wiele języków przez wolontariuszy. Możesz pomóc na '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' osób jest online'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Udostępniono przez '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Czy na pewno chcesz przestać obserwować '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' powiedział(-a) coś'),
	]);
}

// Path: misskey
class _TranslationsMisskeyPlPl extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Polski';
	@override String get headlineMisskey => 'Sieć połączona wpisami';
	@override String get introMisskey => 'Misskey jest serwisem mikroblogowym typu open source.\nMisskey to opensource\'owy serwis mikroblogowy, w którym możesz tworzyć "notatki", aby dzielić się tym, co się dzieje i opowiadać wszystkim o sobie.\nMożesz również użyć funkcji "Reakcje", aby szybko dodać własne reakcje do notatek innych użytkowników👍.\nOdkrywaj nowy świat🚀!';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} jest jedną z usług działającą na otwartoźródłowej platformie <b>Misskey</b> (określana jako "instancja Misskey").';
	@override String monthAndDay({required Object month, required Object day}) => '${month}-${day}';
	@override String get search => 'Szukaj';
	@override String get notifications => 'Powiadomienia';
	@override String get username => 'Nazwa użytkownika';
	@override String get password => 'Hasło';
	@override String get forgotPassword => 'Nie pamiętam hasła';
	@override String get fetchingAsApObject => 'Pobieranie z Fediwersum…';
	@override String get ok => 'OK';
	@override String get gotIt => 'Rozumiem!';
	@override String get cancel => 'Anuluj';
	@override String get noThankYou => 'Nie teraz';
	@override String get enterUsername => 'Wprowadź nazwę użytkownika';
	@override String renotedBy({required Object user}) => 'Udostępniono przez ${user}';
	@override String get noNotes => 'Brak wpisów';
	@override String get noNotifications => 'Brak powiadomień';
	@override String get instance => 'Instancja';
	@override String get settings => 'Ustawienia';
	@override String get notificationSettings => 'Powiadomienia';
	@override String get basicSettings => 'Podstawowe ustawienia';
	@override String get otherSettings => 'Pozostałe ustawienia';
	@override String get openInWindow => 'Otwórz w oknie';
	@override String get profile => 'Profil';
	@override String get timeline => 'Oś czasu';
	@override String get noAccountDescription => 'Ten użytkownik nie napisał jeszcze swojej biografii.';
	@override String get login => 'Zaloguj się';
	@override String get loggingIn => 'Logowanie';
	@override String get logout => 'Wyloguj się';
	@override String get signup => 'Zarejestruj się';
	@override String get uploading => 'Wysyłanie';
	@override String get save => 'Zapisz';
	@override String get users => 'Użytkownicy';
	@override String get addUser => 'Dodaj użytkownika';
	@override String get favorite => 'Dodaj do ulubionych';
	@override String get favorites => 'Ulubione';
	@override String get unfavorite => 'Usuń z ulubionych';
	@override String get favorited => 'Dodano do ulubionych.';
	@override String get alreadyFavorited => 'Już jest w ulubionych.';
	@override String get cantFavorite => 'Nie można dodać do ulubionych.';
	@override String get pin => 'Przypnij do profilu';
	@override String get unpin => 'Odepnij z profilu';
	@override String get copyContent => 'Skopiuj zawartość';
	@override String get copyLink => 'Skopiuj odnośnik';
	@override String get copyLinkRenote => 'Skopiuj link renote\'a';
	@override String get delete => 'Usuń';
	@override String get deleteAndEdit => 'Usuń i edytuj';
	@override String get deleteAndEditConfirm => 'Czy na pewno chcesz usunąć ten wpis i zedytować go? Utracisz wszystkie reakcje, udostępnienia i odpowiedzi do tego wpisu.';
	@override String get addToList => 'Dodaj do listy';
	@override String get addToAntenna => 'Dodaj do anteny';
	@override String get sendMessage => 'Wyślij wiadomość';
	@override String get copyRSS => 'Kopiuj RSS';
	@override String get copyUsername => 'Kopiuj nazwę użytkownika';
	@override String get copyUserId => 'Kopiuj ID użytkownika';
	@override String get copyNoteId => 'Kopiuj ID notatki';
	@override String get copyFileId => 'Kopiuj ID pliku';
	@override String get copyFolderId => 'Kopiuj ID folderu';
	@override String get copyProfileUrl => 'Kopiuj URL profilu';
	@override String get searchUser => 'Wyszukiwanie użytkowników';
	@override String get reply => 'Odpowiedz';
	@override String get loadMore => 'Załaduj więcej';
	@override String get showMore => 'Załaduj więcej';
	@override String get showLess => 'Zamknij';
	@override String get youGotNewFollower => 'Zaobserwował(a) Cię';
	@override String get receiveFollowRequest => 'Otrzymano prośbę o możliwość obserwacji';
	@override String get followRequestAccepted => 'Zaakceptowano prośbę o możliwość obserwacji';
	@override String get mention => 'Wspomnij';
	@override String get mentions => 'Wspomnienia';
	@override String get directNotes => 'Bezpośrednie wpisy';
	@override String get importAndExport => 'Import i eksport';
	@override String get import => 'Importuj';
	@override String get export => 'Eksportuj';
	@override String get files => 'Pliki';
	@override String get download => 'Pobierz';
	@override String driveFileDeleteConfirm({required Object name}) => 'Czy chcesz usunąć plik "${name}"? Zniknie również notatka, do której dołączony jest ten plik.';
	@override String unfollowConfirm({required Object name}) => 'Czy na pewno chcesz przestać obserwować ${name}?';
	@override String get exportRequested => 'Zażądałeś eksportu. Może to zająć trochę czasu. Po zakończeniu eksportu zostanie on dodany do Twoich "dysków".';
	@override String get importRequested => 'Zażądano importu. Może to zająć chwilę.';
	@override String get lists => 'Listy';
	@override String get noLists => 'Nie masz żadnych list';
	@override String get note => 'Utwórz wpis';
	@override String get notes => 'Wpisy';
	@override String get following => 'Obserwowani';
	@override String get followers => 'Obserwujący';
	@override String get followsYou => 'Obserwuje Cię';
	@override String get createList => 'Utwórz listę';
	@override String get manageLists => 'Zarządzaj listami';
	@override String get error => 'Błąd';
	@override String get somethingHappened => 'Coś poszło nie tak';
	@override String get retry => 'Spróbuj ponownie';
	@override String get pageLoadError => 'Nie udało się załadować strony';
	@override String get pageLoadErrorDescription => 'Zwykle jest to spowodowane problemem z siecią lub cache przeglądarki. Spróbuj wyczyścić cache i sprawdź jeszcze raz za chwilę.';
	@override String get serverIsDead => 'Serwer nie odpowiada. Zaczekaj chwilę i spróbuj ponownie.';
	@override String get youShouldUpgradeClient => 'Odśwież stronę, by zaaktualizować klienta.';
	@override String get enterListName => 'Nazwa listy';
	@override String get privacy => 'Prywatność';
	@override String get makeFollowManuallyApprove => 'Prośby o możliwość obserwacji wymagają zatwierdzenia';
	@override String get defaultNoteVisibility => 'Domyślna widoczność';
	@override String get follow => 'Obserwuj';
	@override String get followRequest => 'Poproś o możliwość obserwacji';
	@override String get followRequests => 'Prośby o możliwość obserwacji';
	@override String get unfollow => 'Przestań obserwować';
	@override String get followRequestPending => 'Oczekująca prośba o możliwość obserwacji';
	@override String get enterEmoji => 'Wprowadź emoji';
	@override String get renote => 'Udostępnij';
	@override String get unrenote => 'Cofnij udostępnienie';
	@override String get renoted => 'Udostępniono.';
	@override String get cantRenote => 'Ten wpis nie może zostać udostępniony.';
	@override String get cantReRenote => 'Udostępnienie nie może zostać udostępnione.';
	@override String get quote => 'Cytuj';
	@override String get inChannelRenote => 'Renote tylko na kanale';
	@override String get inChannelQuote => 'Cytat tylko na kanale';
	@override String get pinnedNote => 'Przypięty wpis';
	@override String get pinned => 'Przypnij do profilu';
	@override String get you => 'Ty';
	@override String get clickToShow => 'Kliknij, aby wyświetlić';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Dodaj';
	@override String get reaction => 'Reakcja';
	@override String get reactions => 'Reakcja';
	@override String get emojiPicker => 'Selektor Emoji';
	@override String get pinnedEmojisForReactionSettingDescription => 'Ustaw emotikony które powinny być przypięte i od razu wyświetlone podczas reagowania.';
	@override String get pinnedEmojisSettingDescription => 'Ustaw emotikony które powinny być przypięte i wyświetlone podczas przeglądania selektora Emoji';
	@override String get emojiPickerDisplay => 'Wyświetlanie selektora Emoji';
	@override String get overwriteFromPinnedEmojisForReaction => 'Zastąp z ustawień reakcji';
	@override String get overwriteFromPinnedEmojis => 'Zastąp z ogólnych ustawień';
	@override String get reactionSettingDescription2 => 'Przeciągnij aby zmienić kolejność, naciśnij aby usunąć, naciśnij „+” aby dodać';
	@override String get rememberNoteVisibility => 'Zapamiętuj ustawienia widoczności wpisu';
	@override String get attachCancel => 'Usuń załącznik';
	@override String get deleteFile => 'Usuń plik';
	@override String get markAsSensitive => 'Oznacz jako NSFW';
	@override String get unmarkAsSensitive => 'Cofnij NSFW';
	@override String get enterFileName => 'Wprowadź nazwę pliku';
	@override String get mute => 'Wycisz';
	@override String get unmute => 'Cofnij wyciszenie';
	@override String get renoteMute => 'Wycisz renote\'y';
	@override String get renoteUnmute => 'Wyłącz wyciszenie renote\'ów';
	@override String get block => 'Zablokuj';
	@override String get unblock => 'Odblokuj';
	@override String get suspend => 'Zawieś';
	@override String get unsuspend => 'Cofnij zawieszenie';
	@override String get blockConfirm => 'Czy na pewno chcesz zablokować to konto?';
	@override String get unblockConfirm => 'Czy na pewno chcesz odblokować to konto?';
	@override String get suspendConfirm => 'Czy na pewno chcesz zawiesić to konto?';
	@override String get unsuspendConfirm => 'Czy na pewno chcesz cofnąć zawieszenie tego konta?';
	@override String get selectList => 'Wybierz listę';
	@override String get editList => 'Edytuj listę';
	@override String get selectChannel => 'Wybierz kanał';
	@override String get selectAntenna => 'Wybierz Antennę';
	@override String get editAntenna => 'Edytuj antenę';
	@override String get selectWidget => 'Wybierz widżet';
	@override String get editWidgets => 'Edytuj widżety';
	@override String get editWidgetsExit => 'Gotowe';
	@override String get customEmojis => 'Niestandardowe emoji';
	@override String get emoji => 'Emoji';
	@override String get emojis => 'Emoji';
	@override String get emojiName => 'Nazwa emoji';
	@override String get emojiUrl => 'Adres URL emoji';
	@override String get addEmoji => 'Dodaj emoji';
	@override String get settingGuide => 'Proponowana konfiguracja';
	@override String get cacheRemoteFiles => 'Przechowuj zdalne pliki w pamięci podręcznej';
	@override String get cacheRemoteFilesDescription => 'Gdy ta opcja jest wyłączona, zdalne pliki są ładowane bezpośrednio ze zdalnych instancji. Wyłączenie the opcji zmniejszy użycie powierzchni dyskowej, ale zwiększy transfer, ponieważ miniaturki nie będą generowane.';
	@override String get youCanCleanRemoteFilesCache => 'Możesz wyczyścić cache poprzez kliknięcie przycisku 🗑️ w widoku menedżera plików.';
	@override String get cacheRemoteSensitiveFiles => 'Przechowuj wrażliwe zdalne pliki w pamięci podręcznej';
	@override String get cacheRemoteSensitiveFilesDescription => 'Gdy ta opcja jest wyłączona, wrażliwe pliki zdalne są wczytywane bezpośrednio ze zdalnej instancji bez cacheowania.';
	@override String get flagAsBot => 'To konto jest botem';
	@override String get flagAsBotDescription => 'Jeżeli ten kanał jest kontrolowany przez jakiś program, ustaw tę opcję. Jeżeli włączona, będzie działać jako flaga informująca innych programistów, aby zapobiegać nieskończonej interakcji z różnymi botami i dostosowywać wewnętrzne systemy Misskey, traktując konto jako bota.';
	@override String get flagAsCat => 'To konto jest kotem';
	@override String get flagAsCatDescription => 'Przełącz tę opcję, aby konto było oznaczone jako kot.';
	@override String get flagShowTimelineReplies => 'Pokazuj odpowiedzi na osi czasu';
	@override String get flagShowTimelineRepliesDescription => 'Gdy włączone, pokazuje odpowiedzi użytkowników na notatki innych użytkowników w osi czasu.';
	@override String get autoAcceptFollowed => 'Automatycznie przyjmuj prośby o możliwość obserwacji od użytkowników, których obserwujesz';
	@override String get addAccount => 'Dodaj konto';
	@override String get reloadAccountsList => 'Odśwież listę kont';
	@override String get loginFailed => 'Nie udało się zalogować';
	@override String get showOnRemote => 'Zobacz na zdalnej instancji';
	@override String get general => 'Ogólne';
	@override String get wallpaper => 'Tapeta';
	@override String get setWallpaper => 'Ustaw tapetę';
	@override String get removeWallpaper => 'Usuń tapetę';
	@override String searchWith({required Object q}) => 'Szukaj: ${q}';
	@override String get youHaveNoLists => 'Nie masz żadnej listy';
	@override String followConfirm({required Object name}) => 'Czy na pewno chcesz zaobserwować ${name}?';
	@override String get proxyAccount => 'Konto proxy';
	@override String get proxyAccountDescription => 'Opis konta pełnomocniczego';
	@override String get host => 'Host';
	@override String get selectUser => 'Wybierz użytkownika';
	@override String get recipient => 'Odbiorca';
	@override String get annotation => 'Komentarze';
	@override String get federation => 'Federacja';
	@override String get instances => 'Instancja';
	@override String get registeredAt => 'Zarejestrowano';
	@override String get latestRequestReceivedAt => 'Ostatnie żądanie otrzymano o';
	@override String get latestStatus => 'Najnowszy status';
	@override String get storageUsage => 'Użycie pamięci';
	@override String get charts => 'Wykresy';
	@override String get perHour => 'co godzinę';
	@override String get perDay => 'co dzień';
	@override String get stopActivityDelivery => 'Przestań przesyłać aktywności';
	@override String get blockThisInstance => 'Zablokuj tę instancję';
	@override String get silenceThisInstance => 'Wycisz tę instancję';
	@override String get operations => 'Działania';
	@override String get software => 'Oprogramowanie';
	@override String get version => 'Wersja';
	@override String get metadata => 'Metadane';
	@override String withNFiles({required Object n}) => '${n} plik(i)';
	@override String get monitor => 'Monitor';
	@override String get jobQueue => 'Kolejka zadań';
	@override String get cpuAndMemory => 'CPU i pamięć';
	@override String get network => 'Sieć';
	@override String get disk => 'Dysk';
	@override String get instanceInfo => 'Informacje o instancji';
	@override String get statistics => 'Statystyki';
	@override String get clearQueue => 'Wyczyść kolejkę';
	@override String get clearQueueConfirmTitle => 'Czy na pewno chcesz wyczyścić kolejkę?';
	@override String get clearQueueConfirmText => 'Wszystkie niewysłane wpisy z kolejki nie zostaną wysłane. Zwykle to nie jest konieczne.';
	@override String get clearCachedFiles => 'Wyczyść pamięć podręczną';
	@override String get clearCachedFilesConfirm => 'Czy na pewno chcesz usunąć wszystkie zdalne pliki z pamięci podręcznej?';
	@override String get blockedInstances => 'Zablokowane instancje';
	@override String get blockedInstancesDescription => 'Wypisz nazwy hostów instancji, które powinny zostać zablokowane. Wypisane instancje nie będą mogły dłużej komunikować się z tą instancją.';
	@override String get silencedInstances => 'Wyciszone instancje';
	@override String get silencedInstancesDescription => 'Wypisz nazwy hostów instancji, które chcesz wyciszyć. Wszystkie konta wymienionych instancji będą traktowane jako wyciszone, będą mogły jedynie wysyłać prośby o obserwację i nie będą mogły wspominać kont lokalnych, jeśli nie będą obserwowane. Nie będzie to miało wpływu na zablokowane instancje.';
	@override String get muteAndBlock => 'Wycisz / Zablokuj';
	@override String get mutedUsers => 'Wyciszeni użytkownicy';
	@override String get blockedUsers => 'Zablokowani użytkownicy';
	@override String get noUsers => 'Brak użytkowników';
	@override String get editProfile => 'Edytuj profil';
	@override String get noteDeleteConfirm => 'Czy na pewno chcesz usunąć ten wpis?';
	@override String get pinLimitExceeded => 'Nie możesz przypiąć więcej wpisów.';
	@override String get done => 'Gotowe';
	@override String get processing => 'Przetwarzanie';
	@override String get preview => 'Podgląd';
	@override String get default_ => 'Domyślne';
	@override String defaultValueIs({required Object value}) => 'Domyślne: ${value}';
	@override String get noCustomEmojis => 'Brak emoji';
	@override String get noJobs => 'Brak zadań';
	@override String get federating => 'Federowanie';
	@override String get blocked => 'Zablokowano';
	@override String get suspended => 'Zawieszono';
	@override String get all => 'Wszystkie';
	@override String get subscribing => 'Subskrybowanie';
	@override String get publishing => 'Publikowanie';
	@override String get notResponding => 'Nie odpowiada';
	@override String get instanceFollowing => 'Obserwowani na instancji';
	@override String get instanceFollowers => 'Obserwujący na instancji';
	@override String get instanceUsers => 'Użytkownicy tej instancji';
	@override String get changePassword => 'Zmień hasło';
	@override String get security => 'Bezpieczeństwo';
	@override String get retypedNotMatch => 'Wejście nie zgadza się.';
	@override String get currentPassword => 'Obecne hasło';
	@override String get newPassword => 'Nowe hasło';
	@override String get newPasswordRetype => 'Powtórz nowe hasło';
	@override String get attachFile => 'Załącz pliki';
	@override String get more => 'Więcej!';
	@override String get featured => 'Wyróżnione';
	@override String get usernameOrUserId => 'Nazwa lub id użytkownika';
	@override String get noSuchUser => 'Nie znaleziono użytkownika';
	@override String get lookup => 'Zapytania';
	@override String get announcements => 'Ogłoszenia';
	@override String get imageUrl => 'Adres URL obrazka';
	@override String get remove => 'Usuń';
	@override String get removed => 'Pomyślnie usunięto';
	@override String removeAreYouSure({required Object x}) => 'Czy na pewno chcesz usunąć „${x}”?';
	@override String deleteAreYouSure({required Object x}) => 'Czy na pewno chcesz usunąć „${x}”?';
	@override String get resetAreYouSure => 'Czy na pewno chcesz zresetować?';
	@override String get areYouSure => 'Na pewno?';
	@override String get saved => 'Zapisano';
	@override String get upload => 'Wyślij';
	@override String get keepOriginalUploading => 'Zachowaj oryginalny obraz';
	@override String get keepOriginalUploadingDescription => 'Zapisuje oryginalnie przesłany obraz w niezmienionej postaci. Jeśli ta opcja jest wyłączona, po przesłaniu zostanie wygenerowana wersja do wyświetlenia w Internecie.';
	@override String get fromDrive => 'Z dysku';
	@override String get fromUrl => 'Z adresu URL';
	@override String get uploadFromUrl => 'Wyślij z adresu URL';
	@override String get uploadFromUrlDescription => 'Adres URL pliku, który chcesz wysłać';
	@override String get uploadFromUrlRequested => 'Zażądano wysłania';
	@override String get uploadFromUrlMayTakeTime => 'Wysyłanie może chwilę potrwać.';
	@override String get explore => 'Eksploruj';
	@override String get messageRead => 'Przeczytano';
	@override String get noMoreHistory => 'Nie ma dalszej historii';
	@override String nUsersRead({required Object n}) => 'przeczytano przez ${n}';
	@override String agreeTo({required Object x0}) => 'Wyrażam zgodę na ${x0}';
	@override String get agree => 'Zatwierdź';
	@override String get agreeBelow => 'Zaakceptuj poniżej';
	@override String get basicNotesBeforeCreateAccount => 'Ważne notatki';
	@override String get termsOfService => 'Warunki usługi';
	@override String get start => 'Rozpocznij';
	@override String get home => 'Strona główna';
	@override String get remoteUserCaution => 'Te informacje mogą nie być aktualne, ponieważ użytkownik pochodzi ze zdalnej instancji.';
	@override String get activity => 'Aktywność';
	@override String get images => 'Zdjęcia';
	@override String get image => 'Zdjęcia';
	@override String get birthday => 'Data urodzenia';
	@override String yearsOld({required Object age}) => '${age} lat';
	@override String get registeredDate => 'Zarejestrowano';
	@override String get location => 'Lokalizacja';
	@override String get theme => 'Motywy';
	@override String get themeForLightMode => 'Motyw używany w trybie jasnym';
	@override String get themeForDarkMode => 'Motyw używany w trybie ciemnym';
	@override String get light => 'Jasny';
	@override String get dark => 'Ciemny';
	@override String get lightThemes => 'Jasny motyw';
	@override String get darkThemes => 'Ciemny motyw';
	@override String get syncDeviceDarkMode => 'Synchronizuj ciemny motyw z ustawieniami urządzenia';
	@override String get drive => 'Dysk';
	@override String get fileName => 'Nazwa pliku';
	@override String get selectFile => 'Wybierz plik';
	@override String get selectFiles => 'Wybierz pliki';
	@override String get selectFolder => 'Wybierz folder';
	@override String get selectFolders => 'Wybierz foldery';
	@override String get renameFile => 'Zmień nazwę pliku';
	@override String get folderName => 'Nazwa katalogu';
	@override String get createFolder => 'Utwórz katalog';
	@override String get renameFolder => 'Zmień nazwę katalogu';
	@override String get deleteFolder => 'Usuń ten katalog';
	@override String get folder => 'Folder';
	@override String get addFile => 'Dodaj plik';
	@override String get emptyDrive => 'Dysk jest pusty';
	@override String get emptyFolder => 'Ten katalog jest pusty';
	@override String get unableToDelete => 'Nie można usunąć';
	@override String get inputNewFileName => 'Wprowadź nową nazwę pliku';
	@override String get inputNewDescription => 'Proszę wpisać nowy napis';
	@override String get inputNewFolderName => 'Wprowadź nową nazwę katalogu';
	@override String get circularReferenceFolder => 'Katalog docelowy jest podkatalogiem katalogu, który chcesz przenieść.';
	@override String get hasChildFilesOrFolders => 'Ponieważ ten katalog nie jest pusty, nie może być usunięty.';
	@override String get copyUrl => 'Skopiuj adres URL';
	@override String get rename => 'Zmień nazwę';
	@override String get avatar => 'Awatar';
	@override String get banner => 'Baner';
	@override String get displayOfSensitiveMedia => 'Wyświetlanie wrażliwej zawartości';
	@override String get whenServerDisconnected => 'Po utracie połączenia z serwerem';
	@override String get disconnectedFromServer => 'Utracono połączenie z serwerem.';
	@override String get reload => 'Odśwież';
	@override String get doNothing => 'Ignoruj';
	@override String get reloadConfirm => 'Czy chcesz odświeżyć oś czasu?';
	@override String get watch => 'Śledź';
	@override String get unwatch => 'Przestań śledzić';
	@override String get accept => 'Akceptuj';
	@override String get reject => 'Odrzuć';
	@override String get normal => 'Normalny';
	@override String get instanceName => 'Nazwa instancji';
	@override String get instanceDescription => 'Opis instancji';
	@override String get maintainerName => 'Administrator';
	@override String get maintainerEmail => 'E-mail administratora';
	@override String get tosUrl => 'Adres URL regulaminu';
	@override String get thisYear => 'Rok';
	@override String get thisMonth => 'Miesiąc';
	@override String get today => 'Dziś';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Strony';
	@override String get integration => 'Integracja';
	@override String get connectService => 'Połącz';
	@override String get disconnectService => 'Rozłącz';
	@override String get enableLocalTimeline => 'Włącz lokalną oś czasu';
	@override String get enableGlobalTimeline => 'Włącz globalną oś czasu';
	@override String get disablingTimelinesInfo => 'Administratorzy i moderatorzy będą zawsze mieć dostęp do wszystkich osi czasu, nawet gdy są one wyłączone.';
	@override String get registration => 'Zarejestruj się';
	@override String get invite => 'Zaproś';
	@override String get driveCapacityPerLocalAccount => 'Powierzchnia dyskowa na lokalnego użytkownika';
	@override String get driveCapacityPerRemoteAccount => 'Powierzchnia dyskowa na zdalnego użytkownika';
	@override String get inMb => 'W megabajtach';
	@override String get bannerUrl => 'Adres URL banera';
	@override String get backgroundImageUrl => 'Adres URL tła';
	@override String get basicInfo => 'Podstawowe informacje';
	@override String get pinnedUsers => 'Przypięty użytkownik';
	@override String get pinnedUsersDescription => 'Wypisz po jednej nazwie użytkownika w wierszu. Podani użytkownicy zostaną przypięci pod kartą „Eksploruj”.';
	@override String get pinnedPages => 'Przypięte strony';
	@override String get pinnedPagesDescription => 'Wprowadź ścieżki stron które chcesz przypiąć na głównej stronie instancji, oddzielone znakiem nowego wiersza.';
	@override String get pinnedClipId => 'ID przypiętego klipu';
	@override String get pinnedNotes => 'Przypięty wpis';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Włącz hCaptcha';
	@override String get hcaptchaSiteKey => 'Klucz strony';
	@override String get hcaptchaSecretKey => 'Tajny klucz';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Włącz mCaptcha';
	@override String get mcaptchaSiteKey => 'Klucz strony';
	@override String get mcaptchaSecretKey => 'Tajny klucz';
	@override String get mcaptchaInstanceUrl => 'URL instancji mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Włącz reCAPTCHA';
	@override String get recaptchaSiteKey => 'Klucz strony';
	@override String get recaptchaSecretKey => 'Tajny klucz';
	@override String get turnstile => 'Turnstile';
	@override String get enableTurnstile => 'Włącz Turnstile';
	@override String get turnstileSiteKey => 'Klucz strony';
	@override String get turnstileSecretKey => 'Tajny klucz';
	@override String get avoidMultiCaptchaConfirm => 'Używanie wielu Captchy może spowodować zakłócenia. Czy chcesz wyłączyć inną Captchę? Możesz zostawić wiele jednocześnie, klikając Anuluj.';
	@override String get antennas => 'Anteny';
	@override String get manageAntennas => 'Zarządzaj Antenami';
	@override String get name => 'Nazwa';
	@override String get antennaSource => 'Źródło Anteny';
	@override String get antennaKeywords => 'Słowa kluczowe do obserwacji';
	@override String get antennaExcludeKeywords => 'Wykluczone słowa kluczowe';
	@override String get antennaKeywordsDescription => 'Oddziel spacjami dla warunku AND, albo wymuś koniec linii dla warunku OR';
	@override String get notifyAntenna => 'Powiadamiaj o nowych wpisach';
	@override String get withFileAntenna => 'Filtruj tylko wpisy z załączonym plikiem';
	@override String get enableServiceworker => 'Włącz ServiceWorker';
	@override String get antennaUsersDescription => 'Wypisz po jednej nazwie użytkownika w linii';
	@override String get caseSensitive => 'Wielkość liter ma znaczenie';
	@override String get withReplies => 'Uwzględnij odpowiedzi';
	@override String get connectedTo => 'Następujące konta są połączone';
	@override String get notesAndReplies => 'Wpisy i odpowiedzi';
	@override String get withFiles => 'Media';
	@override String get silence => 'Wycisz';
	@override String get silenceConfirm => 'Czy na pewno chcesz wyciszyć tego użytkownika?';
	@override String get unsilence => 'Cofnij wyciszenie';
	@override String get unsilenceConfirm => 'Czy na pewno chcesz cofnąć wyciszenie tego użytkownika?';
	@override String get popularUsers => 'Popularni użytkownicy';
	@override String get recentlyUpdatedUsers => 'Ostatnio aktywni użytkownicy';
	@override String get recentlyRegisteredUsers => 'Ostatnio zarejestrowani użytkownicy';
	@override String get recentlyDiscoveredUsers => 'Ostatnio odkryci użytkownicy';
	@override String exploreUsersCount({required Object count}) => 'Jest ${count} użytkowników';
	@override String get exploreFediverse => 'Eksploruj Fediwersum';
	@override String get popularTags => 'Tagi na czasie';
	@override String get userList => 'Listy';
	@override String get about => 'Informacje';
	@override String get aboutMisskey => 'O Misskey';
	@override String get administrator => 'Admin';
	@override String get token => 'Token';
	@override String get x2fa => 'Klucz 2FA ';
	@override String get setupOf2fa => 'Skonfiguruj dwuetapową autentykację';
	@override String get totp => 'Klucz aplikacji uwierzytelniającej (totp)';
	@override String get totpDescription => 'Opis klucza czasowego';
	@override String get moderator => 'Moderator';
	@override String get moderation => 'Moderacja';
	@override String get moderationNote => 'Notka moderacyjna';
	@override String get addModerationNote => 'Dodaj notkę moderacyjną';
	@override String get moderationLogs => 'Logi moderacyjne';
	@override String nUsersMentioned({required Object n}) => '${n} wspomnianych użytkowników';
	@override String get securityKeyAndPasskey => 'Klucz bezpieczeństwa i klucze Passkey';
	@override String get securityKey => 'Klucz bezpieczeństwa';
	@override String get lastUsed => 'Ostatnio używane';
	@override String lastUsedAt({required Object t}) => 'Ostatnio używane: ${t}';
	@override String get unregister => 'Cofnij rejestrację';
	@override String get passwordLessLogin => 'Skonfiguruj logowanie bez użycia hasła';
	@override String get passwordLessLoginDescription => 'Opis logowania bez użycia hasła';
	@override String get resetPassword => 'Zresetuj hasło';
	@override String newPasswordIs({required Object password}) => 'Nowe hasło to „${password}”';
	@override String get reduceUiAnimation => 'Ogranicz animacje w UI';
	@override String get share => 'Udostępnij';
	@override String get notFound => 'Nie znaleziono';
	@override String get notFoundDescription => 'Nie ma strony odpowiadającej określonemu adresowi URL.';
	@override String get uploadFolder => 'Domyślne położenie wysłanych';
	@override String get markAsReadAllNotifications => 'Oznacz wszystkie powiadomienia jako przeczytane';
	@override String get markAsReadAllUnreadNotes => 'Oznacz wszystkie wpisy jako przeczytane';
	@override String get markAsReadAllTalkMessages => 'Oznacz wszystkie wiadomości jako przeczytane';
	@override String get help => 'Pomoc';
	@override String get inputMessageHere => 'Wprowadź wiadomość tutaj';
	@override String get close => 'Zamknij';
	@override String get invites => 'Zaproś';
	@override String get members => 'Członkowie';
	@override String get transfer => 'Transfer';
	@override String get title => 'Tytuł';
	@override String get text => 'Tekst';
	@override String get enable => 'Włącz';
	@override String get next => 'Dalej';
	@override String get retype => 'Wprowadź ponownie';
	@override String noteOf({required Object user}) => 'Wpisy ${user}';
	@override String get quoteAttached => 'Zacytowano';
	@override String get quoteQuestion => 'Czy na pewno chcesz umieścić cytat?';
	@override String get onlyOneFileCanBeAttached => 'Możesz załączyć tylko jeden plik do wiadomości';
	@override String get signinRequired => 'Proszę się zalogować';
	@override String get invitations => 'Zaproś';
	@override String get invitationCode => 'Kod zaproszenia';
	@override String get checking => 'Sprawdzam';
	@override String get available => 'Dostępna';
	@override String get unavailable => 'Niedostępna';
	@override String get usernameInvalidFormat => 'może zawierać litery, cyfry i podkreślniki.';
	@override String get tooShort => 'Zbyt krótka';
	@override String get tooLong => 'Zbyt długa';
	@override String get weakPassword => 'Słabe hasło';
	@override String get normalPassword => 'Dobre hasło';
	@override String get strongPassword => 'Silne hasło';
	@override String get passwordMatched => 'Pasuje';
	@override String get passwordNotMatched => 'Hasła nie pasują do siebie';
	@override String signinWith({required Object x}) => 'Zaloguj się z ${x}';
	@override String get signinFailed => 'Nie udało się zalogować. Wprowadzona nazwa użytkownika lub hasło są nieprawidłowe.';
	@override String get or => 'Lub';
	@override String get language => 'Język';
	@override String get uiLanguage => 'Język wyświetlania UI';
	@override String aboutX({required Object x}) => 'O ${x}';
	@override String get emojiStyle => 'Styl emoji';
	@override String get native => 'Natywny';
	@override String get menuStyle => 'Styl Menu';
	@override String get style => 'Styl';
	@override String get drawer => 'Schowek';
	@override String get popup => 'Wyskakujące okienka';
	@override String get showNoteActionsOnlyHover => 'Pokazuj akcje notatek tylko po najechaniu myszką';
	@override String get showReactionsCount => 'Wyświetl liczbę reakcji na notatkę';
	@override String get noHistory => 'Brak historii';
	@override String get signinHistory => 'Historia logowania';
	@override String get enableAdvancedMfm => 'Włącz zaawansowane MFM';
	@override String get enableAnimatedMfm => 'Włącz animowane MFM';
	@override String get doing => 'Przetwarzanie...';
	@override String get category => 'Kategoria';
	@override String get tags => 'Tagi';
	@override String get docSource => 'Źródło tego dokumentu';
	@override String get createAccount => 'Utwórz konto';
	@override String get existingAccount => 'Istniejące konto';
	@override String get regenerate => 'Wygeneruj ponownie';
	@override String get fontSize => 'Rozmiar czcionki';
	@override String get mediaListWithOneImageAppearance => 'Wysokość list multimediów z tylko jednym obrazem';
	@override String limitTo({required Object x}) => 'Limituj do ${x}';
	@override String get noFollowRequests => 'Nie masz żadnych oczekujących próśb o możliwość obserwacji';
	@override String get openImageInNewTab => 'Otwórz obraz w nowej karcie';
	@override String get dashboard => 'Kokpit';
	@override String get local => 'Lokalne';
	@override String get remote => 'Zdalny';
	@override String get total => 'Łącznie';
	@override String get weekOverWeekChanges => 'Cotygodniowo';
	@override String get dayOverDayChanges => 'Codziennie';
	@override String get appearance => 'Wygląd';
	@override String get clientSettings => 'Ustawienia klienta';
	@override String get accountSettings => 'Ustawienia konta';
	@override String get promotion => 'Promowane';
	@override String get promote => 'Promuj';
	@override String get numberOfDays => 'Liczba dni';
	@override String get hideThisNote => 'Ukryj ten wpis';
	@override String get showFeaturedNotesInTimeline => 'Pokazuj wyróżnione wpisy w osi czasu';
	@override String get objectStorage => 'Pamięć obiektowa';
	@override String get useObjectStorage => 'Używaj pamięci obiektowej';
	@override String get objectStorageBaseUrl => 'Podstawowy URL';
	@override String get objectStorageBaseUrlDesc => 'Adres URL używany jako odniesienie. Podaj adres URL swojego CDN lub Proxy, gdy używasz któregokolwiek z nich.\nDla S3 użyj \'https://<bucket>.s3.amazonaws.com\' a dla GCS lub równej usługi użyj \'https://storage.googleapis.com/<bucket>\', itd.';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Podaj nazwę „wiadra” używaną przez konfigurowaną usługę.';
	@override String get objectStoragePrefix => 'Prefiks';
	@override String get objectStoragePrefixDesc => 'Pliki będą przechowywane w katalogu z tym prefiksem.';
	@override String get objectStorageEndpoint => 'Punkt końcowy';
	@override String get objectStorageEndpointDesc => 'Pozostaw puste jeżeli używasz AWS S3, w innym wypadku określ punkt końcowy jako \'<host>\' lub \'<host>:<port>\' zgodnie z instrukcjami usługi, której używasz.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => 'Określ region, np. \'xx-east-1\'. Jeżeli usługa której używasz nie zawiera rozróżnienia regionów, pozostaw to pustym lub wprowadź \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Użyj SSL';
	@override String get objectStorageUseSSLDesc => 'Wyłącz, jeżeli nie zamierzasz używać HTTPS dla połączenia z API';
	@override String get objectStorageUseProxy => 'Połącz przez proxy';
	@override String get objectStorageUseProxyDesc => 'Wyłącz, jeżeli nie zamierzasz używać proxy dla połączenia z pamięcią blokową';
	@override String get objectStorageSetPublicRead => 'Ustaw opcję "public-read" przy przesyłaniu';
	@override String get s3ForcePathStyleDesc => 'Jeśli opcja s3ForcePathStyle jest włączona, nazwa Bucket\'u musi być zawarta w ścieżce adresu URL, a nie w nazwie hosta adresu URL. Włączenie tego ustawienia może być konieczne w przypadku użycia usług takich jak self-hosted instancja Minio.';
	@override String get serverLogs => 'Dziennik zdarzeń';
	@override String get deleteAll => 'Usuń wszystkie';
	@override String get showFixedPostForm => 'Wyświetlaj formularz tworzenia wpisu w górnej części osi czasu';
	@override String get showFixedPostFormInChannel => 'Wyświetl formularz postowania w górnej części osi czasu (Kanały)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Domyślnie uwzględnij odpowiedzi nowo obserwowanych użytkowników w osi czasu';
	@override String get newNoteRecived => 'Masz nowy wpis';
	@override String get sounds => 'Dźwięk';
	@override String get sound => 'Dźwięki';
	@override String get listen => 'Słuchaj';
	@override String get none => 'Brak';
	@override String get showInPage => 'Pokaż na stronie';
	@override String get popout => 'Popout';
	@override String get volume => 'Głośność';
	@override String get masterVolume => 'Głośność główna';
	@override String get notUseSound => 'Wyłącz dźwięk';
	@override String get useSoundOnlyWhenActive => 'Puszczaj dźwięki tylko, gdy Misskey jest aktywne.';
	@override String get details => 'Szczegóły';
	@override String get chooseEmoji => 'Wybierz emoji';
	@override String get unableToProcess => 'Nie udało się dokończyć działania.';
	@override String get recentUsed => 'Ostatnio używane';
	@override String get install => 'Zainstaluj';
	@override String get uninstall => 'Odinstaluj';
	@override String get installedApps => 'Autoryzowane aplikacje';
	@override String get nothing => 'Nie ma tu niczego';
	@override String get installedDate => 'Autoryzowano';
	@override String get lastUsedDate => 'Ostatnie użycie';
	@override String get state => 'Stan';
	@override String get sort => 'Sortuj';
	@override String get ascendingOrder => 'Rosnąco';
	@override String get descendingOrder => 'Malejąco';
	@override String get scratchpad => 'Brudnopis';
	@override String get scratchpadDescription => 'Brudnopis zawiera eksperymentalne środowisko dla AiScript. Możesz pisać, wykonywać i sprawdzać wyniki w interakcji z Misskey.';
	@override String get uiInspector => 'Inspektor UI';
	@override String get output => 'Wyjście';
	@override String get script => 'Skrypt';
	@override String get disablePagesScript => 'Wyłącz AiScript na Stronach';
	@override String get updateRemoteUser => 'Aktualizuj zdalne dane o użytkowniku';
	@override String get unsetUserAvatar => 'Usuń awatar';
	@override String get unsetUserAvatarConfirm => 'Czy na pewno chcesz usunąć awatar tego użytkownika?';
	@override String get unsetUserBanner => 'Usuń baner';
	@override String get unsetUserBannerConfirm => 'Czy na pewno chcesz usunąć baner?';
	@override String get deleteAllFiles => 'Usuń wszystkie pliki';
	@override String get deleteAllFilesConfirm => 'Czy na pewno chcesz usunąć wszystkie pliki?';
	@override String get removeAllFollowing => 'Przestań obserwować';
	@override String removeAllFollowingDescription({required Object host}) => 'Przestań obserwować wszystkie konta z ${host}. Wykonaj to, jeżeli instancja już nie istnieje.';
	@override String get userSuspended => 'To konto zostało zawieszone.';
	@override String get userSilenced => 'Ten użytkownik został wyciszony.';
	@override String get yourAccountSuspendedTitle => 'To konto jest zawieszone';
	@override String get yourAccountSuspendedDescription => 'To konto zostało zawieszone z powodu złamania regulaminu serwera lub innych podobnych. Skontaktuj się z administratorem, jeśli chciałbyś poznać bardziej szczegółowy powód. Proszę nie zakładać nowego konta.';
	@override String get tokenRevoked => 'Token odrzucony';
	@override String get tokenRevokedDescription => 'Opis odrzuconego tokena';
	@override String get accountDeleted => 'Konto usunięte';
	@override String get accountDeletedDescription => 'Opis konta usuniętego';
	@override String get menu => 'Menu';
	@override String get divider => 'Rozdzielacz';
	@override String get addItem => 'Dodaj element';
	@override String get rearrange => 'Posortuj';
	@override String get relays => 'Przekaźniki';
	@override String get addRelay => 'Dodaj przekaźnik';
	@override String get inboxUrl => 'Adres URL skrzynki nadawczej';
	@override String get addedRelays => 'Dodane przekaźniki';
	@override String get serviceworkerInfo => 'Musi być włączone dla powiadomień push.';
	@override String get deletedNote => 'Usunięty wpis';
	@override String get invisibleNote => 'Niewidzialny wpis';
	@override String get enableInfiniteScroll => 'Włącz nieskończone przewijanie';
	@override String get visibility => 'Widoczność';
	@override String get poll => 'Ankieta';
	@override String get useCw => 'Ukryj zawartość';
	@override String get enablePlayer => 'Otwórz odtwarzacz wideo';
	@override String get disablePlayer => 'Zamknij odtwarzacz wideo';
	@override String get expandTweet => 'Rozwiń tweet';
	@override String get themeEditor => 'Edytor motywu';
	@override String get description => 'Opis';
	@override String get describeFile => 'Dodaj podpis';
	@override String get enterFileDescription => 'Wprowadź napis';
	@override String get author => 'Autor';
	@override String get leaveConfirm => 'Są niezapisane zmiany. Czy chcesz je odrzucić?';
	@override String get manage => 'Zarządzanie';
	@override String get plugins => 'Wtyczki';
	@override String get preferencesBackups => 'Kopia zapasowa ustawień';
	@override String get deck => 'Tablica';
	@override String get undeck => 'oddkouj';
	@override String get useBlurEffectForModal => 'Używaj efektu rozmycia w modalach';
	@override String get useFullReactionPicker => 'Używaj pełnowymiarowego wybornika reakcji';
	@override String get width => 'Szerokość';
	@override String get height => 'Wysokość';
	@override String get large => 'Duże';
	@override String get medium => 'Średnie';
	@override String get small => 'Małe';
	@override String get generateAccessToken => 'Generuj token dostępu';
	@override String get permission => 'Uprawnienia';
	@override String get adminPermission => 'Uprawnienia administracyjne';
	@override String get enableAll => 'Włącz wszystko';
	@override String get disableAll => 'Wyłącz wszystko';
	@override String get tokenRequested => 'Przydziel dostęp do konta';
	@override String get pluginTokenRequestedDescription => 'Ta wtyczka będzie mogła korzystać z ustawionych tu uprawnień.';
	@override String get notificationType => 'Rodzaj powiadomień';
	@override String get edit => 'Edytuj';
	@override String get emailServer => 'Serwer poczty e-mail';
	@override String get enableEmail => 'Włącz dostarczanie wiadomości e-mail';
	@override String get emailConfigInfo => 'Wykorzystywany do potwierdzenia adresu e-mail w trakcie rejestracji, lub gdy zapomnisz hasła';
	@override String get email => 'Adres e-mail';
	@override String get emailAddress => 'Adres e-mail';
	@override String get smtpConfig => 'Konfiguracja serwera SMTP';
	@override String get smtpHost => 'Host';
	@override String get smtpPort => 'Port';
	@override String get smtpUser => 'Nazwa użytkownika';
	@override String get smtpPass => 'Hasło';
	@override String get emptyToDisableSmtpAuth => 'Pozostaw adres e-mail i hasło puste, aby wyłączyć weryfikację SMTP';
	@override String get smtpSecure => 'Użyj niejawnego SSL/TLS dla połączeń SMTP';
	@override String get smtpSecureInfo => 'Wyłącz, jeżeli używasz STARTTLS';
	@override String get testEmail => 'Przetestuj dostarczanie wiadomości e-mail';
	@override String get wordMute => 'Wyciszenie słowa';
	@override String get hardWordMute => 'Wyciszaj przekleństwa';
	@override String get regexpError => 'Błąd wyrażenia regularnego';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Wystąpił błąd w wyrażeniu regularnym w linii ${line} twoich ${tab} wyciszeń:';
	@override String get instanceMute => 'Wyciszone instancje';
	@override String userSaysSomething({required Object name}) => '${name} powiedział(-a) coś';
	@override String get makeActive => 'Aktywuj';
	@override String get display => 'Wyświetlanie';
	@override String get copy => 'Kopiuj';
	@override String get metrics => 'Pomiary';
	@override String get overview => 'Przegląd';
	@override String get logs => 'Dzienniki';
	@override String get delayed => 'Opóźnione';
	@override String get database => 'Baza danych';
	@override String get channel => 'Kanały';
	@override String get create => 'Utwórz';
	@override String get notificationSetting => 'Ustawienia powiadomień';
	@override String get notificationSettingDesc => 'Wybierz rodzaj powiadomień do wyświetlania';
	@override String get useGlobalSetting => 'Użyj globalnych ustawień';
	@override String get useGlobalSettingDesc => 'Jeżeli włączone, zostaną wykorzystane ustawienia powiadomień Twojego konta. Jeżeli wyłączone, mogą zostać wykonane oddzielne konfiguracje.';
	@override String get other => 'Inne';
	@override String get regenerateLoginToken => 'Generuj token logowania ponownie';
	@override String get regenerateLoginTokenDescription => 'Regeneruje token używany wewnętrznie podczas logowania. Zazwyczaj nie jest to konieczne. Po regeneracji wszystkie urządzenia zostaną wylogowane.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'To jest słowo kluczowe używane podczas wyszukiwania customowych Emoji.';
	@override String get setMultipleBySeparatingWithSpace => 'Możesz ustawić wiele, oddzielając je spacjami.';
	@override String get fileIdOrUrl => 'ID pliku albo URL';
	@override String get behavior => 'Zachowanie';
	@override String get sample => 'Przykład';
	@override String get abuseReports => 'Zgłoszenia';
	@override String get reportAbuse => 'Zgłoś';
	@override String get reportAbuseRenote => 'Zgłoś renote';
	@override String reportAbuseOf({required Object name}) => 'Zgłoś ${name}';
	@override String get fillAbuseReportDescription => 'Wypełnij szczegóły zgłoszenia. Jeżeli dotyczy ono określonego wpisu, uwzględnij jego adres URL.';
	@override String get abuseReported => 'Twoje zgłoszenie zostało wysłane. Dziękujemy.';
	@override String get reporter => 'Zgłaszający';
	@override String get reporteeOrigin => 'Pochodzenie zgłoszonego';
	@override String get reporterOrigin => 'Pochodzenie zgłaszającego';
	@override String get send => 'Wyślij';
	@override String get openInNewTab => 'Otwórz w nowej karcie';
	@override String get openInSideView => 'Otwórz w bocznym widoku';
	@override String get defaultNavigationBehaviour => 'Domyślne zachowanie nawigacji';
	@override String get editTheseSettingsMayBreakAccount => 'Edycja tych ustawień może uszkodzić Twoje konto.';
	@override String get instanceTicker => 'Informacje o wpisach instancji';
	@override String waitingFor({required Object x}) => 'Oczekiwanie na ${x}';
	@override String get random => 'Losowe';
	@override String get system => 'System';
	@override String get switchUi => 'Przełącz interfejs użytkownika';
	@override String get desktop => 'Pulpit';
	@override String get clip => 'Klip';
	@override String get createNew => 'Utwórz nowy';
	@override String get optional => 'Nieobowiązkowe';
	@override String get createNewClip => 'Utwórz nowy klip';
	@override String get unclip => 'Odczep';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Ten wpis jest już częścią klipu "${name}". Czy chcesz ją usunąć z tego klipu?';
	@override String get public => 'Publiczny';
	@override String get private => 'Prywatne';
	@override String i18nInfo({required Object link}) => 'Misskey jest tłumaczone na wiele języków przez wolontariuszy. Możesz pomóc na ${link}.';
	@override String get manageAccessTokens => 'Zarządzaj tokenami dostępu';
	@override String get accountInfo => 'Informacje o koncie';
	@override String get notesCount => 'Liczba wpisów';
	@override String get repliesCount => 'Liczba wysłanych odpowiedzi';
	@override String get renotesCount => 'Liczba wysłanych udostępnień';
	@override String get repliedCount => 'Liczba otrzymanych odpowiedzi';
	@override String get renotedCount => 'Liczba otrzymanych udostępnień';
	@override String get followingCount => 'Liczba obserwowanych kont';
	@override String get followersCount => 'Liczba obserwujących';
	@override String get sentReactionsCount => 'Liczba wysłanych reakcji';
	@override String get receivedReactionsCount => 'Liczba otrzymanych reakcji';
	@override String get pollVotesCount => 'Liczba wysłanych głosów w ankietach';
	@override String get pollVotedCount => 'Liczba otrzymanych głosów w ankietach';
	@override String get yes => 'Tak';
	@override String get no => 'Nie';
	@override String get driveFilesCount => 'Liczba plików na dysku';
	@override String get driveUsage => 'Użycie przestrzeni dyskowej';
	@override String get noCrawle => 'Odrzuć indeksowanie przez crawlery';
	@override String get noCrawleDescription => 'Proś wyszukiwarki internetowe, aby nie indeksowały Twojego profilu, wpisów, stron itd.';
	@override String get lockedAccountInfo => 'Dopóki nie ustawisz widoczności wpisu na "Obserwujący", twoje wpisy będą mogli widzieć wszyscy, nawet jeśli ustawisz manualne zatwierdzanie obserwujących.';
	@override String get alwaysMarkSensitive => 'Oznacz domyślnie jako NSFW';
	@override String get loadRawImages => 'Wyświetlaj zdjęcia w załącznikach w całości zamiast miniatur';
	@override String get disableShowingAnimatedImages => 'Nie odtwarzaj animowanych obrazów';
	@override String get highlightSensitiveMedia => 'Podkreśl wrażliwą zawartość';
	@override String get verificationEmailSent => 'Wiadomość weryfikacyjna została wysłana. Odwiedź uwzględniony odnośnik, aby ukończyć weryfikację.';
	@override String get notSet => 'Nie ustawiono';
	@override String get emailVerified => 'Adres e-mail został potwierdzony';
	@override String get noteFavoritesCount => 'Liczba polubionych wpisów';
	@override String get pageLikesCount => 'Liczba otrzymanych polubień stron';
	@override String get pageLikedCount => 'Liczba polubionych stron';
	@override String get contact => 'Kontakt';
	@override String get useSystemFont => 'Używaj domyślnej czcionki systemu';
	@override String get clips => 'Klipy';
	@override String get experimentalFeatures => 'Eksperymentalne funkcje';
	@override String get experimental => 'Eksperymentalne';
	@override String get thisIsExperimentalFeature => 'Ta funkcja jest eksperymentalna. Jej funkcjonalność może ulec zmianie, i może ona nie funkcjonować tak, jak zamierzono.';
	@override String get developer => 'Programista';
	@override String get makeExplorable => 'Pokazuj konto na stronie „Eksploruj”';
	@override String get makeExplorableDescription => 'Jeżeli wyłączysz tę opcję, Twoje konto nie będzie wyświetlać się w sekcji „Eksploruj”.';
	@override String get duplicate => 'Duplikuj';
	@override String get left => 'Lewo';
	@override String get center => 'Wyśsrodkuj';
	@override String get wide => 'Szerokie';
	@override String get narrow => 'Wąskie';
	@override String get reloadToApplySetting => 'To ustawienie zostanie zastosowane po odświeżeniu strony. Chcesz odświeżyć?';
	@override String get needReloadToApply => 'To ustawienie zostanie zastosowane po odświeżeniu strony';
	@override String get showTitlebar => 'Pokazuj pasek tytułowy';
	@override String get clearCache => 'Wyczyść pamięć podręczną';
	@override String onlineUsersCount({required Object n}) => '${n} osób jest online';
	@override String nUsers({required Object n}) => '${n} użytkowników';
	@override String nNotes({required Object n}) => '${n} wpisów';
	@override String get sendErrorReports => 'Wyślij raporty o błędach';
	@override String get sendErrorReportsDescription => 'Gdy włączone, jeśli wystąpi problem, szczegółowe informacje o błędach będą udostępniane Misskey, pomagając ulepszyć jakość Misskey.\nBędzie to zawierało informacje takie jak wersja twojego systemu operacyjnego, jakiej przeglądarki używasz, twoja aktywność w Misskey, itd.';
	@override String get myTheme => 'Mój motyw';
	@override String get backgroundColor => 'Tło';
	@override String get accentColor => 'Akcent';
	@override String get textColor => 'Tekst';
	@override String get saveAs => 'Zapisz jako…';
	@override String get advanced => 'Zaawansowane';
	@override String get advancedSettings => 'Zaawansowane ustawienia';
	@override String get value => 'Wartość';
	@override String get createdAt => 'Utworzono';
	@override String get updatedAt => 'Zaktualizowano';
	@override String get saveConfirm => 'Zapisać zmiany?';
	@override String get deleteConfirm => 'Na pewno usunąć?';
	@override String get invalidValue => 'Nieprawidłowa wartość.';
	@override String get registry => 'Rejestr';
	@override String get closeAccount => 'Zamknij konto';
	@override String get currentVersion => 'Bieżąca wersja';
	@override String get latestVersion => 'Najnowsza wersja';
	@override String get youAreRunningUpToDateClient => 'Korzystasz z najnowszej wersji klienta.';
	@override String get newVersionOfClientAvailable => 'Nowsza wersja klienta jest dostępna.';
	@override String get usageAmount => 'Użycie';
	@override String get capacity => 'Pojemność';
	@override String get inUse => 'Użyto';
	@override String get editCode => 'Edytuj kod';
	@override String get apply => 'Zastosuj';
	@override String get receiveAnnouncementFromInstance => 'Otrzymuj powiadomienia e-mail z tej instancji';
	@override String get emailNotification => 'Powiadomienia e-mail';
	@override String get publish => 'Publikuj';
	@override String get inChannelSearch => 'Szukaj na kanale';
	@override String get useReactionPickerForContextMenu => 'Otwórz wybornik reakcji prawym kliknięciem';
	@override String typingUsers({required Object users}) => '${users} pisze(-ą)...';
	@override String get jumpToSpecifiedDate => 'Przejdź do określonej daty';
	@override String get showingPastTimeline => 'Obecnie wyświetla starą oś czasu';
	@override String get clear => 'Wróć';
	@override String get markAllAsRead => 'Oznacz wszystkie jako przeczytane';
	@override String get goBack => 'Wróć';
	@override String get unlikeConfirm => 'Na pewno chcesz usunąć polubienie?';
	@override String get fullView => 'Pełny widok';
	@override String get quitFullView => 'Opuść pełny widok';
	@override String get addDescription => 'Dodaj opis';
	@override String get userPagePinTip => 'Możesz wyświetlać wpisy w tym miejscu po wybraniu "Przypnij do profilu" z menu pojedyńczego wpisu';
	@override String get notSpecifiedMentionWarning => 'Ten wpis zawiera wzmianki o użytkownikach niezawartych jako odbiorcy';
	@override String get info => 'Informacje';
	@override String get userInfo => 'Informacje o użykowniku';
	@override String get unknown => 'Nieznane';
	@override String get onlineStatus => 'Status online';
	@override String get hideOnlineStatus => 'Ukryj status online';
	@override String get hideOnlineStatusDescription => 'Ukrywanie statusu online ogranicza wygody niektórych funkcji, tj. wyszukiwanie';
	@override String get online => 'Online';
	@override String get active => 'Aktywny';
	@override String get offline => 'Offline';
	@override String get notRecommended => 'Nie zalecane';
	@override String get botProtection => 'Zabezpieczenie przed botami';
	@override String get instanceBlocking => 'Zablokowane instancje';
	@override String get selectAccount => 'Wybierz konto';
	@override String get switchAccount => 'Przełącz konto';
	@override String get enabled => 'Właczono';
	@override String get disabled => 'Wyłączono';
	@override String get quickAction => 'Szybkie działania';
	@override String get user => 'Użytkownicy';
	@override String get administration => 'Zarządzanie';
	@override String get accounts => 'Konta';
	@override String get switch_ => 'Przełącz';
	@override String get noMaintainerInformationWarning => 'Informacje o administratorze nie są skonfigurowane.';
	@override String get noInquiryUrlWarning => 'Adres URL zapytania nie został ustawiony';
	@override String get noBotProtectionWarning => 'Zabezpieczenie przed botami nie jest skonfigurowane.';
	@override String get configure => 'Skonfiguruj';
	@override String get postToGallery => 'Opublikuj w galerii';
	@override String get postToHashtag => 'Postuj do tego hashtagu';
	@override String get gallery => 'Galeria';
	@override String get recentPosts => 'Ostatnie wpisy';
	@override String get popularPosts => 'Popularne wpisy';
	@override String get shareWithNote => 'Udostępnij z wpisem';
	@override String get ads => 'Reklamy';
	@override String get expiration => 'Ankieta kończy się';
	@override String get startingperiod => 'Początek';
	@override String get memo => 'Notatki';
	@override String get priority => 'Priorytet';
	@override String get high => 'Wysoki';
	@override String get middle => 'Średnie';
	@override String get low => 'Niski';
	@override String get emailNotConfiguredWarning => 'Nie podano adresu e-mail';
	@override String get ratio => 'Stosunek';
	@override String get previewNoteText => 'Pokaż podgląd';
	@override String get customCss => 'Własny CSS';
	@override String get customCssWarn => 'Używaj tego ustawienia tylko wtedy, gdy wiesz co ono robi. Nieprawidłowe wpisy mogą spowodować, że klient przestanie działać poprawnie.';
	@override String get global => 'Globalna';
	@override String get squareAvatars => 'Wyświetlaj kwadratowe awatary';
	@override String get sent => 'Wyślij';
	@override String get received => 'Otrzymane';
	@override String get searchResult => 'Wyniki wyszukiwania';
	@override String get hashtags => 'Hashtag';
	@override String get troubleshooting => 'Rozwiązywanie problemów';
	@override String get useBlurEffect => 'Użyj efektów rozmycia w UI';
	@override String get learnMore => 'Dowiedz się więcej';
	@override String get misskeyUpdated => 'Misskey zostało zaktualizowane!';
	@override String get whatIsNew => 'Pokaż zmiany';
	@override String get translate => 'Przetłumacz';
	@override String translatedFrom({required Object x}) => 'Przetłumaczone z ${x}';
	@override String get accountDeletionInProgress => 'Trwa usuwanie konta';
	@override String get usernameInfo => 'Nazwa, która identyfikuje Twoje konto spośród innych na tym serwerze.  Możesz użyć alfabetu (a~z, A~Z), cyfr (0~9) lub podkreślników (_). Nazwy użytkownika nie mogą być później zmieniane.';
	@override String get aiChanMode => 'Tryb Ai';
	@override String get devMode => 'Tryb programisty';
	@override String get keepCw => 'Zostaw ostrzeżenia o zawartości';
	@override String get pubSub => 'Konta Pub/Sub';
	@override String get lastCommunication => 'Ostatnia komunikacja';
	@override String get resolved => 'Rozwiązane';
	@override String get unresolved => 'Nierozwiązane';
	@override String get breakFollow => 'Usuń obserwującego';
	@override String get breakFollowConfirm => 'Czy na pewno usunąć tego obserwującego?';
	@override String get itsOn => 'Włączone';
	@override String get itsOff => 'Wyłączone';
	@override String get on => 'Włączone';
	@override String get off => 'Wyłączone';
	@override String get emailRequiredForSignup => 'Wymagaj adresu e-mail do rejestracji';
	@override String get unread => 'Nieodczytane';
	@override String get filter => 'Filtr';
	@override String get controlPanel => 'Panel sterowania';
	@override String get manageAccounts => 'Zarządzaj kontami';
	@override String get makeReactionsPublic => 'Ustawić historię reakcji jako publiczną';
	@override String get makeReactionsPublicDescription => 'To spowoduje, że lista wszystkich Twoich dotychczasowych reakcji będzie publicznie widoczna.';
	@override String get classic => 'Klasyczny';
	@override String get muteThread => 'Wycisz wątek';
	@override String get unmuteThread => 'Wyłącz wyciszenie wątku';
	@override String get followingVisibility => 'Widoczność obserwacji';
	@override String get followersVisibility => 'Widoczność obserwujących';
	@override String get continueThread => 'Pokaż kontynuację wątku';
	@override String get deleteAccountConfirm => 'Spowoduje to nieodwracalne usunięcie Twojego konta. Kontynuować?';
	@override String get incorrectPassword => 'Nieprawidłowe hasło.';
	@override String get incorrectTotp => 'Hasło pojedynczego użytku jest nie poprawne, lub straciło ważność';
	@override String voteConfirm({required Object choice}) => 'Potwierdzić swój głos na "${choice}"?';
	@override String get hide => 'Ukryj';
	@override String get useDrawerReactionPickerForMobile => 'Wyświetlaj wybornik reakcji jako szufladę na urządzeniach mobilnych';
	@override String welcomeBackWithName({required Object name}) => 'Witaj z powrotem, ${name}';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Kliknij [${ok}], aby zakończyć weryfikację e-mail.';
	@override String get overridedDeviceKind => 'Typ urządzenia';
	@override String get smartphone => 'Smartfon';
	@override String get tablet => 'Tablet';
	@override String get auto => 'Automatycznie';
	@override String get themeColor => 'Motyw kolorystyczny';
	@override String get size => 'Rozmiar';
	@override String get numberOfColumn => 'Liczba kolumn';
	@override String get searchByGoogle => 'Szukaj';
	@override String get instanceDefaultLightTheme => 'Domyślny motyw dla trybu jasnego';
	@override String get instanceDefaultDarkTheme => 'Domyślny motyw dla trybu ciemnego';
	@override String get instanceDefaultThemeDescription => 'Opis domyślnego motywu instancji';
	@override String get mutePeriod => 'Okres wyciszenia';
	@override String get period => 'Ankieta kończy się';
	@override String get indefinitely => 'Nigdy';
	@override String get tenMinutes => '10 minut';
	@override String get oneHour => '1 godzina';
	@override String get oneDay => '1 dzień';
	@override String get oneWeek => '1 tydzień';
	@override String get oneMonth => 'jeden miesiąc';
	@override String get threeMonths => '3 miesiące';
	@override String get oneYear => 'Rok';
	@override String get threeDays => '3 dni';
	@override String get reflectMayTakeTime => 'Może minąć trochę czasu, zanim będzie to uwzględnione';
	@override String get failedToFetchAccountInformation => 'Nie udało się uzyskać informacji o koncie';
	@override String get rateLimitExceeded => 'Limit szybkości przekroczony';
	@override String get cropImage => 'Przytnij obraz';
	@override String get cropImageAsk => 'Czy chcesz przyciąć obrazek?';
	@override String get cropYes => 'Tak, przytnij';
	@override String get cropNo => 'Nie chce przycinać';
	@override String get file => 'Pliki';
	@override String recentNHours({required Object n}) => 'W ciągu ostatnich ${n} godzin';
	@override String recentNDays({required Object n}) => 'W ciągu ostatnich ${n} dni';
	@override String get noEmailServerWarning => 'Serwer Email nie jest skonfigurowany';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Istnieją niewyjaśnione raporty';
	@override String get recommended => 'Zalecane';
	@override String get check => 'Zweryfikuj';
	@override String get driveCapOverrideLabel => 'Zmień limit pojemności dysku użytkownika';
	@override String get driveCapOverrideCaption => 'Resetuje pojemność do wartości domyślnej, przez wpisanie wartości 0 lub niższej';
	@override String get requireAdminForView => 'Aby to zobaczyć, musisz być administratorem';
	@override String get isSystemAccount => 'To jest konto stworzone i zarządzane przez system';
	@override String typeToConfirm({required Object x}) => 'Wprowadź ${x}, aby potwierdzić';
	@override String get deleteAccount => 'Usuń konto';
	@override String get document => 'Dokumentacja';
	@override String get numberOfPageCache => 'Ilość stron w cache';
	@override String get numberOfPageCacheDescription => 'Zwiększenie tej liczby polepszy wygodę, ale spowoduje większe obciążenie jako użycie pamięci na urządzeniu użytkownika.';
	@override String get logoutConfirm => 'Czy na pewno chcesz się wylogować?';
	@override String get lastActiveDate => 'Ostatnio użyte w';
	@override String get statusbar => 'Pasek stanu';
	@override String get pleaseSelect => 'Wybierz opcję';
	@override String get reverse => 'Odwróć';
	@override String get colored => 'Kolorowe';
	@override String get refreshInterval => 'Okres aktualizacji';
	@override String get label => 'Etykieta';
	@override String get type => 'Typ';
	@override String get speed => 'Prędkość';
	@override String get slow => 'Wolny';
	@override String get fast => 'Szybki';
	@override String get sensitiveMediaDetection => 'Detekcja wrażliwej zawartości';
	@override String get localOnly => 'Lokalne tylko';
	@override String get remoteOnly => 'Tylko zdalne instancje';
	@override String get failedToUpload => 'Przesyłanie nie powiodło się';
	@override String get cannotUploadBecauseInappropriate => 'Nie można przesłać tego pliku, ponieważ jego części zostały wykryte jako potencjalnie nieodpowiednie.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Przesyłanie nie powiodło się z powodu braku miejsca na dysku.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Nie można przesłać pliku, ponieważ wykracza on poza limit wielkości pliku.';
	@override String get beta => 'Beta';
	@override String get enableAutoSensitive => 'Automatyczne oznaczanie NSFW';
	@override String get enableAutoSensitiveDescription => 'Umożliwia automatyczne wykrywanie i oznaczanie zawartości NSFW za pomocą uczenia maszynowego. Nawet jeśli ta opcja jest wyłączona, może być włączona w całej instancji.';
	@override String get activeEmailValidationDescription => 'Włącza bardziej restrykcyjną walidację adresów e-mail, co obejmuje sprawdzanie adresów jednorazowych i czy komunikacja z tym adresem jest możliwa. Gdy wyłączone, tylko format adresu e-mail jest sprawdzany.';
	@override String get navbar => 'Pasek nawigacyjny';
	@override String get shuffle => 'Mieszaj';
	@override String get account => 'Konta';
	@override String get move => 'Przenieś';
	@override String get pushNotification => 'Powiadomienia';
	@override String get subscribePushNotification => 'Włącz powiadomienia';
	@override String get unsubscribePushNotification => 'Wyłącz powiadomienia push';
	@override String get pushNotificationAlreadySubscribed => 'Powiadomienia push są włączone';
	@override String get pushNotificationNotSupported => 'Przeglądarka lub instancja nie obsługuje powiadomień push';
	@override String get sendPushNotificationReadMessage => 'Usuń powiadomienia push po przeczytaniu powiadomień i wiadomości.';
	@override String get sendPushNotificationReadMessageCaption => 'Chwilowo pojawi się powiadomienie "". Może wzrosnąć zużycie baterii urządzenia.';
	@override String get windowMaximize => 'Maksymalizuj';
	@override String get windowMinimize => 'Minimalizuj';
	@override String get windowRestore => 'Przywróć';
	@override String get caption => 'Legenda';
	@override String get loggedInAsBot => 'Jesteś obecnie zalogowany/a jako bot';
	@override String get tools => 'Narzędzia';
	@override String get cannotLoad => 'Nie można wczytać';
	@override String get numberOfProfileView => 'Wyświetlenia profilu';
	@override String get like => 'Polub';
	@override String get unlike => 'Usuń polubienie';
	@override String get numberOfLikes => 'Liczba polubień';
	@override String get show => 'Wyświetlanie';
	@override String get neverShow => 'Nie pokazuj ponownie';
	@override String get remindMeLater => 'Przypomnij później';
	@override String get didYouLikeMisskey => 'Czy Misskey się tobie spodobało?';
	@override String pleaseDonate({required Object host}) => '${host} używa darmowego oprogramowania — Misskey. Bylibyśmy bardzo wdzięczni za datki, które pozwolą na kontynuację rozwoju Misskey!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Odpowiedni kod źródłowy jest dostępny pod ${anchor}.';
	@override String get roles => 'Role';
	@override String get role => 'Rola';
	@override String get noRole => 'Rola nie znaleziona';
	@override String get normalUser => 'Normalny użytkownik';
	@override String get undefined => 'Niezdefiniowane';
	@override String get assign => 'Przydziel';
	@override String get unassign => 'Cofnij przydzielenie';
	@override String get color => 'Kolor';
	@override String get manageCustomEmojis => 'Zarządzaj niestandardowymi Emoji';
	@override String get manageAvatarDecorations => 'Zarządzaj dekoracjami awatara';
	@override String get youCannotCreateAnymore => 'Limit kreacji został przekroczony';
	@override String get cannotPerformTemporary => 'Opcja tymczasowo niedostępna';
	@override String get cannotPerformTemporaryDescription => 'Ta akcja nie może zostać wykonana, z powodu przekroczenia limitu wykonań. Prosimy poczekać chwilę i spróbować ponownie';
	@override String get invalidParamError => 'Błąd parametrów';
	@override String get invalidParamErrorDescription => 'Wartości, które zostały podane są niepoprawne. Zwykle jest to spowodowane bugiem, lecz również może być to spowodowane przekroczeniem limitu wartości, lub podobnym problemem';
	@override String get permissionDeniedError => 'Odrzucono operacje';
	@override String get permissionDeniedErrorDescription => 'Konto nie posiada uprawnień';
	@override String get preset => 'Konfiguracja';
	@override String get selectFromPresets => 'Wybierz konfiguracje';
	@override String get achievements => 'Osiągnięcia';
	@override String get gotInvalidResponseError => 'Niepoprawna odpowiedź serwera';
	@override String get gotInvalidResponseErrorDescription => 'Wystąpił problem z Twoim połączeniem z Internetem, lub z serwerem.  wkrótce.';
	@override String get thisPostMayBeAnnoying => 'Ten wpis może obrażać pozostałych użytkowników';
	@override String get thisPostMayBeAnnoyingHome => 'Opublikuj na domowej osi czasu';
	@override String get thisPostMayBeAnnoyingCancel => 'Odrzuć';
	@override String get thisPostMayBeAnnoyingIgnore => 'Zignoruj i wyślij';
	@override String get collapseRenotes => 'Zwiń wpisy, które już zobaczyłeś';
	@override String get collapseRenotesDescription => 'Zwiń wpisy, na które już zareagowałeś lub udostępniłeś';
	@override String get internalServerError => 'Wewnętrzny błąd serwera';
	@override String get internalServerErrorDescription => 'Niespodziewany błąd po stronie serwera';
	@override String get copyErrorInfo => 'Kopiuj informacje o błędzie';
	@override String get joinThisServer => 'Dołącz do chaty';
	@override String get exploreOtherServers => 'Szukaj innej instancji';
	@override String get disableFederationOk => 'Wyłącz federacje';
	@override String get invitationRequiredToRegister => 'Ten serwer wymaga zaproszenia. Tylko osoby z zaproszeniem mogą się zarejestrować';
	@override String get emailNotSupported => 'Wysyłanie wiadomości E-mail nie jest obsługiwane na tym serwerze';
	@override String get postToTheChannel => 'Publikuj na kanale';
	@override String get youFollowing => 'Śledzeni';
	@override String get icon => 'Awatar';
	@override String get replies => 'Odpowiedz';
	@override String get renotes => 'Udostępnij';
	@override String get sourceCode => 'Kod źródłowy';
	@override String get flip => 'Odwróć';
	@override String lastNDays({required Object n}) => 'W ciągu ostatnich ${n} dni';
	@override String get surrender => 'Odrzuć';
	@override String get gameRetry => 'Spróbuj ponownie';
	@override String get postForm => 'Formularz tworzenia wpisu';
	@override String get information => 'Informacje';
	@override String get inMinutes => 'minuta';
	@override String get inDays => 'dzień';
	@override String get widgets => 'Widżety';
	@override String get presets => 'Konfiguracja';
	@override late final _TranslationsMisskeyImageEditingPlPl imageEditing_ = _TranslationsMisskeyImageEditingPlPl._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorPlPl imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorPlPl._(_root);
	@override late final _TranslationsMisskeyChatPlPl chat_ = _TranslationsMisskeyChatPlPl._(_root);
	@override late final _TranslationsMisskeyDeliveryPlPl delivery_ = _TranslationsMisskeyDeliveryPlPl._(_root);
	@override late final _TranslationsMisskeyBubbleGamePlPl bubbleGame_ = _TranslationsMisskeyBubbleGamePlPl._(_root);
	@override late final _TranslationsMisskeyRolePlPl role_ = _TranslationsMisskeyRolePlPl._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionPlPl sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionPlPl._(_root);
	@override late final _TranslationsMisskeyEmailUnavailablePlPl emailUnavailable_ = _TranslationsMisskeyEmailUnavailablePlPl._(_root);
	@override late final _TranslationsMisskeyFfVisibilityPlPl ffVisibility_ = _TranslationsMisskeyFfVisibilityPlPl._(_root);
	@override late final _TranslationsMisskeySignupPlPl signup_ = _TranslationsMisskeySignupPlPl._(_root);
	@override late final _TranslationsMisskeyAccountDeletePlPl accountDelete_ = _TranslationsMisskeyAccountDeletePlPl._(_root);
	@override late final _TranslationsMisskeyAdPlPl ad_ = _TranslationsMisskeyAdPlPl._(_root);
	@override late final _TranslationsMisskeyForgotPasswordPlPl forgotPassword_ = _TranslationsMisskeyForgotPasswordPlPl._(_root);
	@override late final _TranslationsMisskeyGalleryPlPl gallery_ = _TranslationsMisskeyGalleryPlPl._(_root);
	@override late final _TranslationsMisskeyEmailPlPl email_ = _TranslationsMisskeyEmailPlPl._(_root);
	@override late final _TranslationsMisskeyPluginPlPl plugin_ = _TranslationsMisskeyPluginPlPl._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsPlPl preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsPlPl._(_root);
	@override late final _TranslationsMisskeyRegistryPlPl registry_ = _TranslationsMisskeyRegistryPlPl._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyPlPl aboutMisskey_ = _TranslationsMisskeyAboutMisskeyPlPl._(_root);
	@override late final _TranslationsMisskeyInstanceTickerPlPl instanceTicker_ = _TranslationsMisskeyInstanceTickerPlPl._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorPlPl serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorPlPl._(_root);
	@override late final _TranslationsMisskeyChannelPlPl channel_ = _TranslationsMisskeyChannelPlPl._(_root);
	@override late final _TranslationsMisskeyMenuDisplayPlPl menuDisplay_ = _TranslationsMisskeyMenuDisplayPlPl._(_root);
	@override late final _TranslationsMisskeyWordMutePlPl wordMute_ = _TranslationsMisskeyWordMutePlPl._(_root);
	@override late final _TranslationsMisskeyInstanceMutePlPl instanceMute_ = _TranslationsMisskeyInstanceMutePlPl._(_root);
	@override late final _TranslationsMisskeyThemePlPl theme_ = _TranslationsMisskeyThemePlPl._(_root);
	@override late final _TranslationsMisskeySfxPlPl sfx_ = _TranslationsMisskeySfxPlPl._(_root);
	@override late final _TranslationsMisskeyAgoPlPl ago_ = _TranslationsMisskeyAgoPlPl._(_root);
	@override late final _TranslationsMisskeyTimePlPl time_ = _TranslationsMisskeyTimePlPl._(_root);
	@override late final _TranslationsMisskeyX2faPlPl x2fa_ = _TranslationsMisskeyX2faPlPl._(_root);
	@override late final _TranslationsMisskeyPermissionsPlPl permissions_ = _TranslationsMisskeyPermissionsPlPl._(_root);
	@override late final _TranslationsMisskeyAuthPlPl auth_ = _TranslationsMisskeyAuthPlPl._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesPlPl antennaSources_ = _TranslationsMisskeyAntennaSourcesPlPl._(_root);
	@override late final _TranslationsMisskeyWeekdayPlPl weekday_ = _TranslationsMisskeyWeekdayPlPl._(_root);
	@override late final _TranslationsMisskeyWidgetsPlPl widgets_ = _TranslationsMisskeyWidgetsPlPl._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsPlPl widgetOptions_ = _TranslationsMisskeyWidgetOptionsPlPl._(_root);
	@override late final _TranslationsMisskeyCwPlPl cw_ = _TranslationsMisskeyCwPlPl._(_root);
	@override late final _TranslationsMisskeyPollPlPl poll_ = _TranslationsMisskeyPollPlPl._(_root);
	@override late final _TranslationsMisskeyVisibilityPlPl visibility_ = _TranslationsMisskeyVisibilityPlPl._(_root);
	@override late final _TranslationsMisskeyPostFormPlPl postForm_ = _TranslationsMisskeyPostFormPlPl._(_root);
	@override late final _TranslationsMisskeyProfilePlPl profile_ = _TranslationsMisskeyProfilePlPl._(_root);
	@override late final _TranslationsMisskeyExportOrImportPlPl exportOrImport_ = _TranslationsMisskeyExportOrImportPlPl._(_root);
	@override late final _TranslationsMisskeyChartsPlPl charts_ = _TranslationsMisskeyChartsPlPl._(_root);
	@override late final _TranslationsMisskeyInstanceChartsPlPl instanceCharts_ = _TranslationsMisskeyInstanceChartsPlPl._(_root);
	@override late final _TranslationsMisskeyTimelinesPlPl timelines_ = _TranslationsMisskeyTimelinesPlPl._(_root);
	@override late final _TranslationsMisskeyPlayPlPl play_ = _TranslationsMisskeyPlayPlPl._(_root);
	@override late final _TranslationsMisskeyPagesPlPl pages_ = _TranslationsMisskeyPagesPlPl._(_root);
	@override late final _TranslationsMisskeyRelayStatusPlPl relayStatus_ = _TranslationsMisskeyRelayStatusPlPl._(_root);
	@override late final _TranslationsMisskeyNotificationPlPl notification_ = _TranslationsMisskeyNotificationPlPl._(_root);
	@override late final _TranslationsMisskeyDeckPlPl deck_ = _TranslationsMisskeyDeckPlPl._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsPlPl webhookSettings_ = _TranslationsMisskeyWebhookSettingsPlPl._(_root);
	@override late final _TranslationsMisskeyAbuseReportPlPl abuseReport_ = _TranslationsMisskeyAbuseReportPlPl._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesPlPl moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesPlPl._(_root);
	@override late final _TranslationsMisskeyReversiPlPl reversi_ = _TranslationsMisskeyReversiPlPl._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsPlPl remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsPlPl._(_root);
	@override late final _TranslationsMisskeySearchPlPl search_ = _TranslationsMisskeySearchPlPl._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorPlPl watermarkEditor_ = _TranslationsMisskeyWatermarkEditorPlPl._(_root);
	@override late final _TranslationsMisskeyImageEffectorPlPl imageEffector_ = _TranslationsMisskeyImageEffectorPlPl._(_root);
	@override late final _TranslationsMisskeyQrPlPl qr_ = _TranslationsMisskeyQrPlPl._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingPlPl extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsPlPl vars_ = _TranslationsMisskeyImageEditingVarsPlPl._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorPlPl extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get header => 'Nagłówek';
	@override String get font => 'Czcionka';
	@override String get fontSerif => 'Szeryfowa';
	@override String get fontSansSerif => 'Bezszeryfowa';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatPlPl extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Zaproś';
	@override String get noHistory => 'Brak historii';
	@override String get members => 'Członkowie';
	@override String get home => 'Strona główna';
	@override String get send => 'Wyślij';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryPlPl extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Zawieszono';
	@override late final _TranslationsMisskeyDeliveryTypePlPl type_ = _TranslationsMisskeyDeliveryTypePlPl._(_root);
}

// Path: misskey.bubbleGame_
class _TranslationsMisskeyBubbleGamePlPl extends TranslationsMisskeyBubbleGameEnUs {
	_TranslationsMisskeyBubbleGamePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyBubbleGameScorePlPl score_ = _TranslationsMisskeyBubbleGameScorePlPl._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRolePlPl extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRolePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get assignTarget => 'Przydziel';
	@override String get priority => 'Priorytet';
	@override late final _TranslationsMisskeyRolePriorityPlPl priority_ = _TranslationsMisskeyRolePriorityPlPl._(_root);
	@override late final _TranslationsMisskeyRoleOptionsPlPl options_ = _TranslationsMisskeyRoleOptionsPlPl._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionPlPl extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Zmniejsza wysiłek związany z moderacją serwera dzięki automatycznemu rozpoznawaniu zawartości NSFW za pomocą uczenia maszynowego. To nieznacznie zwiększy obciążenie serwera.';
	@override String get setSensitiveFlagAutomatically => 'Oznacz jako NSFW';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailablePlPl extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailablePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get used => 'Ten adres e-mail jest już używany';
	@override String get format => 'Format tego adresu e-mail jest nieprawidłowy';
	@override String get disposable => 'Nie można używać jednorazowych adresów e-mail';
	@override String get mx => 'Ten serwer e-mail jest nieprawidłowy';
	@override String get smtp => 'Ten serwer e-mail nie odpowiada';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityPlPl extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publiczne';
	@override String get followers => 'Widoczne tylko dla obserwujących';
	@override String get private => 'Prywatne';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupPlPl extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Prawie na miejscu';
	@override String get emailAddressInfo => 'Podaj swój adres e-mail. Nie zostanie on upubliczniony.';
	@override String emailSent({required Object email}) => 'E-mail z potwierdzeniem został wysłany na Twój adres e-mail (${email}). Kliknij dołączony link, aby dokończyć tworzenie konta.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeletePlPl extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeletePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Usuń konto';
	@override String get mayTakeTime => 'Ponieważ usuwanie konta jest procesem wymagającym dużej ilości zasobów, jego ukończenie może zająć trochę czasu, w zależności od ilości utworzonej zawartości i liczby przesłanych plików.';
	@override String get sendEmail => 'Po zakończeniu usuwania konta na adres e-mail zarejestrowany na tym koncie zostanie wysłana wiadomość e-mail.';
	@override String get requestAccountDelete => 'Poproś o usunięcie konta';
	@override String get started => 'Usuwanie się rozpoczęło.';
	@override String get inProgress => 'Usuwanie jest obecnie w toku';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdPlPl extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get back => 'Wróć';
	@override String get reduceFrequencyOfThisAd => 'Pokazuj tę reklamę rzadziej';
	@override String get hide => 'Nigdy nie pokazuj';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordPlPl extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Wpisz adres e-mail użyty do rejestracji. Zostanie do niego wysłany link, za pomocą którego możesz zresetować hasło.';
	@override String get ifNoEmail => 'Jeżeli nie podano adresu e-mail podczas rejestracji, skontaktuj się z administratorem zamiast tego.';
	@override String get contactAdmin => 'Jeżeli Twoja instancja nie obsługuje adresów e-mail, skontaktuj się zamiast tego z administratorem, aby zresetować hasło.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryPlPl extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get my => 'Moja galeria';
	@override String get liked => 'Polubione wpisy';
	@override String get like => 'Polub';
	@override String get unlike => 'Cofnij polubienie';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailPlPl extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowPlPl follow_ = _TranslationsMisskeyEmailFollowPlPl._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestPlPl receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestPlPl._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginPlPl extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get install => 'Zainstaluj wtyczki';
	@override String get installWarn => 'Nie instaluj niezaufanych wtyczek.';
	@override String get manage => 'Zarządzanie wtyczkami';
	@override String get viewSource => 'Zobacz źródło';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsPlPl extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get list => 'Utworzone kopie zapasowe';
	@override String get saveNew => 'Zapisz nową kopię zapasową';
	@override String get loadFile => 'Załaduj z pliku';
	@override String get apply => 'Zastosuj do tego urządzenia';
	@override String get save => 'Zapisz zmiany';
	@override String get inputName => 'Proszę podać nazwę dla tej kopii zapasowej';
	@override String get cannotSave => 'Zapisanie nie powiodło się';
	@override String nameAlreadyExists({required Object name}) => 'Kopia zapasowa o nazwie "${name}" już istnieje. Proszę podać inną nazwę.';
	@override String applyConfirm({required Object name}) => 'Czy na pewno chcesz zastosować kopię zapasową "${name}" na tym urządzeniu? Istniejące ustawienia tego urządzenia zostaną nadpisane.';
	@override String saveConfirm({required Object name}) => 'Zapisać kopię zapasową jako ${name}?';
	@override String deleteConfirm({required Object name}) => 'Usunąć kopię zapasową ${name}?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Zmienić nazwę kopii zapasowej z "${old}" na "${new_}"?';
	@override String createdAt({required Object date, required Object time}) => 'Utworzony w: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Zaktualizowano w: ${date} ${time}';
	@override String get cannotLoad => 'Ładowanie nie powiodło się';
	@override String get invalidFile => 'Nieprawidłowy format pliku';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryPlPl extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Zakres';
	@override String get key => 'Klucz';
	@override String get keys => 'Klucz';
	@override String get domain => 'Domena';
	@override String get createKey => 'Utwórz klucz';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyPlPl extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey jest oprogramowanie open source rozwijanym przez syuilo od 2014.';
	@override String get contributors => 'Główni twórcy';
	@override String get allContributors => 'Wszyscy twórcy';
	@override String get source => 'Kod źródłowy';
	@override String get translation => 'Tłumacz Misskey';
	@override String get donate => 'Przekaż darowiznę na Misskey';
	@override String get morePatrons => 'Naprawdę doceniam wsparcie ze strony wielu niewymienionych tu osób. Dziękuję! 🥰';
	@override String get patrons => 'Wspierający';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerPlPl extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get none => 'Nigdy nie pokazuj';
	@override String get remote => 'Pokaż dla zdalnych użytkowników';
	@override String get always => 'Zawsze pokazuj';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorPlPl extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Automatycznie odśwież';
	@override String get dialog => 'Pokazuj okno ostrzeżenia';
	@override String get quiet => 'Pokazuj nieirytujące ostrzeżenia';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelPlPl extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get create => 'Utwórz kanał';
	@override String get edit => 'Edytuj kanał';
	@override String get setBanner => 'Ustaw baner';
	@override String get removeBanner => 'Usuń baner';
	@override String get featured => 'Na czasie';
	@override String get owned => 'Własny';
	@override String get following => 'Śledzeni';
	@override String usersCount({required Object n}) => '${n} uczestnicy';
	@override String notesCount({required Object n}) => '${n} wpisy';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayPlPl extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get top => 'Góra';
	@override String get hide => 'Ukryj';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMutePlPl extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMutePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Słowo do wyciszenia';
	@override String get muteWordsDescription2 => 'Otocz słowa kluczowe ukośnikami, aby używać wyrażeń regularnych.';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMutePlPl extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMutePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ukrywa wpisy z wymienionych instancji.';
	@override String get heading => 'Lista instancji do wyciszenia';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemePlPl extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Przeglądaj motywy';
	@override String get install => 'Zainstaluj motyw';
	@override String get manage => 'Zarządzanie motywami';
	@override String get code => 'Kod motywu';
	@override String get description => 'Opis';
	@override String installed({required Object name}) => 'Zainstalowano ${name}';
	@override String get installedThemes => 'Zainstalowane motywy';
	@override String get builtinThemes => 'Wbudowane motywy';
	@override String get alreadyInstalled => 'Motyw jest już zainstalowany';
	@override String get invalid => 'Format motywu jest nieprawidłowy.';
	@override String get make => 'Utwórz motyw';
	@override String get base => 'Podstawowy';
	@override String get addConstant => 'Dodaj stałą';
	@override String get constant => 'Stała';
	@override String get defaultValue => 'Domyślna wartość';
	@override String get color => 'Kolor';
	@override String get refProp => 'Nawiąż do właściwości';
	@override String get refConst => 'Nawiąż do stałej';
	@override String get key => 'Klucz';
	@override String get func => 'Funkcje';
	@override String get funcKind => 'Rodzaj funkcji';
	@override String get argument => 'Argument';
	@override String get basedProp => 'Nawiązana właściwość';
	@override String get alpha => 'Przezroczystość';
	@override String get darken => 'Ściemnij';
	@override String get lighten => 'Rozjaśnij';
	@override String get inputConstantName => 'Wprowadź nazwę stałej';
	@override String get importInfo => 'Jeżeli wprowadzisz tu kod motywu, możesz zaimportować go w edytorze motywu';
	@override String deleteConstantConfirm({required Object const_}) => 'Czy na pewno chcesz usunąć stała ${const_}?';
	@override late final _TranslationsMisskeyThemeKeysPlPl keys = _TranslationsMisskeyThemeKeysPlPl._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxPlPl extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get note => 'Wpisy';
	@override String get noteMy => 'Mój wpis';
	@override String get notification => 'Powiadomienia';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoPlPl extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get future => 'W przyszłości';
	@override String get justNow => 'Przed chwilą';
	@override String secondsAgo({required Object n}) => '${n} sek. temu';
	@override String minutesAgo({required Object n}) => '${n} min. temu';
	@override String hoursAgo({required Object n}) => '${n} godz. temu';
	@override String daysAgo({required Object n}) => '${n} dni temu';
	@override String weeksAgo({required Object n}) => '${n} tyg. temu';
	@override String monthsAgo({required Object n}) => '${n} mies. temu';
	@override String yearsAgo({required Object n}) => '${n} lat temu';
	@override String get invalid => 'Nie ma tu niczego';
}

// Path: misskey.time_
class _TranslationsMisskeyTimePlPl extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get second => 'sekunda';
	@override String get minute => 'minuta';
	@override String get hour => 'godz.';
	@override String get day => 'dzień';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faPlPl extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Zarejestrowałeś już urządzenie do uwierzytelniania dwuskładnikowego.';
	@override String step1({required Object a, required Object b}) => 'Najpierw, zainstaluj aplikację uwierzytelniającą (taką jak ${a} lub ${b}) na swoim urządzeniu.';
	@override String get step2 => 'Następnie, zeskanuje kod QR z ekranu.';
	@override String get step3 => 'Wprowadź token podany w aplikacji, aby ukończyć konfigurację.';
	@override String get step4 => 'Od teraz, przy każdej próbie logowania otrzymasz prośbę o token logowania.';
	@override String removeKeyConfirm({required Object name}) => 'Usunąć kopię zapasową ${name}?';
	@override String get renewTOTPConfirm => 'Spowoduje to, że kody weryfikacyjne z poprzedniej aplikacji przestaną działać';
	@override String get renewTOTPOk => 'Rekonfiguruj';
	@override String get renewTOTPCancel => 'Nie teraz';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsPlPl extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Wyświetl informacje o swoim koncie';
	@override String get writeAccount => 'Edytuj swoje informacje o koncie';
	@override String get readBlocks => 'Zobacz listę osób, które zablokowałeś(-aś)';
	@override String get writeBlocks => 'Edytuj listę osób, które zablokowałeś(-aś)';
	@override String get readDrive => 'Dostęp do plików i katalogów ze Twojego dysku';
	@override String get writeDrive => 'Edycja i usuwanie plików i katalogów z Twojego dysku.';
	@override String get readFavorites => 'Wyświetlanie Twojej listy ulubionych.';
	@override String get writeFavorites => 'Edycja Twojej listy ulubionych.';
	@override String get readFollowing => 'Wyświetlanie informacji o obserwowanych';
	@override String get writeFollowing => 'Obserwowanie lub cofanie obserwacji innych kont';
	@override String get readMessaging => 'Zobacz swoje czaty';
	@override String get writeMessaging => 'Tworzenie lub usuwanie wiadomości czatu';
	@override String get readMutes => 'Wyświetlanie listy osób, które wyciszyłeś(-aś)';
	@override String get writeMutes => 'Edycja listy osób, które wyciszyłeś(-aś)';
	@override String get writeNotes => 'Tworzenie lub usuwanie wpisów';
	@override String get readNotifications => 'Wyświetlanie powiadomień';
	@override String get writeNotifications => 'Działanie na powiadomieniach';
	@override String get readReactions => 'Wyświetlanie reakcji';
	@override String get writeReactions => 'Edycja reakcji';
	@override String get writeVotes => 'Głosowanie w ankiecie';
	@override String get readPages => 'Wyświetlanie Twoich stron';
	@override String get writePages => 'Edycja lub usuwanie Twoich stron';
	@override String get readPageLikes => 'Wyświetlanie polubień na stronach';
	@override String get writePageLikes => 'Edycja polubień na stronach';
	@override String get readUserGroups => 'Wyświetlanie grup użytkownika';
	@override String get writeUserGroups => 'Edycja lub usuwanie grup użytkownika';
	@override String get readChannels => 'Zobacz swoje kanały';
	@override String get writeChannels => 'Edytuj swoje kanały';
	@override String get readGallery => 'Zobacz swoją galerię';
	@override String get writeGallery => 'Edytuj swoją galerię';
	@override String get readGalleryLikes => 'Wyświetlanie listy polubionych postów w galerii';
	@override String get writeGalleryLikes => 'Edytowanie listy polubionych postów w galerii';
	@override String get writeChat => 'Tworzenie lub usuwanie wiadomości czatu';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthPlPl extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Przyznawanie uprawnień aplikacji';
	@override String shareAccess({required Object name}) => 'Czy chcesz autoryzować „${name}” do dostępu do tego konta?';
	@override String get shareAccessAsk => 'Czy na pewno chcesz zezwolić tej aplikacji na dostęp do Twojego konta?';
	@override String permission({required Object name}) => '${name} żąda następujących uprawnień';
	@override String get permissionAsk => 'Ta aplikacja wymaga następujących uprawnień:';
	@override String get pleaseGoBack => 'Proszę, wróć do aplikacji';
	@override String get callback => 'Powracanie do aplikacji';
	@override String get denied => 'Odmowa dostępu';
	@override String get pleaseLogin => 'Zaloguj się, aby autoryzować aplikacje.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesPlPl extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get all => 'Wszystkie wpisy';
	@override String get homeTimeline => 'Wpisy obserwowanych użytkowników';
	@override String get users => 'Wpisy określonych użytkowników';
	@override String get userList => 'Wpisy z określonej listy użytkowników';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayPlPl extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Niedziela';
	@override String get monday => 'Poniedziałek';
	@override String get tuesday => 'Wtorek';
	@override String get wednesday => 'Środa';
	@override String get thursday => 'Czwartek';
	@override String get friday => 'Piątek';
	@override String get saturday => 'Sobota';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsPlPl extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profil';
	@override String get instanceInfo => 'Informacje o instancji';
	@override String get memo => 'Przypięte notatki';
	@override String get notifications => 'Powiadomienia';
	@override String get timeline => 'Oś czasu';
	@override String get calendar => 'Kalendarz';
	@override String get trends => 'Na czasie';
	@override String get clock => 'Zegar';
	@override String get rss => 'Czytnik RSS';
	@override String get activity => 'Aktywność';
	@override String get photos => 'Zdjęcia';
	@override String get digitalClock => 'Zegar cyfrowy';
	@override String get unixClock => 'Zegar UNIX';
	@override String get federation => 'Federacja';
	@override String get instanceCloud => 'Chmura instancji';
	@override String get postForm => 'Formularz tworzenia wpisu';
	@override String get slideshow => 'Pokaz slajdów';
	@override String get button => 'Przycisk';
	@override String get onlineUsers => 'Użytkownicy online';
	@override String get jobQueue => 'Kolejka zadań';
	@override String get serverMetric => 'Metryka serwera';
	@override String get aiscript => 'Konsola AiScript';
	@override String get aichan => 'Ai';
	@override String get userList => 'Lista użytkowników';
	@override late final _TranslationsMisskeyWidgetsUserListPlPl userList_ = _TranslationsMisskeyWidgetsUserListPlPl._(_root);
	@override String get clicker => 'Clicker';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsPlPl extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get height => 'Wysokość';
	@override late final _TranslationsMisskeyWidgetOptionsButtonPlPl button_ = _TranslationsMisskeyWidgetOptionsButtonPlPl._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockPlPl clock_ = _TranslationsMisskeyWidgetOptionsClockPlPl._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsPlPl birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsPlPl._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwPlPl extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Ukryj';
	@override String get show => 'Załaduj więcej';
	@override String chars({required Object count}) => '${count} znaków';
	@override String files({required Object count}) => '${count} plików';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollPlPl extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Wymagane są przynajmniej dwie opcje';
	@override String choiceN({required Object n}) => 'Opcja ${n}';
	@override String get noMore => 'Nie możesz dodać więcej opcji';
	@override String get canMultipleVote => 'Pozwól na wiele odpowiedzi';
	@override String get expiration => 'Ankieta kończy się';
	@override String get infinite => 'Nigdy';
	@override String get at => 'Zakończ o…';
	@override String get after => 'Zakończ po…';
	@override String get deadlineDate => 'Data zakończenia';
	@override String get deadlineTime => 'godz.';
	@override String get duration => 'Czas trwania';
	@override String votesCount({required Object n}) => '${n} głosów';
	@override String totalVotes({required Object n}) => 'Łącznie ${n} głosów';
	@override String get vote => 'Głosowanie w ankiecie';
	@override String get showResult => 'Pokaż wyniki';
	@override String get voted => 'Zagłosowano';
	@override String get closed => 'Zakończono';
	@override String remainingDays({required Object d, required Object h}) => 'Pozostało ${d} dni i ${h} godzin';
	@override String remainingHours({required Object h, required Object m}) => 'Pozostali ${h} godzin i ${m} minut';
	@override String remainingMinutes({required Object m, required Object s}) => 'Pozostało ${m} minut i ${s} sekund';
	@override String remainingSeconds({required Object s}) => 'Pozostało ${s} sekund';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityPlPl extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get public => 'Publiczny';
	@override String get publicDescription => 'Twój wpis pojawi się w publicznych osiach czasu';
	@override String get home => 'Strona główna';
	@override String get homeDescription => 'Publikuj tylko na głównej osi czasu';
	@override String get followers => 'Obserwujący';
	@override String get followersDescription => 'Widoczne tylko dla obserwujących';
	@override String get specified => 'Bezpośredni';
	@override String get specifiedDescription => 'Napisz tylko określonym użytkownikom';
	@override String get disableFederationDescription => 'Nie przesyłaj do innych instancji';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormPlPl extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Odpowiedz na ten wpis...';
	@override String get quotePlaceholder => 'Zacytuj ten wpis…';
	@override String get channelPlaceholder => 'Publikuj na kanale...';
	@override late final _TranslationsMisskeyPostFormHowToUsePlPl howToUse_ = _TranslationsMisskeyPostFormHowToUsePlPl._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersPlPl placeholders_ = _TranslationsMisskeyPostFormPlaceholdersPlPl._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfilePlPl extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfilePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nazwa';
	@override String get username => 'Nazwa użytkownika';
	@override String get description => 'Opis';
	@override String get youCanIncludeHashtags => 'Możesz umieścić hashtagi w swoim opisie.';
	@override String get metadata => 'Dodatkowe informacje';
	@override String get metadataEdit => 'Edytuj dodatkowe informacje';
	@override String get metadataDescription => 'Możesz wyświetlać do czterech sekcji dodatkowych informacji na swoim profilu.';
	@override String get metadataLabel => 'Etykieta';
	@override String get metadataContent => 'Treść';
	@override String get changeAvatar => 'Zmień awatar';
	@override String get changeBanner => 'Zmień baner';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportPlPl extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Wszystkie wpisy';
	@override String get favoritedNotes => 'Ulubione wpisy';
	@override String get clips => 'Klip';
	@override String get followingList => 'Obserwowani';
	@override String get muteList => 'Wycisz';
	@override String get blockingList => 'Zablokuj';
	@override String get userLists => 'Listy';
	@override String get excludeMutingUsers => 'Wyklucz wyciszonych użytkowników';
	@override String get excludeInactiveUsers => 'Wyklucz nieaktywnych użytkowników';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsPlPl extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Federacja';
	@override String get apRequest => 'Żądania';
	@override String get usersIncDec => 'Różnica w liczbie użytkowników';
	@override String get usersTotal => 'Łącznie # użytkowników';
	@override String get activeUsers => 'Aktywni użytkownicy';
	@override String get notesIncDec => 'Różnica w liczbie wpisów';
	@override String get notesTotal => 'Całkowita liczba wpisów';
	@override String get filesIncDec => 'Różnica w liczbie plików';
	@override String get filesTotal => 'Całkowita liczba plików';
	@override String get storageUsageIncDec => 'Różnica w wykorzystaniu pamięci';
	@override String get storageUsageTotal => 'Całkowite wykorzystanie pamięci';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsPlPl extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Żądania';
	@override String get users => 'Różnica w liczbie użytkowników';
	@override String get notes => 'Różnica w liczbie wpisów';
	@override String get notesTotal => 'Łącznie # wpisów';
	@override String get ff => 'Różnica w # obserwujących';
	@override String get ffTotal => 'Łączna liczba # obserwujących';
	@override String get cacheSize => 'Różnica w rozmiarze pamięci podręcznej';
	@override String get cacheSizeTotal => 'Łączny rozmiar pamięci podręcznej';
	@override String get files => 'Różnica # plików';
	@override String get filesTotal => 'Łącznie # plików';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesPlPl extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get home => 'Strona główna';
	@override String get local => 'Lokalne';
	@override String get social => 'Społeczność';
	@override String get global => 'Globalna';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayPlPl extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'Zobacz źródło';
	@override String get featured => 'Wyróżnione';
	@override String get title => 'Tytuł';
	@override String get script => 'Skrypt';
	@override String get summary => 'Opis';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesPlPl extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Utwórz stronę';
	@override String get editPage => 'Edytuj tę stronę';
	@override String get readPage => 'Aktywowano widok źródła';
	@override String get pageSetting => 'Ustawienia strony';
	@override String get nameAlreadyExists => 'Określony adres URL strony już istnieje';
	@override String get invalidNameTitle => 'Podany adres URL strony jest nieprawidłowy';
	@override String get invalidNameText => 'Sprawdź, czy nie jest puste';
	@override String get editThisPage => 'Edytuj tę stronę';
	@override String get viewSource => 'Zobacz źródło';
	@override String get viewPage => 'Wyświetlanie Twoich stron';
	@override String get like => 'Lubię';
	@override String get unlike => 'Cofnij polubienie';
	@override String get my => 'Moje strony';
	@override String get liked => 'Polubione strony';
	@override String get featured => 'Wyróżnione';
	@override String get inspector => 'Inspektor';
	@override String get contents => 'Zawartość';
	@override String get content => 'Blokada strony';
	@override String get variables => 'Zmienne';
	@override String get title => 'Tytuł';
	@override String get url => 'URL strony';
	@override String get summary => 'Podsumowanie strony';
	@override String get alignCenter => 'Wyśrodkuj elementy';
	@override String get hideTitleWhenPinned => 'Ukryj tytuł strony, gdy przypięta do profilu';
	@override String get font => 'Czcionka';
	@override String get fontSerif => 'Szeryfowa';
	@override String get fontSansSerif => 'Bezszeryfowa';
	@override String get eyeCatchingImageSet => 'Ustaw przyciągające wzrok zdjęcie';
	@override String get eyeCatchingImageRemove => 'Usuń przyciągające wzrok zdjęcie';
	@override String get chooseBlock => 'Dodaj blok';
	@override String get selectType => 'Wybierz typ';
	@override String get contentBlocks => 'Zawartość';
	@override String get inputBlocks => 'Wejście';
	@override String get specialBlocks => 'Specjalne';
	@override late final _TranslationsMisskeyPagesBlocksPlPl blocks = _TranslationsMisskeyPagesBlocksPlPl._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusPlPl extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Oczekujące';
	@override String get accepted => 'Zaakceptowano';
	@override String get rejected => 'Odrzucono';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationPlPl extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Pomyślnie wysłano plik';
	@override String youGotMention({required Object name}) => '${name} wspomniał(a) o Tobie';
	@override String youGotReply({required Object name}) => '${name} odpowiedział(a) Tobie';
	@override String youGotQuote({required Object name}) => '${name} zacytował(a) Ciebie';
	@override String youRenoted({required Object name}) => '${name} udostępnił(a) Twój wpis';
	@override String get youWereFollowed => 'Zaobserwował(a) Cię';
	@override String get youReceivedFollowRequest => 'Otrzymałeś(-aś) prośbę o możliwość obserwacji';
	@override String get yourFollowRequestAccepted => 'Twoja prośba o możliwość obserwacji została przyjęta';
	@override String get pollEnded => 'Wyniki ankiety stały się dostępne';
	@override String unreadAntennaNote({required Object name}) => 'Antena ${name}';
	@override String get emptyPushNotificationMessage => 'Powiadomienia push zostały zaktualizowane';
	@override late final _TranslationsMisskeyNotificationTypesPlPl types_ = _TranslationsMisskeyNotificationTypesPlPl._(_root);
	@override late final _TranslationsMisskeyNotificationActionsPlPl actions_ = _TranslationsMisskeyNotificationActionsPlPl._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckPlPl extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Zawsze pokazuj główną kolumnę';
	@override String get columnAlign => 'Wyrównaj kolumny';
	@override String get addColumn => 'Dodaj kolumnę';
	@override String get configureColumn => 'Ustawienia kolumny';
	@override String get swapLeft => 'Przesuń w lewo';
	@override String get swapRight => 'Przesuń w prawo';
	@override String get swapUp => 'Zamień z powyższym';
	@override String get swapDown => 'Zamień z poniższym';
	@override String get stackLeft => 'Przypnij do lewej';
	@override String get popRight => 'Odepnij w prawo';
	@override String get profile => 'Profil';
	@override String get newProfile => 'Nowy profil';
	@override String get deleteProfile => 'Usuń profil';
	@override String get widgetsIntroduction => 'Wybierz "Edytuj widżety" w menu kolumny i dodaj widżet.';
	@override late final _TranslationsMisskeyDeckColumnsPlPl columns_ = _TranslationsMisskeyDeckColumnsPlPl._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsPlPl extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Stwórz Webhook';
	@override String get name => 'Nazwa';
	@override String get secret => 'Sekret';
	@override String get active => 'Właczono';
	@override late final _TranslationsMisskeyWebhookSettingsEventsPlPl events_ = _TranslationsMisskeyWebhookSettingsEventsPlPl._(_root);
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportPlPl extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientPlPl notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientPlPl._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesPlPl extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Zawieś';
	@override String get resetPassword => 'Zresetuj hasło';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiPlPl extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get total => 'Łącznie';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsPlPl extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPlPl noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPlPl._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchPlPl extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Wszystkie';
	@override String get searchScopeLocal => 'Lokalne';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorPlPl extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'Przezroczystość';
	@override String get scale => 'Rozmiar';
	@override String get text => 'Tekst';
	@override String get type => 'Typ';
	@override String get image => 'Zdjęcia';
	@override String get advanced => 'Zaawansowane';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorPlPl extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsPlPl fxProps_ = _TranslationsMisskeyImageEffectorFxPropsPlPl._(_root);
}

// Path: misskey.qr_
class _TranslationsMisskeyQrPlPl extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Wyświetlanie';
	@override String get raw => 'Tekst';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsPlPl extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Nazwa pliku';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypePlPl extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get none => 'Publikowanie';
}

// Path: misskey.bubbleGame_.score_
class _TranslationsMisskeyBubbleGameScorePlPl extends TranslationsMisskeyBubbleGameScoreEnUs {
	_TranslationsMisskeyBubbleGameScorePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get score => 'Wynik';
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityPlPl extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get low => 'Niski';
	@override String get middle => 'Średnie';
	@override String get high => 'Wysoki';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsPlPl extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get canManageCustomEmojis => 'Zarządzaj niestandardowymi Emoji';
	@override String get canManageAvatarDecorations => 'Zarządzaj dekoracjami awatara';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowPlPl extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zaobserwował(a) Cię';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestPlPl extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Otrzymano prośbę o możliwość obserwacji';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysPlPl extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Akcent';
	@override String get bg => 'Tło';
	@override String get fg => 'Tekst';
	@override String get focus => 'Skupienie';
	@override String get indicator => 'Wskaźnik';
	@override String get panel => 'Panel';
	@override String get shadow => 'Cień';
	@override String get header => 'Nagłówek';
	@override String get navBg => 'Tło paska bocznego';
	@override String get navFg => 'Tekst paska bocznego';
	@override String get navActive => 'Tekst paska bocznego (aktywny)';
	@override String get navIndicator => 'Wskaźnik paska bocznego';
	@override String get link => 'Odnośnik';
	@override String get hashtag => 'Hashtag';
	@override String get mention => 'Wspomnij';
	@override String get mentionMe => 'Wspomnienia (ja)';
	@override String get renote => 'Udostępnij';
	@override String get modalBg => 'Tło modalu';
	@override String get divider => 'Rozdzielacz';
	@override String get scrollbarHandle => 'Uchwyt paska przewijania';
	@override String get scrollbarHandleHover => 'Uchwyt paska przewijania (po najechaniu)';
	@override String get dateLabelFg => 'Tekst z datą';
	@override String get infoBg => 'Tło informacji';
	@override String get infoFg => 'Tekst informacji';
	@override String get infoWarnBg => 'Tło ostrzeżenia';
	@override String get infoWarnFg => 'Tekst ostrzeżenia';
	@override String get toastBg => 'Tło powiadomień';
	@override String get toastFg => 'Tekst powiadomień';
	@override String get buttonBg => 'Tło przycisku';
	@override String get buttonHoverBg => 'Tło przycisku (po najechaniu)';
	@override String get inputBorder => 'Obramowanie pola wejścia';
	@override String get badge => 'Odznaka';
	@override String get messageBg => 'Tło czatu';
	@override String get fgHighlighted => 'Wyróżniony tekst';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListPlPl extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Wybierz listę';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonPlPl extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Kolorowe';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockPlPl extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get size => 'Rozmiar';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsPlPl extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get period => 'Czas trwania';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUsePlPl extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUsePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Widoczność';
	@override String get menu_title => 'Menu';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersPlPl extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get a => 'Co się dzieje?';
	@override String get b => 'Co się wydarzyło?';
	@override String get c => 'Co Ci chodzi po głowie?';
	@override String get d => 'Czy masz coś do powiedzenia?';
	@override String get e => 'Zacznij coś pisać…';
	@override String get f => 'Czekamy, aż coś napiszesz.';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksPlPl extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get text => 'Tekst';
	@override String get textarea => 'Pole tekstowe';
	@override String get section => 'Sekcja';
	@override String get image => 'Zdjęcia';
	@override String get button => 'Przycisk';
	@override String get note => 'Osadzony wpis';
	@override late final _TranslationsMisskeyPagesBlocksNotePlPl note_ = _TranslationsMisskeyPagesBlocksNotePlPl._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesPlPl extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get all => 'Wszystkie';
	@override String get follow => 'Nowi obserwujący';
	@override String get mention => 'Wspomnij';
	@override String get reply => 'Odpowiedzi';
	@override String get renote => 'Udostępnij';
	@override String get quote => 'Cytuj';
	@override String get reaction => 'Reakcja';
	@override String get receiveFollowRequest => 'Otrzymano prośbę o możliwość obserwacji';
	@override String get followRequestAccepted => 'Przyjęto prośbę o możliwość obserwacji';
	@override String get login => 'Zaloguj się';
	@override String get app => 'Powiadomienia z aplikacji';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsPlPl extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'zaobserwował cię z powrotem';
	@override String get reply => 'Odpowiedz';
	@override String get renote => 'Udostępnij';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsPlPl extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get main => 'Główna';
	@override String get widgets => 'Widżety';
	@override String get notifications => 'Powiadomienia';
	@override String get tl => 'Oś czasu';
	@override String get antenna => 'Anteny';
	@override String get list => 'Listy';
	@override String get channel => 'Kanały';
	@override String get mentions => 'Wspomnienia';
	@override String get direct => 'Bezpośredni';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsPlPl extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Po zaobserwowaniu użytkownika';
	@override String get followed => 'Po zostaniu zaobserwowanym';
	@override String get note => 'Po opublikowaniu wpisu';
	@override String get reply => 'Po otrzymaniu odpowiedzi';
	@override String get renote => 'Po udostępnieniu wpisu';
	@override String get reaction => 'Po otrzymaniu reakcji';
	@override String get mention => 'Po zostaniu wspomnianym';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientPlPl extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePlPl recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePlPl._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPlPl extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nie znaleziono';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsPlPl extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsPlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Rozmiar';
	@override String get size => 'Rozmiar';
	@override String get color => 'Kolor';
	@override String get opacity => 'Przezroczystość';
	@override String get lightness => 'Rozjaśnij';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNotePlPl extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNotePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get id => 'ID wpisu';
	@override String get idDescription => 'Możesz też wkleić adres URL wpisu, aby go ustawić.';
	@override String get detailed => 'Szczegółowy widok';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePlPl extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypePlPl._(TranslationsPlPl root) : this._root = root, super.internal(root);

	final TranslationsPlPl _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Adres e-mail';
}
