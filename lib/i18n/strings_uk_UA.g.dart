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
class TranslationsUkUa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUkUa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ukUa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <uk-UA>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsUkUa _root = this; // ignore: unused_field

	@override 
	TranslationsUkUa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUkUa(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$aria$uk_UA aria = _Translations$aria$uk_UA._(_root);
	@override late final _Translations$misskey$uk_UA misskey = _Translations$misskey$uk_UA._(_root);
}

// Path: aria
class _Translations$aria$uk_UA extends Translations$aria$en_US {
	_Translations$aria$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Підписатися на '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria перекладається на різні мови волонтерами. Ви можете допомогти: '),
		link,
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		n,
		const TextSpan(text: ' користувачів онлайн'),
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		const TextSpan(text: 'Поширено '),
		user,
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Ви впевнені, що хочете відписатися від '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' щось сказав(ла)'),
	]);
}

// Path: misskey
class _Translations$misskey$uk_UA extends Translations$misskey$en_US {
	_Translations$misskey$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Українська';
	@override String get headlineMisskey => 'Мережа, з’єднана нотатками';
	@override String get introMisskey => 'Ласкаво просимо! Misskey - децентралізована служба мікроблогів з відкритим кодом.\nСтворюйте "нотатки", щоб поділитися тим, що відбувається, і розповісти всім про себе 📡\nЗа допомогою "реакцій" ви також можете швидко висловити свої почуття щодо нотаток інших 👍\nДосліджуймо новий світ! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} є одним із сервісів (які називаються інстансами Misskey), що використовують платформу з відкритим вихідним кодом <b>Misskey</b>.';
	@override String monthAndDay({required Object month, required Object day}) => '${month}/${day}';
	@override String get search => 'Пошук';
	@override String get reset => 'Скинути';
	@override String get notifications => 'Сповіщення';
	@override String get username => 'Ім\'я користувача';
	@override String get password => 'Пароль';
	@override String get initialPasswordForSetup => 'Початковий пароль для налаштування';
	@override String get initialPasswordIsIncorrect => 'Початковий пароль для налаштування неправильний';
	@override String get initialPasswordForSetupDescription => 'Використайте пароль, вказаний у конфігураційному файлі, якщо ви встановлювали Misskey власноруч.\nЯкщо використовуєте сервіси хостингу Misskey, використайте наданий пароль.\nЯкщо ви не маєте паролю, лишіть порожнім щоб продовжити. ';
	@override String get forgotPassword => 'Я забув пароль';
	@override String get fetchingAsApObject => 'Отримуємо з федіверсу...';
	@override String get ok => 'OK';
	@override String get gotIt => 'Зрозуміло!';
	@override String get cancel => 'Скасувати';
	@override String get noThankYou => 'Не зараз';
	@override String get enterUsername => 'Введіть ім\'я користувача';
	@override String renotedBy({required Object user}) => 'Поширено ${user}';
	@override String get noNotes => 'Немає нотаток';
	@override String get noNotifications => 'Немає сповіщень';
	@override String get instance => 'Інстанс';
	@override String get settings => 'Налаштування';
	@override String get notificationSettings => 'Параметри сповіщень';
	@override String get basicSettings => 'Основні налаштування';
	@override String get otherSettings => 'Інші налаштування';
	@override String get openInWindow => 'Відкрити у вікні';
	@override String get profile => 'Профіль';
	@override String get timeline => 'Стрічка';
	@override String get noAccountDescription => 'Цей користувач ще нічого не написав про себе';
	@override String get login => 'Увійти';
	@override String get loggingIn => 'Здійснюємо вхід...';
	@override String get logout => 'Вийти';
	@override String get signup => 'Реєстрація';
	@override String get uploading => 'Завантаження...';
	@override String get save => 'Зберегти';
	@override String get users => 'Користувачі';
	@override String get addUser => 'Додати користувача';
	@override String get favorite => 'Обране';
	@override String get favorites => 'Обране';
	@override String get unfavorite => 'Видалити з обраного';
	@override String get favorited => 'Додано до вподобаних.';
	@override String get alreadyFavorited => 'Вже додано до вподобаних.';
	@override String get cantFavorite => 'Неможливо вподобати.';
	@override String get pin => 'Закріпити';
	@override String get unpin => 'Відкріпити';
	@override String get copyContent => 'Скопіювати контент';
	@override String get copyLink => 'Скопіювати посилання';
	@override String get copyRemoteLink => 'Копіювати віддалене посилання';
	@override String get copyLinkRenote => 'Копіювати посилання на поширення';
	@override String get delete => 'Видалити';
	@override String get deleteAndEdit => 'Видалити й редагувати';
	@override String get deleteAndEditConfirm => 'Ви впевнені, що хочете видалити цю нотатку та відредагувати її? Ви втратите всі реакції, поширення та відповіді на неї.';
	@override String get addToList => 'Додати до списку';
	@override String get addToAntenna => 'Додати в антени';
	@override String get sendMessage => 'Надіслати повідомлення';
	@override String get copyRSS => 'Скопіювати RSS';
	@override String get copyUsername => 'Скопіювати ім’я користувача';
	@override String get copyUserId => 'Копіювати ID користувача';
	@override String get copyNoteId => 'Копіювати ID нотатки';
	@override String get copyFileId => 'Скопіювати ідентифікатор файлу.';
	@override String get copyFolderId => 'Копіювати ID теки';
	@override String get copyProfileUrl => 'Копіювати URL профілю';
	@override String get searchUser => 'Пошук користувачів';
	@override String get searchThisUsersNotes => 'Пошук нотаток користувача';
	@override String get reply => 'Відповісти';
	@override String get loadMore => 'Показати більше';
	@override String get showMore => 'Показати більше';
	@override String get showLess => 'Закрити';
	@override String get youGotNewFollower => 'Новий підписник';
	@override String get receiveFollowRequest => 'Отримано запит на підписку';
	@override String get followRequestAccepted => 'Підписка прийнята';
	@override String get mention => 'Згадка';
	@override String get mentions => 'Згадки';
	@override String get directNotes => 'Прямі повідомлення';
	@override String get importAndExport => 'Імпорт та експорт';
	@override String get import => 'Імпорт';
	@override String get export => 'Експорт';
	@override String get files => 'Файли';
	@override String get download => 'Завантажити';
	@override String driveFileDeleteConfirm({required Object name}) => 'Ви впевнені, що хочете видалити файл ${name}? Нотатки із цим файлом також буде видалено.';
	@override String unfollowConfirm({required Object name}) => 'Ви впевнені, що хочете відписатися від ${name}?';
	@override String cancelFollowRequestConfirm({required Object name}) => 'Ви впевнені, що хочете скасувати запит на підписку до ${name}?';
	@override String rejectFollowRequestConfirm({required Object name}) => 'Ви впевнені, що хочете відхилити запит на підписку від ${name}?';
	@override String get exportRequested => 'Експортування розпочато. Це може зайняти деякий час. Після завершення експорту отриманий файл буде додано на диск.';
	@override String get importRequested => 'Імпортування розпочато. Це може зайняти деякий час.';
	@override String get lists => 'Списки';
	@override String get noLists => 'Немає списків';
	@override String get note => 'Запис';
	@override String get notes => 'Записи';
	@override String get following => 'Підписки';
	@override String get followers => 'Підписники';
	@override String get followsYou => 'Підписаний(-а) на вас';
	@override String get createList => 'Створити список';
	@override String get manageLists => 'Управління списками';
	@override String get error => 'Помилка';
	@override String get somethingHappened => 'Щось пішло не так';
	@override String get retry => 'Спробувати знову';
	@override String get pageLoadError => 'Помилка при завантаженні сторінки';
	@override String get pageLoadErrorDescription => 'Зазвичай це пов’язано з помилками мережі або кешем браузера. Очистіть кеш або почекайте трохи й спробуйте ще раз.';
	@override String get serverIsDead => 'Відповіді від сервера немає. Зачекайте деякий час і повторіть спробу.';
	@override String get youShouldUpgradeClient => 'Перезавантажте та використовуйте нову версію клієнта, щоб переглянути цю сторінку.';
	@override String get enterListName => 'Введіть назву списку';
	@override String get privacy => 'Конфіденційність';
	@override String get makeFollowManuallyApprove => 'Підтверджувати підписників уручну';
	@override String get defaultNoteVisibility => 'Видимість за замовчуванням';
	@override String get follow => 'Підписатись';
	@override String get followRequest => 'Запит на підписку';
	@override String get followRequests => 'Запити на підписку';
	@override String get unfollow => 'Відписатись';
	@override String get followRequestPending => 'Очікуючі запити на підписку';
	@override String get enterEmoji => 'Введіть емодзі';
	@override String get renote => 'Поширити';
	@override String get unrenote => 'Відміна поширення';
	@override String get renoted => 'Поширити запис.';
	@override String renotedToX({required Object name}) => 'Поширено до ${name}';
	@override String get cantRenote => 'Неможливо поширити.';
	@override String get cantReRenote => 'Поширення не можливо поширити.';
	@override String get quote => 'Цитата';
	@override String get inChannelRenote => 'Поширено у канал';
	@override String get inChannelQuote => 'Цитата в каналі';
	@override String get renoteToChannel => 'Поширити в канал';
	@override String get renoteToOtherChannel => 'Поширити в інший канал';
	@override String get pinnedNote => 'Закріплений запис';
	@override String get pinned => 'Закріпити';
	@override String get you => 'Ви';
	@override String get clickToShow => 'Натисніть для перегляду';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Додати';
	@override String get reaction => 'Реакції';
	@override String get reactions => 'Реакції';
	@override String get emojiPicker => 'Вибір реакції';
	@override String get pinnedEmojisForReactionSettingDescription => 'Виберіть емодзі, які будуть закріплені й зображатимуться під час реакції';
	@override String get pinnedEmojisSettingDescription => 'Виберіть емодзі, які будуть закріплені й зображатимуться під час перегляду вибору емодзі';
	@override String get emojiPickerDisplay => 'Зображення вибору емодзі';
	@override String get overwriteFromPinnedEmojisForReaction => 'Перевизначити налаштування реакцій';
	@override String get overwriteFromPinnedEmojis => 'Перевизначити загальні налаштування';
	@override String get reactionSettingDescription2 => 'Перемістити щоб змінити порядок, Клацнути мишою щоб видалити, Натиснути "+" щоб додати.';
	@override String get rememberNoteVisibility => 'Пам’ятати параметри видимісті';
	@override String get attachCancel => 'Видалити вкладення';
	@override String get deleteFile => 'Видалити файл';
	@override String get markAsSensitive => 'Позначити як NSFW';
	@override String get unmarkAsSensitive => 'Зняти позначку NSFW';
	@override String get enterFileName => 'Введіть ім\'я файлу';
	@override String get mute => 'Ігнорувати';
	@override String get unmute => 'Показувати';
	@override String get renoteMute => 'Приховати поширення';
	@override String get renoteUnmute => 'Показувати поширення';
	@override String get block => 'Заблокувати';
	@override String get unblock => 'Розблокувати';
	@override String get suspend => 'Призупинити';
	@override String get unsuspend => 'Відновити';
	@override String get blockConfirm => 'Ви впевнені, що хочете заблокувати цей акаунт?';
	@override String get unblockConfirm => 'Ви впевнені, що хочете розблокувати цей акаунт?';
	@override String get suspendConfirm => 'Ви впевнені, що хочете призупинити цей акаунт?';
	@override String get unsuspendConfirm => 'Ви впевнені, що хочете відновити цей акаунт?';
	@override String get selectList => 'Виберіть список';
	@override String get editList => 'Редагувати список';
	@override String get selectChannel => 'Виберіть канал';
	@override String get selectAntenna => 'Виберіть антену';
	@override String get editAntenna => 'Редагувати антену';
	@override String get createAntenna => 'Створити антену';
	@override String get selectWidget => 'Виберіть віджет';
	@override String get editWidgets => 'Редагувати віджети';
	@override String get editWidgetsExit => 'Готово';
	@override String get customEmojis => 'Кастомні емоджі';
	@override String get emoji => 'Емодзі';
	@override String get emojis => 'Емодзі';
	@override String get emojiName => 'Назва емодзі';
	@override String get emojiUrl => 'URL емодзі';
	@override String get addEmoji => 'Додати емодзі';
	@override String get settingGuide => 'Рекомендована конфігурація';
	@override String get cacheRemoteFiles => 'Кешувати дані з інших інстансів';
	@override String get cacheRemoteFilesDescription => 'Якщо кешування вимкнено, віддалені файли завантажуються безпосередньо з віддаленого інстансу. Це зменшує використання сховища, але збільшує трафік, оскільки не генеруются ескізи.';
	@override String get youCanCleanRemoteFilesCache => 'Ви можете очистити кеш, натиснувши кнопку 🗑️ у вікні керування файлами.';
	@override String get cacheRemoteSensitiveFiles => 'Кешувати чутливі віддалені файли';
	@override String get cacheRemoteSensitiveFilesDescription => 'Ви можете очистити кеш, натиснувши кнопку 🗑️ у вікні керування файлами.';
	@override String get flagAsBot => 'Акаунт бота';
	@override String get flagAsBotDescription => 'Ввімкніть якщо цей обліковий запис використовується ботом. Ця опція позначить обліковий запис як бота. Це потрібно щоб виключити безкінечну інтеракцію між ботами а також відповідного підлаштування Misskey.';
	@override String get flagAsCat => 'Акаунт кота';
	@override String get flagAsCatDescription => 'Ввімкніть, щоб позначити, що обліковий запис є котиком.';
	@override String get flagShowTimelineReplies => 'Показувати відповіді на нотатки на часовій шкалі';
	@override String get flagShowTimelineRepliesDescription => 'Показує відповіді користувачів на нотатки інших користувачів на часовій шкалі.';
	@override String get autoAcceptFollowed => 'Автоматично приймати запити на підписку від користувачів, на яких ви підписані';
	@override String get addAccount => 'Додати акаунт';
	@override String get reloadAccountsList => 'Оновити список акаунтів';
	@override String get loginFailed => 'Не вдалося увійти';
	@override String get showOnRemote => 'Переглянути в оригіналі';
	@override String get continueOnRemote => 'Продовжити на віддаленому сервері';
	@override String get chooseServerOnMisskeyHub => 'Вибрати сервер із Misskey Hub';
	@override String get specifyServerHost => 'Вказати хост сервера вручну';
	@override String get inputHostName => 'Введіть домен';
	@override String get general => 'Загальне';
	@override String get wallpaper => 'Шпалери';
	@override String get setWallpaper => 'Встановити шпалери';
	@override String get removeWallpaper => 'Прибрати шпалери';
	@override String searchWith({required Object q}) => 'Пошук: ${q}';
	@override String get youHaveNoLists => 'У вас немає списків';
	@override String followConfirm({required Object name}) => 'Підписатися на ${name}?';
	@override String get proxyAccount => 'Проксі-акаунт';
	@override String get proxyAccountDescription => 'Обліковий запис проксі – це обліковий запис, який діє як віддалений підписник для користувачів за певних умов. Наприклад, коли користувач додає віддаленого користувача до списку, активність віддаленого користувача не буде доставлена на сервер, якщо жоден локальний користувач не стежить за цим користувачем, то замість нього буде використовуватися обліковий запис проксі-сервера.';
	@override String get host => 'Хост';
	@override String get selectSelf => 'Вибрати себе';
	@override String get selectUser => 'Виберіть користувача';
	@override String get recipient => 'Отримувач';
	@override String get annotation => 'Коментарі';
	@override String get federation => 'Федіверс';
	@override String get instances => 'Інстанс';
	@override String get registeredAt => 'Реєстрація';
	@override String get latestRequestReceivedAt => 'Останній запит прийнято';
	@override String get latestStatus => 'Останній статус';
	@override String get storageUsage => 'Використання простору';
	@override String get charts => 'Графіки';
	@override String get perHour => 'Щогодинно';
	@override String get perDay => 'Щоденно';
	@override String get stopActivityDelivery => 'Припинити розсилання активності';
	@override String get blockThisInstance => 'Заблокувати цей інстанс';
	@override String get silenceThisInstance => 'Обмежити цей інстанс';
	@override String get mediaSilenceThisInstance => 'Обмежити медіа з цього сервера';
	@override String get operations => 'Операції';
	@override String get software => 'Програмне забезпечення';
	@override String get softwareName => 'Програмне забезпечення';
	@override String get version => 'Версія';
	@override String get metadata => 'Метадані';
	@override String withNFiles({required Object n}) => 'файли: ${n}';
	@override String get monitor => 'Монітор';
	@override String get jobQueue => 'Черга завдань';
	@override String get cpuAndMemory => 'ЦП та пам\'ять';
	@override String get network => 'Мережа';
	@override String get disk => 'Диск';
	@override String get instanceInfo => 'Про цей інстанс';
	@override String get statistics => 'Статистика';
	@override String get clearQueue => 'Очистити чергу';
	@override String get clearQueueConfirmTitle => 'Ви впевнені, що хочете очистити чергу?';
	@override String get clearQueueConfirmText => 'Будь-які невідправлені нотатки, що залишилися в черзі, не будуть передані. Зазвичай ця операція НЕ потрібна.';
	@override String get clearCachedFiles => 'Очистити кеш';
	@override String get clearCachedFilesConfirm => 'Ви впевнені, що хочете видалити всі кешовані файли?';
	@override String get blockedInstances => 'Заблоковані інстанси';
	@override String get blockedInstancesDescription => 'Вкажіть інстанси, які потрібно заблокувати. Перелічені інстанси більше не зможуть спілкуватися з цим інстансом.';
	@override String get silencedInstances => 'Обмежені інстанси';
	@override String get silencedInstancesDescription => 'Вкажіть імена хостів серверів, які потрібно обмежити, кожен з нового рядка. Усі облікові записи з указаних серверів вважатимуться обмеженими: вони зможуть лише надсилати запити на підписку та не зможуть згадувати локальні облікові записи, якщо ті на них не підписані. Це не вплине на заблоковані сервери.';
	@override String get mediaSilencedInstances => 'Сервери з обмеженими медіа';
	@override String get mediaSilencedInstancesDescription => 'Вкажіть імена хостів серверів, для яких потрібно обмежити медіа, кожен з нового рядка. Усі облікові записи з указаних серверів вважатимуться чутливими, і вони не зможуть використовувати користувацькі емодзі. Це не вплине на заблоковані сервери.';
	@override String get federationAllowedHosts => 'Сервери, що підтримують федерацію';
	@override String get federationAllowedHostsDescription => 'Вкажіть імена хостів серверів, з якими потрібно дозволити федерацію, кожне з нового рядка.';
	@override String get muteAndBlock => 'Заглушення і блокування';
	@override String get mutedUsers => 'Заглушені користувачі';
	@override String get blockedUsers => 'Заблоковані користувачі';
	@override String get noUsers => 'Немає користувачів';
	@override String get editProfile => 'Редагувати обліковий запис';
	@override String get noteDeleteConfirm => 'Ви дійсно хочете видалити цей запис?';
	@override String get pinLimitExceeded => 'Більше записів не можна закріпити';
	@override String get done => 'Готово';
	@override String get processing => 'Обробка';
	@override String get preprocessing => 'Підготовка';
	@override String get preview => 'Попередній перегляд';
	@override String get default_ => 'За умовчанням';
	@override String defaultValueIs({required Object value}) => 'За промовчанням: ${value}';
	@override String get noCustomEmojis => 'Немає нетипових емоджі';
	@override String get noJobs => 'Немає завдань';
	@override String get federating => 'Федерується';
	@override String get blocked => 'Заблоковано';
	@override String get suspended => 'Призупинено';
	@override String get all => 'Всі';
	@override String get subscribing => 'Підписка';
	@override String get publishing => 'Публікація';
	@override String get notResponding => 'Не відповідає';
	@override String get instanceFollowing => 'Підписка на інстанс';
	@override String get instanceFollowers => 'Підписники інстансу';
	@override String get instanceUsers => 'Користувачі цього інстансу';
	@override String get changePassword => 'Змінити пароль';
	@override String get security => 'Безпека';
	@override String get retypedNotMatch => 'Введені дані не збігаються.';
	@override String get currentPassword => 'Поточний пароль';
	@override String get newPassword => 'Новий пароль';
	@override String get newPasswordRetype => 'Новий пароль (повторно)';
	@override String get attachFile => 'Прикріпити файл';
	@override String get more => 'Бiльше!';
	@override String get featured => 'Популярні';
	@override String get usernameOrUserId => 'Ім\'я або ID користувача';
	@override String get noSuchUser => 'Користувача не знайдено';
	@override String get lookup => 'Пошук';
	@override String get announcements => 'Оголошення';
	@override String get imageUrl => 'Посилання на зображення';
	@override String get remove => 'Видалити';
	@override String get removed => 'Видалено';
	@override String removeAreYouSure({required Object x}) => 'Ви впевнені, що хочете видалити "${x}"?';
	@override String deleteAreYouSure({required Object x}) => 'Ви впевнені, що хочете видалити "${x}"?';
	@override String get resetAreYouSure => 'Справді скинути?';
	@override String get areYouSure => 'Ви впевнені?';
	@override String get saved => 'Збережено';
	@override String get upload => 'Завантажити';
	@override String get keepOriginalUploading => 'Зберегти оригінальне зображення';
	@override String get keepOriginalUploadingDescription => 'Зберігає початково завантажене зображення як є. Якщо вимкнено, версія для відображення в Інтернеті буде створена під час завантаження.';
	@override String get fromDrive => 'З диска';
	@override String get fromUrl => 'З посилання';
	@override String get uploadFromUrl => 'Завантажити з посилання';
	@override String get uploadFromUrlDescription => 'Посилання на файл для завантаження';
	@override String get uploadFromUrlRequested => 'Завантаження розпочалось';
	@override String get uploadFromUrlMayTakeTime => 'Завантаження може зайняти деякий час.';
	@override String uploadNFiles({required Object n}) => 'Завантажити ${n} файлів';
	@override String get explore => 'Огляд';
	@override String get messageRead => 'Прочитано';
	@override String get readAllChatMessages => 'Позначити всі повідомлення як прочитані';
	@override String get noMoreHistory => 'Подальшої історії немає';
	@override String get startChat => 'Почати чат';
	@override String nUsersRead({required Object n}) => 'Прочитали ${n}';
	@override String agreeTo({required Object x0}) => 'Я погоджуюсь з ${x0}';
	@override String get agree => 'Гаразд';
	@override String get agreeBelow => 'Я погоджуюся з наведеним нижче';
	@override String get basicNotesBeforeCreateAccount => 'Важливі нотатки';
	@override String get termsOfService => 'Умови використання';
	@override String get start => 'Розпочати';
	@override String get home => 'Домівка';
	@override String get remoteUserCaution => 'Інформація може бути неповною, оскільки це віддалений користувач.';
	@override String get activity => 'Активність';
	@override String get images => 'Зображення';
	@override String get image => 'Зображення';
	@override String get birthday => 'День народження';
	@override String yearsOld({required Object age}) => '${age} років';
	@override String get registeredDate => 'Приєднання';
	@override String get location => 'Локація';
	@override String get theme => 'Тема';
	@override String get themeForLightMode => 'Світла тема';
	@override String get themeForDarkMode => 'Темна тема';
	@override String get light => 'Світла';
	@override String get dark => 'Темна';
	@override String get lightThemes => 'Світлі теми';
	@override String get darkThemes => 'Темні теми';
	@override String get syncDeviceDarkMode => 'Синхронізувати темний режим із налаштуваннями вашого пристрою';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => 'Увімкнено «${x}». Бажаєте вимкнути синхронізацію та перемикати режими вручну?\n';
	@override String get drive => 'Диск';
	@override String get fileName => 'Ім\'я файлу';
	@override String get selectFile => 'Вибрати файл';
	@override String get selectFiles => 'Вибрати файли';
	@override String get selectFolder => 'Вибрати теку';
	@override String get unselectFolder => 'Скасувати вибір теки';
	@override String get selectFolders => 'Вибрати теки';
	@override String get fileNotSelected => 'Файл не вибрано';
	@override String get renameFile => 'Перейменувати файл';
	@override String get folderName => 'Ім\'я теки';
	@override String get createFolder => 'Створити теку';
	@override String get renameFolder => 'Перейменувати теку';
	@override String get deleteFolder => 'Видалити теку';
	@override String get folder => 'Тека';
	@override String get addFile => 'Додати файл';
	@override String get showFile => 'Показати файл';
	@override String get emptyDrive => 'Диск порожній';
	@override String get emptyFolder => 'Тека порожня';
	@override String get dropHereToUpload => 'Перетягніть файли сюди, щоб завантажити';
	@override String get unableToDelete => 'Видалення неможливе';
	@override String get inputNewFileName => 'Введіть ім\'я нового файлу';
	@override String get inputNewDescription => 'Введіть новий заголовок';
	@override String get inputNewFolderName => 'Введіть ім\'я нової теки';
	@override String get circularReferenceFolder => 'Ви намагаєтесь перемістити папку в її підпапку.';
	@override String get hasChildFilesOrFolders => 'Ця тека не порожня і не може бути видалена';
	@override String get copyUrl => 'Копіювати URL';
	@override String get rename => 'Перейменувати';
	@override String get avatar => 'Аватар';
	@override String get banner => 'Банер';
	@override String get displayOfSensitiveMedia => 'Показ чутливого медіа';
	@override String get whenServerDisconnected => 'Коли зв’язок із сервером втрачено';
	@override String get disconnectedFromServer => 'Зв’язок із сервером було перервано';
	@override String get reload => 'Оновити';
	@override String get doNothing => 'Нічого не робити';
	@override String get reloadConfirm => 'Перезавантажити стрічку?';
	@override String get watch => 'Стежити';
	@override String get unwatch => 'Не стежити';
	@override String get accept => 'Прийняти';
	@override String get reject => 'Відхилити';
	@override String get normal => 'Нормальний';
	@override String get instanceName => 'Назва інстансу';
	@override String get instanceDescription => 'Описання інстансу';
	@override String get maintainerName => 'Ім\'я адміністратора';
	@override String get maintainerEmail => 'Email адміністратора';
	@override String get tosUrl => 'URL умов використання';
	@override String get thisYear => 'Рік';
	@override String get thisMonth => 'Місяць';
	@override String get today => 'День';
	@override String dayX({required Object day}) => '${day}';
	@override String monthX({required Object month}) => '${month}';
	@override String yearX({required Object year}) => '${year}';
	@override String get pages => 'Сторінки';
	@override String get integration => 'Інтеграція';
	@override String get connectService => 'Під’єднати';
	@override String get disconnectService => 'Відключитися';
	@override String get enableLocalTimeline => 'Увімкнути локальну стрічку';
	@override String get enableGlobalTimeline => 'Увімкнути глобальну стрічку';
	@override String get disablingTimelinesInfo => 'Адміністратори та модератори завжди мають доступ до всіх стрічок, навіть якщо вони вимкнуті.';
	@override String get registration => 'Реєстрація';
	@override String get invite => 'Запросити';
	@override String get driveCapacityPerLocalAccount => 'Об\'єм диска на одного локального користувача';
	@override String get driveCapacityPerRemoteAccount => 'Об\'єм диска на одного віддаленого користувача';
	@override String get inMb => 'В мегабайтах';
	@override String get bannerUrl => 'URL банера';
	@override String get backgroundImageUrl => 'URL-адреса фонового зображення';
	@override String get basicInfo => 'Основна інформація';
	@override String get pinnedUsers => 'Закріплені користувачі';
	@override String get pinnedUsersDescription => 'Впишіть в список користувачів, яких хочете закріпити на сторінці "Знайти", ім\'я в стовпчик.';
	@override String get pinnedPages => 'Закріплені сторінки';
	@override String get pinnedPagesDescription => 'Введіть шляхи сторінок, які ви бажаєте закріпити на головній сторінці цього інстанса, розділені новими рядками.';
	@override String get pinnedClipId => 'Ідентифікатор закріпленої добірки.';
	@override String get pinnedNotes => 'Закріплена нотатка';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Увімкнути hCaptcha';
	@override String get hcaptchaSiteKey => 'Ключ сайту';
	@override String get hcaptchaSecretKey => 'Секретний ключ';
	@override String get mcaptcha => 'MCaptcha';
	@override String get enableMcaptcha => 'Увімкнути MCaptcha';
	@override String get mcaptchaSiteKey => 'Ключ сайту';
	@override String get mcaptchaSecretKey => 'Секретний ключ';
	@override String get mcaptchaInstanceUrl => 'Посилання на сервер MCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Увімкнути reCAPTCHA';
	@override String get recaptchaSiteKey => 'Ключ сайту';
	@override String get recaptchaSecretKey => 'Секретний ключ';
	@override String get turnstile => 'Турнікет';
	@override String get enableTurnstile => 'Увімкнути турнікет';
	@override String get turnstileSiteKey => 'Ключ сайту';
	@override String get turnstileSecretKey => 'Секретний ключ';
	@override String get avoidMultiCaptchaConfirm => 'Використання кількох систем Captcha може спричинити перешкоди між ними. Бажаєте вимкнути інші активні системи Captcha? Якщо ви хочете, щоб вони залишалися ввімкненими, натисніть «Скасувати».';
	@override String get antennas => 'Антени';
	@override String get manageAntennas => 'Налаштування антен';
	@override String get name => 'Ім\'я';
	@override String get antennaSource => 'Джерело антени';
	@override String get antennaKeywords => 'Ключові слова антени';
	@override String get antennaExcludeKeywords => 'Винятки';
	@override String get antennaExcludeBots => 'Виключити облікові записи ботів';
	@override String get antennaKeywordsDescription => 'Розділення ключових слів пробілами для "І" або з нової лінійки для "АБО"';
	@override String get notifyAntenna => 'Сповіщати про нові нотатки';
	@override String get withFileAntenna => 'Тільки нотатки з вкладеними файлами';
	@override String get excludeNotesInSensitiveChannel => 'Виключати нотатки з чутливих каналів';
	@override String get enableServiceworker => 'Увімкнути ServiceWorker';
	@override String get antennaUsersDescription => 'Список імя користувачів в стопчик';
	@override String get caseSensitive => 'З урахуванням регістру';
	@override String get withReplies => 'Включаючи відповіді';
	@override String get connectedTo => 'Наступні акаунти під\'єднані';
	@override String get notesAndReplies => 'Нотатки та відповіді';
	@override String get withFiles => 'Файли';
	@override String get silence => 'Заглушити';
	@override String get silenceConfirm => 'Ви впевнені, що хочете заглушити цього користувача?';
	@override String get unsilence => 'Не глушити';
	@override String get unsilenceConfirm => 'Ви впевнені, що хочете скасувати глушіння цього користувача?';
	@override String get popularUsers => 'Популярні користувачі';
	@override String get recentlyUpdatedUsers => 'Нещодавно активні користувачі';
	@override String get recentlyRegisteredUsers => 'Нещодавно зареєстровані користувачі';
	@override String get recentlyDiscoveredUsers => 'Нещодавно знайдені користувачі';
	@override String exploreUsersCount({required Object count}) => '${count} користувачів';
	@override String get exploreFediverse => 'Огляд федіверсу';
	@override String get popularTags => 'Популярні теги';
	@override String get userList => 'Списки';
	@override String get about => 'Інформація';
	@override String get aboutMisskey => 'Про Misskey';
	@override String get administrator => 'Адмін';
	@override String get token => 'Токен';
	@override String get x2fa => 'Двофакторна аутентифікація';
	@override String get setupOf2fa => 'Налаштувати двофакторну автентифікацію';
	@override String get totp => 'Програма аутентифікації';
	@override String get totpDescription => 'Використовуйте застосунок-автентифікатор для введення одноразових паролів';
	@override String get moderator => 'Модератор';
	@override String get moderation => 'Модерація';
	@override String get moderationNote => 'Модераторська нотатка';
	@override String get moderationNoteDescription => 'Ви можете додати нотатки, які будуть доступні лише модераторам.\n';
	@override String get addModerationNote => 'Додати модераторську нотатку';
	@override String get moderationLogs => 'Журнали модерації';
	@override String nUsersMentioned({required Object n}) => 'Згадали: ${n}';
	@override String get securityKeyAndPasskey => 'Ключі безпеки та ключі доступу';
	@override String get securityKey => 'Ключ захисту';
	@override String get lastUsed => 'Востаннє використано';
	@override String lastUsedAt({required Object t}) => 'Востаннє використано: ${t}';
	@override String get unregister => 'Скасувати реєстрацію';
	@override String get passwordLessLogin => 'Налаштувати вхід без пароля';
	@override String get passwordLessLoginDescription => 'Дозволяє вхід без пароля лише за допомогою ключа безпеки або ключа доступу';
	@override String get resetPassword => 'Скинути пароль';
	@override String newPasswordIs({required Object password}) => 'Новий пароль: ${password}';
	@override String get reduceUiAnimation => 'Зменшити анімацію інтерфейсу';
	@override String get share => 'Поділитись';
	@override String get notFound => 'Не знайдено';
	@override String get notFoundDescription => 'Сторінка за вказаною адресою не знайдена.';
	@override String get uploadFolder => 'Місце для завантаження за замовчуванням';
	@override String get markAsReadAllNotifications => 'Позначити всі сповіщення як прочитані';
	@override String get markAsReadAllUnreadNotes => 'Позначити всі нотатки як прочитані';
	@override String get markAsReadAllTalkMessages => 'Позначити всі повідомлення як прочитані';
	@override String get help => 'Допомога';
	@override String get inputMessageHere => 'Введіть повідомлення тут';
	@override String get close => 'Закрити';
	@override String get invites => 'Запросити';
	@override String get members => 'Учасники';
	@override String get transfer => 'Передача';
	@override String get title => 'Тема';
	@override String get text => 'Текст';
	@override String get enable => 'Увімкнути';
	@override String get next => 'Далі';
	@override String get retype => 'Введіть ще раз';
	@override String noteOf({required Object user}) => 'Нотатка ${user}';
	@override String get quoteAttached => 'Цитата';
	@override String get quoteQuestion => 'Ви хочете додати цитату?';
	@override String get attachAsFileQuestion => 'Текст у буфері обміну довгий. Хочете прикріпити його як текстовий файл?';
	@override String get onlyOneFileCanBeAttached => 'До повідомлення можна вкласти лише один файл';
	@override String get signinRequired => 'Будь ласка, авторизуйтесь';
	@override String get signinOrContinueOnRemote => 'Щоб продовжити, потрібно перейти на свій сервер або зареєструватися / увійти на цей сервер.';
	@override String get invitations => 'Запрошення';
	@override String get invitationCode => 'Код запрошення';
	@override String get checking => 'Перевірка…';
	@override String get available => 'Доступно';
	@override String get unavailable => 'Недоступно';
	@override String get usernameInvalidFormat => 'літери, цифри та _ є прийнятними';
	@override String get tooShort => 'Занадто короткий';
	@override String get tooLong => 'Занадто довгий';
	@override String get weakPassword => 'Слабкий пароль';
	@override String get normalPassword => 'Достатній пароль';
	@override String get strongPassword => 'Міцний пароль';
	@override String get passwordMatched => 'Все вірно';
	@override String get passwordNotMatched => 'Паролі не співпадають';
	@override String signinWith({required Object x}) => 'Увійти за допомогою ${x}';
	@override String get signinFailed => 'Не вдалося увійти. Введені ім’я користувача або пароль неправильнi.';
	@override String get or => 'або';
	@override String get language => 'Мова';
	@override String get uiLanguage => 'Мова інтерфейсу';
	@override String aboutX({required Object x}) => 'Про ${x}';
	@override String get emojiStyle => 'Стиль емодзі';
	@override String get native => 'місцевий';
	@override String get menuStyle => 'Стиль меню';
	@override String get style => 'Стиль';
	@override String get drawer => 'Панель';
	@override String get popup => 'Спливаючі вікна';
	@override String get showNoteActionsOnlyHover => 'Показувати дії з нотаткою лише при наведенні';
	@override String get showReactionsCount => 'Показувати кількість реакцій у нотатках';
	@override String get noHistory => 'Історія порожня';
	@override String get signinHistory => 'Історія входів';
	@override String get enableAdvancedMfm => 'Увімкнути розширений MFM';
	@override String get enableAnimatedMfm => 'Увімкнути анімований MFM';
	@override String get doing => 'Виконується';
	@override String get category => 'Категорія';
	@override String get tags => 'Теги';
	@override String get docSource => 'Джерело цього документа';
	@override String get createAccount => 'Створити акаунт';
	@override String get existingAccount => 'Існуючий акаунт';
	@override String get regenerate => 'Оновити';
	@override String get fontSize => 'Розмір шрифту';
	@override String get mediaListWithOneImageAppearance => 'Висота списків медіа лише з одним зображенням';
	@override String limitTo({required Object x}) => 'Обмежити до ${x}';
	@override String get showMediaListByGridInWideArea => 'Відображати список медіа у вигляді сітки, коли екран достатньо широкий';
	@override String get noFollowRequests => 'Немає запитів на підписку';
	@override String get openImageInNewTab => 'Відкрити зображення в новій вкладці';
	@override String get dashboard => 'Панель приладів';
	@override String get local => 'Локальні';
	@override String get remote => 'Віддалені';
	@override String get total => 'Всього';
	@override String get weekOverWeekChanges => 'Тиждень';
	@override String get dayOverDayChanges => 'Доба';
	@override String get appearance => 'Вигляд';
	@override String get clientSettings => 'Налаштування клієнта';
	@override String get accountSettings => 'Налаштування акаунту';
	@override String get promotion => 'Виділене';
	@override String get promote => 'Виділити';
	@override String get numberOfDays => 'Кількість днів';
	@override String get hideThisNote => 'Сховати цю нотатку';
	@override String get showFeaturedNotesInTimeline => 'Показувати популярні нотатки у стрічці';
	@override String get objectStorage => 'Object Storage';
	@override String get useObjectStorage => 'Використовувати object storage';
	@override String get objectStorageBaseUrl => 'Base URL';
	@override String get objectStorageBaseUrlDesc => 'Це початкова частина адреси, що використовується CDN або проксі, наприклад для S3: https://<bucket>.s3.amazonaws.com, або GCS: \'https://storage.googleapis.com/<bucket>\'';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Будь ласка вкажіть назву відра в налаштованому сервісі.';
	@override String get objectStoragePrefix => 'Prefix';
	@override String get objectStoragePrefixDesc => 'Файли будуть зберігатись у розташуванні з цим префіксом.';
	@override String get objectStorageEndpoint => 'Endpoint';
	@override String get objectStorageEndpointDesc => 'Залиште пустим при використанні AWS S3. Інакше введіть кінцевий пункт як \'<host>\' або \'<host>:<port>\' слідуючи інструкціям сервісу, який використовується.';
	@override String get objectStorageRegion => 'Region';
	@override String get objectStorageRegionDesc => 'Введіть регіон у формі \'xx-east-1\'. Залиште пустим, якщо ваш сервіс не різниться відповідно до регіонів, або введіть \'us-east-1\'.';
	@override String get objectStorageUseSSL => 'Використовувати SSL';
	@override String get objectStorageUseSSLDesc => 'Вимкніть коли не використовується HTTPS для з\'єднання API';
	@override String get objectStorageUseProxy => 'Використовувати Proxy';
	@override String get objectStorageUseProxyDesc => 'Вимкніть коли проксі не використовується для з\'єднання ObjectStorage';
	@override String get objectStorageSetPublicRead => 'Встановіть \'публічне читання\' при завантаженні';
	@override String get s3ForcePathStyleDesc => 'Якщо увімкнено s3ForcePathStyle, назва бакету має бути включена до шляху URL, а не до імені хосту URL. Можливо, вам потрібно ввімкнути це налаштування під час використання таких сервісів, як власний екземпляр Minio.';
	@override String get serverLogs => 'Журнал сервера';
	@override String get deleteAll => 'Видалити все';
	@override String get showFixedPostForm => 'Показати форму запису над стрічкою новин.';
	@override String get showFixedPostFormInChannel => 'Відображати форму публікації вгорі стрічки (Канали)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'Типово включати відповіді нових користувачів, на яких ви підписалися, до стрічки';
	@override String get newNoteRecived => 'Є нові нотатки';
	@override String get newNote => 'Нова нотатка';
	@override String get sounds => 'Звуки';
	@override String get sound => 'Звуки';
	@override String get notificationSoundSettings => 'Вибрати звук сповіщення';
	@override String get listen => 'Слухати';
	@override String get none => 'Відсутній';
	@override String get showInPage => 'Показати на сторінці';
	@override String get popout => 'Від\'єднати';
	@override String get volume => 'Гучність';
	@override String get masterVolume => 'Загальна гучність';
	@override String get notUseSound => 'Вимкнути звук';
	@override String get useSoundOnlyWhenActive => 'Відтворювати звуки лише коли Misskey активний';
	@override String get details => 'Детальніше';
	@override String get renoteDetails => 'Деталі поширення';
	@override String get chooseEmoji => 'Виберіть емодзі';
	@override String get unableToProcess => 'Не вдається завершити операцію';
	@override String get recentUsed => 'Нещодавні';
	@override String get install => 'Встановити';
	@override String get uninstall => 'Видалити';
	@override String get installedApps => 'Встановлені аплікації';
	@override String get nothing => 'Тут нічого немає';
	@override String get installedDate => 'Дата встановлення';
	@override String get lastUsedDate => 'Дата використання';
	@override String get state => 'Стан';
	@override String get sort => 'Сортування';
	@override String get ascendingOrder => 'За зростанням';
	@override String get descendingOrder => 'За спаданням';
	@override String get scratchpad => 'Scratchpad';
	@override String get scratchpadDescription => 'Scratchpad надає середовище для експериментів з AiScript. Ви можете писати, виконувати його і тестувати взаємодію з Misskey.';
	@override String get uiInspector => 'Інспектор UI';
	@override String get uiInspectorDescription => 'Ви можете переглянути список серверних компонентів інтерфейсу в памʼяті. Компонент інтерфейсу буде згенеровано функцією Ui:C:.';
	@override String get output => 'Вихід';
	@override String get script => 'Скрипт';
	@override String get disablePagesScript => 'Вимкнути AiScript на Сторінках';
	@override String get updateRemoteUser => 'Оновити інформацію про віддаленого користувача';
	@override String get unsetUserAvatar => 'Деактивувати піктограму.';
	@override String get unsetUserAvatarConfirm => ' Ви впевнені, що хочете прибрати аватар?';
	@override String get unsetUserBanner => 'Випустити прапор.';
	@override String get unsetUserBannerConfirm => 'Ви впевнені, що хочете прибрати банер?';
	@override String get deleteAllFiles => 'Видалити всі файли';
	@override String get deleteAllFilesConfirm => 'Ви дійсно хочете видалити всі файли?';
	@override String get removeAllFollowing => 'Скасувати всі підписки';
	@override String removeAllFollowingDescription({required Object host}) => 'Скасувати підписку на всі акаунти з ${host}. Будь ласка, робіть це, якщо інстанс більше не існує.';
	@override String get userSuspended => 'Обліковий запис заблокований.';
	@override String get userSilenced => 'Обліковий запис приглушений.';
	@override String get yourAccountSuspendedTitle => 'Цей акаунт заблоковано';
	@override String get yourAccountSuspendedDescription => 'Цей обліковий запис було заблоковано через порушення умов надання послуг сервера. Зв\'яжіться з адміністратором, якщо ви хочете дізнатися докладнішу причину. Будь ласка, не створюйте новий обліковий запис.';
	@override String get tokenRevoked => 'Недійсний токен';
	@override String get tokenRevokedDescription => 'Термін дії цього токена минув. Увійдіть знову.';
	@override String get accountDeleted => 'Акаунт видалено';
	@override String get accountDeletedDescription => 'Цей акаунт було видалено.';
	@override String get menu => 'Меню';
	@override String get divider => 'Розділювач';
	@override String get addItem => 'Додати елемент';
	@override String get rearrange => 'Сортувати за';
	@override String get relays => 'Ретранслятори';
	@override String get addRelay => 'Додати ретранслятор';
	@override String get inboxUrl => 'Inbox URL';
	@override String get addedRelays => 'Додані ретранслятори';
	@override String get serviceworkerInfo => 'Повинен бути ввімкнений для push-сповіщень.';
	@override String get deletedNote => 'Видалена нотатка';
	@override String get invisibleNote => 'Приховані записи';
	@override String get enableInfiniteScroll => 'Увімкнути нескінченну прокрутку';
	@override String get visibility => 'Видимість';
	@override String get poll => 'Опитування';
	@override String get useCw => 'Приховати вміст';
	@override String get enablePlayer => 'Відкрити відеоплеєр';
	@override String get disablePlayer => 'Закрити відеоплеєр';
	@override String get expandTweet => 'Розгорнути твіт';
	@override String get themeEditor => 'Редактор тем';
	@override String get description => 'Опис';
	@override String get describeFile => 'Додати підпис';
	@override String get enterFileDescription => 'Введіть підпис';
	@override String get author => 'Автор';
	@override String get leaveConfirm => 'Зміни не збережені. Ви дійсно хочете скасувати зміни?';
	@override String get manage => 'Управління';
	@override String get plugins => 'Плагіни';
	@override String get preferencesBackups => 'Бекап налаштувань';
	@override String get deck => 'Дек';
	@override String get undeck => 'Залишити Дек';
	@override String get useBlurEffectForModal => 'Ефект розмиття під модальними діалогами';
	@override String get useFullReactionPicker => 'Повнорозмірний селектор реакцій';
	@override String get width => 'Ширина';
	@override String get height => 'Висота';
	@override String get large => 'Крупний';
	@override String get medium => 'Середній';
	@override String get small => 'Маленький';
	@override String get generateAccessToken => 'Згенерувати токен доступу';
	@override String get permission => 'Права';
	@override String get adminPermission => 'Права адміністратора';
	@override String get enableAll => 'Увімкнути все';
	@override String get disableAll => 'Вимкнути все';
	@override String get tokenRequested => 'Надати доступ до акаунту';
	@override String get pluginTokenRequestedDescription => 'Цей плагін зможе використовувати дозволи які тут вказані.';
	@override String get notificationType => 'Тип сповіщення';
	@override String get edit => 'Редагувати';
	@override String get emailServer => 'Email сервер';
	@override String get enableEmail => 'Увімкнути функцію доставки пошти';
	@override String get emailConfigInfo => 'Використовується для підтвердження електронної пошти підчас реєстрації, а також для відновлення паролю.';
	@override String get email => 'E-mail';
	@override String get emailAddress => 'E-mail адреса';
	@override String get smtpConfig => 'Налаштування сервера SMTP';
	@override String get smtpHost => 'Хост';
	@override String get smtpPort => 'Порт';
	@override String get smtpUser => 'Ім\'я користувача';
	@override String get smtpPass => 'Пароль';
	@override String get emptyToDisableSmtpAuth => 'Залиште назву користувача і пароль пустими для вимкнення підтвердження SMTP';
	@override String get smtpSecure => 'Використовувати безумовне шифрування SSL/TLS для з\'єднань SMTP';
	@override String get smtpSecureInfo => 'Вимкніть при використанні STARTTLS  ';
	@override String get testEmail => 'Тестовий email';
	@override String get wordMute => 'Блокування слів';
	@override String get wordMuteDescription => 'Згортати нотатки, що містять указане слово або фразу. Згорнуті нотатки можна показати, натиснувши на них.';
	@override String get hardWordMute => 'Повне приховування слів';
	@override String get showMutedWord => 'Показати приховані слова';
	@override String get hardWordMuteDescription => 'Приховувати нотатки, що містять указане слово або фразу. На відміну від приховування слів, нотатку буде повністю приховано з перегляду.';
	@override String get regexpError => 'Помилка регулярного виразу';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Сталася помилка в регулярному виразі в рядку ${line} вашого слова ${tab} слова що ігноруються:';
	@override String get instanceMute => 'Приглушення інстансів';
	@override String userSaysSomething({required Object name}) => '${name} щось сказав(ла)';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} згадує «${word}»';
	@override String get makeActive => 'Активувати';
	@override String get display => 'Відображення';
	@override String get copy => 'Скопіювати';
	@override String get copiedToClipboard => 'Скопійовано до буфера обміну';
	@override String get metrics => 'Показники';
	@override String get overview => 'Огляд';
	@override String get logs => 'Журнал';
	@override String get delayed => 'Затримка';
	@override String get database => 'База даних';
	@override String get channel => 'Канали';
	@override String get create => 'Створити';
	@override String get notificationSetting => 'Параметри сповіщень';
	@override String get notificationSettingDesc => 'Виберіть типи сповіщень для відображення';
	@override String get useGlobalSetting => 'Застосувати глобальнi параметри';
	@override String get useGlobalSettingDesc => 'Якщо увімкнено, то будуть використовуватись налаштування повідомлень облікового запису, інакше можливо налаштувати індивідуально.';
	@override String get other => 'Інше';
	@override String get regenerateLoginToken => 'Оновити Login Token';
	@override String get regenerateLoginTokenDescription => 'Регенерувати внутрішній ключ використовуваний під час входу. Зазвичай цього не потрібно робити. При регенерації всі пристрої вийдуть з системи.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Це ключове слово для пошуку користувацьких емодзі.';
	@override String get setMultipleBySeparatingWithSpace => 'Можна вказати кілька значень, відділивши їх пробілом.';
	@override String get fileIdOrUrl => 'Ідентифікатор файлу або посилання';
	@override String get behavior => 'Поведінка';
	@override String get sample => 'Приклад';
	@override String get abuseReports => 'Скарги';
	@override String get reportAbuse => 'Поскаржитись';
	@override String get reportAbuseRenote => 'Поскаржитися на поширення';
	@override String reportAbuseOf({required Object name}) => 'Поскаржитись на ${name}';
	@override String get fillAbuseReportDescription => 'Будь ласка, вкажіть подробиці скарги. Якщо скарга стосується запису, вкажіть посилання на нього.';
	@override String get abuseReported => 'Дякуємо, вашу скаргу було відправлено. ';
	@override String get reporter => 'Репортер';
	@override String get reporteeOrigin => 'Про кого повідомлено';
	@override String get reporterOrigin => 'Хто повідомив';
	@override String get send => 'Відправити';
	@override String get openInNewTab => 'Відкрити в новій вкладці';
	@override String get openInSideView => 'Відкрити збоку';
	@override String get defaultNavigationBehaviour => 'Поведінка навігації за замовчуванням';
	@override String get editTheseSettingsMayBreakAccount => 'Зміна цих параметрів може призвести до пошкодження вашого акаунта.';
	@override String get instanceTicker => 'Мітка з назвою інстанса в нотатках';
	@override String waitingFor({required Object x}) => 'Чекаємо на ${x}';
	@override String get random => 'Випадковий';
	@override String get system => 'Система';
	@override String get switchUi => 'Інтерфейс';
	@override String get desktop => 'Десктоп';
	@override String get clip => 'Добірка';
	@override String get createNew => 'Створити новий';
	@override String get optional => 'Необов\'язково';
	@override String get createNewClip => 'Створити добірку';
	@override String get unclip => 'Незакріплений';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Ця нотатка вже включена до добірки "${name}". Ви хочете виключити нотатку з цього кліпу?';
	@override String get public => 'Публічний';
	@override String get private => 'Приватне';
	@override String i18nInfo({required Object link}) => 'Misskey перекладається на різні мови волонтерами. Ви можете допомогти: ${link}';
	@override String get manageAccessTokens => 'Керування токенами доступу';
	@override String get accountInfo => 'Інформація про акаунт';
	@override String get notesCount => 'Кількість нотаток';
	@override String get repliesCount => 'Кількість надісланих відповідей';
	@override String get renotesCount => 'Кількість поширень';
	@override String get repliedCount => 'Кількість отриманих відповідей';
	@override String get renotedCount => 'Кількість отриманих поширень';
	@override String get followingCount => 'Кількість підписок';
	@override String get followersCount => 'Кількість підписників';
	@override String get sentReactionsCount => 'Кількість надісланих реакцій';
	@override String get receivedReactionsCount => 'Кількість отриманих реакцій';
	@override String get pollVotesCount => 'Кількість надісланих голосів';
	@override String get pollVotedCount => 'Кількість отриманих голосів';
	@override String get yes => 'Так';
	@override String get no => 'Ні';
	@override String get driveFilesCount => 'Кількість файлів на диску';
	@override String get driveUsage => 'Використання місця на диску';
	@override String get noCrawle => 'Заборонити індексацію';
	@override String get noCrawleDescription => 'Просити пошукові системи не індексувати ваш профіль, нотатки, сторінки тощо.';
	@override String get lockedAccountInfo => 'Якщо видимість вашого запису не встановлена як "Тільки підписники", то кожен зможе побачити ваш запис, навіть якщо ви вимагаєте підтвердження підписок вручну.';
	@override String get alwaysMarkSensitive => 'Позначати NSFW за замовчуванням';
	@override String get loadRawImages => 'Відображати вкладені зображення повністю замість ескізів';
	@override String get disableShowingAnimatedImages => 'Не програвати анімовані зображення';
	@override String get disableShowingAnimatedImages_caption => 'Якщо анімовані зображення не відтворюються навіть коли це налаштування вимкнено, причиною можуть бути налаштування доступності браузера чи ОС, режим енергоощадження';
	@override String get highlightSensitiveMedia => 'Виділяти чутливі медіа';
	@override String get verificationEmailSent => 'Електронний лист з підтвердженням відісланий. Будь ласка перейдіть по посиланню в листі для підтвердження.';
	@override String get notSet => 'Не налаштовано';
	@override String get emailVerified => 'Електронну пошту підтверджено.';
	@override String get noteFavoritesCount => 'Кількість улюблених нотаток';
	@override String get pageLikesCount => 'Кількість отриманих вподобань сторінки';
	@override String get pageLikedCount => 'Кількість вподобаних сторінок';
	@override String get contact => 'Контакт';
	@override String get useSystemFont => 'Використовувати стандартний шрифт системи';
	@override String get clips => 'Добірки';
	@override String get experimentalFeatures => 'Експериментальні функції';
	@override String get experimental => 'Експериментальні';
	@override String get thisIsExperimentalFeature => 'Це експериментальна функція. Її можливості можуть змінюватися, і вона може працювати не так, як очікується.';
	@override String get developer => 'Розробник';
	@override String get makeExplorable => 'Зробіть обліковий запис видимим у розділі "Огляд"';
	@override String get makeExplorableDescription => 'Вимкніть, щоб обліковий запис не показувався у розділі "Огляд".';
	@override String get duplicate => 'Дублікат';
	@override String get left => 'Лівий';
	@override String get center => 'Центр';
	@override String get wide => 'Широкий';
	@override String get narrow => 'Вузький';
	@override String get reloadToApplySetting => 'Налаштування ввійде в дію при перезавантаженні. Перезавантажити?';
	@override String get needReloadToApply => 'Зміни набудуть чинності після перезавантаження сторінки.';
	@override String get needToRestartServerToApply => 'Щоб застосувати зміну, потрібно перезапустити Misskey.';
	@override String get showTitlebar => 'Показати титульний рядок';
	@override String get clearCache => 'Очистити кеш';
	@override String onlineUsersCount({required Object n}) => '${n} користувачів онлайн';
	@override String nUsers({required Object n}) => '${n} Користувачів';
	@override String nNotes({required Object n}) => '${n} Записів';
	@override String get sendErrorReports => 'Надіслати звіт про помилки';
	@override String get sendErrorReportsDescription => 'При увімкненні детальна інформація про помилки буде надана Misskey у разі виникнення проблем, що дасть можливість покращити Misskey.';
	@override String get myTheme => 'Моя тема';
	@override String get backgroundColor => 'Фон';
	@override String get accentColor => 'Акцент';
	@override String get textColor => 'Текст';
	@override String get saveAs => 'Зберегти як…';
	@override String get advanced => 'Розширені';
	@override String get advancedSettings => 'Розширені налаштування';
	@override String get value => 'Значення';
	@override String get createdAt => 'Створено';
	@override String get updatedAt => 'Останнє оновлення';
	@override String get saveConfirm => 'Зберегти зміни?';
	@override String get deleteConfirm => 'Ви дійсно бажаєте це видалити?';
	@override String get invalidValue => 'Некоректне значення.';
	@override String get registry => 'Реєстр';
	@override String get closeAccount => 'Закрити обліковий запис';
	@override String get currentVersion => 'Версія, що використовується';
	@override String get latestVersion => 'Сама свіжа версія';
	@override String get youAreRunningUpToDateClient => 'У вас найсвіжіша версія клієнта.';
	@override String get newVersionOfClientAvailable => 'Доступніша свіжа версія клієнта.';
	@override String get usageAmount => 'Використане';
	@override String get capacity => 'Ємність';
	@override String get inUse => 'Зайнято';
	@override String get editCode => 'Редагувати вихідний текст';
	@override String get apply => 'Застосувати';
	@override String get receiveAnnouncementFromInstance => 'Отримувати оповіщення з інстансу';
	@override String get emailNotification => 'Сповіщення електронною поштою';
	@override String get publish => 'Опублікувати';
	@override String get inChannelSearch => 'Пошук за каналом';
	@override String get useReactionPickerForContextMenu => 'Відкривати палітру реакцій правою кнопкою';
	@override String typingUsers({required Object users}) => 'Стук клавіш. Це ${users}…';
	@override String get jumpToSpecifiedDate => 'Перейти до конкретної дати';
	@override String get showingPastTimeline => 'Відображення минулих часових шкал.';
	@override String get clear => 'Очистити';
	@override String get markAllAsRead => 'Позначити всі як прочитані';
	@override String get goBack => 'Назад';
	@override String get unlikeConfirm => 'Бажаєте відписатися від подібних?';
	@override String get fullView => 'Повний перегляд';
	@override String get quitFullView => 'Повний перегляд';
	@override String get addDescription => 'Додатковий опис.';
	@override String get userPagePinTip => 'Ви можете зберегти відображені тут нотатки, вибравши "Закріпити" в меню окремих нотаток.';
	@override String get notSpecifiedMentionWarning => 'Згадки, не включені до пункту призначення';
	@override String get info => 'Інформація';
	@override String get userInfo => 'Інформація про користувача';
	@override String get unknown => 'Невідомо';
	@override String get onlineStatus => 'Онлайн статус';
	@override String get hideOnlineStatus => 'Приховати онлайн статус.';
	@override String get hideOnlineStatusDescription => 'Приховування вашого онлайн-статусу може обмежити зручність деяких функцій, зокрема пошуку.';
	@override String get online => 'Онлайн';
	@override String get active => 'Активовано';
	@override String get offline => 'Офлайн';
	@override String get notRecommended => 'Не рекомендовано';
	@override String get botProtection => 'Захист від ботів';
	@override String get instanceBlocking => 'Заблоковані інстанси';
	@override String get selectAccount => 'Виберіть акаунт';
	@override String get switchAccount => 'Змінити акаунт';
	@override String get enabled => 'Увімкнено';
	@override String get disabled => 'Вимкнено';
	@override String get quickAction => 'Швидкі дії';
	@override String get user => 'Користувачі';
	@override String get administration => 'Управління';
	@override String get accounts => 'Акаунти';
	@override String get switch_ => 'Перемкнути';
	@override String get noMaintainerInformationWarning => 'Інформація про адміністраторів не налаштована';
	@override String get noInquiryUrlWarning => 'URL для звернень не встановлено';
	@override String get noBotProtectionWarning => 'Захист від ботів не налаштовано';
	@override String get configure => 'Налаштувати';
	@override String get postToGallery => 'Допис у галерею';
	@override String get postToHashtag => 'Опублікувати з цим хештегом';
	@override String get gallery => 'Галерея';
	@override String get recentPosts => 'Нещодавні дописи';
	@override String get popularPosts => 'Популярні дописи';
	@override String get shareWithNote => 'Поділитися нотаткою';
	@override String get ads => 'Реклама';
	@override String get expiration => 'Опитування закінчується';
	@override String get startingperiod => 'Початковий період';
	@override String get memo => 'Примітка';
	@override String get priority => 'Пріоритет';
	@override String get high => 'Високий';
	@override String get middle => 'Середній';
	@override String get low => 'Низький';
	@override String get emailNotConfiguredWarning => 'Email адреса не вказана';
	@override String get ratio => 'Співвідношення';
	@override String get previewNoteText => 'Показати передогляд';
	@override String get customCss => 'Власний CSS';
	@override String get customCssWarn => 'Використовуйте це налаштування лише якщо розумієте, що воно робить. Неправильні значення можуть призвести до некоректної роботи клієнта.';
	@override String get global => 'Глобальна';
	@override String get squareAvatars => 'Квадратні аватарки';
	@override String get sent => 'Відправити';
	@override String get received => 'Отримано';
	@override String get searchResult => 'Результати пошуку';
	@override String get hashtags => 'Хештеґ';
	@override String get troubleshooting => 'Усунення проблем';
	@override String get useBlurEffect => 'Ефекти розмиття в інтерфейсі';
	@override String get learnMore => 'Докладніше';
	@override String get misskeyUpdated => 'Misskey оновлено!';
	@override String get whatIsNew => 'Показати зміни';
	@override String get translate => 'Переклад';
	@override String translatedFrom({required Object x}) => 'Переклад з ${x}';
	@override String get accountDeletionInProgress => 'Наразі триває видалення акаунту';
	@override String get usernameInfo => 'Ім’я, яке відрізняє ваш обліковий запис від інших на цьому сервері. Можна використовувати латинські літери (az, AZ), цифри (0~9) або підкреслення (_). Ім’я користувача не можна буде змінити пізніше.';
	@override String get aiChanMode => 'Режим Ai';
	@override String get devMode => 'Режим розробника';
	@override String get keepCw => 'Зберігати попередження щодо вмісту';
	@override String get pubSub => 'Акаунти Pub/Sub';
	@override String get lastCommunication => 'Останній зв\'язок';
	@override String get resolved => 'Вирішено';
	@override String get unresolved => 'Не вирішено';
	@override String get breakFollow => 'Видалити підписника';
	@override String get breakFollowConfirm => 'Справді видалити цього підписника?';
	@override String get itsOn => 'Увімкнено';
	@override String get itsOff => 'Вимкнено';
	@override String get on => 'Увімкнено';
	@override String get off => 'Вимкнено';
	@override String get emailRequiredForSignup => 'Вимагати email адресу для реєстрації';
	@override String get unread => 'Непрочитане';
	@override String get filter => 'Фільтр';
	@override String get controlPanel => 'Панель керування';
	@override String get manageAccounts => 'Керування акаунтом';
	@override String get makeReactionsPublic => 'Зробити історію реакцій публічною';
	@override String get makeReactionsPublicDescription => 'Це зробить список усіх ваших попередніх реакцій загальнодоступним.';
	@override String get classic => 'Класичний';
	@override String get muteThread => 'Приглушити тред';
	@override String get unmuteThread => 'Скасувати глушіння';
	@override String get followingVisibility => 'Видимість підписок';
	@override String get followersVisibility => 'Visibility of followers';
	@override String get continueThread => 'Показати продовження треду';
	@override String get deleteAccountConfirm => 'Це незворотно видалить ваш акаунт. Продовжити?';
	@override String get incorrectPassword => 'Неправильний пароль.';
	@override String get incorrectTotp => 'Одноразовий пароль неправильний або його термін дії минув.';
	@override String voteConfirm({required Object choice}) => 'Підтверджуєте свій голос за "${choice}"?';
	@override String get hide => 'Сховати';
	@override String get useDrawerReactionPickerForMobile => 'Показувати вибір реакцій як висувну панель на мобільних пристроях';
	@override String welcomeBackWithName({required Object name}) => 'З поверненням, ${name}!';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Натисніть [${ok}], щоб завершити перевірку email.';
	@override String get overridedDeviceKind => 'Тип пристрою';
	@override String get smartphone => 'Смартфон';
	@override String get tablet => 'Планшет';
	@override String get auto => 'Автоматично';
	@override String get themeColor => 'Колір теми';
	@override String get size => 'Розмір';
	@override String get numberOfColumn => 'Кількість стовпців';
	@override String get searchByGoogle => 'Пошук';
	@override String get instanceDefaultLightTheme => 'Світла тема за промовчанням';
	@override String get instanceDefaultDarkTheme => 'Темна тема за промовчанням';
	@override String get instanceDefaultThemeDescription => 'Введіть код теми у форматі об’єкта.';
	@override String get mutePeriod => 'Тривалість приховування';
	@override String get period => 'Опитування закінчується';
	@override String get indefinitely => 'Ніколи';
	@override String get tenMinutes => '10 хвилин';
	@override String get oneHour => '1 година';
	@override String get oneDay => '1 день';
	@override String get oneWeek => '1 тиждень';
	@override String get oneMonth => '1 місяць';
	@override String get threeMonths => '3 months';
	@override String get oneYear => '1 рік';
	@override String get threeDays => '3 дні';
	@override String get reflectMayTakeTime => 'Може знадобитися деякий час для відображення';
	@override String get failedToFetchAccountInformation => 'Не вдалося отримати інформацію про акаунт';
	@override String get rateLimitExceeded => 'Ліміт швидкості перевищено';
	@override String get cropImage => 'Кадрування';
	@override String get cropImageAsk => 'Бажаєте кадрувати це зображення?';
	@override String get cropYes => 'Crop';
	@override String get cropNo => 'Використати як є';
	@override String get file => 'Файли';
	@override String recentNHours({required Object n}) => 'Останні ${n} годин';
	@override String recentNDays({required Object n}) => 'Останні ${n} днів';
	@override String get noEmailServerWarning => 'Email сервер не налаштовано.';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Є нерозглянуті скарги.';
	@override String get recommended => 'Рекомендоване';
	@override String get check => 'Перевірити';
	@override String get driveCapOverrideLabel => 'Змінити ємність диска для цього користувача';
	@override String get driveCapOverrideCaption => 'Для скасування вкажіть 0 або менше.';
	@override String get requireAdminForView => 'Для перегляду ви повинні увійти в акаунт адміністратора.';
	@override String get isSystemAccount => 'Акаунт, створений і автоматично керований системою.';
	@override String typeToConfirm({required Object x}) => 'Введіть ${x} для підтвердження';
	@override String get deleteAccount => 'Видалення акаунту';
	@override String get document => 'Документація';
	@override String get numberOfPageCache => 'Кількість кешованих сторінок';
	@override String get numberOfPageCacheDescription => 'Збільшення цього значення покращить зручність, але підвищить навантаження через більше використання пам’яті на пристрої користувача.';
	@override String get logoutConfirm => 'Справді вийти?';
	@override String get logoutWillClearClientData => 'Вихід з облікового запису видалить налаштування клієнта з браузера. Щоб відновити налаштування після повторного входу, потрібно увімкнути автоматичне резервне копіювання налаштувань.';
	@override String get lastActiveDate => 'Останнє використання';
	@override String get statusbar => 'Рядок стану';
	@override String get pleaseSelect => 'Виберіть будь ласка';
	@override String get reverse => 'Перевернути';
	@override String get colored => 'Кольоровий';
	@override String get refreshInterval => 'Інтервал оновлення';
	@override String get label => 'Назва';
	@override String get type => 'Тип';
	@override String get speed => 'Швидкість';
	@override String get slow => 'Повільно';
	@override String get fast => 'Швидко';
	@override String get sensitiveMediaDetection => 'Виявлення NSFW';
	@override String get localOnly => 'Локально';
	@override String get remoteOnly => 'Тільки віддаленi';
	@override String get failedToUpload => 'Збій завантаження';
	@override String get cannotUploadBecauseInappropriate => 'Не вдалося завантажити цей файл, оскільки деякі його частини визначено як потенційно неприйнятні.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Помилка завантаження через брак місця на Диску.';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Цей файл не можна завантажити, оскільки він перевищує обмеження розміру.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Не вдалося завантажити файл через недозволений тип файлу.';
	@override String get beta => 'Бета';
	@override String get enableAutoSensitive => 'Автоматичне маркування NSFW';
	@override String get enableAutoSensitiveDescription => 'Дозволяє, за можливості, автоматично виявляти й позначати чутливі медіа за допомогою машинного навчання. Навіть якщо цю опцію вимкнено, вона може бути увімкнена на рівні інстансу.';
	@override String get activeEmailValidationDescription => 'Увімкнути суворішу перевірку адрес електронної пошти, зокрема перевірку на тимчасові адреси та можливість фактичного зв’язку з ними. Якщо вимкнено, перевірятиметься лише формат адреси.';
	@override String get navbar => 'Рядок навігації';
	@override String get shuffle => 'Перемішати';
	@override String get account => 'Акаунти';
	@override String get move => 'Пересунути';
	@override String get pushNotification => 'Push сповіщення';
	@override String get subscribePushNotification => 'Увімкнути push-сповіщення';
	@override String get unsubscribePushNotification => 'Вимкнути push-сповіщення';
	@override String get pushNotificationAlreadySubscribed => 'Push-сповіщення вже увімкнено';
	@override String get pushNotificationNotSupported => 'Ваш браузер або інстанс не підтримує push-сповіщення';
	@override String get sendPushNotificationReadMessage => 'Видаляти push-сповіщення після прочитання';
	@override String get sendPushNotificationReadMessageCaption => 'Це може збільшити споживання енергії вашим пристроєм.';
	@override String get pleaseAllowPushNotification => 'Увімкніть push-сповіщення у браузері';
	@override String get browserPushNotificationDisabled => 'Не вдалося отримати дозвіл на надсилання сповіщень';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => 'Немає дозволу на надсилання сповіщень від ${serverName}. Дозвольте сповіщення в налаштуваннях браузера й спробуйте ще раз.';
	@override String get windowMaximize => 'Розгорнути';
	@override String get windowMinimize => 'Згорнути';
	@override String get windowRestore => 'Відновити';
	@override String get caption => 'Підпис';
	@override String get loggedInAsBot => 'Зараз виконано вхід як бот';
	@override String get tools => 'Інструменти';
	@override String get cannotLoad => 'Не вдалося завантажити';
	@override String get numberOfProfileView => 'Перегляди профілю';
	@override String get like => 'Вподобати';
	@override String get unlike => 'Не вподобати';
	@override String get numberOfLikes => 'Вподобання';
	@override String get show => 'Відображення';
	@override String get neverShow => 'Більше не показувати';
	@override String get remindMeLater => 'Можливо, пізніше';
	@override String get didYouLikeMisskey => 'Вам сподобався Misskey?';
	@override String pleaseDonate({required Object host}) => '${host} використовує вільне програмне забезпечення Misskey. Ми будемо дуже вдячні за ваші донати, щоб розробка Misskey могла тривати!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Відповідний вихідний код доступний за посиланням: ${anchor}';
	@override String get roles => 'Ролі';
	@override String get role => 'Роль';
	@override String get noRole => 'Роль не знайдено';
	@override String get normalUser => 'Звичайний користувач';
	@override String get undefined => 'Не визначено';
	@override String get assign => 'Призначити';
	@override String get unassign => 'Скасувати призначення';
	@override String get color => 'Колір';
	@override String get manageCustomEmojis => 'Керування користувацькими емодзі';
	@override String get manageAvatarDecorations => 'Керувати прикрасами аватара';
	@override String get youCannotCreateAnymore => 'Ви досягли ліміту створення.';
	@override String get cannotPerformTemporary => 'Тимчасово недоступний';
	@override String get cannotPerformTemporaryDescription => 'Цю дію тимчасово неможливо виконати через перевищення ліміту виконання. Будь ласка, зачекайте трохи й спробуйте ще раз.';
	@override String get invalidParamError => 'Неправильні параметри';
	@override String get invalidParamErrorDescription => 'Параметри запиту неправильні. Зазвичай це спричинено помилкою, але також може бути пов’язано з перевищенням обмежень розміру введених даних або подібними причинами.';
	@override String get permissionDeniedError => 'Операцію заборонено';
	@override String get permissionDeniedErrorDescription => 'Цей обліковий запис не має дозволу на виконання цієї дії.';
	@override String get preset => 'Пресет';
	@override String get selectFromPresets => 'Вибрати з пресетів';
	@override String get custom => 'Користувацькі';
	@override String get achievements => 'Досягнення';
	@override String get gotInvalidResponseError => 'Неправильна відповідь сервера';
	@override String get gotInvalidResponseErrorDescription => 'Сервер може бути недоступний або перебувати на технічному обслуговуванні. Будь ласка, спробуйте пізніше.';
	@override String get thisPostMayBeAnnoying => 'Ця нотатка може дратувати інших.';
	@override String get thisPostMayBeAnnoyingHome => 'Опублікувати в домашній стрічці';
	@override String get thisPostMayBeAnnoyingCancel => 'Скасувати';
	@override String get thisPostMayBeAnnoyingIgnore => 'Усе одно опублікувати';
	@override String get collapseRenotes => 'Згортати поширення, які ви вже бачили';
	@override String get collapseRenotesDescription => 'Згортати нотатки, на які ви вже відреагували або які поширили раніше.';
	@override String get internalServerError => 'Внутрішня помилка сервера';
	@override String get internalServerErrorDescription => 'На сервері сталася неочікувана помилка.';
	@override String get copyErrorInfo => 'Скопіювати код помилки';
	@override String get joinThisServer => 'Зареєструватися на цьому сервері';
	@override String get exploreOtherServers => 'Знайти інший сервер';
	@override String get letsLookAtTimeline => 'Перегляд історії';
	@override String get disableFederationConfirm => 'Справді вимкнути федерацію?';
	@override String get disableFederationConfirmWarn => 'Навіть якщо федерацію вимкнено, дописи залишатимуться публічними, якщо не вказано інше. Зазвичай вам не потрібно цього робити.';
	@override String get disableFederationOk => 'Не федерується';
	@override String get invitationRequiredToRegister => 'Цей інстанс доступний лише за запрошенням. Щоб зареєструватися, потрібно ввести дійсний код запрошення.';
	@override String get emailNotSupported => 'Цей інстанс не підтримує надсилання електронних листів.';
	@override String get postToTheChannel => 'Опублікувати в каналі';
	@override String get cannotBeChangedLater => 'Це не можна буде змінити пізніше.';
	@override String get reactionAcceptance => 'Прийняття реакцій';
	@override String get likeOnly => 'Лише вподобання';
	@override String get likeOnlyForRemote => 'Усі — лише вподобання для віддалених інстансів';
	@override String get nonSensitiveOnly => 'Тільки нечутливий контент';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Тільки нечутливий контент (тільки віддалені вподобання)';
	@override String get rolesAssignedToMe => 'Ролі, призначені мені';
	@override String get resetPasswordConfirm => 'Справді скинути пароль?';
	@override String get sensitiveWords => 'Чутливі слова';
	@override String get sensitiveWordsDescription => 'Видимість усіх нотаток, що містять будь-яке з налаштованих слів, автоматично буде встановлено на «Домашня». Можна вказати кілька слів, розділяючи їх переносами рядка.';
	@override String get sensitiveWordsDescription2 => 'Використання пробілів створює AND-вирази, а ключові слова, взяті в скісні риски, перетворюються на регулярний вираз.';
	@override String get prohibitedWords => 'Заборонені слова';
	@override String get prohibitedWordsDescription => 'Вмикає помилку під час спроби опублікувати нотатку, що містить налаштоване слово або слова. Можна вказати кілька слів, розділяючи їх новим рядком.';
	@override String get prohibitedWordsDescription2 => 'Використання пробілів створює AND-вирази, а ключові слова, взяті в скісні риски, перетворюються на регулярний вираз.';
	@override String get hiddenTags => 'Приховані хештеги';
	@override String get hiddenTagsDescription => 'Виберіть теги, які не зображатимуться у списку трендів. Можна зареєструвати кілька тегів, розділяючи їх рядками.';
	@override String get notesSearchNotAvailable => 'Пошук нотаток недоступний.';
	@override String get usersSearchNotAvailable => 'Пошук користувачів недоступний.';
	@override String get license => 'Ліцензія';
	@override String get unfavoriteConfirm => 'Справді видалити з обраного?';
	@override String get myClips => 'Мої добірки';
	@override String get drivecleaner => 'Очищувач Диска\n';
	@override String get retryAllQueuesNow => 'Повторно запустити всі черги';
	@override String get retryAllQueuesConfirmTitle => 'Справді повторити все?';
	@override String get retryAllQueuesConfirmText => 'Це тимчасово збільшить навантаження на сервер.';
	@override String get enableChartsForRemoteUser => 'Створити графіки даних віддалених користувачів';
	@override String get enableChartsForFederatedInstances => 'Створити графіки даних віддалених інстансів';
	@override String get enableStatsForFederatedInstances => 'Отримувати статистику віддаленого сервера';
	@override String get showClipButtonInNoteFooter => 'Додати «Добірка» до меню дій нотатки';
	@override String get reactionsDisplaySize => 'Розмір відображення реакцій';
	@override String get limitWidthOfReaction => 'Обмежити максимальну ширину реакцій і показувати їх у зменшеному розмірі.';
	@override String get noteIdOrUrl => 'ID або URL нотатки';
	@override String get video => 'Відео';
	@override String get videos => 'Відео';
	@override String get audio => 'Аудіо';
	@override String get audioFiles => 'Аудіо';
	@override String get dataSaver => 'Заощадження трафіку';
	@override String get accountMigration => 'Міграція акаунту';
	@override String get accountMoved => 'Цей користувач перейшов на новий акаунт:';
	@override String get accountMovedShort => 'Цей акаунт було перенесено.';
	@override String get operationForbidden => 'Операцію заборонено';
	@override String get forceShowAds => 'Завжди показувати рекламу';
	@override String get addMemo => 'Додати пам\'ятку';
	@override String get editMemo => 'Редагувати пам\'ятку';
	@override String get reactionsList => 'Реакції';
	@override String get renotesList => 'Поширення';
	@override String get notificationDisplay => 'Сповіщення';
	@override String get leftTop => 'Ліворуч зверху';
	@override String get rightTop => 'Праворуч зверху';
	@override String get leftBottom => 'Ліворуч знизу';
	@override String get rightBottom => 'Праворуч знизу';
	@override String get stackAxis => 'Напрямок накладання';
	@override String get vertical => 'Вертикально';
	@override String get horizontal => 'Збоку';
	@override String get position => 'Позиція';
	@override String get serverRules => 'Правила сервера';
	@override String get pleaseConfirmBelowBeforeSignup => 'Щоб зареєструватися на цьому сервері, ви повинні переглянути та прийняти наведені нижче умови:';
	@override String get pleaseAgreeAllToContinue => 'Щоб продовжити, потрібно погодитися з усіма полями вище.\n\n';
	@override String get continue_ => 'Продовжити';
	@override String get preservedUsernames => 'Зарезервовані імена користувачів';
	@override String get preservedUsernamesDescription => 'Укажіть імена користувачів, які потрібно зарезервувати, розділяючи їх переносами рядка. Вони стануть недоступними під час звичайного створення облікового запису, але адміністратори зможуть використовувати їх для ручного створення облікових записів. Уже наявні облікові записи з такими іменами користувачів не будуть зачеплені.';
	@override String get createNoteFromTheFile => 'Створити нотатку з цього файла';
	@override String get archive => 'Архів';
	@override String get archived => 'Заархівовано';
	@override String get unarchive => 'Розархівувати';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Справді архівувати ${name}?';
	@override String get channelArchiveConfirmDescription => 'Архівований канал більше не відображатиметься у списку каналів або результатах пошуку. До нього також більше не можна буде додавати нові дописи.';
	@override String get thisChannelArchived => 'Цей канал заархівовано.';
	@override String get displayOfNote => 'Відображення нотаток';
	@override String get initialAccountSetting => 'Налаштування профілю';
	@override String get youFollowing => 'Підписки';
	@override String get preventAiLearning => 'Відхилити використання в машинному навчанні (генеративному ШІ)';
	@override String get preventAiLearningDescription => 'Запит до пошукових роботів не використовувати опубліковані тексти, зображення тощо в наборах даних для машинного навчання (прогнозного / генеративного ШІ). Це досягається додаванням HTML-прапорця відповіді «noai» до відповідного вмісту. Однак повного запобігання за допомогою цього прапорця досягти неможливо, оскільки його можуть просто ігнорувати.';
	@override String get options => 'Опції';
	@override String get specifyUser => 'Вказаний користувач';
	@override String get lookupConfirm => 'Хочете дізнатись?';
	@override String get openTagPageConfirm => 'Хочете відкрити сторінку хештега?';
	@override String get specifyHost => 'Вказати хост';
	@override String get failedToPreviewUrl => 'Не вдалося переглянути';
	@override String get update => 'Оновити';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Ролі, які можуть використовувати цей емодзі як реакцію';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Якщо ролі не вказано, будь-хто може використовувати цей емодзі як реакцію.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Ці ролі мають бути публічними.';
	@override String get cancelReactionConfirm => 'Справді видалити вашу реакцію?';
	@override String get changeReactionConfirm => 'Справді змінити вашу реакцію?';
	@override String get later => 'Пізніше';
	@override String get goToMisskey => 'До Misskey';
	@override String get additionalEmojiDictionary => 'Додаткові словники емодзі';
	@override String get installed => 'Встановлено';
	@override String get branding => 'Брендинг';
	@override String get enableServerMachineStats => 'Публікувати статистику серверного обладнання';
	@override String get enableIdenticonGeneration => 'Увімкнути генерацію ідентиконів користувачів';
	@override String get showRoleBadgesOfRemoteUsers => 'Відображати значки ролей, призначені віддаленим користувачам';
	@override String get turnOffToImprovePerformance => 'Вимкнення цієї опції може підвищити продуктивність.';
	@override String get createInviteCode => 'Створити запрошення';
	@override String get createWithOptions => 'Створити з параметрами';
	@override String get createCount => 'Кількість запрошень';
	@override String get inviteCodeCreated => 'Запрошення створено';
	@override String get inviteLimitExceeded => 'Ви перевищили ліміт запрошень, які можете створити.';
	@override String createLimitRemaining({required Object limit}) => 'Ліміт запрошень: залишилося ${limit}';
	@override String inviteLimitResetCycle({required Object limit, required Object time}) => 'Цей ліміт буде скинуто до ${limit} о ${time}.';
	@override String get expirationDate => 'Дата закінчення терміну дії';
	@override String get noExpirationDate => 'Без закінчення терміну дії';
	@override String get inviteCodeUsedAt => 'Код запрошення використано о';
	@override String get registeredUserUsingInviteCode => 'Запрошення використав(-ла)';
	@override String get waitingForMailAuth => 'Очікується підтвердження електронної пошти';
	@override String get inviteCodeCreator => 'Запрошення створив(-ла)';
	@override String get usedAt => 'Використано';
	@override String get unused => 'Не використано';
	@override String get used => 'Використаний';
	@override String get expired => 'Термін дії минув';
	@override String get doYouAgree => 'Погоджуєтеся?';
	@override String get beSureToReadThisAsItIsImportant => 'Будь ласка, прочитайте цю важливу інформацію.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Я прочитав/прочитала текст «${x}» і погоджуюся.';
	@override String get dialog => 'Діалог';
	@override String get icon => 'Аватар';
	@override String get forYou => 'Для вас';
	@override String get currentAnnouncements => 'Поточні оголошення';
	@override String get pastAnnouncements => 'Минулі оголошення';
	@override String get youHaveUnreadAnnouncements => 'Є непрочитані оголошення.';
	@override String get useSecurityKey => 'Дотримуйтеся інструкцій вашого браузера або пристрою, щоб скористатися ключем безпеки або passkey.';
	@override String get replies => 'Відповісти';
	@override String get renotes => 'Поширити';
	@override String get loadReplies => 'Показати відповіді';
	@override String get loadConversation => 'Показати розмову';
	@override String get pinnedList => 'Закріплений список';
	@override String get keepScreenOn => 'Не вимикати екран';
	@override String get verifiedLink => 'Право власності на посилання підтверджено';
	@override String get notifyNotes => 'Сповіщати про нові нотатки';
	@override String get unnotifyNotes => 'Припинити сповіщати про нові нотатки';
	@override String get notifyUsers => 'Користувачі, які ввімкнули сповіщення про публікації';
	@override String get authentication => 'Автентикація';
	@override String get authenticationRequiredToContinue => 'Будь ласка, автентифікуйтеся, щоб продовжити';
	@override String get dateAndTime => 'Дата та час';
	@override String get showRenotes => 'Показати поширення';
	@override String get edited => 'Відредаговано';
	@override String get notificationRecieveConfig => 'Налаштування сповіщень';
	@override String get mutualFollow => 'Взаємна підписка';
	@override String get followingOrFollower => 'Підписки або підписники';
	@override String get fileAttachedOnly => 'Лише нотатки з файлами';
	@override String get showRepliesToOthersInTimeline => 'Показувати відповіді іншим у стрічці';
	@override String get hideRepliesToOthersInTimeline => 'Приховувати відповіді іншим зі стрічки';
	@override String get showRepliesToOthersInTimelineAll => 'Показувати відповіді іншим від усіх, на кого ви підписані, у стрічці';
	@override String get hideRepliesToOthersInTimelineAll => 'Приховувати відповіді іншим від усіх, на кого ви підписані, зі стрічки';
	@override String get confirmShowRepliesAll => 'Ви впевнені, що хочете показувати відповіді від усіх, на кого ви підписані, у своїй стрічці? Цю дію не можна скасувати.';
	@override String get confirmHideRepliesAll => 'Ви впевнені, що хочете приховувати відповіді від усіх, на кого ви підписані, у своїй стрічці? Цю дію не можна скасувати.';
	@override String get externalServices => 'Зовнішні сервіси';
	@override String get sourceCode => 'Вихідний код';
	@override String get sourceCodeIsNotYetProvided => 'Вихідний код ще недоступний. Зверніться до адміністратора, щоб виправити цю проблему.';
	@override String get repositoryUrl => 'URL репозиторію';
	@override String get repositoryUrlDescription => 'Якщо ви використовуєте Misskey без змін у вихідному коді, введіть https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Якщо ви не опублікували репозиторій, натомість потрібно надати tarball-архів. Докладніше див. у .config/example.yml.';
	@override String get feedback => 'Відгук';
	@override String get feedbackUrl => 'URL відгуків';
	@override String get impressumDescription => 'У деяких країнах, наприклад у Німеччині, для комерційних сайтів юридично обов’язково вказувати контактну інформацію оператора сайту — вихідні дані.';
	@override String get privacyPolicy => 'Політика конфіденційності';
	@override String get privacyPolicyUrl => 'URL політики конфіденційності';
	@override String get tosAndPrivacyPolicy => 'Умови користування та політика конфіденційності';
	@override String get avatarDecorations => 'Прикраси аватара';
	@override String get attach => 'Прикріпити';
	@override String get detach => 'Відкріпити';
	@override String get detachAll => 'Видалити все';
	@override String get angle => 'Кут';
	@override String get flip => 'Перевернути';
	@override String get showAvatarDecorations => 'Показувати прикраси аватара';
	@override String get releaseToRefresh => 'Відпустіть, щоб оновити';
	@override String get refreshing => 'Оновлення...';
	@override String get pullDownToRefresh => 'Потягніть вниз, щоб оновити';
	@override String get useGroupedNotifications => 'Показувати згруповані сповіщення';
	@override String get emailVerificationFailedError => 'Під час підтвердження адреси електронної пошти сталася помилка. Можливо, посилання застаріло.';
	@override String get cwNotationRequired => 'Якщо ввімкнено «Приховати вміст», потрібно додати опис.';
	@override String get doReaction => 'Додати реакцію';
	@override String get code => 'Код';
	@override String get reloadRequiredToApplySettings => 'Щоб застосувати налаштування, потрібно перезавантажити сторінку.';
	@override String remainingN({required Object n}) => 'Залишилося: ${n}';
	@override String get overwriteContentConfirm => 'Ви впевнені, що хочете перезаписати поточний вміст?';
	@override String get seasonalScreenEffect => 'Сезонний ефект екрана';
	@override String get decorate => 'Прикрасити';
	@override String get addMfmFunction => 'Додати MFM';
	@override String get enableQuickAddMfmFunction => 'Показувати розширений вибір MFM';
	@override String get bubbleGame => 'Bubble Game';
	@override String get sfx => 'Звукові ефекти';
	@override String get soundWillBePlayed => 'Буде відтворено звук';
	@override String get showReplay => 'Переглянути повтор';
	@override String get replay => 'Повтор';
	@override String get replaying => 'Показ повтору';
	@override String get endReplay => 'Вийти з повтору';
	@override String get copyReplayData => 'Копіювати дані повтору';
	@override String get ranking => 'Рейтинг';
	@override String lastNDays({required Object n}) => 'Останні ${n} днів';
	@override String get backToTitle => 'Повернутися до заголовного екрана';
	@override String get hemisphere => 'Місце проживання';
	@override String get withSensitive => 'Допис від  містить чутливий вміст';
	@override String userSaysSomethingSensitive({required Object name}) => 'Нотатка від ${name} містить чутливий вміст';
	@override String get enableHorizontalSwipe => 'Проведіть, щоб перемикати вкладки';
	@override String get loading => 'Завантаження';
	@override String get surrender => 'Скасувати';
	@override String get gameRetry => 'Спробувати знову';
	@override String get notUsePleaseLeaveBlank => 'Залиште порожнім, якщо не використовується';
	@override String get useTotp => 'Введіть одноразовий пароль';
	@override String get useBackupCode => 'Використати резервні коди';
	@override String get launchApp => 'Запуск додатку';
	@override String get useNativeUIForVideoAudioPlayer => 'Використовувати інтерфейс браузера під час відтворення відео й аудіо';
	@override String get keepOriginalFilename => 'Зберігати початкову назву файлу';
	@override String get keepOriginalFilenameDescription => 'Якщо вимкнути це налаштування, під час завантаження файлів їхні назви автоматично замінюватимуться випадковими рядками.';
	@override String get noDescription => 'Пояснення відсутнє';
	@override String get alwaysConfirmFollow => 'Завжди підтверджувати підписку';
	@override String get inquiry => 'Зв\'язок';
	@override String get tryAgain => 'Повторіть спробу.';
	@override String get createdLists => 'Створені списки';
	@override String get createdAntennas => 'Створені антени';
	@override String get discard => 'Відхилити';
	@override String get prohibitedWordsForNameOfUser => 'Заборонені слова (імʼя користувача)';
	@override String get pleaseSelectAccount => 'Виберіть акаунт';
	@override String get draft => 'Чернетка';
	@override String get preferences => 'Налаштування';
	@override String get untitled => 'Без назви';
	@override String get skip => 'Пропустити';
	@override String get restore => 'Відновити';
	@override String get paste => 'Вставити';
	@override String get emojiPalette => 'Палітра емодзі';
	@override String get postForm => 'Створення нотатки';
	@override String get textCount => 'Кількість символів';
	@override String get information => 'Інформація';
	@override String get chat => 'Чат';
	@override String get directMessage => 'Чат із користувачем';
	@override String get directMessage_short => 'Повідомлення';
	@override String get compress => 'Стиснути';
	@override String get right => 'Праворуч';
	@override String get bottom => 'Зверху';
	@override String get top => 'Знизу';
	@override String get embed => 'Вбудувати';
	@override String get readonly => 'Лише для читання';
	@override String get goToDeck => 'Повернутися до Деки';
	@override String get federationJobs => 'Завдання федерації';
	@override String get driveAboutTip => 'У Диску відображатиметься список файлів, які ви раніше завантажили.<br>Ви можете повторно використовувати ці файли, прикріплюючи їх до нотаток, або завантажувати файли заздалегідь, щоб опублікувати їх пізніше.<br><b>Будьте обережні під час видалення файлу, адже він стане недоступним усюди, де використовувався (наприклад, у нотатках, сторінках, аватарах, банерах тощо).</b><br>Ви також можете створювати теки, щоб упорядкувати файли.';
	@override String get scrollToClose => 'Прокрутіть, щоб закрити';
	@override String get advice => 'Порада';
	@override String get realtimeMode => 'Режим реального часу';
	@override String get turnItOn => 'Увімкнути';
	@override String get turnItOff => 'Вимкнути';
	@override String get emojiMute => 'Приховати емодзі';
	@override String get emojiUnmute => 'Показувати емодзі';
	@override String muteX({required Object x}) => 'Приховати ${x}';
	@override String unmuteX({required Object x}) => 'Показувати ${x}';
	@override String get abort => 'Перервати';
	@override String get tip => 'Поради та підказки';
	@override String get redisplayAllTips => 'Знову показувати всі «Поради й підказки»';
	@override String get hideAllTips => 'Приховати всі «Поради й підказки»';
	@override String get defaultImageCompressionLevel => 'Рівень стиснення зображень по замовчуванню';
	@override String get defaultImageCompressionLevel_description => 'Нижчий рівень зберігає якість зображення, але збільшує розмір файлу.<br>Вищий рівень зменшує розмір файлу, але погіршує якість зображення.';
	@override String get defaultCompressionLevel => 'Рівень стиснення по замовчуванню';
	@override String get defaultCompressionLevel_description => 'Нижчий рівень стиснення зберігає якість, але збільшує розмір файлу.<br>Вищий рівень стиснення зменшує розмір файлу, але погіршує якість.';
	@override String get inMinutes => 'х';
	@override String get inDays => 'д';
	@override String get safeModeEnabled => 'Безпечний режим увімкнено';
	@override String get pluginsAreDisabledBecauseSafeMode => 'Усі плагіни вимкнено, оскільки ввімкнено безпечний режим.';
	@override String get customCssIsDisabledBecauseSafeMode => 'Користувацький CSS не застосовується, оскільки ввімкнено безпечний режим.';
	@override String get themeIsDefaultBecauseSafeMode => 'Поки активний безпечний режим, використовується типова тема. Вимкнення безпечного режиму скасує ці зміни.';
	@override String get thankYouForTestingBeta => 'Дякуємо, що допомагаєте нам тестувати бета-версію!';
	@override String get createUserSpecifiedNote => 'Створити особисту нотатку';
	@override String get schedulePost => 'Запланувати нотатку';
	@override String scheduleToPostOnX({required Object x}) => 'Заплановано створити нотатку на ${x}';
	@override String scheduledToPostOnX({required Object x}) => 'Нотатку заплановано на ${x}';
	@override String get schedule => 'Запланувати';
	@override String get scheduled => 'Заплановано';
	@override String get widgets => 'Віджети';
	@override String get deviceInfo => 'Відомості про пристрій';
	@override String get deviceInfoDescription => 'Під час технічного звернення додавання наведеної нижче інформації може допомогти розв’язати проблему.';
	@override String get youAreAdmin => 'Ви адмін';
	@override String get frame => 'Кадр';
	@override String get presets => 'Пресети';
	@override String get zeroPadding => 'Доповнення нулями';
	@override String get nothingToConfigure => 'Немає доступних параметрів для налаштування';
	@override String get viewRenotedChannel => 'Показувати канал поширення';
	@override String get previewingTheme => 'Попередній перегляд теми';
	@override String get previewingThemeRestore => 'Відновити';
	@override String get accessToken => 'Токен доступу';
	@override late final _Translations$misskey$imageEditing_$uk_UA imageEditing_ = _Translations$misskey$imageEditing_$uk_UA._(_root);
	@override late final _Translations$misskey$imageFrameEditor_$uk_UA imageFrameEditor_ = _Translations$misskey$imageFrameEditor_$uk_UA._(_root);
	@override late final _Translations$misskey$compression_$uk_UA compression_ = _Translations$misskey$compression_$uk_UA._(_root);
	@override late final _Translations$misskey$order_$uk_UA order_ = _Translations$misskey$order_$uk_UA._(_root);
	@override late final _Translations$misskey$chat_$uk_UA chat_ = _Translations$misskey$chat_$uk_UA._(_root);
	@override late final _Translations$misskey$delivery_$uk_UA delivery_ = _Translations$misskey$delivery_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$uk_UA achievements_ = _Translations$misskey$achievements_$uk_UA._(_root);
	@override late final _Translations$misskey$role_$uk_UA role_ = _Translations$misskey$role_$uk_UA._(_root);
	@override late final _Translations$misskey$sensitiveMediaDetection_$uk_UA sensitiveMediaDetection_ = _Translations$misskey$sensitiveMediaDetection_$uk_UA._(_root);
	@override late final _Translations$misskey$emailUnavailable_$uk_UA emailUnavailable_ = _Translations$misskey$emailUnavailable_$uk_UA._(_root);
	@override late final _Translations$misskey$ffVisibility_$uk_UA ffVisibility_ = _Translations$misskey$ffVisibility_$uk_UA._(_root);
	@override late final _Translations$misskey$signup_$uk_UA signup_ = _Translations$misskey$signup_$uk_UA._(_root);
	@override late final _Translations$misskey$accountDelete_$uk_UA accountDelete_ = _Translations$misskey$accountDelete_$uk_UA._(_root);
	@override late final _Translations$misskey$ad_$uk_UA ad_ = _Translations$misskey$ad_$uk_UA._(_root);
	@override late final _Translations$misskey$gallery_$uk_UA gallery_ = _Translations$misskey$gallery_$uk_UA._(_root);
	@override late final _Translations$misskey$email_$uk_UA email_ = _Translations$misskey$email_$uk_UA._(_root);
	@override late final _Translations$misskey$plugin_$uk_UA plugin_ = _Translations$misskey$plugin_$uk_UA._(_root);
	@override late final _Translations$misskey$preferencesBackups_$uk_UA preferencesBackups_ = _Translations$misskey$preferencesBackups_$uk_UA._(_root);
	@override late final _Translations$misskey$registry_$uk_UA registry_ = _Translations$misskey$registry_$uk_UA._(_root);
	@override late final _Translations$misskey$aboutMisskey_$uk_UA aboutMisskey_ = _Translations$misskey$aboutMisskey_$uk_UA._(_root);
	@override late final _Translations$misskey$instanceTicker_$uk_UA instanceTicker_ = _Translations$misskey$instanceTicker_$uk_UA._(_root);
	@override late final _Translations$misskey$serverDisconnectedBehavior_$uk_UA serverDisconnectedBehavior_ = _Translations$misskey$serverDisconnectedBehavior_$uk_UA._(_root);
	@override late final _Translations$misskey$channel_$uk_UA channel_ = _Translations$misskey$channel_$uk_UA._(_root);
	@override late final _Translations$misskey$menuDisplay_$uk_UA menuDisplay_ = _Translations$misskey$menuDisplay_$uk_UA._(_root);
	@override late final _Translations$misskey$wordMute_$uk_UA wordMute_ = _Translations$misskey$wordMute_$uk_UA._(_root);
	@override late final _Translations$misskey$instanceMute_$uk_UA instanceMute_ = _Translations$misskey$instanceMute_$uk_UA._(_root);
	@override late final _Translations$misskey$theme_$uk_UA theme_ = _Translations$misskey$theme_$uk_UA._(_root);
	@override late final _Translations$misskey$sfx_$uk_UA sfx_ = _Translations$misskey$sfx_$uk_UA._(_root);
	@override late final _Translations$misskey$ago_$uk_UA ago_ = _Translations$misskey$ago_$uk_UA._(_root);
	@override late final _Translations$misskey$time_$uk_UA time_ = _Translations$misskey$time_$uk_UA._(_root);
	@override late final _Translations$misskey$x2fa_$uk_UA x2fa_ = _Translations$misskey$x2fa_$uk_UA._(_root);
	@override late final _Translations$misskey$permissions_$uk_UA permissions_ = _Translations$misskey$permissions_$uk_UA._(_root);
	@override late final _Translations$misskey$auth_$uk_UA auth_ = _Translations$misskey$auth_$uk_UA._(_root);
	@override late final _Translations$misskey$antennaSources_$uk_UA antennaSources_ = _Translations$misskey$antennaSources_$uk_UA._(_root);
	@override late final _Translations$misskey$weekday_$uk_UA weekday_ = _Translations$misskey$weekday_$uk_UA._(_root);
	@override late final _Translations$misskey$widgets_$uk_UA widgets_ = _Translations$misskey$widgets_$uk_UA._(_root);
	@override late final _Translations$misskey$widgetOptions_$uk_UA widgetOptions_ = _Translations$misskey$widgetOptions_$uk_UA._(_root);
	@override late final _Translations$misskey$cw_$uk_UA cw_ = _Translations$misskey$cw_$uk_UA._(_root);
	@override late final _Translations$misskey$poll_$uk_UA poll_ = _Translations$misskey$poll_$uk_UA._(_root);
	@override late final _Translations$misskey$visibility_$uk_UA visibility_ = _Translations$misskey$visibility_$uk_UA._(_root);
	@override late final _Translations$misskey$postForm_$uk_UA postForm_ = _Translations$misskey$postForm_$uk_UA._(_root);
	@override late final _Translations$misskey$profile_$uk_UA profile_ = _Translations$misskey$profile_$uk_UA._(_root);
	@override late final _Translations$misskey$exportOrImport_$uk_UA exportOrImport_ = _Translations$misskey$exportOrImport_$uk_UA._(_root);
	@override late final _Translations$misskey$charts_$uk_UA charts_ = _Translations$misskey$charts_$uk_UA._(_root);
	@override late final _Translations$misskey$instanceCharts_$uk_UA instanceCharts_ = _Translations$misskey$instanceCharts_$uk_UA._(_root);
	@override late final _Translations$misskey$timelines_$uk_UA timelines_ = _Translations$misskey$timelines_$uk_UA._(_root);
	@override late final _Translations$misskey$play_$uk_UA play_ = _Translations$misskey$play_$uk_UA._(_root);
	@override late final _Translations$misskey$pages_$uk_UA pages_ = _Translations$misskey$pages_$uk_UA._(_root);
	@override late final _Translations$misskey$relayStatus_$uk_UA relayStatus_ = _Translations$misskey$relayStatus_$uk_UA._(_root);
	@override late final _Translations$misskey$notification_$uk_UA notification_ = _Translations$misskey$notification_$uk_UA._(_root);
	@override late final _Translations$misskey$deck_$uk_UA deck_ = _Translations$misskey$deck_$uk_UA._(_root);
	@override late final _Translations$misskey$webhookSettings_$uk_UA webhookSettings_ = _Translations$misskey$webhookSettings_$uk_UA._(_root);
	@override late final _Translations$misskey$abuseReport_$uk_UA abuseReport_ = _Translations$misskey$abuseReport_$uk_UA._(_root);
	@override late final _Translations$misskey$moderationLogTypes_$uk_UA moderationLogTypes_ = _Translations$misskey$moderationLogTypes_$uk_UA._(_root);
	@override late final _Translations$misskey$reversi_$uk_UA reversi_ = _Translations$misskey$reversi_$uk_UA._(_root);
	@override late final _Translations$misskey$remoteLookupErrors_$uk_UA remoteLookupErrors_ = _Translations$misskey$remoteLookupErrors_$uk_UA._(_root);
	@override late final _Translations$misskey$search_$uk_UA search_ = _Translations$misskey$search_$uk_UA._(_root);
	@override String get watermark => 'Водяний знак';
	@override String get defaultPreset => 'Default Preset';
	@override late final _Translations$misskey$watermarkEditor_$uk_UA watermarkEditor_ = _Translations$misskey$watermarkEditor_$uk_UA._(_root);
	@override late final _Translations$misskey$imageEffector_$uk_UA imageEffector_ = _Translations$misskey$imageEffector_$uk_UA._(_root);
	@override String get drafts => 'Чернетка';
	@override late final _Translations$misskey$drafts_$uk_UA drafts_ = _Translations$misskey$drafts_$uk_UA._(_root);
	@override String get qr => 'QR-код';
	@override late final _Translations$misskey$qr_$uk_UA qr_ = _Translations$misskey$qr_$uk_UA._(_root);
}

// Path: misskey.imageEditing_
class _Translations$misskey$imageEditing_$uk_UA extends Translations$misskey$imageEditing_$en_US {
	_Translations$misskey$imageEditing_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEditing_$vars_$uk_UA vars_ = _Translations$misskey$imageEditing_$vars_$uk_UA._(_root);
}

// Path: misskey.imageFrameEditor_
class _Translations$misskey$imageFrameEditor_$uk_UA extends Translations$misskey$imageFrameEditor_$en_US {
	_Translations$misskey$imageFrameEditor_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get header => 'Заголовок';
	@override String get withQrCode => 'QR-код';
	@override String get textColor => 'Колір тексту';
	@override String get font => 'Шрифт';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans serif';
}

// Path: misskey.compression_
class _Translations$misskey$compression_$uk_UA extends Translations$misskey$compression_$en_US {
	_Translations$misskey$compression_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$compression_$quality_$uk_UA quality_ = _Translations$misskey$compression_$quality_$uk_UA._(_root);
	@override late final _Translations$misskey$compression_$size_$uk_UA size_ = _Translations$misskey$compression_$size_$uk_UA._(_root);
}

// Path: misskey.order_
class _Translations$misskey$order_$uk_UA extends Translations$misskey$order_$en_US {
	_Translations$misskey$order_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get newest => 'Найновіші спочатку';
	@override String get oldest => 'Спочатку старі';
}

// Path: misskey.chat_
class _Translations$misskey$chat_$uk_UA extends Translations$misskey$chat_$en_US {
	_Translations$misskey$chat_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get messages => 'Повідомлення';
	@override String get noMessagesYet => 'Повідомлень поки немає';
	@override String get newMessage => 'Нове повідомлення';
	@override String get invitations => 'Запросити';
	@override String get history => 'Історія';
	@override String get noHistory => 'Історія порожня';
	@override String get inviteUser => 'Запросити користувачів';
	@override String get ignore => 'Ігнорувати';
	@override String get members => 'Учасники';
	@override String get home => 'Домівка';
	@override String get send => 'Відправити';
	@override String get newline => 'Новий рядок';
}

// Path: misskey.delivery_
class _Translations$misskey$delivery_$uk_UA extends Translations$misskey$delivery_$en_US {
	_Translations$misskey$delivery_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Призупинено';
	@override late final _Translations$misskey$delivery_$type_$uk_UA type_ = _Translations$misskey$delivery_$type_$uk_UA._(_root);
}

// Path: misskey.achievements_
class _Translations$misskey$achievements_$uk_UA extends Translations$misskey$achievements_$en_US {
	_Translations$misskey$achievements_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Відкрито';
	@override late final _Translations$misskey$achievements_$types_$uk_UA types_ = _Translations$misskey$achievements_$types_$uk_UA._(_root);
}

// Path: misskey.role_
class _Translations$misskey$role_$uk_UA extends Translations$misskey$role_$en_US {
	_Translations$misskey$role_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Нова роль';
	@override String get edit => 'Змінити роль';
	@override String get name => 'Назва ролі';
	@override String get description => 'Опис ролі';
	@override String get permission => 'Права ролі';
	@override String get assignTarget => 'Призначити';
	@override String get manual => 'Вручну';
	@override String get condition => 'Умови';
	@override String get priority => 'Пріоритет';
	@override late final _Translations$misskey$role_$priority_$uk_UA priority_ = _Translations$misskey$role_$priority_$uk_UA._(_root);
	@override late final _Translations$misskey$role_$options_$uk_UA options_ = _Translations$misskey$role_$options_$uk_UA._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _Translations$misskey$sensitiveMediaDetection_$uk_UA extends Translations$misskey$sensitiveMediaDetection_$en_US {
	_Translations$misskey$sensitiveMediaDetection_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get sensitivity => 'Чутливість детектування';
	@override String get setSensitiveFlagAutomatically => 'Позначити як NSFW';
	@override String get analyzeVideos => 'Увімкнути аналіз відео';
}

// Path: misskey.emailUnavailable_
class _Translations$misskey$emailUnavailable_$uk_UA extends Translations$misskey$emailUnavailable_$en_US {
	_Translations$misskey$emailUnavailable_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get used => 'Ця email адреса вже використовується';
	@override String get format => 'Невірний формат';
	@override String get disposable => 'Одноразові email-адреси використовувати не можна';
	@override String get mx => 'Цей email сервер недійсний';
	@override String get smtp => 'Цей email-сервер не відповідає';
}

// Path: misskey.ffVisibility_
class _Translations$misskey$ffVisibility_$uk_UA extends Translations$misskey$ffVisibility_$en_US {
	_Translations$misskey$ffVisibility_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get public => 'Опублікувати';
	@override String get followers => 'Видно лише підписникам';
	@override String get private => 'Приватне';
}

// Path: misskey.signup_
class _Translations$misskey$signup_$uk_UA extends Translations$misskey$signup_$en_US {
	_Translations$misskey$signup_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Майже готово';
	@override String get emailAddressInfo => 'Будь ласка, введіть вашу email-адресу. Вона не буде оприлюднена.';
}

// Path: misskey.accountDelete_
class _Translations$misskey$accountDelete_$uk_UA extends Translations$misskey$accountDelete_$en_US {
	_Translations$misskey$accountDelete_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Видалити акаунт';
	@override String get requestAccountDelete => 'Запит на видалення акаунту';
	@override String get started => 'Видалення розпочато.';
	@override String get inProgress => 'Наразі триває видалення';
}

// Path: misskey.ad_
class _Translations$misskey$ad_$uk_UA extends Translations$misskey$ad_$en_US {
	_Translations$misskey$ad_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get back => 'Назад';
	@override String get reduceFrequencyOfThisAd => 'Показувати цю рекламу менше';
	@override String get hide => 'Не відображати';
}

// Path: misskey.gallery_
class _Translations$misskey$gallery_$uk_UA extends Translations$misskey$gallery_$en_US {
	_Translations$misskey$gallery_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get my => 'Моя галерея';
	@override String get liked => 'Вподобане';
	@override String get like => 'Вподобати';
	@override String get unlike => 'Не вподобати';
}

// Path: misskey.email_
class _Translations$misskey$email_$uk_UA extends Translations$misskey$email_$en_US {
	_Translations$misskey$email_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$email_$follow_$uk_UA follow_ = _Translations$misskey$email_$follow_$uk_UA._(_root);
	@override late final _Translations$misskey$email_$receiveFollowRequest_$uk_UA receiveFollowRequest_ = _Translations$misskey$email_$receiveFollowRequest_$uk_UA._(_root);
}

// Path: misskey.plugin_
class _Translations$misskey$plugin_$uk_UA extends Translations$misskey$plugin_$en_US {
	_Translations$misskey$plugin_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get install => 'Встановити плагін';
	@override String get installWarn => 'Будь ласка, не встановлюйте плагінів, яким ви не довіряєте.';
	@override String get manage => 'Керування плагінами';
	@override String get viewSource => 'Переглянути вихідний код';
}

// Path: misskey.preferencesBackups_
class _Translations$misskey$preferencesBackups_$uk_UA extends Translations$misskey$preferencesBackups_$en_US {
	_Translations$misskey$preferencesBackups_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get list => 'Створені бекапи';
	@override String get saveNew => 'Зберегти як новий';
	@override String get loadFile => 'Завантажити з файлу';
	@override String get apply => 'Застосувати до цього пристрою';
	@override String get save => 'Зберегти';
	@override String get cannotSave => 'Збереження не вдалося';
	@override String createdAt({required Object date, required Object time}) => 'Створено: ${date} ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Оновлено: ${date} ${time}';
	@override String get cannotLoad => 'Не вдалося завантажити';
	@override String get invalidFile => 'Невірний формат файлу';
}

// Path: misskey.registry_
class _Translations$misskey$registry_$uk_UA extends Translations$misskey$registry_$en_US {
	_Translations$misskey$registry_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Область дії';
	@override String get key => 'Ключ';
	@override String get keys => 'Ключі';
	@override String get domain => 'Домен';
	@override String get createKey => 'Створити ключ';
}

// Path: misskey.aboutMisskey_
class _Translations$misskey$aboutMisskey_$uk_UA extends Translations$misskey$aboutMisskey_$en_US {
	_Translations$misskey$aboutMisskey_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey - це програмне забезпечення з відкритим кодом, яке розробляє syuilo з 2014 року.';
	@override String get contributors => 'Головні помічники';
	@override String get allContributors => 'Всі помічники';
	@override String get source => 'Вихідний код';
	@override String get translation => 'Перекладати Misskey';
	@override String get donate => 'Пожертвувати Misskey';
	@override String get morePatrons => 'Ми дуже цінуємо підтримку багатьох інших помічників, не перелічених тут. Дякуємо! 🥰';
	@override String get patrons => 'Підтримали';
}

// Path: misskey.instanceTicker_
class _Translations$misskey$instanceTicker_$uk_UA extends Translations$misskey$instanceTicker_$en_US {
	_Translations$misskey$instanceTicker_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get none => 'Не відображати';
	@override String get remote => 'Відображати для віддалених користувачів';
	@override String get always => 'Відображати завжди';
}

// Path: misskey.serverDisconnectedBehavior_
class _Translations$misskey$serverDisconnectedBehavior_$uk_UA extends Translations$misskey$serverDisconnectedBehavior_$en_US {
	_Translations$misskey$serverDisconnectedBehavior_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Автоматично перезавантажити';
	@override String get dialog => 'Показати діалогове вікно';
	@override String get quiet => 'Показати ненав’язливе попередження';
}

// Path: misskey.channel_
class _Translations$misskey$channel_$uk_UA extends Translations$misskey$channel_$en_US {
	_Translations$misskey$channel_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get create => 'Створити канал';
	@override String get edit => 'Редагувати канал';
	@override String get setBanner => 'Встановити банер';
	@override String get removeBanner => 'Видалити банер';
	@override String get featured => 'Тренди';
	@override String get following => 'Підписки';
	@override String usersCount({required Object n}) => '${n} учасників';
	@override String notesCount({required Object n}) => '${n} дописів';
}

// Path: misskey.menuDisplay_
class _Translations$misskey$menuDisplay_$uk_UA extends Translations$misskey$menuDisplay_$en_US {
	_Translations$misskey$menuDisplay_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Збоку';
	@override String get sideIcon => 'Збоку (значки)';
	@override String get top => 'Зверху';
	@override String get hide => 'Сховати';
}

// Path: misskey.wordMute_
class _Translations$misskey$wordMute_$uk_UA extends Translations$misskey$wordMute_$en_US {
	_Translations$misskey$wordMute_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Заглушені слова';
	@override String get muteWordsDescription => 'Розділення ключових слів пробілами для "І" або з нової лінійки для "АБО"';
	@override String get muteWordsDescription2 => 'Для використання RegEx, ключові слова потрібно вписати поміж слешів "/".';
}

// Path: misskey.instanceMute_
class _Translations$misskey$instanceMute_$uk_UA extends Translations$misskey$instanceMute_$en_US {
	_Translations$misskey$instanceMute_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription2 => 'Розділяйте новими рядками';
	@override String get title => 'Приховує нотатки з перелічених інстансів.';
	@override String get heading => 'Список заглушених інстансів';
}

// Path: misskey.theme_
class _Translations$misskey$theme_$uk_UA extends Translations$misskey$theme_$en_US {
	_Translations$misskey$theme_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Оглянути теми';
	@override String get install => 'Встановити тему';
	@override String get manage => 'Керування темами';
	@override String get code => 'Код теми';
	@override String get description => 'Опис';
	@override String installed({required Object name}) => 'Тему ${name} встановлено';
	@override String get installedThemes => 'Встановлені теми';
	@override String get builtinThemes => 'Вбудоваі теми';
	@override String get alreadyInstalled => 'Тему вже встановлено';
	@override String get invalid => 'Неправильний формат теми';
	@override String get make => 'Створити тему';
	@override String get base => 'Основа';
	@override String get defaultValue => 'Значення за промовчанням';
	@override String get color => 'Колір';
	@override String get key => 'Ключ';
	@override String get func => 'Функції';
	@override String get funcKind => 'Тип функції';
	@override String get argument => 'Аргумент';
	@override String get alpha => 'Непрозорість';
	@override String get darken => 'Затемнення';
	@override String get lighten => 'Яскравість';
	@override String get inputConstantName => 'Введіть назву константи';
	@override String get importInfo => 'Вставляючи сюди код теми, ви можете добавити її до редактору тем';
	@override String deleteConstantConfirm({required Object const_}) => 'Ви дійсно бажаєте видалити константу "${const_}"?';
	@override late final _Translations$misskey$theme_$keys$uk_UA keys = _Translations$misskey$theme_$keys$uk_UA._(_root);
}

// Path: misskey.sfx_
class _Translations$misskey$sfx_$uk_UA extends Translations$misskey$sfx_$en_US {
	_Translations$misskey$sfx_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get note => 'Нотатки';
	@override String get noteMy => 'Мої нотатки';
	@override String get notification => 'Сповіщення';
}

// Path: misskey.ago_
class _Translations$misskey$ago_$uk_UA extends Translations$misskey$ago_$en_US {
	_Translations$misskey$ago_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get future => 'Майбутнє';
	@override String get justNow => 'Щойно';
	@override String secondsAgo({required Object n}) => '${n}с тому';
	@override String minutesAgo({required Object n}) => '${n}х тому';
	@override String hoursAgo({required Object n}) => '${n}г тому';
	@override String daysAgo({required Object n}) => '${n}д тому';
	@override String weeksAgo({required Object n}) => '${n} тиж. тому';
	@override String monthsAgo({required Object n}) => '${n} міс. тому';
	@override String yearsAgo({required Object n}) => '${n} р. тому';
	@override String get invalid => 'Тут нічого немає';
}

// Path: misskey.time_
class _Translations$misskey$time_$uk_UA extends Translations$misskey$time_$en_US {
	_Translations$misskey$time_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get second => 'с';
	@override String get minute => 'х';
	@override String get hour => 'г';
	@override String get day => 'д';
}

// Path: misskey.x2fa_
class _Translations$misskey$x2fa_$uk_UA extends Translations$misskey$x2fa_$en_US {
	_Translations$misskey$x2fa_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Двофакторна автентифікація вже налаштована.';
	@override String step1({required Object a, required Object b}) => 'Спершу встановіть на свій пристрій програму автентифікації (наприклад ${a} або ${b}).';
	@override String get step2 => 'Потім відскануйте QR-код, який відображається на цьому екрані.';
	@override String get step3 => 'Щоб завершити налаштування, введіть токен, наданий вашою програмою.';
	@override String get step4 => 'Відтепер будь-які майбутні спроби входу вимагатимуть такого токена.';
	@override String get renewTOTPCancel => 'Не зараз';
}

// Path: misskey.permissions_
class _Translations$misskey$permissions_$uk_UA extends Translations$misskey$permissions_$en_US {
	_Translations$misskey$permissions_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Переглядати дані профілю';
	@override String get writeAccount => 'Змінити дані акаунту';
	@override String get readBlocks => 'Переглянути список заблокованих';
	@override String get writeBlocks => 'Редагувати список заблокованих';
	@override String get readDrive => 'Переглянути вміст Диска';
	@override String get writeDrive => 'Змінювати вміст Диска';
	@override String get readFavorites => 'Переглядати обране';
	@override String get writeFavorites => 'Змінювати обране';
	@override String get readFollowing => 'Переглядати підписки';
	@override String get writeFollowing => 'Змінювати підписки';
	@override String get readMessaging => 'Переглядати повідомлення';
	@override String get writeMessaging => 'Створювати та видаляти повідомлення';
	@override String get readMutes => 'Переглядати список ігнорованих';
	@override String get writeMutes => 'Змінювати список ігнорованих';
	@override String get writeNotes => 'Писати і видаляти нотатки';
	@override String get readNotifications => 'Переглядати сповіщення';
	@override String get writeNotifications => 'Керування сповіщеннями';
	@override String get readReactions => 'Переглядати реакції';
	@override String get writeReactions => 'Змінювати реакції';
	@override String get writeVotes => 'Голосувати в опитуваннях';
	@override String get readPages => 'Переглядати сторінки';
	@override String get writePages => 'Змінювати і видаляти сторінки';
	@override String get readPageLikes => 'Переглядати вподобання сторінок';
	@override String get writePageLikes => 'Змінювати вподобання сторінок';
	@override String get readUserGroups => 'Переглядати групи користувача';
	@override String get writeUserGroups => 'Змінювати групи користувача';
	@override String get readChannels => 'Переглядати канали';
	@override String get writeChannels => 'Змінювати канали';
	@override String get readGallery => 'Перегляд галереї';
	@override String get writeChat => 'Створювати та видаляти повідомлення';
}

// Path: misskey.auth_
class _Translations$misskey$auth_$uk_UA extends Translations$misskey$auth_$en_US {
	_Translations$misskey$auth_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String shareAccess({required Object name}) => 'Ви хочете надати "${name}" доступ до цього акаунту?';
	@override String get shareAccessAsk => 'Ви впевнені, що хочете надати цій програмі доступ до вашого акаунту?';
	@override String get denied => 'У доступі відмовлено';
}

// Path: misskey.antennaSources_
class _Translations$misskey$antennaSources_$uk_UA extends Translations$misskey$antennaSources_$en_US {
	_Translations$misskey$antennaSources_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get all => 'Всі нотатки';
	@override String get homeTimeline => 'Нотатки тих, на кого ви підписані';
}

// Path: misskey.weekday_
class _Translations$misskey$weekday_$uk_UA extends Translations$misskey$weekday_$en_US {
	_Translations$misskey$weekday_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Неділя';
	@override String get monday => 'Понеділок';
	@override String get tuesday => 'Вівторок';
	@override String get wednesday => 'Середа';
	@override String get thursday => 'Четвер';
	@override String get friday => 'П\'ятниця';
	@override String get saturday => 'Субота';
}

// Path: misskey.widgets_
class _Translations$misskey$widgets_$uk_UA extends Translations$misskey$widgets_$en_US {
	_Translations$misskey$widgets_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Профіль';
	@override String get instanceInfo => 'Про цей інстанс';
	@override String get memo => 'Нагадування';
	@override String get notifications => 'Сповіщення';
	@override String get timeline => 'Стрічка';
	@override String get calendar => 'Календар';
	@override String get trends => 'Тенденції';
	@override String get clock => 'Годинник';
	@override String get rss => 'RSS-читач';
	@override String get activity => 'Активність';
	@override String get photos => 'Фото';
	@override String get digitalClock => 'Цифровий годинник';
	@override String get unixClock => 'Unix-годинник';
	@override String get federation => 'Федіверс';
	@override String get instanceCloud => 'Хмара інстансів';
	@override String get postForm => 'Створення нотатки';
	@override String get slideshow => 'Слайд-шоу';
	@override String get button => 'Кнопка';
	@override String get onlineUsers => 'Користувачі онлайн';
	@override String get jobQueue => 'Черга завдань';
	@override String get serverMetric => 'Показники сервера ';
	@override String get aiscript => 'Консоль AiScript';
	@override String get aichan => 'Ai';
	@override String get userList => 'Список користувачів';
	@override late final _Translations$misskey$widgets_$userList_$uk_UA userList_ = _Translations$misskey$widgets_$userList_$uk_UA._(_root);
}

// Path: misskey.widgetOptions_
class _Translations$misskey$widgetOptions_$uk_UA extends Translations$misskey$widgetOptions_$en_US {
	_Translations$misskey$widgetOptions_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get height => 'Висота';
	@override late final _Translations$misskey$widgetOptions_$button_$uk_UA button_ = _Translations$misskey$widgetOptions_$button_$uk_UA._(_root);
	@override late final _Translations$misskey$widgetOptions_$clock_$uk_UA clock_ = _Translations$misskey$widgetOptions_$clock_$uk_UA._(_root);
	@override late final _Translations$misskey$widgetOptions_$birthdayFollowings_$uk_UA birthdayFollowings_ = _Translations$misskey$widgetOptions_$birthdayFollowings_$uk_UA._(_root);
}

// Path: misskey.cw_
class _Translations$misskey$cw_$uk_UA extends Translations$misskey$cw_$en_US {
	_Translations$misskey$cw_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Сховати';
	@override String get show => 'Показати більше';
	@override String chars({required Object count}) => '${count} символів';
	@override String files({required Object count}) => '${count} файлів';
}

// Path: misskey.poll_
class _Translations$misskey$poll_$uk_UA extends Translations$misskey$poll_$en_US {
	_Translations$misskey$poll_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Потрібні принаймні два варіанти.';
	@override String choiceN({required Object n}) => 'Варіант ${n}';
	@override String get noMore => 'Більше варіантів додати не можна';
	@override String get canMultipleVote => 'Можна вибрати кілька варіантів';
	@override String get expiration => 'Опитування закінчується';
	@override String get infinite => 'Ніколи';
	@override String get at => 'На даті...';
	@override String get after => 'Через...';
	@override String get deadlineDate => 'Дата закінчення';
	@override String get deadlineTime => 'г';
	@override String get duration => 'Тривалість';
	@override String votesCount({required Object n}) => '${n} голосів';
	@override String totalVotes({required Object n}) => 'Всього ${n} голосів';
	@override String get vote => 'Голосувати';
	@override String get showResult => 'Переглянути результати';
	@override String get voted => 'Проголосовано';
	@override String get closed => 'Завершено';
	@override String remainingDays({required Object d, required Object h}) => 'Залишилось ${d} днів ${h} годин';
	@override String remainingHours({required Object h, required Object m}) => 'Залишилось ${h} годин ${m} хвилин';
	@override String remainingMinutes({required Object m, required Object s}) => 'Залишилось ${m} хвилин ${s} секунд';
	@override String remainingSeconds({required Object s}) => 'Залишилось ${s} секунд';
}

// Path: misskey.visibility_
class _Translations$misskey$visibility_$uk_UA extends Translations$misskey$visibility_$en_US {
	_Translations$misskey$visibility_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get public => 'Публічний';
	@override String get publicDescription => 'Для всіх користувачів';
	@override String get home => 'Домівка';
	@override String get homeDescription => 'Лише на домашній стрічці';
	@override String get followers => 'Підписники';
	@override String get followersDescription => 'Тільки для підписників';
	@override String get specified => 'Особисто';
	@override String get specifiedDescription => 'Лише для певних користувачів';
}

// Path: misskey.postForm_
class _Translations$misskey$postForm_$uk_UA extends Translations$misskey$postForm_$en_US {
	_Translations$misskey$postForm_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Відповідь на цю нотатку...';
	@override String get quotePlaceholder => 'Прокоментуйте цю нотатку...';
	@override String get channelPlaceholder => 'Опублікувати в каналі';
	@override late final _Translations$misskey$postForm_$howToUse_$uk_UA howToUse_ = _Translations$misskey$postForm_$howToUse_$uk_UA._(_root);
	@override late final _Translations$misskey$postForm_$placeholders_$uk_UA placeholders_ = _Translations$misskey$postForm_$placeholders_$uk_UA._(_root);
}

// Path: misskey.profile_
class _Translations$misskey$profile_$uk_UA extends Translations$misskey$profile_$en_US {
	_Translations$misskey$profile_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ім\'я';
	@override String get username => 'Ім\'я користувача';
	@override String get description => 'Про себе';
	@override String get youCanIncludeHashtags => 'Ви також можете включити хештеги у свій опис.';
	@override String get metadata => 'Додаткова інформація';
	@override String get metadataEdit => 'Редагувати додаткову інформацію';
	@override String get metadataDescription => 'Ви можете вказати до чотирьох пунктів додаткової інформації у своєму профілі.';
	@override String get metadataLabel => 'Назва';
	@override String get metadataContent => 'Вміст';
	@override String get changeAvatar => 'Змінити аватар';
	@override String get changeBanner => 'Змінити банер';
}

// Path: misskey.exportOrImport_
class _Translations$misskey$exportOrImport_$uk_UA extends Translations$misskey$exportOrImport_$en_US {
	_Translations$misskey$exportOrImport_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Всі нотатки';
	@override String get clips => 'Добірка';
	@override String get followingList => 'Підписки';
	@override String get muteList => 'Ігнорувати';
	@override String get blockingList => 'Заблокувати';
	@override String get userLists => 'Списки';
	@override String get excludeMutingUsers => 'Виключити ігнорованих користувачів';
	@override String get excludeInactiveUsers => 'Виключити неактивних користувачів';
}

// Path: misskey.charts_
class _Translations$misskey$charts_$uk_UA extends Translations$misskey$charts_$en_US {
	_Translations$misskey$charts_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Федіверс';
	@override String get apRequest => 'Запити';
	@override String get usersIncDec => 'Зміни кількості користувачів';
	@override String get usersTotal => 'Загальна кількість користувачів';
	@override String get activeUsers => 'Активні користувачі';
	@override String get notesIncDec => 'Зміни кількості нотаток';
	@override String get localNotesIncDec => 'Зміни кількості локальних нотаток';
	@override String get remoteNotesIncDec => 'Зміни кількості віддалених нотаток';
	@override String get notesTotal => 'Загальна кількість нотаток';
	@override String get filesIncDec => 'Зміни кількості файлів';
	@override String get filesTotal => 'Загальна кількість файлів';
}

// Path: misskey.instanceCharts_
class _Translations$misskey$instanceCharts_$uk_UA extends Translations$misskey$instanceCharts_$en_US {
	_Translations$misskey$instanceCharts_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Запити';
	@override String get users => 'Зміни кількості користувачів';
	@override String get usersTotal => 'Сумарна кількість користувачів';
	@override String get notes => 'Різниця кількості зроблених записів';
	@override String get notesTotal => 'Сумарна кількість нотаток';
	@override String get ff => 'Різниця кількості підписників';
	@override String get ffTotal => 'Кількість підписників';
	@override String get cacheSizeTotal => 'Сумарний розмір кешу';
	@override String get files => 'Різниця в кількості файлів';
	@override String get filesTotal => 'Сумарна кількість файлів';
}

// Path: misskey.timelines_
class _Translations$misskey$timelines_$uk_UA extends Translations$misskey$timelines_$en_US {
	_Translations$misskey$timelines_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get home => 'Домівка';
	@override String get local => 'Локальна';
	@override String get social => 'Соціальна';
	@override String get global => 'Глобальна';
}

// Path: misskey.play_
class _Translations$misskey$play_$uk_UA extends Translations$misskey$play_$en_US {
	_Translations$misskey$play_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'Переглянути вихідний код';
	@override String get featured => 'Популярні';
	@override String get title => 'Заголовок';
	@override String get script => 'Скрипт';
	@override String get summary => 'Опис';
}

// Path: misskey.pages_
class _Translations$misskey$pages_$uk_UA extends Translations$misskey$pages_$en_US {
	_Translations$misskey$pages_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Створити сторінку';
	@override String get editPage => 'Редагувати сторінку';
	@override String get readPage => 'Перегляд вихідного коду';
	@override String get pageSetting => 'Налаштування сторінки';
	@override String get nameAlreadyExists => 'Вказана адреса сторінки вже існує.';
	@override String get invalidNameTitle => 'Вказана адреса сторінки неприпустима.';
	@override String get invalidNameText => 'Переконайтеся, що не залишили порожнім.';
	@override String get editThisPage => 'Редагувати цю сторінку';
	@override String get viewSource => 'Переглянути вихідний код';
	@override String get viewPage => 'Переглянути свої сторінки';
	@override String get like => 'Вподобати';
	@override String get unlike => 'Не вподобати';
	@override String get my => 'Мої сторінки';
	@override String get liked => 'Вподобані сторінки';
	@override String get featured => 'Популярні';
	@override String get inspector => 'Інспектор';
	@override String get contents => 'Вміст';
	@override String get content => 'Блок сторінки';
	@override String get variables => 'Змінні';
	@override String get title => 'Заголовок';
	@override String get url => 'URL сторінки';
	@override String get summary => 'Короткий зміст';
	@override String get alignCenter => 'Рівняти елементи по центру';
	@override String get hideTitleWhenPinned => 'Приховати заголовок сторінки при закріпленні в профілі';
	@override String get font => 'Шрифт';
	@override String get fontSerif => 'Serif';
	@override String get fontSansSerif => 'Sans serif';
	@override String get eyeCatchingImageSet => 'Встановити привабливе зображення';
	@override String get eyeCatchingImageRemove => 'Видалити привабливе зображення';
	@override String get chooseBlock => 'Додати блок';
	@override String get selectType => 'Виберіть тип';
	@override String get contentBlocks => 'Контент';
	@override String get inputBlocks => 'Ввід';
	@override String get specialBlocks => 'Особливе';
	@override late final _Translations$misskey$pages_$blocks$uk_UA blocks = _Translations$misskey$pages_$blocks$uk_UA._(_root);
}

// Path: misskey.relayStatus_
class _Translations$misskey$relayStatus_$uk_UA extends Translations$misskey$relayStatus_$en_US {
	_Translations$misskey$relayStatus_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Очікує затвердження';
	@override String get accepted => 'Затверджено';
	@override String get rejected => 'Відхилено';
}

// Path: misskey.notification_
class _Translations$misskey$notification_$uk_UA extends Translations$misskey$notification_$en_US {
	_Translations$misskey$notification_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Файл успішно завантажено';
	@override String youGotMention({required Object name}) => '${name} згадує вас';
	@override String youGotReply({required Object name}) => '${name} відповідає';
	@override String youGotQuote({required Object name}) => '${name} цитує вас';
	@override String youRenoted({required Object name}) => '${name} поширює';
	@override String get youWereFollowed => 'Новий підписник';
	@override String get youReceivedFollowRequest => 'Ви отримали запит на підписку';
	@override String get yourFollowRequestAccepted => 'Запит на підписку прийнято';
	@override String get achievementEarned => 'Досягнення відкрито';
	@override late final _Translations$misskey$notification_$types_$uk_UA types_ = _Translations$misskey$notification_$types_$uk_UA._(_root);
	@override late final _Translations$misskey$notification_$actions_$uk_UA actions_ = _Translations$misskey$notification_$actions_$uk_UA._(_root);
}

// Path: misskey.deck_
class _Translations$misskey$deck_$uk_UA extends Translations$misskey$deck_$en_US {
	_Translations$misskey$deck_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Завжди показувати головну колонку';
	@override String get columnAlign => 'Вирівняти стовпці';
	@override String get addColumn => 'Додати стовпець';
	@override String get swapLeft => 'Пересунути ліворуч';
	@override String get swapRight => 'Пересунути праворуч';
	@override String get swapUp => 'Пересунути вгору';
	@override String get swapDown => 'Пересунути вниз';
	@override String get stackLeft => 'У стовпчик вліво';
	@override String get popRight => 'Витягнути вправо';
	@override String get profile => 'Обліковий запис';
	@override String get newProfile => 'Новий профіль';
	@override String get deleteProfile => 'Видалити профіль';
	@override String get introduction => 'Створіть для себе ідеальний інтерфейс, вільно розташувавши стовпці!';
	@override String get widgetsIntroduction => 'Будь ласка, виберіть «Редагувати віджети» в меню стовпців і додайте віджет.';
	@override late final _Translations$misskey$deck_$columns_$uk_UA columns_ = _Translations$misskey$deck_$columns_$uk_UA._(_root);
}

// Path: misskey.webhookSettings_
class _Translations$misskey$webhookSettings_$uk_UA extends Translations$misskey$webhookSettings_$en_US {
	_Translations$misskey$webhookSettings_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ім\'я';
	@override String get active => 'Увімкнено';
}

// Path: misskey.abuseReport_
class _Translations$misskey$abuseReport_$uk_UA extends Translations$misskey$abuseReport_$en_US {
	_Translations$misskey$abuseReport_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$uk_UA notificationRecipient_ = _Translations$misskey$abuseReport_$notificationRecipient_$uk_UA._(_root);
}

// Path: misskey.moderationLogTypes_
class _Translations$misskey$moderationLogTypes_$uk_UA extends Translations$misskey$moderationLogTypes_$en_US {
	_Translations$misskey$moderationLogTypes_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Призупинити';
	@override String get resetPassword => 'Скинути пароль';
	@override String get createInvitation => 'Створити запрошення';
}

// Path: misskey.reversi_
class _Translations$misskey$reversi_$uk_UA extends Translations$misskey$reversi_$en_US {
	_Translations$misskey$reversi_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get total => 'Всього';
}

// Path: misskey.remoteLookupErrors_
class _Translations$misskey$remoteLookupErrors_$uk_UA extends Translations$misskey$remoteLookupErrors_$en_US {
	_Translations$misskey$remoteLookupErrors_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$remoteLookupErrors_$noSuchObject_$uk_UA noSuchObject_ = _Translations$misskey$remoteLookupErrors_$noSuchObject_$uk_UA._(_root);
}

// Path: misskey.search_
class _Translations$misskey$search_$uk_UA extends Translations$misskey$search_$en_US {
	_Translations$misskey$search_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Всі';
	@override String get searchScopeLocal => 'Локальна';
	@override String get searchScopeUser => 'Вказаний користувач';
}

// Path: misskey.watermarkEditor_
class _Translations$misskey$watermarkEditor_$uk_UA extends Translations$misskey$watermarkEditor_$en_US {
	_Translations$misskey$watermarkEditor_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'Непрозорість';
	@override String get scale => 'Розмір';
	@override String get text => 'Текст';
	@override String get qr => 'QR-код';
	@override String get position => 'Позиція';
	@override String get type => 'Тип';
	@override String get image => 'Зображення';
	@override String get advanced => 'Розширені';
	@override String get angle => 'Кут';
}

// Path: misskey.imageEffector_
class _Translations$misskey$imageEffector_$uk_UA extends Translations$misskey$imageEffector_$en_US {
	_Translations$misskey$imageEffector_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$imageEffector_$fxs_$uk_UA fxs_ = _Translations$misskey$imageEffector_$fxs_$uk_UA._(_root);
	@override late final _Translations$misskey$imageEffector_$fxProps_$uk_UA fxProps_ = _Translations$misskey$imageEffector_$fxProps_$uk_UA._(_root);
}

// Path: misskey.drafts_
class _Translations$misskey$drafts_$uk_UA extends Translations$misskey$drafts_$en_US {
	_Translations$misskey$drafts_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get restore => 'Відновити';
}

// Path: misskey.qr_
class _Translations$misskey$qr_$uk_UA extends Translations$misskey$qr_$en_US {
	_Translations$misskey$qr_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Відображення';
	@override String get raw => 'Текст';
}

// Path: misskey.imageEditing_.vars_
class _Translations$misskey$imageEditing_$vars_$uk_UA extends Translations$misskey$imageEditing_$vars_$en_US {
	_Translations$misskey$imageEditing_$vars_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get filename => 'Ім\'я файлу';
	@override String get camera_f => 'Діафрагма (f-число)';
	@override String get camera_iso => 'ISO';
	@override String get gps_lat => 'Широта';
	@override String get gps_long => 'Довгота';
}

// Path: misskey.compression_.quality_
class _Translations$misskey$compression_$quality_$uk_UA extends Translations$misskey$compression_$quality_$en_US {
	_Translations$misskey$compression_$quality_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get high => 'Висока якість';
	@override String get medium => 'Середня якість';
	@override String get low => 'Низька якість';
}

// Path: misskey.compression_.size_
class _Translations$misskey$compression_$size_$uk_UA extends Translations$misskey$compression_$size_$en_US {
	_Translations$misskey$compression_$size_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get large => 'Великий розмір';
	@override String get medium => 'Середній розмір';
	@override String get small => 'Малий розмір';
}

// Path: misskey.delivery_.type_
class _Translations$misskey$delivery_$type_$uk_UA extends Translations$misskey$delivery_$type_$en_US {
	_Translations$misskey$delivery_$type_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get none => 'Публікація';
}

// Path: misskey.achievements_.types_
class _Translations$misskey$achievements_$types_$uk_UA extends Translations$misskey$achievements_$types_$en_US {
	_Translations$misskey$achievements_$types_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$achievements_$types_$notes1_$uk_UA notes1_ = _Translations$misskey$achievements_$types_$notes1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10_$uk_UA notes10_ = _Translations$misskey$achievements_$types_$notes10_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100_$uk_UA notes100_ = _Translations$misskey$achievements_$types_$notes100_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes500_$uk_UA notes500_ = _Translations$misskey$achievements_$types_$notes500_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes1000_$uk_UA notes1000_ = _Translations$misskey$achievements_$types_$notes1000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes5000_$uk_UA notes5000_ = _Translations$misskey$achievements_$types_$notes5000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes10000_$uk_UA notes10000_ = _Translations$misskey$achievements_$types_$notes10000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes20000_$uk_UA notes20000_ = _Translations$misskey$achievements_$types_$notes20000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes30000_$uk_UA notes30000_ = _Translations$misskey$achievements_$types_$notes30000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes40000_$uk_UA notes40000_ = _Translations$misskey$achievements_$types_$notes40000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes50000_$uk_UA notes50000_ = _Translations$misskey$achievements_$types_$notes50000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes60000_$uk_UA notes60000_ = _Translations$misskey$achievements_$types_$notes60000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes70000_$uk_UA notes70000_ = _Translations$misskey$achievements_$types_$notes70000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes80000_$uk_UA notes80000_ = _Translations$misskey$achievements_$types_$notes80000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes90000_$uk_UA notes90000_ = _Translations$misskey$achievements_$types_$notes90000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$notes100000_$uk_UA notes100000_ = _Translations$misskey$achievements_$types_$notes100000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login3_$uk_UA login3_ = _Translations$misskey$achievements_$types_$login3_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login7_$uk_UA login7_ = _Translations$misskey$achievements_$types_$login7_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login15_$uk_UA login15_ = _Translations$misskey$achievements_$types_$login15_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login30_$uk_UA login30_ = _Translations$misskey$achievements_$types_$login30_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login60_$uk_UA login60_ = _Translations$misskey$achievements_$types_$login60_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login100_$uk_UA login100_ = _Translations$misskey$achievements_$types_$login100_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login200_$uk_UA login200_ = _Translations$misskey$achievements_$types_$login200_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login300_$uk_UA login300_ = _Translations$misskey$achievements_$types_$login300_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login400_$uk_UA login400_ = _Translations$misskey$achievements_$types_$login400_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login500_$uk_UA login500_ = _Translations$misskey$achievements_$types_$login500_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login600_$uk_UA login600_ = _Translations$misskey$achievements_$types_$login600_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login700_$uk_UA login700_ = _Translations$misskey$achievements_$types_$login700_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login800_$uk_UA login800_ = _Translations$misskey$achievements_$types_$login800_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login900_$uk_UA login900_ = _Translations$misskey$achievements_$types_$login900_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$login1000_$uk_UA login1000_ = _Translations$misskey$achievements_$types_$login1000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteClipped1_$uk_UA noteClipped1_ = _Translations$misskey$achievements_$types_$noteClipped1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteFavorited1_$uk_UA noteFavorited1_ = _Translations$misskey$achievements_$types_$noteFavorited1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$myNoteFavorited1_$uk_UA myNoteFavorited1_ = _Translations$misskey$achievements_$types_$myNoteFavorited1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$profileFilled_$uk_UA profileFilled_ = _Translations$misskey$achievements_$types_$profileFilled_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$markedAsCat_$uk_UA markedAsCat_ = _Translations$misskey$achievements_$types_$markedAsCat_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$following1_$uk_UA following1_ = _Translations$misskey$achievements_$types_$following1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$following10_$uk_UA following10_ = _Translations$misskey$achievements_$types_$following10_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$following50_$uk_UA following50_ = _Translations$misskey$achievements_$types_$following50_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$following100_$uk_UA following100_ = _Translations$misskey$achievements_$types_$following100_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$following300_$uk_UA following300_ = _Translations$misskey$achievements_$types_$following300_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers1_$uk_UA followers1_ = _Translations$misskey$achievements_$types_$followers1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers10_$uk_UA followers10_ = _Translations$misskey$achievements_$types_$followers10_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers50_$uk_UA followers50_ = _Translations$misskey$achievements_$types_$followers50_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers100_$uk_UA followers100_ = _Translations$misskey$achievements_$types_$followers100_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers300_$uk_UA followers300_ = _Translations$misskey$achievements_$types_$followers300_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers500_$uk_UA followers500_ = _Translations$misskey$achievements_$types_$followers500_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$followers1000_$uk_UA followers1000_ = _Translations$misskey$achievements_$types_$followers1000_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$collectAchievements30_$uk_UA collectAchievements30_ = _Translations$misskey$achievements_$types_$collectAchievements30_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$viewAchievements3min_$uk_UA viewAchievements3min_ = _Translations$misskey$achievements_$types_$viewAchievements3min_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$iLoveMisskey_$uk_UA iLoveMisskey_ = _Translations$misskey$achievements_$types_$iLoveMisskey_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$foundTreasure_$uk_UA foundTreasure_ = _Translations$misskey$achievements_$types_$foundTreasure_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$client30min_$uk_UA client30min_ = _Translations$misskey$achievements_$types_$client30min_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$noteDeletedWithin1min_$uk_UA noteDeletedWithin1min_ = _Translations$misskey$achievements_$types_$noteDeletedWithin1min_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAtLateNight_$uk_UA postedAtLateNight_ = _Translations$misskey$achievements_$types_$postedAtLateNight_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$postedAt0min0sec_$uk_UA postedAt0min0sec_ = _Translations$misskey$achievements_$types_$postedAt0min0sec_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$selfQuote_$uk_UA selfQuote_ = _Translations$misskey$achievements_$types_$selfQuote_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$htl20npm_$uk_UA htl20npm_ = _Translations$misskey$achievements_$types_$htl20npm_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$viewInstanceChart_$uk_UA viewInstanceChart_ = _Translations$misskey$achievements_$types_$viewInstanceChart_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$uk_UA outputHelloWorldOnScratchpad_ = _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$reactWithoutRead_$uk_UA reactWithoutRead_ = _Translations$misskey$achievements_$types_$reactWithoutRead_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$clickedClickHere_$uk_UA clickedClickHere_ = _Translations$misskey$achievements_$types_$clickedClickHere_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$justPlainLucky_$uk_UA justPlainLucky_ = _Translations$misskey$achievements_$types_$justPlainLucky_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$setNameToSyuilo_$uk_UA setNameToSyuilo_ = _Translations$misskey$achievements_$types_$setNameToSyuilo_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$uk_UA passedSinceAccountCreated1_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$uk_UA passedSinceAccountCreated2_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$uk_UA passedSinceAccountCreated3_ = _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnBirthday_$uk_UA loggedInOnBirthday_ = _Translations$misskey$achievements_$types_$loggedInOnBirthday_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$uk_UA loggedInOnNewYearsDay_ = _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$cookieClicked_$uk_UA cookieClicked_ = _Translations$misskey$achievements_$types_$cookieClicked_$uk_UA._(_root);
	@override late final _Translations$misskey$achievements_$types_$brainDiver_$uk_UA brainDiver_ = _Translations$misskey$achievements_$types_$brainDiver_$uk_UA._(_root);
}

// Path: misskey.role_.priority_
class _Translations$misskey$role_$priority_$uk_UA extends Translations$misskey$role_$priority_$en_US {
	_Translations$misskey$role_$priority_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get low => 'Низький';
	@override String get middle => 'Середній';
	@override String get high => 'Високий';
}

// Path: misskey.role_.options_
class _Translations$misskey$role_$options_$uk_UA extends Translations$misskey$role_$options_$en_US {
	_Translations$misskey$role_$options_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get canManageCustomEmojis => 'Керування користувацькими емодзі';
	@override String get canManageAvatarDecorations => 'Керувати прикрасами аватара';
}

// Path: misskey.email_.follow_
class _Translations$misskey$email_$follow_$uk_UA extends Translations$misskey$email_$follow_$en_US {
	_Translations$misskey$email_$follow_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новий підписник';
}

// Path: misskey.email_.receiveFollowRequest_
class _Translations$misskey$email_$receiveFollowRequest_$uk_UA extends Translations$misskey$email_$receiveFollowRequest_$en_US {
	_Translations$misskey$email_$receiveFollowRequest_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отримано запит на підписку';
}

// Path: misskey.theme_.keys
class _Translations$misskey$theme_$keys$uk_UA extends Translations$misskey$theme_$keys$en_US {
	_Translations$misskey$theme_$keys$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Акцент';
	@override String get bg => 'Фон';
	@override String get fg => 'Текст';
	@override String get focus => 'Фокус';
	@override String get indicator => 'Індикатор';
	@override String get panel => 'Панель';
	@override String get shadow => 'Тінь';
	@override String get header => 'Заголовок';
	@override String get navBg => 'Фон бокової панелі';
	@override String get navFg => 'Текст бокової панелі';
	@override String get navActive => 'Текст бокової панелі (активне)';
	@override String get navIndicator => 'Індикатор бокової панелі';
	@override String get link => 'Посилання';
	@override String get hashtag => 'Хештеґ';
	@override String get mention => 'Згадка';
	@override String get mentionMe => 'Згадки (мене)';
	@override String get renote => 'Поширити';
	@override String get modalBg => 'Модальний фон';
	@override String get divider => 'Розділювач';
	@override String get scrollbarHandle => 'Ручка смуги прокрутки';
	@override String get scrollbarHandleHover => 'Ручка смуги прокрутки (при наведенні)';
	@override String get dateLabelFg => 'Текст позначок дати';
	@override String get infoBg => 'Фон інформації';
	@override String get infoFg => 'Текст інформації';
	@override String get infoWarnBg => 'Фон попередження';
	@override String get infoWarnFg => 'Текст попередження';
	@override String get toastBg => 'Фон повідомлення';
	@override String get toastFg => 'Текст повідомлення';
	@override String get buttonBg => 'Фон кнопки';
	@override String get buttonHoverBg => 'Фон кнопки (при наведенні)';
	@override String get inputBorder => 'Край поля вводу';
	@override String get badge => 'Значок';
	@override String get messageBg => 'Фон переписки';
	@override String get fgHighlighted => 'Виділений текст';
}

// Path: misskey.widgets_.userList_
class _Translations$misskey$widgets_$userList_$uk_UA extends Translations$misskey$widgets_$userList_$en_US {
	_Translations$misskey$widgets_$userList_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Виберіть список';
}

// Path: misskey.widgetOptions_.button_
class _Translations$misskey$widgetOptions_$button_$uk_UA extends Translations$misskey$widgetOptions_$button_$en_US {
	_Translations$misskey$widgetOptions_$button_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Кольоровий';
}

// Path: misskey.widgetOptions_.clock_
class _Translations$misskey$widgetOptions_$clock_$uk_UA extends Translations$misskey$widgetOptions_$clock_$en_US {
	_Translations$misskey$widgetOptions_$clock_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get size => 'Розмір';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _Translations$misskey$widgetOptions_$birthdayFollowings_$uk_UA extends Translations$misskey$widgetOptions_$birthdayFollowings_$en_US {
	_Translations$misskey$widgetOptions_$birthdayFollowings_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get period => 'Тривалість';
}

// Path: misskey.postForm_.howToUse_
class _Translations$misskey$postForm_$howToUse_$uk_UA extends Translations$misskey$postForm_$howToUse_$en_US {
	_Translations$misskey$postForm_$howToUse_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Видимість';
	@override String get menu_title => 'Меню';
}

// Path: misskey.postForm_.placeholders_
class _Translations$misskey$postForm_$placeholders_$uk_UA extends Translations$misskey$postForm_$placeholders_$en_US {
	_Translations$misskey$postForm_$placeholders_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get a => 'Чим займаєтесь?';
	@override String get b => 'Що відбувається навколо вас?';
	@override String get c => 'Що у вас на думці?';
	@override String get d => 'Що ви хочете висловити?';
	@override String get e => 'Напишіть тут, будь ласка...';
	@override String get f => 'Чекаю коли ви напишете...';
}

// Path: misskey.pages_.blocks
class _Translations$misskey$pages_$blocks$uk_UA extends Translations$misskey$pages_$blocks$en_US {
	_Translations$misskey$pages_$blocks$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get text => 'Текст';
	@override String get textarea => 'Текстова область';
	@override String get section => 'Розділ';
	@override String get image => 'Зображення';
	@override String get button => 'Кнопка';
	@override String get note => 'Вбудована нотатка';
	@override late final _Translations$misskey$pages_$blocks$note_$uk_UA note_ = _Translations$misskey$pages_$blocks$note_$uk_UA._(_root);
}

// Path: misskey.notification_.types_
class _Translations$misskey$notification_$types_$uk_UA extends Translations$misskey$notification_$types_$en_US {
	_Translations$misskey$notification_$types_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get all => 'Все';
	@override String get follow => 'Підписки';
	@override String get mention => 'Згадка';
	@override String get reply => 'Відповіді';
	@override String get renote => 'Поширення';
	@override String get quote => 'Цитування';
	@override String get reaction => 'Реакції';
	@override String get receiveFollowRequest => 'Запити на підписку';
	@override String get followRequestAccepted => 'Прийняті підписки';
	@override String get login => 'Увійти';
	@override String get app => 'Сповіщення від додатків';
}

// Path: misskey.notification_.actions_
class _Translations$misskey$notification_$actions_$uk_UA extends Translations$misskey$notification_$actions_$en_US {
	_Translations$misskey$notification_$actions_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Відповісти';
	@override String get renote => 'Поширити';
}

// Path: misskey.deck_.columns_
class _Translations$misskey$deck_$columns_$uk_UA extends Translations$misskey$deck_$columns_$en_US {
	_Translations$misskey$deck_$columns_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get main => 'Головна';
	@override String get widgets => 'Віджети';
	@override String get notifications => 'Сповіщення';
	@override String get tl => 'Стрічка';
	@override String get antenna => 'Антени';
	@override String get list => 'Списки';
	@override String get channel => 'Канали';
	@override String get mentions => 'Згадки';
	@override String get direct => 'Особисте';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _Translations$misskey$abuseReport_$notificationRecipient_$uk_UA extends Translations$misskey$abuseReport_$notificationRecipient_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$uk_UA recipientType_ = _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$uk_UA._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _Translations$misskey$remoteLookupErrors_$noSuchObject_$uk_UA extends Translations$misskey$remoteLookupErrors_$noSuchObject_$en_US {
	_Translations$misskey$remoteLookupErrors_$noSuchObject_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не знайдено';
}

// Path: misskey.imageEffector_.fxs_
class _Translations$misskey$imageEffector_$fxs_$uk_UA extends Translations$misskey$imageEffector_$fxs_$en_US {
	_Translations$misskey$imageEffector_$fxs_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get grayscale => 'Чорно-білий';
	@override String get stripe => 'Смуги';
}

// Path: misskey.imageEffector_.fxProps_
class _Translations$misskey$imageEffector_$fxProps_$uk_UA extends Translations$misskey$imageEffector_$fxProps_$en_US {
	_Translations$misskey$imageEffector_$fxProps_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Кут';
	@override String get scale => 'Розмір';
	@override String get size => 'Розмір';
	@override String get offset => 'Позиція';
	@override String get color => 'Колір';
	@override String get opacity => 'Непрозорість';
	@override String get lightness => 'Яскравість';
}

// Path: misskey.achievements_.types_.notes1_
class _Translations$misskey$achievements_$types_$notes1_$uk_UA extends Translations$misskey$achievements_$types_$notes1_$en_US {
	_Translations$misskey$achievements_$types_$notes1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Привіт, Misskey!';
	@override String get description => 'Перша нотатка';
	@override String get flavor => 'Приємного часу з Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _Translations$misskey$achievements_$types_$notes10_$uk_UA extends Translations$misskey$achievements_$types_$notes10_$en_US {
	_Translations$misskey$achievements_$types_$notes10_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Декілька нотаток';
	@override String get description => '10 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes100_
class _Translations$misskey$achievements_$types_$notes100_$uk_UA extends Translations$misskey$achievements_$types_$notes100_$en_US {
	_Translations$misskey$achievements_$types_$notes100_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Купа нотаток';
	@override String get description => '100 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes500_
class _Translations$misskey$achievements_$types_$notes500_$uk_UA extends Translations$misskey$achievements_$types_$notes500_$en_US {
	_Translations$misskey$achievements_$types_$notes500_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Все в нотатках';
	@override String get description => '500 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes1000_
class _Translations$misskey$achievements_$types_$notes1000_$uk_UA extends Translations$misskey$achievements_$types_$notes1000_$en_US {
	_Translations$misskey$achievements_$types_$notes1000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Гора нотаток';
	@override String get description => '1 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes5000_
class _Translations$misskey$achievements_$types_$notes5000_$uk_UA extends Translations$misskey$achievements_$types_$notes5000_$en_US {
	_Translations$misskey$achievements_$types_$notes5000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Переповнюючі нотатки';
	@override String get description => '5 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes10000_
class _Translations$misskey$achievements_$types_$notes10000_$uk_UA extends Translations$misskey$achievements_$types_$notes10000_$en_US {
	_Translations$misskey$achievements_$types_$notes10000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Супернотатка';
	@override String get description => '10 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes20000_
class _Translations$misskey$achievements_$types_$notes20000_$uk_UA extends Translations$misskey$achievements_$types_$notes20000_$en_US {
	_Translations$misskey$achievements_$types_$notes20000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Треба Більше Нотаток';
	@override String get description => '20 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes30000_
class _Translations$misskey$achievements_$types_$notes30000_$uk_UA extends Translations$misskey$achievements_$types_$notes30000_$en_US {
	_Translations$misskey$achievements_$types_$notes30000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нотатки нотатки нотатки';
	@override String get description => '30 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes40000_
class _Translations$misskey$achievements_$types_$notes40000_$uk_UA extends Translations$misskey$achievements_$types_$notes40000_$en_US {
	_Translations$misskey$achievements_$types_$notes40000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Фабрика нотаток';
	@override String get description => '40 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes50000_
class _Translations$misskey$achievements_$types_$notes50000_$uk_UA extends Translations$misskey$achievements_$types_$notes50000_$en_US {
	_Translations$misskey$achievements_$types_$notes50000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Планета нотаток';
	@override String get description => '50 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes60000_
class _Translations$misskey$achievements_$types_$notes60000_$uk_UA extends Translations$misskey$achievements_$types_$notes60000_$en_US {
	_Translations$misskey$achievements_$types_$notes60000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нотатковий квазар';
	@override String get description => '60 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes70000_
class _Translations$misskey$achievements_$types_$notes70000_$uk_UA extends Translations$misskey$achievements_$types_$notes70000_$en_US {
	_Translations$misskey$achievements_$types_$notes70000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чорна нотаткова діра';
	@override String get description => '70 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes80000_
class _Translations$misskey$achievements_$types_$notes80000_$uk_UA extends Translations$misskey$achievements_$types_$notes80000_$en_US {
	_Translations$misskey$achievements_$types_$notes80000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Галактика нотаток';
	@override String get description => '80 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes90000_
class _Translations$misskey$achievements_$types_$notes90000_$uk_UA extends Translations$misskey$achievements_$types_$notes90000_$en_US {
	_Translations$misskey$achievements_$types_$notes90000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нотатковерс';
	@override String get description => '90 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes100000_
class _Translations$misskey$achievements_$types_$notes100000_$uk_UA extends Translations$misskey$achievements_$types_$notes100000_$en_US {
	_Translations$misskey$achievements_$types_$notes100000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100 000 нотаток відправлено';
	@override String get flavor => 'Так багато потрібно сказати?';
}

// Path: misskey.achievements_.types_.login3_
class _Translations$misskey$achievements_$types_$login3_$uk_UA extends Translations$misskey$achievements_$types_$login3_$en_US {
	_Translations$misskey$achievements_$types_$login3_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новачок I';
	@override String get description => '3 дні користування загально';
	@override String get flavor => 'Відсьогодні називайте мене "Місскіст"';
}

// Path: misskey.achievements_.types_.login7_
class _Translations$misskey$achievements_$types_$login7_$uk_UA extends Translations$misskey$achievements_$types_$login7_$en_US {
	_Translations$misskey$achievements_$types_$login7_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новачок II';
	@override String get description => '7 днів користування загально';
	@override String get flavor => 'Ви звикли до цього?';
}

// Path: misskey.achievements_.types_.login15_
class _Translations$misskey$achievements_$types_$login15_$uk_UA extends Translations$misskey$achievements_$types_$login15_$en_US {
	_Translations$misskey$achievements_$types_$login15_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новачок III';
	@override String get description => '15 днів користування загально';
}

// Path: misskey.achievements_.types_.login30_
class _Translations$misskey$achievements_$types_$login30_$uk_UA extends Translations$misskey$achievements_$types_$login30_$en_US {
	_Translations$misskey$achievements_$types_$login30_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Міскієць I';
	@override String get description => '30 днів користування загально';
}

// Path: misskey.achievements_.types_.login60_
class _Translations$misskey$achievements_$types_$login60_$uk_UA extends Translations$misskey$achievements_$types_$login60_$en_US {
	_Translations$misskey$achievements_$types_$login60_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Міскієць II';
	@override String get description => '60 днів користування загально';
}

// Path: misskey.achievements_.types_.login100_
class _Translations$misskey$achievements_$types_$login100_$uk_UA extends Translations$misskey$achievements_$types_$login100_$en_US {
	_Translations$misskey$achievements_$types_$login100_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Міскієць III';
	@override String get description => '100 днів користування загально';
	@override String get flavor => 'Цей юзер лютий місскіст';
}

// Path: misskey.achievements_.types_.login200_
class _Translations$misskey$achievements_$types_$login200_$uk_UA extends Translations$misskey$achievements_$types_$login200_$en_US {
	_Translations$misskey$achievements_$types_$login200_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсідник I';
	@override String get description => '200 днів користування загально';
}

// Path: misskey.achievements_.types_.login300_
class _Translations$misskey$achievements_$types_$login300_$uk_UA extends Translations$misskey$achievements_$types_$login300_$en_US {
	_Translations$misskey$achievements_$types_$login300_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсідник II';
	@override String get description => '300 днів користування загально';
}

// Path: misskey.achievements_.types_.login400_
class _Translations$misskey$achievements_$types_$login400_$uk_UA extends Translations$misskey$achievements_$types_$login400_$en_US {
	_Translations$misskey$achievements_$types_$login400_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсідник III';
	@override String get description => '400 днів користування загально';
}

// Path: misskey.achievements_.types_.login500_
class _Translations$misskey$achievements_$types_$login500_$uk_UA extends Translations$misskey$achievements_$types_$login500_$en_US {
	_Translations$misskey$achievements_$types_$login500_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран I';
	@override String get description => '500 днів користування загально';
	@override String get flavor => 'Meine Kameraden, ich liebe sie, die Notizen.';
}

// Path: misskey.achievements_.types_.login600_
class _Translations$misskey$achievements_$types_$login600_$uk_UA extends Translations$misskey$achievements_$types_$login600_$en_US {
	_Translations$misskey$achievements_$types_$login600_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран II';
	@override String get description => '600 днів користування загально';
}

// Path: misskey.achievements_.types_.login700_
class _Translations$misskey$achievements_$types_$login700_$uk_UA extends Translations$misskey$achievements_$types_$login700_$en_US {
	_Translations$misskey$achievements_$types_$login700_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран III';
	@override String get description => '700 днів користування загально';
}

// Path: misskey.achievements_.types_.login800_
class _Translations$misskey$achievements_$types_$login800_$uk_UA extends Translations$misskey$achievements_$types_$login800_$en_US {
	_Translations$misskey$achievements_$types_$login800_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Майстер нотаток I';
	@override String get description => '800 днів користування загально';
}

// Path: misskey.achievements_.types_.login900_
class _Translations$misskey$achievements_$types_$login900_$uk_UA extends Translations$misskey$achievements_$types_$login900_$en_US {
	_Translations$misskey$achievements_$types_$login900_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Майстер нотаток II';
	@override String get description => '900 днів користування загально';
}

// Path: misskey.achievements_.types_.login1000_
class _Translations$misskey$achievements_$types_$login1000_$uk_UA extends Translations$misskey$achievements_$types_$login1000_$en_US {
	_Translations$misskey$achievements_$types_$login1000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Майстер нотаток III';
	@override String get description => '1000 днів користування загально';
	@override String get flavor => 'Дякуємо, що користуєтеся Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _Translations$misskey$achievements_$types_$noteClipped1_$uk_UA extends Translations$misskey$achievements_$types_$noteClipped1_$en_US {
	_Translations$misskey$achievements_$types_$noteClipped1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не можна не зберегти';
	@override String get description => 'Перша нотатка у добірці';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _Translations$misskey$achievements_$types_$noteFavorited1_$uk_UA extends Translations$misskey$achievements_$types_$noteFavorited1_$en_US {
	_Translations$misskey$achievements_$types_$noteFavorited1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дивитися на зірки';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _Translations$misskey$achievements_$types_$myNoteFavorited1_$uk_UA extends Translations$misskey$achievements_$types_$myNoteFavorited1_$en_US {
	_Translations$misskey$achievements_$types_$myNoteFavorited1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'У пошуках зірок';
}

// Path: misskey.achievements_.types_.profileFilled_
class _Translations$misskey$achievements_$types_$profileFilled_$uk_UA extends Translations$misskey$achievements_$types_$profileFilled_$en_US {
	_Translations$misskey$achievements_$types_$profileFilled_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Повна готовність';
	@override String get description => 'Профіль заповнено';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _Translations$misskey$achievements_$types_$markedAsCat_$uk_UA extends Translations$misskey$achievements_$types_$markedAsCat_$en_US {
	_Translations$misskey$achievements_$types_$markedAsCat_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Я кіт';
	@override String get description => 'Позначено як акаунт кота';
	@override String get flavor => 'Я дам тобі ім\'я пізніше';
}

// Path: misskey.achievements_.types_.following1_
class _Translations$misskey$achievements_$types_$following1_$uk_UA extends Translations$misskey$achievements_$types_$following1_$en_US {
	_Translations$misskey$achievements_$types_$following1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перша підписка';
}

// Path: misskey.achievements_.types_.following10_
class _Translations$misskey$achievements_$types_$following10_$uk_UA extends Translations$misskey$achievements_$types_$following10_$en_US {
	_Translations$misskey$achievements_$types_$following10_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Продовжуй, продовжуй';
}

// Path: misskey.achievements_.types_.following50_
class _Translations$misskey$achievements_$types_$following50_$uk_UA extends Translations$misskey$achievements_$types_$following50_$en_US {
	_Translations$misskey$achievements_$types_$following50_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Багато друзів';
	@override String get description => 'Кількість підписок сягнула 50';
}

// Path: misskey.achievements_.types_.following100_
class _Translations$misskey$achievements_$types_$following100_$uk_UA extends Translations$misskey$achievements_$types_$following100_$en_US {
	_Translations$misskey$achievements_$types_$following100_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => '100 друзів';
	@override String get description => 'Кількість підписок сягнула 100';
}

// Path: misskey.achievements_.types_.following300_
class _Translations$misskey$achievements_$types_$following300_$uk_UA extends Translations$misskey$achievements_$types_$following300_$en_US {
	_Translations$misskey$achievements_$types_$following300_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Надлишок друзів';
	@override String get description => 'Кількість підписок сягнула 300';
}

// Path: misskey.achievements_.types_.followers1_
class _Translations$misskey$achievements_$types_$followers1_$uk_UA extends Translations$misskey$achievements_$types_$followers1_$en_US {
	_Translations$misskey$achievements_$types_$followers1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перший підписник';
	@override String get description => 'З\'явився перший підписник';
}

// Path: misskey.achievements_.types_.followers10_
class _Translations$misskey$achievements_$types_$followers10_$uk_UA extends Translations$misskey$achievements_$types_$followers10_$en_US {
	_Translations$misskey$achievements_$types_$followers10_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follow me!';
	@override String get description => 'Кількість підписників досягла 10';
}

// Path: misskey.achievements_.types_.followers50_
class _Translations$misskey$achievements_$types_$followers50_$uk_UA extends Translations$misskey$achievements_$types_$followers50_$en_US {
	_Translations$misskey$achievements_$types_$followers50_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get description => 'Кількість підписників досягла 50';
}

// Path: misskey.achievements_.types_.followers100_
class _Translations$misskey$achievements_$types_$followers100_$uk_UA extends Translations$misskey$achievements_$types_$followers100_$en_US {
	_Translations$misskey$achievements_$types_$followers100_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Популярна особа';
	@override String get description => 'Кількість підписників досягла 100';
}

// Path: misskey.achievements_.types_.followers300_
class _Translations$misskey$achievements_$types_$followers300_$uk_UA extends Translations$misskey$achievements_$types_$followers300_$en_US {
	_Translations$misskey$achievements_$types_$followers300_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ставайте в чергу';
	@override String get description => 'Кількість підписників досягла 300';
}

// Path: misskey.achievements_.types_.followers500_
class _Translations$misskey$achievements_$types_$followers500_$uk_UA extends Translations$misskey$achievements_$types_$followers500_$en_US {
	_Translations$misskey$achievements_$types_$followers500_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Радіовежа';
	@override String get description => 'Кількість підписників досягла 500';
}

// Path: misskey.achievements_.types_.followers1000_
class _Translations$misskey$achievements_$types_$followers1000_$uk_UA extends Translations$misskey$achievements_$types_$followers1000_$en_US {
	_Translations$misskey$achievements_$types_$followers1000_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інфлюенсер';
	@override String get description => 'Кількість підписників досягла 1000';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _Translations$misskey$achievements_$types_$collectAchievements30_$uk_UA extends Translations$misskey$achievements_$types_$collectAchievements30_$en_US {
	_Translations$misskey$achievements_$types_$collectAchievements30_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Збирач досягнень';
	@override String get description => 'Отримано 30 досягнень';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _Translations$misskey$achievements_$types_$viewAchievements3min_$uk_UA extends Translations$misskey$achievements_$types_$viewAchievements3min_$en_US {
	_Translations$misskey$achievements_$types_$viewAchievements3min_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Шанувальник досягнень';
	@override String get description => 'Переглядати список досягнень принаймні 3 хвилини';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _Translations$misskey$achievements_$types_$iLoveMisskey_$uk_UA extends Translations$misskey$achievements_$types_$iLoveMisskey_$en_US {
	_Translations$misskey$achievements_$types_$iLoveMisskey_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => 'Відправлено "I ❤ #Misskey"';
	@override String get flavor => 'Дякуємо вам, що користуєтесь Misskey!  – команда розробників';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _Translations$misskey$achievements_$types_$foundTreasure_$uk_UA extends Translations$misskey$achievements_$types_$foundTreasure_$en_US {
	_Translations$misskey$achievements_$types_$foundTreasure_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Пошуки скарбів';
	@override String get description => 'Ви знайшли прихований скарб';
}

// Path: misskey.achievements_.types_.client30min_
class _Translations$misskey$achievements_$types_$client30min_$uk_UA extends Translations$misskey$achievements_$types_$client30min_$en_US {
	_Translations$misskey$achievements_$types_$client30min_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Коротка перерва';
	@override String get description => 'З моменту запуску клієнта минуло 30 хвилин';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _Translations$misskey$achievements_$types_$noteDeletedWithin1min_$uk_UA extends Translations$misskey$achievements_$types_$noteDeletedWithin1min_$en_US {
	_Translations$misskey$achievements_$types_$noteDeletedWithin1min_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не зважай';
	@override String get description => 'Допис видалено протягом 1 хвилини після публікації';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _Translations$misskey$achievements_$types_$postedAtLateNight_$uk_UA extends Translations$misskey$achievements_$types_$postedAtLateNight_$en_US {
	_Translations$misskey$achievements_$types_$postedAtLateNight_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нічне життя';
	@override String get description => 'Відправити нотатку посеред ночі';
	@override String get flavor => 'Час лягати спати';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _Translations$misskey$achievements_$types_$postedAt0min0sec_$uk_UA extends Translations$misskey$achievements_$types_$postedAt0min0sec_$en_US {
	_Translations$misskey$achievements_$types_$postedAt0min0sec_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сигнал часу';
	@override String get description => 'Відправити нотатку о 00:00';
}

// Path: misskey.achievements_.types_.selfQuote_
class _Translations$misskey$achievements_$types_$selfQuote_$uk_UA extends Translations$misskey$achievements_$types_$selfQuote_$en_US {
	_Translations$misskey$achievements_$types_$selfQuote_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Самопосилання';
	@override String get description => 'Процитувати власну нотатку';
}

// Path: misskey.achievements_.types_.htl20npm_
class _Translations$misskey$achievements_$types_$htl20npm_$uk_UA extends Translations$misskey$achievements_$types_$htl20npm_$en_US {
	_Translations$misskey$achievements_$types_$htl20npm_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Плинна стрічка';
	@override String get description => 'Перевищити швидкість домашньої стрічки 20npm (нотаток на хвилину)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _Translations$misskey$achievements_$types_$viewInstanceChart_$uk_UA extends Translations$misskey$achievements_$types_$viewInstanceChart_$en_US {
	_Translations$misskey$achievements_$types_$viewInstanceChart_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналітик';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$uk_UA extends Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$en_US {
	_Translations$misskey$achievements_$types_$outputHelloWorldOnScratchpad_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'Вивести "hello world" у Скретчпаді';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _Translations$misskey$achievements_$types_$reactWithoutRead_$uk_UA extends Translations$misskey$achievements_$types_$reactWithoutRead_$en_US {
	_Translations$misskey$achievements_$types_$reactWithoutRead_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Прочитали як слід?';
	@override String get description => 'Реакція на нотатку, що містить понад 100 символів, протягом 3 секунд після її публікації';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _Translations$misskey$achievements_$types_$clickedClickHere_$uk_UA extends Translations$misskey$achievements_$types_$clickedClickHere_$en_US {
	_Translations$misskey$achievements_$types_$clickedClickHere_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Натисніть тут';
	@override String get description => 'Натиснуто тут';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _Translations$misskey$achievements_$types_$justPlainLucky_$uk_UA extends Translations$misskey$achievements_$types_$justPlainLucky_$en_US {
	_Translations$misskey$achievements_$types_$justPlainLucky_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просто вдача';
	@override String get description => 'Можна отримати з ймовірністю 0,01% кожні 10 секунд';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _Translations$misskey$achievements_$types_$setNameToSyuilo_$uk_UA extends Translations$misskey$achievements_$types_$setNameToSyuilo_$en_US {
	_Translations$misskey$achievements_$types_$setNameToSyuilo_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Комплекс бога';
	@override String get description => 'Встановлено ім\'я "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$uk_UA extends Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated1_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перша річниця';
	@override String get description => 'Минув рік з моменту створення акаунта';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$uk_UA extends Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated2_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Друга річниця';
	@override String get description => 'Минуло 2 роки з моменту створення акаунту';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$uk_UA extends Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$en_US {
	_Translations$misskey$achievements_$types_$passedSinceAccountCreated3_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Третя річниця';
	@override String get description => 'Минуло 3 роки з моменту створення акаунта';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _Translations$misskey$achievements_$types_$loggedInOnBirthday_$uk_UA extends Translations$misskey$achievements_$types_$loggedInOnBirthday_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnBirthday_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'З Днем народження!';
	@override String get description => 'Увійти у свій день народження';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$uk_UA extends Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$en_US {
	_Translations$misskey$achievements_$types_$loggedInOnNewYearsDay_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'З Новим роком!';
	@override String get description => 'Увійшли в перший день року';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _Translations$misskey$achievements_$types_$cookieClicked_$uk_UA extends Translations$misskey$achievements_$types_$cookieClicked_$en_US {
	_Translations$misskey$achievements_$types_$cookieClicked_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Чекайте, це вірний сайт?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _Translations$misskey$achievements_$types_$brainDiver_$uk_UA extends Translations$misskey$achievements_$types_$brainDiver_$en_US {
	_Translations$misskey$achievements_$types_$brainDiver_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Відправити посилання на "Brain Diver"';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.pages_.blocks.note_
class _Translations$misskey$pages_$blocks$note_$uk_UA extends Translations$misskey$pages_$blocks$note_$en_US {
	_Translations$misskey$pages_$blocks$note_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get id => 'Ідентифікатор нотатки';
	@override String get idDescription => 'Також можна вказати посилання на нотатку';
	@override String get detailed => 'Детальний вигляд';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$uk_UA extends Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$en_US {
	_Translations$misskey$abuseReport_$notificationRecipient_$recipientType_$uk_UA._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-mail';
}
