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
class TranslationsUkUa extends Translations {
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
	@override late final _TranslationsAriaUkUa aria = _TranslationsAriaUkUa._(_root);
	@override late final _TranslationsMisskeyUkUa misskey = _TranslationsMisskeyUkUa._(_root);
}

// Path: aria
class _TranslationsAriaUkUa extends TranslationsAriaEnUs {
	_TranslationsAriaUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyUkUa extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Українська';
	@override String get headlineMisskey => 'Мережа, з’єднана нотатками';
	@override String get introMisskey => 'Ласкаво просимо! Misskey - децентралізована служба мікроблогів з відкритим кодом.\nСтворюйте "нотатки", щоб поділитися тим, що відбувається, і розповісти всім про себе 📡\nЗа допомогою "реакцій" ви також можете швидко висловити свої почуття щодо нотаток інших 👍\nДосліджуймо новий світ! 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} є одним із сервісів (які називаються інстансами Misskey), що використовують платформу з відкритим вихідним кодом <b>Misskey</b>.';
	@override String monthAndDay({required Object month, required Object day}) => '${month}/${day}';
	@override String get search => 'Пошук';
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
	@override String get delete => 'Видалити';
	@override String get deleteAndEdit => 'Видалити й редагувати';
	@override String get deleteAndEditConfirm => 'Ви впевнені, що хочете видалити цю нотатку та відредагувати її? Ви втратите всі реакції, поширення та відповіді на неї.';
	@override String get addToList => 'Додати до списку';
	@override String get addToAntenna => 'Додати в антени';
	@override String get sendMessage => 'Надіслати повідомлення';
	@override String get copyRSS => 'Скопіювати RSS';
	@override String get copyUsername => 'Скопіювати ім’я користувача';
	@override String get copyUserId => 'Копіювати ID користувача';
	@override String get copyNoteId => 'блокнот ID користувача';
	@override String get copyFileId => 'Скопіювати ідентифікатор файлу.';
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
	@override String get pinnedNote => 'Закріплений запис';
	@override String get pinned => 'Закріпити';
	@override String get you => 'Ви';
	@override String get clickToShow => 'Натисніть для перегляду';
	@override String get sensitive => 'NSFW';
	@override String get add => 'Додати';
	@override String get reaction => 'Реакції';
	@override String get reactions => 'Реакції';
	@override String get emojiPicker => 'Вибір реакції';
	@override String get reactionSettingDescription2 => 'Перемістити щоб змінити порядок, Клацнути мишою щоб видалити, Натиснути "+" щоб додати.';
	@override String get rememberNoteVisibility => 'Пам’ятати параметри видимісті';
	@override String get attachCancel => 'Видалити вкладення';
	@override String get markAsSensitive => 'Позначити як NSFW';
	@override String get unmarkAsSensitive => 'Зняти позначку NSFW';
	@override String get enterFileName => 'Введіть ім\'я файлу';
	@override String get mute => 'Ігнорувати';
	@override String get unmute => 'Показувати';
	@override String get block => 'Заблокувати';
	@override String get unblock => 'Розблокувати';
	@override String get suspend => 'Призупинити';
	@override String get unsuspend => 'Відновити';
	@override String get blockConfirm => 'Ви впевнені, що хочете заблокувати цей акаунт?';
	@override String get unblockConfirm => 'Ви впевнені, що хочете розблокувати цей акаунт?';
	@override String get suspendConfirm => 'Ви впевнені, що хочете призупинити цей акаунт?';
	@override String get unsuspendConfirm => 'Ви впевнені, що хочете відновити цей акаунт?';
	@override String get selectList => 'Виберіть список';
	@override String get editList => 'Редагувати список.';
	@override String get selectChannel => 'Виберіть канал';
	@override String get selectAntenna => 'Виберіть антену';
	@override String get selectWidget => 'Виберіть віджет';
	@override String get editWidgets => 'Редагувати віджети';
	@override String get editWidgetsExit => 'Готово';
	@override String get customEmojis => 'Кастомні емоджі';
	@override String get emoji => 'Емоджі';
	@override String get emojis => 'Емоджі';
	@override String get emojiName => 'Назва емоджі';
	@override String get emojiUrl => 'URL емодзі';
	@override String get addEmoji => 'Додати емодзі';
	@override String get settingGuide => 'Рекомендована конфігурація';
	@override String get cacheRemoteFiles => 'Кешувати дані з інших інстансів';
	@override String get cacheRemoteFilesDescription => 'Якщо кешування вимкнено, віддалені файли завантажуються безпосередньо з віддаленого інстансу. Це зменшує використання сховища, але збільшує трафік, оскільки не генеруются ескізи.';
	@override String get flagAsBot => 'Акаунт бота';
	@override String get flagAsBotDescription => 'Ввімкніть якщо цей обліковий запис використовується ботом. Ця опція позначить обліковий запис як бота. Це потрібно щоб виключити безкінечну інтеракцію між ботами а також відповідного підлаштування Misskey.';
	@override String get flagAsCat => 'Акаунт кота';
	@override String get flagAsCatDescription => 'Ввімкніть, щоб позначити, що обліковий запис є котиком.';
	@override String get flagShowTimelineReplies => 'Показувати відповіді на нотатки на часовій шкалі';
	@override String get flagShowTimelineRepliesDescription => 'Показує відповіді користувачів на нотатки інших користувачів на часовій шкалі.';
	@override String get autoAcceptFollowed => 'Автоматично приймати запити на підписку від користувачів, на яких ви підписані';
	@override String get addAccount => 'Додати акаунт';
	@override String get loginFailed => 'Не вдалося увійти';
	@override String get showOnRemote => 'Переглянути в оригіналі';
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
	@override String get operations => 'Операції';
	@override String get software => 'Програмне забезпечення';
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
	@override String get muteAndBlock => 'Заглушення і блокування';
	@override String get mutedUsers => 'Заглушені користувачі';
	@override String get blockedUsers => 'Заблоковані користувачі';
	@override String get noUsers => 'Немає користувачів';
	@override String get editProfile => 'Редагувати обліковий запис';
	@override String get noteDeleteConfirm => 'Ви дійсно хочете видалити цей запис?';
	@override String get pinLimitExceeded => 'Більше записів не можна закріпити';
	@override String get done => 'Готово';
	@override String get processing => 'Обробка';
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
	@override String get explore => 'Огляд';
	@override String get messageRead => 'Прочитано';
	@override String get noMoreHistory => 'Подальшої історії немає';
	@override String nUsersRead({required Object n}) => 'Прочитали ${n}';
	@override String agreeTo({required Object x0}) => 'Я погоджуюсь з ${x0}';
	@override String get agreeBelow => 'Я погоджуюся з наведеним нижче';
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
	@override String get drive => 'Диск';
	@override String get fileName => 'Ім\'я файлу';
	@override String get selectFile => 'Вибрати файл';
	@override String get selectFiles => 'Вибрати файли';
	@override String get selectFolder => 'Вибрати теку';
	@override String get selectFolders => 'Вибрати теки';
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
	@override String get pinnedClipId => 'Ідентифікатор закріпленої замітки.';
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
	@override String get antennaKeywordsDescription => 'Розділення ключових слів пробілами для "І" або з нової лінійки для "АБО"';
	@override String get notifyAntenna => 'Сповіщати про нові нотатки';
	@override String get withFileAntenna => 'Тільки нотатки з вкладеними файлами';
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
	@override String get totp => 'Програма аутентифікації';
	@override String get moderator => 'Модератор';
	@override String get moderation => 'Модерація';
	@override String nUsersMentioned({required Object n}) => 'Згадали: ${n}';
	@override String get securityKey => 'Ключ захисту';
	@override String get lastUsed => 'Востаннє використано';
	@override String get unregister => 'Скасувати реєстрацію';
	@override String get passwordLessLogin => 'Налаштувати вхід без пароля';
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
	@override String get onlyOneFileCanBeAttached => 'До повідомлення можна вкласти лише один файл';
	@override String get signinRequired => 'Будь ласка, авторизуйтесь';
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
	@override String get native => 'місцевий';
	@override String get noHistory => 'Історія порожня';
	@override String get signinHistory => 'Історія входів';
	@override String get enableAdvancedMfm => 'Увімкнути розширений MFM';
	@override String get enableAnimatedMfm => 'Увімкнути анімований MFM';
	@override String get doing => 'Виконується';
	@override String get category => 'Категорія';
	@override String get tags => 'Теги';
	@override String get docSource => 'Джерело цього документа';
	@override String get createAccount => 'Створити акаунт';
	@override String get existingAccount => 'Існуючий обліковий запис';
	@override String get regenerate => 'Оновити';
	@override String get fontSize => 'Розмір шрифту';
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
	@override String get accountSettings => 'Налаштування акаунта';
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
	@override String get serverLogs => 'Журнал сервера';
	@override String get deleteAll => 'Видалити все';
	@override String get showFixedPostForm => 'Показати форму запису над стрічкою новин.';
	@override String get newNoteRecived => 'Є нові нотатки';
	@override String get sounds => 'Звуки';
	@override String get sound => 'Звуки';
	@override String get listen => 'Слухати';
	@override String get none => 'Відсутній';
	@override String get showInPage => 'Показати на сторінці';
	@override String get popout => 'Від\'єднати';
	@override String get volume => 'Гучність';
	@override String get masterVolume => 'Загальна гучність';
	@override String get details => 'Детальніше';
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
	@override String get output => 'Вихід';
	@override String get script => 'Скрипт';
	@override String get disablePagesScript => 'Вимкнути AiScript на Сторінках';
	@override String get updateRemoteUser => 'Оновити інформацію про віддаленого користувача';
	@override String get unsetUserAvatar => 'Деактивувати піктограму.';
	@override String get unsetUserBanner => 'Випустити прапор.';
	@override String get deleteAllFiles => 'Видалити всі файли';
	@override String get deleteAllFilesConfirm => 'Ви дійсно хочете видалити всі файли?';
	@override String get removeAllFollowing => 'Скасувати всі підписки';
	@override String removeAllFollowingDescription({required Object host}) => 'Скасувати підписку на всі акаунти з ${host}. Будь ласка, робіть це, якщо інстанс більше не існує.';
	@override String get userSuspended => 'Обліковий запис заблокований.';
	@override String get userSilenced => 'Обліковий запис приглушений.';
	@override String get yourAccountSuspendedTitle => 'Цей обліковий запис заблоковано';
	@override String get yourAccountSuspendedDescription => 'Цей обліковий запис було заблоковано через порушення умов надання послуг сервера. Зв\'яжіться з адміністратором, якщо ви хочете дізнатися докладнішу причину. Будь ласка, не створюйте новий обліковий запис.';
	@override String get menu => 'Меню';
	@override String get divider => 'Розділювач';
	@override String get addItem => 'Додати елемент';
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
	@override String get regexpError => 'Помилка регулярного виразу';
	@override String regexpErrorDescription({required Object line, required Object tab}) => 'Сталася помилка в регулярному виразі в рядку ${line} вашого слова ${tab} слова що ігноруються:';
	@override String get instanceMute => 'Приглушення інстансів';
	@override String userSaysSomething({required Object name}) => '${name} щось сказав(ла)';
	@override String get makeActive => 'Активувати';
	@override String get display => 'Відображення';
	@override String get copy => 'Скопіювати';
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
	@override String get setMultipleBySeparatingWithSpace => 'Можна вказати кілька значень, відділивши їх пробілом.';
	@override String get fileIdOrUrl => 'Ідентифікатор файлу або посилання';
	@override String get behavior => 'Поведінка';
	@override String get sample => 'Приклад';
	@override String get abuseReports => 'Скарги';
	@override String get reportAbuse => 'Поскаржитись';
	@override String reportAbuseOf({required Object name}) => 'Поскаржитись на ${name}';
	@override String get fillAbuseReportDescription => 'Будь ласка вкажіть подробиці скарги. Якщо скарга стосується запису, вкажіть посилання на нього.';
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
	@override String get createNewClip => 'Створити нотатку';
	@override String get unclip => 'Незакріплений';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Ця нотатка вже включена до кліпу "${name}". Ви хочете виключити нотатку з цього кліпу?';
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
	@override String get noBotProtectionWarning => 'Захист від ботів не налаштовано';
	@override String get configure => 'Налаштувати';
	@override String get postToGallery => 'Допис у галерею';
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
	@override String get aiChanMode => 'Режим Ai';
	@override String get keepCw => 'Зберігати попередження щодо вмісту';
	@override String get pubSub => 'Акаунти Pub/Sub';
	@override String get lastCommunication => 'Останній зв\'язок';
	@override String get resolved => 'Вирішено';
	@override String get unresolved => 'Не вирішено';
	@override String get breakFollow => 'Видалити підписника';
	@override String get itsOn => 'Увімкнено';
	@override String get itsOff => 'Вимкнено';
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
	@override String get continueThread => 'Показати продовження треду';
	@override String get deleteAccountConfirm => 'Це незворотно видалить ваш акаунт. Продовжити?';
	@override String get incorrectPassword => 'Неправильний пароль.';
	@override String voteConfirm({required Object choice}) => 'Підтверджуєте свій голос за "${choice}"?';
	@override String get hide => 'Сховати';
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
	@override String get mutePeriod => 'Тривалість приховування';
	@override String get period => 'Опитування закінчується';
	@override String get indefinitely => 'Ніколи';
	@override String get tenMinutes => '10 хвилин';
	@override String get oneHour => '1 година';
	@override String get oneDay => '1 день';
	@override String get oneWeek => '1 тиждень';
	@override String get reflectMayTakeTime => 'Може знадобитися деякий час для відображення';
	@override String get failedToFetchAccountInformation => 'Не вдалося отримати інформацію про акаунт';
	@override String get rateLimitExceeded => 'Ліміт швидкості перевищено';
	@override String get cropImage => 'Кадрування';
	@override String get cropImageAsk => 'Бажаєте кадрувати це зображення?';
	@override String get file => 'Файли';
	@override String recentNHours({required Object n}) => 'Останні ${n} годин';
	@override String recentNDays({required Object n}) => 'Останні ${n} днів';
	@override String get noEmailServerWarning => 'Email сервер не налаштовано.';
	@override String get recommended => 'Рекомендоване';
	@override String get check => 'Перевірити';
	@override String get driveCapOverrideLabel => 'Змінити ємність диска для цього користувача';
	@override String get driveCapOverrideCaption => 'Для скасування вкажіть 0 або менше.';
	@override String get requireAdminForView => 'Для перегляду ви повинні увійти в акаунт адміністратора.';
	@override String typeToConfirm({required Object x}) => 'Введіть ${x} для підтвердження';
	@override String get deleteAccount => 'Видалення акаунту';
	@override String get document => 'Документація';
	@override String get numberOfPageCache => 'Кількість кешованих сторінок';
	@override String get logoutConfirm => 'Справді вийти?';
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
	@override String get cannotUploadBecauseNoFreeSpace => 'Помилка завантаження через брак місця на Диску.';
	@override String get beta => 'Бета';
	@override String get enableAutoSensitive => 'Автоматичне маркування NSFW';
	@override String get navbar => 'Рядок навігації';
	@override String get shuffle => 'Перемішати';
	@override String get account => 'Акаунти';
	@override String get move => 'Пересунути';
	@override String get pushNotification => 'Push сповіщення';
	@override String get subscribePushNotification => 'Увімкнути push-сповіщення';
	@override String get unsubscribePushNotification => 'Вимкнути push-сповіщення';
	@override String get windowMaximize => 'Розгорнути';
	@override String get windowRestore => 'Відновити';
	@override String get caption => 'Підпис';
	@override String get tools => 'Інструменти';
	@override String get like => 'Вподобати';
	@override String get unlike => 'Не вподобати';
	@override String get numberOfLikes => 'Вподобання';
	@override String get show => 'Відображення';
	@override String get roles => 'Ролі';
	@override String get role => 'Роль';
	@override String get normalUser => 'Звичайний користувач';
	@override String get undefined => 'Не визначено';
	@override String get assign => 'Призначити';
	@override String get unassign => 'Скасувати призначення';
	@override String get color => 'Колір';
	@override String get achievements => 'Досягнення';
	@override String get joinThisServer => 'Зареєструватися на цьому сервері';
	@override String get exploreOtherServers => 'Знайти інший сервер';
	@override String get letsLookAtTimeline => 'Перегляд історії';
	@override String get horizontal => 'Збоку';
	@override String get youFollowing => 'Підписки';
	@override String get icon => 'Аватар';
	@override String get replies => 'Відповісти';
	@override String get renotes => 'Поширити';
	@override String get sourceCode => 'Вихідний код';
	@override String get flip => 'Перевернути';
	@override String lastNDays({required Object n}) => 'Останні ${n} днів';
	@override String get postForm => 'Створення нотатки';
	@override String get information => 'Інформація';
	@override String get inMinutes => 'х';
	@override String get inDays => 'д';
	@override late final _TranslationsMisskeyChatUkUa chat_ = _TranslationsMisskeyChatUkUa._(_root);
	@override late final _TranslationsMisskeyDeliveryUkUa delivery_ = _TranslationsMisskeyDeliveryUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsUkUa achievements_ = _TranslationsMisskeyAchievementsUkUa._(_root);
	@override late final _TranslationsMisskeyRoleUkUa role_ = _TranslationsMisskeyRoleUkUa._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionUkUa sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionUkUa._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableUkUa emailUnavailable_ = _TranslationsMisskeyEmailUnavailableUkUa._(_root);
	@override late final _TranslationsMisskeyFfVisibilityUkUa ffVisibility_ = _TranslationsMisskeyFfVisibilityUkUa._(_root);
	@override late final _TranslationsMisskeySignupUkUa signup_ = _TranslationsMisskeySignupUkUa._(_root);
	@override late final _TranslationsMisskeyAccountDeleteUkUa accountDelete_ = _TranslationsMisskeyAccountDeleteUkUa._(_root);
	@override late final _TranslationsMisskeyAdUkUa ad_ = _TranslationsMisskeyAdUkUa._(_root);
	@override late final _TranslationsMisskeyGalleryUkUa gallery_ = _TranslationsMisskeyGalleryUkUa._(_root);
	@override late final _TranslationsMisskeyEmailUkUa email_ = _TranslationsMisskeyEmailUkUa._(_root);
	@override late final _TranslationsMisskeyPluginUkUa plugin_ = _TranslationsMisskeyPluginUkUa._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsUkUa preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsUkUa._(_root);
	@override late final _TranslationsMisskeyRegistryUkUa registry_ = _TranslationsMisskeyRegistryUkUa._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyUkUa aboutMisskey_ = _TranslationsMisskeyAboutMisskeyUkUa._(_root);
	@override late final _TranslationsMisskeyInstanceTickerUkUa instanceTicker_ = _TranslationsMisskeyInstanceTickerUkUa._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorUkUa serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorUkUa._(_root);
	@override late final _TranslationsMisskeyChannelUkUa channel_ = _TranslationsMisskeyChannelUkUa._(_root);
	@override late final _TranslationsMisskeyMenuDisplayUkUa menuDisplay_ = _TranslationsMisskeyMenuDisplayUkUa._(_root);
	@override late final _TranslationsMisskeyWordMuteUkUa wordMute_ = _TranslationsMisskeyWordMuteUkUa._(_root);
	@override late final _TranslationsMisskeyInstanceMuteUkUa instanceMute_ = _TranslationsMisskeyInstanceMuteUkUa._(_root);
	@override late final _TranslationsMisskeyThemeUkUa theme_ = _TranslationsMisskeyThemeUkUa._(_root);
	@override late final _TranslationsMisskeySfxUkUa sfx_ = _TranslationsMisskeySfxUkUa._(_root);
	@override late final _TranslationsMisskeyAgoUkUa ago_ = _TranslationsMisskeyAgoUkUa._(_root);
	@override late final _TranslationsMisskeyTimeUkUa time_ = _TranslationsMisskeyTimeUkUa._(_root);
	@override late final _TranslationsMisskeyX2faUkUa x2fa_ = _TranslationsMisskeyX2faUkUa._(_root);
	@override late final _TranslationsMisskeyPermissionsUkUa permissions_ = _TranslationsMisskeyPermissionsUkUa._(_root);
	@override late final _TranslationsMisskeyAuthUkUa auth_ = _TranslationsMisskeyAuthUkUa._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesUkUa antennaSources_ = _TranslationsMisskeyAntennaSourcesUkUa._(_root);
	@override late final _TranslationsMisskeyWeekdayUkUa weekday_ = _TranslationsMisskeyWeekdayUkUa._(_root);
	@override late final _TranslationsMisskeyWidgetsUkUa widgets_ = _TranslationsMisskeyWidgetsUkUa._(_root);
	@override late final _TranslationsMisskeyCwUkUa cw_ = _TranslationsMisskeyCwUkUa._(_root);
	@override late final _TranslationsMisskeyPollUkUa poll_ = _TranslationsMisskeyPollUkUa._(_root);
	@override late final _TranslationsMisskeyVisibilityUkUa visibility_ = _TranslationsMisskeyVisibilityUkUa._(_root);
	@override late final _TranslationsMisskeyPostFormUkUa postForm_ = _TranslationsMisskeyPostFormUkUa._(_root);
	@override late final _TranslationsMisskeyProfileUkUa profile_ = _TranslationsMisskeyProfileUkUa._(_root);
	@override late final _TranslationsMisskeyExportOrImportUkUa exportOrImport_ = _TranslationsMisskeyExportOrImportUkUa._(_root);
	@override late final _TranslationsMisskeyChartsUkUa charts_ = _TranslationsMisskeyChartsUkUa._(_root);
	@override late final _TranslationsMisskeyInstanceChartsUkUa instanceCharts_ = _TranslationsMisskeyInstanceChartsUkUa._(_root);
	@override late final _TranslationsMisskeyTimelinesUkUa timelines_ = _TranslationsMisskeyTimelinesUkUa._(_root);
	@override late final _TranslationsMisskeyPlayUkUa play_ = _TranslationsMisskeyPlayUkUa._(_root);
	@override late final _TranslationsMisskeyPagesUkUa pages_ = _TranslationsMisskeyPagesUkUa._(_root);
	@override late final _TranslationsMisskeyRelayStatusUkUa relayStatus_ = _TranslationsMisskeyRelayStatusUkUa._(_root);
	@override late final _TranslationsMisskeyNotificationUkUa notification_ = _TranslationsMisskeyNotificationUkUa._(_root);
	@override late final _TranslationsMisskeyDeckUkUa deck_ = _TranslationsMisskeyDeckUkUa._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsUkUa webhookSettings_ = _TranslationsMisskeyWebhookSettingsUkUa._(_root);
	@override late final _TranslationsMisskeyAbuseReportUkUa abuseReport_ = _TranslationsMisskeyAbuseReportUkUa._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesUkUa moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesUkUa._(_root);
	@override late final _TranslationsMisskeyReversiUkUa reversi_ = _TranslationsMisskeyReversiUkUa._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsUkUa remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsUkUa._(_root);
	@override late final _TranslationsMisskeySearchUkUa search_ = _TranslationsMisskeySearchUkUa._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorUkUa watermarkEditor_ = _TranslationsMisskeyWatermarkEditorUkUa._(_root);
	@override late final _TranslationsMisskeyImageEffectorUkUa imageEffector_ = _TranslationsMisskeyImageEffectorUkUa._(_root);
}

// Path: misskey.chat_
class _TranslationsMisskeyChatUkUa extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Запросити';
	@override String get noHistory => 'Історія порожня';
	@override String get members => 'Учасники';
	@override String get home => 'Домівка';
	@override String get send => 'Відправити';
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryUkUa extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Призупинено';
	@override late final _TranslationsMisskeyDeliveryTypeUkUa type_ = _TranslationsMisskeyDeliveryTypeUkUa._(_root);
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsUkUa extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Відкрито';
	@override late final _TranslationsMisskeyAchievementsTypesUkUa types_ = _TranslationsMisskeyAchievementsTypesUkUa._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleUkUa extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Нова роль';
	@override String get edit => 'Змінити роль';
	@override String get name => 'Назва ролі';
	@override String get description => 'Опис ролі';
	@override String get permission => 'Права ролі';
	@override String get assignTarget => 'Призначити';
	@override String get manual => 'Вручну';
	@override String get priority => 'Пріоритет';
	@override late final _TranslationsMisskeyRolePriorityUkUa priority_ = _TranslationsMisskeyRolePriorityUkUa._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionUkUa extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get sensitivity => 'Чутливість детектування';
	@override String get setSensitiveFlagAutomatically => 'Позначити як NSFW';
	@override String get analyzeVideos => 'Увімкнути аналіз відео';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableUkUa extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get used => 'Ця email адреса вже використовується';
	@override String get format => 'Невірний формат';
	@override String get disposable => 'Одноразові email-адреси використовувати не можна';
	@override String get mx => 'Цей email сервер недійсний';
	@override String get smtp => 'Цей email-сервер не відповідає';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityUkUa extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get public => 'Опублікувати';
	@override String get followers => 'Видно лише підписникам';
	@override String get private => 'Приватне';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupUkUa extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Майже готово';
	@override String get emailAddressInfo => 'Будь ласка, введіть вашу email-адресу. Вона не буде оприлюднена.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteUkUa extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Видалити акаунт';
	@override String get requestAccountDelete => 'Запит на видалення акаунту';
	@override String get started => 'Видалення розпочато.';
	@override String get inProgress => 'Наразі триває видалення';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdUkUa extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get back => 'Назад';
	@override String get reduceFrequencyOfThisAd => 'Показувати цю рекламу менше';
	@override String get hide => 'Не відображати';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryUkUa extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get my => 'Моя галерея';
	@override String get liked => 'Вподобане';
	@override String get like => 'Вподобати';
	@override String get unlike => 'Не вподобати';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailUkUa extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowUkUa follow_ = _TranslationsMisskeyEmailFollowUkUa._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestUkUa receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestUkUa._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginUkUa extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get install => 'Встановити плагін';
	@override String get installWarn => 'Будь ласка, не встановлюйте плагінів, яким ви не довіряєте.';
	@override String get manage => 'Керування плагінами';
	@override String get viewSource => 'Переглянути вихідний код';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsUkUa extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyRegistryUkUa extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Область дії';
	@override String get key => 'Ключ';
	@override String get keys => 'Ключі';
	@override String get domain => 'Домен';
	@override String get createKey => 'Створити ключ';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyUkUa extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyInstanceTickerUkUa extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get none => 'Не відображати';
	@override String get remote => 'Відображати для віддалених користувачів';
	@override String get always => 'Відображати завжди';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorUkUa extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Автоматично перезавантажити';
	@override String get dialog => 'Показати діалогове вікно';
	@override String get quiet => 'Показати ненав’язливе попередження';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelUkUa extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyMenuDisplayUkUa extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Збоку';
	@override String get sideIcon => 'Збоку (значки)';
	@override String get top => 'Зверху';
	@override String get hide => 'Сховати';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteUkUa extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Заглушені слова';
	@override String get muteWordsDescription => 'Розділення ключових слів пробілами для "І" або з нової лінійки для "АБО"';
	@override String get muteWordsDescription2 => 'Для використання RegEx, ключові слова потрібно вписати поміж слешів "/".';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteUkUa extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription2 => 'Розділяйте новими рядками';
	@override String get title => 'Приховує нотатки з перелічених інстансів.';
	@override String get heading => 'Список заглушених інстансів';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeUkUa extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsMisskeyThemeKeysUkUa keys = _TranslationsMisskeyThemeKeysUkUa._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxUkUa extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get note => 'Нотатки';
	@override String get noteMy => 'Мої нотатки';
	@override String get notification => 'Сповіщення';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoUkUa extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyTimeUkUa extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get second => 'с';
	@override String get minute => 'х';
	@override String get hour => 'г';
	@override String get day => 'д';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faUkUa extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyPermissionsUkUa extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyAuthUkUa extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String shareAccess({required Object name}) => 'Ви хочете надати "${name}" доступ до цього акаунту?';
	@override String get shareAccessAsk => 'Ви впевнені, що хочете надати цій програмі доступ до вашого акаунту?';
	@override String get denied => 'У доступі відмовлено';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesUkUa extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get all => 'Всі нотатки';
	@override String get homeTimeline => 'Нотатки тих, на кого ви підписані';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayUkUa extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyWidgetsUkUa extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsMisskeyWidgetsUserListUkUa userList_ = _TranslationsMisskeyWidgetsUserListUkUa._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwUkUa extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Сховати';
	@override String get show => 'Показати більше';
	@override String chars({required Object count}) => '${count} символів';
	@override String files({required Object count}) => '${count} файлів';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollUkUa extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyVisibilityUkUa extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyPostFormUkUa extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Відповідь на цю нотатку...';
	@override String get quotePlaceholder => 'Прокоментуйте цю нотатку...';
	@override String get channelPlaceholder => 'Опублікувати в каналі';
	@override late final _TranslationsMisskeyPostFormPlaceholdersUkUa placeholders_ = _TranslationsMisskeyPostFormPlaceholdersUkUa._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileUkUa extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyExportOrImportUkUa extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyChartsUkUa extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyInstanceChartsUkUa extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyTimelinesUkUa extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get home => 'Домівка';
	@override String get local => 'Локальна';
	@override String get social => 'Соціальна';
	@override String get global => 'Глобальна';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayUkUa extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get viewSource => 'Переглянути вихідний код';
	@override String get featured => 'Популярні';
	@override String get title => 'Заголовок';
	@override String get script => 'Скрипт';
	@override String get summary => 'Опис';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesUkUa extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsMisskeyPagesBlocksUkUa blocks = _TranslationsMisskeyPagesBlocksUkUa._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusUkUa extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'Очікує затвердження';
	@override String get accepted => 'Затверджено';
	@override String get rejected => 'Відхилено';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationUkUa extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsMisskeyNotificationTypesUkUa types_ = _TranslationsMisskeyNotificationTypesUkUa._(_root);
	@override late final _TranslationsMisskeyNotificationActionsUkUa actions_ = _TranslationsMisskeyNotificationActionsUkUa._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckUkUa extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsMisskeyDeckColumnsUkUa columns_ = _TranslationsMisskeyDeckColumnsUkUa._(_root);
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsUkUa extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ім\'я';
	@override String get active => 'Увімкнено';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportUkUa extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientUkUa notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientUkUa._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesUkUa extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Призупинити';
	@override String get resetPassword => 'Скинути пароль';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiUkUa extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get total => 'Всього';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsUkUa extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectUkUa noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectUkUa._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchUkUa extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Всі';
	@override String get searchScopeLocal => 'Локальна';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorUkUa extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'Непрозорість';
	@override String get scale => 'Розмір';
	@override String get text => 'Текст';
	@override String get type => 'Тип';
	@override String get image => 'Зображення';
	@override String get advanced => 'Розширені';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorUkUa extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsUkUa fxProps_ = _TranslationsMisskeyImageEffectorFxPropsUkUa._(_root);
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeUkUa extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get none => 'Публікація';
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesUkUa extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1UkUa notes1_ = _TranslationsMisskeyAchievementsTypesNotes1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10UkUa notes10_ = _TranslationsMisskeyAchievementsTypesNotes10UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100UkUa notes100_ = _TranslationsMisskeyAchievementsTypesNotes100UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500UkUa notes500_ = _TranslationsMisskeyAchievementsTypesNotes500UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000UkUa notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000UkUa notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000UkUa notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000UkUa notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000UkUa notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000UkUa notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000UkUa notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000UkUa notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000UkUa notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000UkUa notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000UkUa notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000UkUa notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3UkUa login3_ = _TranslationsMisskeyAchievementsTypesLogin3UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7UkUa login7_ = _TranslationsMisskeyAchievementsTypesLogin7UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15UkUa login15_ = _TranslationsMisskeyAchievementsTypesLogin15UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30UkUa login30_ = _TranslationsMisskeyAchievementsTypesLogin30UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60UkUa login60_ = _TranslationsMisskeyAchievementsTypesLogin60UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100UkUa login100_ = _TranslationsMisskeyAchievementsTypesLogin100UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200UkUa login200_ = _TranslationsMisskeyAchievementsTypesLogin200UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300UkUa login300_ = _TranslationsMisskeyAchievementsTypesLogin300UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400UkUa login400_ = _TranslationsMisskeyAchievementsTypesLogin400UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500UkUa login500_ = _TranslationsMisskeyAchievementsTypesLogin500UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600UkUa login600_ = _TranslationsMisskeyAchievementsTypesLogin600UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700UkUa login700_ = _TranslationsMisskeyAchievementsTypesLogin700UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800UkUa login800_ = _TranslationsMisskeyAchievementsTypesLogin800UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900UkUa login900_ = _TranslationsMisskeyAchievementsTypesLogin900UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000UkUa login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1UkUa noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1UkUa noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1UkUa myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledUkUa profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatUkUa markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1UkUa following1_ = _TranslationsMisskeyAchievementsTypesFollowing1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10UkUa following10_ = _TranslationsMisskeyAchievementsTypesFollowing10UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50UkUa following50_ = _TranslationsMisskeyAchievementsTypesFollowing50UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100UkUa following100_ = _TranslationsMisskeyAchievementsTypesFollowing100UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300UkUa following300_ = _TranslationsMisskeyAchievementsTypesFollowing300UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1UkUa followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10UkUa followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50UkUa followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100UkUa followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300UkUa followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500UkUa followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000UkUa followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30UkUa collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minUkUa viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyUkUa iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureUkUa foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minUkUa client30min_ = _TranslationsMisskeyAchievementsTypesClient30minUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minUkUa noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightUkUa postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secUkUa postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteUkUa selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmUkUa htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartUkUa viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadUkUa outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadUkUa reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereUkUa clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyUkUa justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloUkUa setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1UkUa passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2UkUa passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3UkUa passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3UkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayUkUa loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayUkUa loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedUkUa cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedUkUa._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverUkUa brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverUkUa._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityUkUa extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get low => 'Низький';
	@override String get middle => 'Середній';
	@override String get high => 'Високий';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowUkUa extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новий підписник';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestUkUa extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отримано запит на підписку';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysUkUa extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyWidgetsUserListUkUa extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Виберіть список';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersUkUa extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyPagesBlocksUkUa extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get text => 'Текст';
	@override String get textarea => 'Текстова область';
	@override String get section => 'Розділ';
	@override String get image => 'Зображення';
	@override String get button => 'Кнопка';
	@override String get note => 'Вбудована нотатка';
	@override late final _TranslationsMisskeyPagesBlocksNoteUkUa note_ = _TranslationsMisskeyPagesBlocksNoteUkUa._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesUkUa extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyNotificationActionsUkUa extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get reply => 'Відповісти';
	@override String get renote => 'Поширити';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsUkUa extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

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
class _TranslationsMisskeyAbuseReportNotificationRecipientUkUa extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeUkUa recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeUkUa._(_root);
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectUkUa extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не знайдено';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsUkUa extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get scale => 'Розмір';
	@override String get size => 'Розмір';
	@override String get color => 'Колір';
	@override String get opacity => 'Непрозорість';
	@override String get lightness => 'Яскравість';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1UkUa extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Привіт, Misskey!';
	@override String get description => 'Перша нотатка';
	@override String get flavor => 'Приємного часу з Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10UkUa extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Декілька нотаток';
	@override String get description => '10 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100UkUa extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Купа нотаток';
	@override String get description => '100 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500UkUa extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Все в нотатках';
	@override String get description => '500 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000UkUa extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Гора нотаток';
	@override String get description => '1 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000UkUa extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Переповнюючі нотатки';
	@override String get description => '5 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000UkUa extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Супернотатка';
	@override String get description => '10 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000UkUa extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Треба Більше Нотаток';
	@override String get description => '20 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000UkUa extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нотатки нотатки нотатки';
	@override String get description => '30 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000UkUa extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Фабрика нотаток';
	@override String get description => '40 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000UkUa extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Планета нотаток';
	@override String get description => '50 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000UkUa extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нотатковий квазар';
	@override String get description => '60 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000UkUa extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чорна нотаткова діра';
	@override String get description => '70 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000UkUa extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Галактика нотаток';
	@override String get description => '80 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000UkUa extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нотатковерс';
	@override String get description => '90 000 нотаток відправлено';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000UkUa extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => '100 000 нотаток відправлено';
	@override String get flavor => 'Так багато потрібно сказати?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3UkUa extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новачок I';
	@override String get description => '3 дні користування загально';
	@override String get flavor => 'Відсьогодні називайте мене "Місскіст"';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7UkUa extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новачок II';
	@override String get description => '7 днів користування загально';
	@override String get flavor => 'Ви звикли до цього?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15UkUa extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новачок III';
	@override String get description => '15 днів користування загально';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30UkUa extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Міскієць I';
	@override String get description => '30 днів користування загально';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60UkUa extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Міскієць II';
	@override String get description => '60 днів користування загально';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100UkUa extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Міскієць III';
	@override String get description => '100 днів користування загально';
	@override String get flavor => 'Цей юзер лютий місскіст';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200UkUa extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсідник I';
	@override String get description => '200 днів користування загально';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300UkUa extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсідник II';
	@override String get description => '300 днів користування загально';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400UkUa extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсідник III';
	@override String get description => '400 днів користування загально';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500UkUa extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран I';
	@override String get description => '500 днів користування загально';
	@override String get flavor => 'Meine Kameraden, ich liebe sie, die Notizen.';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600UkUa extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран II';
	@override String get description => '600 днів користування загально';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700UkUa extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран III';
	@override String get description => '700 днів користування загально';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800UkUa extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Майстер нотаток I';
	@override String get description => '800 днів користування загально';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900UkUa extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Майстер нотаток II';
	@override String get description => '900 днів користування загально';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000UkUa extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Майстер нотаток III';
	@override String get description => '1000 днів користування загально';
	@override String get flavor => 'Дякуємо, що користуєтеся Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1UkUa extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не можна не зберегти';
	@override String get description => 'Перша нотатка у добірці';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1UkUa extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Дивитися на зірки';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1UkUa extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'У пошуках зірок';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledUkUa extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Повна готовність';
	@override String get description => 'Профіль заповнено';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatUkUa extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Я кіт';
	@override String get description => 'Позначено як акаунт кота';
	@override String get flavor => 'Я дам тобі ім\'я пізніше';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1UkUa extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перша підписка';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10UkUa extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Продовжуй, продовжуй';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50UkUa extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Багато друзів';
	@override String get description => 'Кількість підписок сягнула 50';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100UkUa extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => '100 друзів';
	@override String get description => 'Кількість підписок сягнула 100';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300UkUa extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Надлишок друзів';
	@override String get description => 'Кількість підписок сягнула 300';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1UkUa extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перший підписник';
	@override String get description => 'З\'явився перший підписник';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10UkUa extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Follow me!';
	@override String get description => 'Кількість підписників досягла 10';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50UkUa extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get description => 'Кількість підписників досягла 50';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100UkUa extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Популярна особа';
	@override String get description => 'Кількість підписників досягла 100';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300UkUa extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ставайте в чергу';
	@override String get description => 'Кількість підписників досягла 300';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500UkUa extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Радіовежа';
	@override String get description => 'Кількість підписників досягла 500';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000UkUa extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Інфлюенсер';
	@override String get description => 'Кількість підписників досягла 1000';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30UkUa extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Збирач досягнень';
	@override String get description => 'Отримано 30 досягнень';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minUkUa extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Шанувальник досягнень';
	@override String get description => 'Переглядати список досягнень принаймні 3 хвилини';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyUkUa extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'I Love Misskey';
	@override String get description => 'Відправлено "I ❤ #Misskey"';
	@override String get flavor => 'Дякуємо вам, що користуєтесь Misskey!  – команда розробників';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureUkUa extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Пошуки скарбів';
	@override String get description => 'Ви знайшли прихований скарб';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minUkUa extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Коротка перерва';
	@override String get description => 'З моменту запуску клієнта минуло 30 хвилин';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minUkUa extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не зважай';
	@override String get description => 'Допис видалено протягом 1 хвилини після публікації';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightUkUa extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нічне життя';
	@override String get description => 'Відправити нотатку посеред ночі';
	@override String get flavor => 'Час лягати спати';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secUkUa extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сигнал часу';
	@override String get description => 'Відправити нотатку о 00:00';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteUkUa extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Самопосилання';
	@override String get description => 'Процитувати власну нотатку';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmUkUa extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Плинна стрічка';
	@override String get description => 'Перевищити швидкість домашньої стрічки 20npm (нотаток на хвилину)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartUkUa extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналітик';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadUkUa extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hello, world!';
	@override String get description => 'Вивести "hello world" у Скретчпаді';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadUkUa extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Прочитали як слід?';
	@override String get description => 'Реакція на нотатку, що містить понад 100 символів, протягом 3 секунд після її публікації';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereUkUa extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Натисніть тут';
	@override String get description => 'Натиснуто тут';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyUkUa extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Просто вдача';
	@override String get description => 'Можна отримати з ймовірністю 0,01% кожні 10 секунд';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloUkUa extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Комплекс бога';
	@override String get description => 'Встановлено ім\'я "syuilo"';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1UkUa extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перша річниця';
	@override String get description => 'Минув рік з моменту створення акаунта';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2UkUa extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Друга річниця';
	@override String get description => 'Минуло 2 роки з моменту створення акаунта';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3UkUa extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3UkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Третя річниця';
	@override String get description => 'Минуло 3 роки з моменту створення акаунта';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayUkUa extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'З Днем народження!';
	@override String get description => 'Увійти у свій день народження';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayUkUa extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'З Новим роком!';
	@override String get description => 'Увійшли в перший день року';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedUkUa extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get flavor => 'Чекайте, це вірний сайт?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverUkUa extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Відправити посилання на "Brain Diver"';
	@override String get flavor => 'Misskey-Misskey La-Tu-Ma';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteUkUa extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get id => 'Ідентифікатор нотатки';
	@override String get idDescription => 'Також можна вказати посилання на нотатку';
	@override String get detailed => 'Детальний вигляд';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeUkUa extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeUkUa._(TranslationsUkUa root) : this._root = root, super.internal(root);

	final TranslationsUkUa _root; // ignore: unused_field

	// Translations
	@override String get mail => 'E-mail';
}
