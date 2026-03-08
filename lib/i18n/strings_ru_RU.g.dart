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
class TranslationsRuRu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRuRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ruRu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ru-RU>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsRuRu _root = this; // ignore: unused_field

	@override 
	TranslationsRuRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRuRu(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAriaRuRu aria = _TranslationsAriaRuRu._(_root);
	@override late final _TranslationsMisskeyRuRu misskey = _TranslationsMisskeyRuRu._(_root);
}

// Path: aria
class _TranslationsAriaRuRu extends TranslationsAriaEnUs {
	_TranslationsAriaRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override TextSpan followConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Подписаться на '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan i18nInfo({required InlineSpan link}) => TextSpan(children: [
		const TextSpan(text: 'Aria переводят на разные языки добровольцы со всего света. Ваша помощь тоже пригодится здесь: '),
		link,
		const TextSpan(text: '.'),
	]);
	@override TextSpan onlineUsersCount({required InlineSpan n}) => TextSpan(children: [
		const TextSpan(text: 'Пользователей сейчас в сети: '),
		n,
	]);
	@override TextSpan renotedBy({required InlineSpan user}) => TextSpan(children: [
		user,
		const TextSpan(text: ' делает репост'),
	]);
	@override TextSpan unfollowConfirm({required InlineSpan name}) => TextSpan(children: [
		const TextSpan(text: 'Удалить из подписок пользователя '),
		name,
		const TextSpan(text: '?'),
	]);
	@override TextSpan userSaysSomething({required InlineSpan name}) => TextSpan(children: [
		name,
		const TextSpan(text: ' что-то сообщает'),
	]);
}

// Path: misskey
class _TranslationsMisskeyRuRu extends TranslationsMisskeyEnUs {
	_TranslationsMisskeyRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get lang__ => 'Русский';
	@override String get headlineMisskey => 'Сеть, сплетённая из заметок';
	@override String get introMisskey => 'Добро пожаловать! Misskey — это децентрализованный сервис микроблогов с открытым исходным кодом.\nПишите «заметки» — делитесь со всеми происходящим вокруг или рассказывайте о себе 📡\nСтавьте «реакции» — выражайте свои чувства и эмоции от заметок других 👍\nОткройте для себя новый мир 🚀';
	@override String poweredByMisskeyDescription({required Object name}) => '${name} – один из инстансов (также называемый экземпляром Misskey), использующий платформу с открытым исходным кодом <b>Misskey</b>.';
	@override String monthAndDay({required Object day, required Object month}) => '${day}.${month}';
	@override String get search => 'Поиск';
	@override String get reset => 'Сброс';
	@override String get notifications => 'Уведомления';
	@override String get username => 'Имя пользователя';
	@override String get password => 'Пароль';
	@override String get initialPasswordForSetup => 'Пароль для начала настройки';
	@override String get initialPasswordIsIncorrect => 'Пароль для запуска настройки неверен';
	@override String get initialPasswordForSetupDescription => 'Если вы установили Misskey самостоятельно, используйте пароль, который вы указали в файле конфигурации.\nЕсли вы используете что-то вроде хостинга Misskey, используйте предоставленный пароль.\nЕсли вы не установили пароль, оставьте его пустым и продолжайте.';
	@override String get forgotPassword => 'Забыли пароль?';
	@override String get fetchingAsApObject => 'Приём с других сайтов';
	@override String get ok => 'Подтвердить';
	@override String get gotIt => 'Ясно!';
	@override String get cancel => 'Отмена';
	@override String get noThankYou => 'Нет, спасибо';
	@override String get enterUsername => 'Введите имя пользователя';
	@override String renotedBy({required Object user}) => '${user} делает репост';
	@override String get noNotes => 'Нет ни одной заметки';
	@override String get noNotifications => 'Нет уведомлений';
	@override String get instance => 'Экземпляр';
	@override String get settings => 'Настройки';
	@override String get notificationSettings => 'Настройки уведомлений';
	@override String get basicSettings => 'Основные настройки';
	@override String get otherSettings => 'Прочие настройки';
	@override String get openInWindow => 'Открыть в плавающем окне';
	@override String get profile => 'Профиль';
	@override String get timeline => 'Лента';
	@override String get noAccountDescription => 'Пользователь ничего не написал про себя';
	@override String get login => 'Войти';
	@override String get loggingIn => 'Выполняется вход';
	@override String get logout => 'Выйти';
	@override String get signup => 'Регистрация';
	@override String get uploading => 'Загрузка...';
	@override String get save => 'Сохранить';
	@override String get users => 'Пользователи';
	@override String get addUser => 'Добавить пользователя';
	@override String get favorite => 'В избранное';
	@override String get favorites => 'Избранное';
	@override String get unfavorite => 'Убрать из избранного';
	@override String get favorited => 'Добавлено в избранное.';
	@override String get alreadyFavorited => 'Уже есть в избранном.';
	@override String get cantFavorite => 'Не удалось добавить в избранное.';
	@override String get pin => 'Закрепить в профиле';
	@override String get unpin => 'Открепить от профиля';
	@override String get copyContent => 'Скопировать содержимое';
	@override String get copyLink => 'Скопировать ссылку';
	@override String get copyRemoteLink => 'Скопировать ссылку на репост';
	@override String get copyLinkRenote => 'Скопировать ссылку на репост';
	@override String get delete => 'Удалить';
	@override String get deleteAndEdit => 'Удалить и отредактировать';
	@override String get deleteAndEditConfirm => 'Удалить этот пост и отредактировать заново? Все реакции, репосты и ответы на него также будут удалены.';
	@override String get addToList => 'Добавить в список';
	@override String get addToAntenna => 'Добавить к антенне';
	@override String get sendMessage => 'Отправить сообщение';
	@override String get copyRSS => 'Скопировать RSS';
	@override String get copyUsername => 'Скопировать имя пользователя';
	@override String get copyUserId => 'Скопировать ID пользователя';
	@override String get copyNoteId => 'Скопировать ID поста';
	@override String get copyFileId => 'Скопировать ID файла';
	@override String get copyFolderId => 'Скопировать ID папки';
	@override String get copyProfileUrl => 'Скопировать ссылку на профиль';
	@override String get searchUser => 'Поиск людей';
	@override String get searchThisUsersNotes => 'Искать по заметкам пользователя';
	@override String get reply => 'Ответ';
	@override String get loadMore => 'Загрузить ещё';
	@override String get showMore => 'Показать ещё';
	@override String get showLess => 'Закрыть';
	@override String get youGotNewFollower => 'Новый подписчик';
	@override String get receiveFollowRequest => 'Получен запрос на подписку';
	@override String get followRequestAccepted => 'Запрос на подписку принят';
	@override String get mention => 'Упоминание';
	@override String get mentions => 'Упоминания';
	@override String get directNotes => 'Личные сообщения';
	@override String get importAndExport => 'Импорт и экспорт';
	@override String get import => 'Импорт';
	@override String get export => 'Экспорт';
	@override String get files => 'Файлы';
	@override String get download => 'Скачать';
	@override String driveFileDeleteConfirm({required Object name}) => 'Удалить файл «${name}»? Заметки с ним также будут удалены.';
	@override String unfollowConfirm({required Object name}) => 'Отписаться от ${name} ?';
	@override String cancelFollowRequestConfirm({required Object name}) => 'Вы уверены, что хотите отменить запрос на подписку пользователю ${name}?';
	@override String rejectFollowRequestConfirm({required Object name}) => 'Отклонить запрос на подписку от ${name}?';
	@override String get exportRequested => 'Вы запросили экспорт. Это может занять некоторое время. Результат будет добавлен на «Диск».';
	@override String get importRequested => 'Вы запросили импорт. Это может занять некоторое время.';
	@override String get lists => 'Списки';
	@override String get noLists => 'Нет ни одного списка';
	@override String get note => 'Пост';
	@override String get notes => 'Заметки';
	@override String get following => 'Подписки';
	@override String get followers => 'Подписчики';
	@override String get followsYou => 'Читает вас';
	@override String get createList => 'Создать список';
	@override String get manageLists => 'Управление списками';
	@override String get error => 'Ошибка';
	@override String get somethingHappened => 'Что-то пошло не так';
	@override String get retry => 'Повторить попытку';
	@override String get pageLoadError => 'Не удалось загрузить страницу';
	@override String get pageLoadErrorDescription => 'Обычно это случается из-за сбоев в сети или кэша браузера. Попробуйте очистить кэш, или подождать пару минут, а потом попытаться загрузить страницу снова.';
	@override String get serverIsDead => 'Ответа от сервера нет. Пожалуйста, подождите немного и повторите попытку.';
	@override String get youShouldUpgradeClient => 'Чтобы просмотреть эту страницу, пожалуйста, обновите ее.';
	@override String get enterListName => 'Название списка';
	@override String get privacy => 'Конфиденциальность';
	@override String get makeFollowManuallyApprove => 'Принимать подписчиков вручную';
	@override String get defaultNoteVisibility => 'Видимость заметок по умолчанию';
	@override String get follow => 'Подписка';
	@override String get followRequest => 'Запрос на подписку';
	@override String get followRequests => 'Запросы на подписку';
	@override String get unfollow => 'Отписаться';
	@override String get followRequestPending => 'Нерассмотренный запрос на подписку';
	@override String get enterEmoji => 'Введите эмодзи';
	@override String get renote => 'Репост';
	@override String get unrenote => 'Отмена репоста';
	@override String get renoted => 'Репост совершён.';
	@override String renotedToX({required Object name}) => 'Репостнуть в ${name}.';
	@override String get cantRenote => 'Это нельзя репостить.';
	@override String get cantReRenote => 'Невозможно репостить репост.';
	@override String get quote => 'Цитата';
	@override String get inChannelRenote => 'В канале';
	@override String get inChannelQuote => 'Заметки в канале';
	@override String get renoteToChannel => 'Репостнуть в канал';
	@override String get renoteToOtherChannel => 'Репостнуть в другой канал';
	@override String get pinnedNote => 'Закреплённый пост';
	@override String get pinned => 'Закрепить в профиле';
	@override String get you => 'Вы';
	@override String get clickToShow => 'Нажмите для просмотра';
	@override String get sensitive => 'Содержимое не для всех';
	@override String get add => 'Добавить';
	@override String get reaction => 'Реакции';
	@override String get reactions => 'Реакции';
	@override String get emojiPicker => 'Палитра эмодзи';
	@override String get pinnedEmojisForReactionSettingDescription => 'Здесь можно закрепить эмодзи для реакций';
	@override String get pinnedEmojisSettingDescription => 'Здесь можно закрепить эмодзи в общей палитре';
	@override String get emojiPickerDisplay => 'Внешний вид палитры';
	@override String get overwriteFromPinnedEmojisForReaction => 'Заменить на эмодзи из списка реакций';
	@override String get overwriteFromPinnedEmojis => 'Заменить на эмодзи из общего списка закреплённых';
	@override String get reactionSettingDescription2 => 'Расставляйте перетаскиванием, удаляйте нажатием, добавляйте кнопкой «+».';
	@override String get rememberNoteVisibility => 'Запоминать видимость заметок';
	@override String get attachCancel => 'Удалить вложение';
	@override String get deleteFile => 'Удалить файл';
	@override String get markAsSensitive => 'Отметить как «не для всех»';
	@override String get unmarkAsSensitive => 'Снять отметку «не для всех»';
	@override String get enterFileName => 'Введите имя файла';
	@override String get mute => 'Скрыть';
	@override String get unmute => 'Отменить скрытие';
	@override String get renoteMute => 'Скрыть репосты';
	@override String get renoteUnmute => 'Открыть репосты';
	@override String get block => 'Заблокировать';
	@override String get unblock => 'Разблокировать';
	@override String get suspend => 'Заморозить';
	@override String get unsuspend => 'Разморозить';
	@override String get blockConfirm => 'Заблокировать этот аккаунт?';
	@override String get unblockConfirm => 'Разблокировать этот аккаунт?';
	@override String get suspendConfirm => 'Заморозить этот аккаунт?';
	@override String get unsuspendConfirm => 'Разморозить этот аккаунт?';
	@override String get selectList => 'Выберите список';
	@override String get editList => 'Редактировать список';
	@override String get selectChannel => 'Выберите канал';
	@override String get selectAntenna => 'Выберите антенну';
	@override String get editAntenna => 'Редактировать антенну';
	@override String get createAntenna => 'Создать антенну';
	@override String get selectWidget => 'Выберите виджет';
	@override String get editWidgets => 'Редактировать виджеты';
	@override String get editWidgetsExit => 'Готово';
	@override String get customEmojis => 'Собственные эмодзи';
	@override String get emoji => 'Эмодзи';
	@override String get emojis => 'Эмодзи';
	@override String get emojiName => 'Название эмодзи';
	@override String get emojiUrl => 'Ссылка на эмодзи';
	@override String get addEmoji => 'Добавить эмодзи';
	@override String get settingGuide => 'Рекомендуемые настройки';
	@override String get cacheRemoteFiles => 'Кешировать внешние файлы';
	@override String get cacheRemoteFilesDescription => 'Когда эта настройка отключена, файлы с других сайтов будут загружаться прямо оттуда. Это сэкономит место на сервере, но увеличит трафик, так как не будут создаваться эскизы.';
	@override String get youCanCleanRemoteFilesCache => 'Вы можете очистить кэш, нажав на кнопку 🗑️ в меню управления файлами.';
	@override String get cacheRemoteSensitiveFiles => 'Кэшировать внешние файлы «не для всех»';
	@override String get cacheRemoteSensitiveFilesDescription => 'Если отключено, файлы «не для всех» загружаются непосредственно с удалённых серверов, не кэшируясь.';
	@override String get flagAsBot => 'Аккаунт бота';
	@override String get flagAsBotDescription => 'Включите, если этот аккаунт управляется программой. Это позволит системе Misskey учитывать это, а также поможет разработчикам других ботов предотвратить бесконечные циклы взаимодействия.';
	@override String get flagAsCat => 'Аккаунт кота';
	@override String get flagAsCatDescription => 'Включите, и этот аккаунт будет помечен как кошачий.';
	@override String get flagShowTimelineReplies => 'Показывать ответы на заметки в ленте';
	@override String get flagShowTimelineRepliesDescription => 'Если этот параметр включен, то в ленте, в дополнение к заметкам пользователя, отображаются ответы на другие заметки пользователя.';
	@override String get autoAcceptFollowed => 'Принимать подписчиков автоматически';
	@override String get addAccount => 'Добавить учётную запись';
	@override String get reloadAccountsList => 'Обновить список учётных записей';
	@override String get loginFailed => 'Неудачная попытка входа';
	@override String get showOnRemote => 'Перейти к оригиналу на сайт';
	@override String get continueOnRemote => 'Продолжить на удалённом сервере';
	@override String get chooseServerOnMisskeyHub => 'Выбрать сервер с Misskey Hub';
	@override String get specifyServerHost => 'Укажите сервер напрямую';
	@override String get inputHostName => 'Введите домен';
	@override String get general => 'Общее';
	@override String get wallpaper => 'Обои';
	@override String get setWallpaper => 'Установить обои';
	@override String get removeWallpaper => 'Удалить обои';
	@override String searchWith({required Object q}) => 'Найденное «${q}»';
	@override String get youHaveNoLists => 'У вас нет ни одного списка';
	@override String followConfirm({required Object name}) => 'Подписаться на ${name}?';
	@override String get proxyAccount => 'Учётная запись прокси';
	@override String get proxyAccountDescription => 'Учетная запись прокси предназначена служить подписчиком на пользователей с других сайтов. Например: если пользователь добавит кого-то с другого сайта в список, то деятельность того не отобразится, пока никто с этого же сайта не подписан на него. Чтобы это стало возможным, на него подписывается прокси.';
	@override String get host => 'Хост';
	@override String get selectSelf => 'Выбрать себя';
	@override String get selectUser => 'Выберите пользователя';
	@override String get recipient => 'Кому';
	@override String get annotation => 'Описание';
	@override String get federation => 'Федерация';
	@override String get instances => 'Инстанс';
	@override String get registeredAt => 'Первое наблюдение';
	@override String get latestRequestReceivedAt => 'Последний полученный запрос';
	@override String get latestStatus => 'Последний статус';
	@override String get storageUsage => 'Использовано';
	@override String get charts => 'Диаграммы';
	@override String get perHour => 'По часам';
	@override String get perDay => 'По дням';
	@override String get stopActivityDelivery => 'Остановить отправку обновлений активности';
	@override String get blockThisInstance => 'Блокировать этот инстанс';
	@override String get silenceThisInstance => 'Заглушить этот инстанс';
	@override String get mediaSilenceThisInstance => 'Заглушить сервер';
	@override String get operations => 'Операции';
	@override String get software => 'Программы';
	@override String get softwareName => 'Software Name';
	@override String get version => 'Версия';
	@override String get metadata => 'Метаданные';
	@override String withNFiles({required Object n}) => 'Файлы, ${n} шт.';
	@override String get monitor => 'Монитор';
	@override String get jobQueue => 'Очередь заданий';
	@override String get cpuAndMemory => 'Процессор и память';
	@override String get network => 'Сеть';
	@override String get disk => 'Диск';
	@override String get instanceInfo => 'Информация об инстансе';
	@override String get statistics => 'Статистика';
	@override String get clearQueue => 'Очистить очередь';
	@override String get clearQueueConfirmTitle => 'Очистить очередь?';
	@override String get clearQueueConfirmText => 'Всё, что осталось в очереди, не будет доставлено. Обычно эта операция НЕ нужна.';
	@override String get clearCachedFiles => 'Очистить кэш';
	@override String get clearCachedFilesConfirm => 'Удалить все закэшированные файлы с других сайтов?';
	@override String get blockedInstances => 'Заблокированные инстансы';
	@override String get blockedInstancesDescription => 'Введите список инстансов, которые хотите заблокировать. Они больше не смогут обмениваться с вашим инстансом.';
	@override String get silencedInstances => 'Заглушённые инстансы';
	@override String get silencedInstancesDescription => 'Перечислите имена серверов, которые вы хотите отключить, разделив их новой строкой. Все учетные записи, принадлежащие к указанным в списке серверам, будут заблокированы и смогут отправлять запросы только на повторное использование и не смогут указывать локальные учетные записи, если они не будут отслеживаться. Это не повлияет на заблокированные серверы.';
	@override String get mediaSilencedInstances => 'Заглушённые сервера';
	@override String get mediaSilencedInstancesDescription => 'Укажите названия серверов, для которых вы хотите отключить доступ к файлам, по одному серверу в строке. Все учетные записи, принадлежащие к перечисленным серверам, будут считаться конфиденциальными и не смогут использовать пользовательские эмодзи. Это никак не повлияет на заблокированные серверы.';
	@override String get federationAllowedHosts => 'Серверы, поддерживающие федерацию';
	@override String get federationAllowedHostsDescription => 'Укажите имена серверов, для которых вы хотите разрешить объединение, разделив их разделителями строк.';
	@override String get muteAndBlock => 'Скрытие и блокировка';
	@override String get mutedUsers => 'Скрытые пользователи';
	@override String get blockedUsers => 'Заблокированные пользователи';
	@override String get noUsers => 'Нет ни одного пользователя';
	@override String get editProfile => 'Редактировать профиль';
	@override String get noteDeleteConfirm => 'Вы хотите удалить эту заметку?';
	@override String get pinLimitExceeded => 'Нельзя закрепить ещё больше заметок';
	@override String get done => 'Готово';
	@override String get processing => 'Обработка';
	@override String get preprocessing => 'Подготовка...';
	@override String get preview => 'Предпросмотр';
	@override String get default_ => 'По умолчанию';
	@override String defaultValueIs({required Object value}) => 'По умолчанию: ${value}';
	@override String get noCustomEmojis => 'Собственные эмодзи отсутствуют';
	@override String get noJobs => 'Нет заданий';
	@override String get federating => 'Федерируется';
	@override String get blocked => 'Заблокировано';
	@override String get suspended => 'Заморожено';
	@override String get all => 'Все';
	@override String get subscribing => 'Подписка';
	@override String get publishing => 'Публикация';
	@override String get notResponding => 'Нет ответа';
	@override String get instanceFollowing => 'Подписанные на инстансе';
	@override String get instanceFollowers => 'Подписчики инстанса';
	@override String get instanceUsers => 'Пользователи инстанса';
	@override String get changePassword => 'Изменить пароль';
	@override String get security => 'Безопасность';
	@override String get retypedNotMatch => 'Не совпадают';
	@override String get currentPassword => 'Текущий пароль';
	@override String get newPassword => 'Новый пароль';
	@override String get newPasswordRetype => 'Новый пароль (ещё раз)';
	@override String get attachFile => 'Прикрепить файлы';
	@override String get more => 'Ещё!';
	@override String get featured => 'Горячее';
	@override String get usernameOrUserId => 'Имя или идентификатор пользователя';
	@override String get noSuchUser => 'Таких пользователей не найдено';
	@override String get lookup => 'Запрос';
	@override String get announcements => 'Оповещения';
	@override String get imageUrl => 'Ссылка на изображение';
	@override String get remove => 'Удалить';
	@override String get removed => '﻿Удалено';
	@override String removeAreYouSure({required Object x}) => 'Хотите удалить «${x}»?';
	@override String deleteAreYouSure({required Object x}) => 'Хотите удалить «${x}»?';
	@override String get resetAreYouSure => 'На самом деле сбросить?';
	@override String get areYouSure => 'Вы уверены?';
	@override String get saved => 'Сохранено';
	@override String get upload => 'Загрузить';
	@override String get keepOriginalUploading => 'Сохранить исходное изображение';
	@override String get keepOriginalUploadingDescription => 'Сохраняет исходную версию при загрузке изображений. Если выключить, то при загрузке браузер генерирует изображение для публикации.';
	@override String get fromDrive => 'С Диска';
	@override String get fromUrl => 'По ссылке';
	@override String get uploadFromUrl => 'Загрузить по ссылке';
	@override String get uploadFromUrlDescription => 'Ссылка на файл, который хотите загрузить';
	@override String get uploadFromUrlRequested => 'Загрузка выбранного';
	@override String get uploadFromUrlMayTakeTime => 'Загрузка может занять некоторое время.';
	@override String uploadNFiles({required Object n}) => 'Загрузить ${n} файл';
	@override String get explore => 'Обзор';
	@override String get messageRead => 'Прочитали';
	@override String get readAllChatMessages => 'Отметить прочитанным';
	@override String get noMoreHistory => 'История закончилась';
	@override String get startChat => 'Начать чат';
	@override String nUsersRead({required Object n}) => 'Прочитали ${n}';
	@override String agreeTo({required Object x0}) => 'Я соглашаюсь с ${x0}';
	@override String get agree => 'Согласен';
	@override String get agreeBelow => 'Согласен со следующими';
	@override String get basicNotesBeforeCreateAccount => 'Записи, перед созданием аккаунта';
	@override String get termsOfService => 'Условия использования';
	@override String get start => 'Начать';
	@override String get home => 'Главная';
	@override String get remoteUserCaution => 'Это пользователь с другого сайта, поэтому информация может быть неточной.';
	@override String get activity => 'Активность';
	@override String get images => 'Изображения';
	@override String get image => 'Изображения';
	@override String get birthday => 'День рождения';
	@override String yearsOld({required Object age}) => 'Возраст: ${age}';
	@override String get registeredDate => 'Дата регистрации';
	@override String get location => 'Местоположение';
	@override String get theme => 'Тема';
	@override String get themeForLightMode => 'Тема для светлого режима';
	@override String get themeForDarkMode => 'Тема для тёмного режима';
	@override String get light => 'Светлый';
	@override String get dark => 'Тёмный';
	@override String get lightThemes => 'Светлые темы';
	@override String get darkThemes => 'Тёмные темы';
	@override String get syncDeviceDarkMode => 'Синхронизировать с тёмной темой системы';
	@override String switchDarkModeManuallyWhenSyncEnabledConfirm({required Object x}) => 'Включена функция "${x}". Отключить синхронизацию, чтобы переключать режим вручную?';
	@override String get drive => 'Диск';
	@override String get fileName => 'Имя файла';
	@override String get selectFile => 'Выберите файл';
	@override String get selectFiles => 'Выберите файлы';
	@override String get selectFolder => 'Выберите папку';
	@override String get unselectFolder => 'Снять выбор';
	@override String get selectFolders => 'Выберите папки';
	@override String get fileNotSelected => 'Файл не выбран';
	@override String get renameFile => 'Переименовать файл';
	@override String get folderName => 'Имя папки';
	@override String get createFolder => 'Создать папку';
	@override String get renameFolder => 'Переименовать папку';
	@override String get deleteFolder => 'Удалить папку';
	@override String get folder => 'Папка';
	@override String get addFile => 'Добавить файл';
	@override String get showFile => 'Посмотреть файл';
	@override String get emptyDrive => 'Диск пуст';
	@override String get emptyFolder => 'Папка пуста';
	@override String get dropHereToUpload => 'Переместите файл сюда';
	@override String get unableToDelete => 'Удаление невозможно';
	@override String get inputNewFileName => 'Введите имя нового файла';
	@override String get inputNewDescription => 'Введите новую подпись';
	@override String get inputNewFolderName => 'Пожалуйста, введите новое имя папки!';
	@override String get circularReferenceFolder => 'Вы пытаетесь переместить папку внутрь себя.';
	@override String get hasChildFilesOrFolders => 'Эта папка не пуста и не может быть удалена.';
	@override String get copyUrl => 'Копировать ссылку';
	@override String get rename => 'Переименовать';
	@override String get avatar => 'Аватар';
	@override String get banner => 'Шапка';
	@override String get displayOfSensitiveMedia => 'Отображение содержимого не для всех';
	@override String get whenServerDisconnected => 'Когда соединение с сервером потеряно';
	@override String get disconnectedFromServer => 'Разорвано соединение с сервером';
	@override String get reload => 'Перезагрузить';
	@override String get doNothing => 'Ничего не делать';
	@override String get reloadConfirm => 'Перезагрузить ленту?';
	@override String get watch => 'Следить';
	@override String get unwatch => 'Отписаться';
	@override String get accept => 'Принять';
	@override String get reject => 'Отклонить';
	@override String get normal => 'Стабильно';
	@override String get instanceName => 'Название инстанса';
	@override String get instanceDescription => 'Описание инстанса';
	@override String get maintainerName => 'Имя администратора';
	@override String get maintainerEmail => 'Электронная почта администратора';
	@override String get tosUrl => 'Ссылка на пользовательское соглашение';
	@override String get thisYear => 'Этот год';
	@override String get thisMonth => 'Этот месяц';
	@override String get today => 'Этот день';
	@override String dayX({required Object day}) => '${day} день';
	@override String monthX({required Object month}) => '${month} месяц';
	@override String yearX({required Object year}) => '${year} год';
	@override String get pages => 'Страницы';
	@override String get integration => 'Интеграция';
	@override String get connectService => 'Подключиться';
	@override String get disconnectService => 'Отключиться';
	@override String get enableLocalTimeline => 'Включить локальную ленту';
	@override String get enableGlobalTimeline => 'Включить глобальную ленту';
	@override String get disablingTimelinesInfo => 'У администраторов и модераторов есть доступ ко всем лентам, даже если они отключены.';
	@override String get registration => 'Регистрация';
	@override String get invite => 'Пригласить';
	@override String get driveCapacityPerLocalAccount => 'Объём Диска на одного локального пользователя';
	@override String get driveCapacityPerRemoteAccount => 'Объём Диска на одного пользователя с другого экземпляра';
	@override String get inMb => 'В мегабайтах';
	@override String get bannerUrl => 'Ссылка на изображение в шапке';
	@override String get backgroundImageUrl => 'Ссылка на фоновое изображение';
	@override String get basicInfo => 'Общая информация';
	@override String get pinnedUsers => 'Прикреплённый пользователь';
	@override String get pinnedUsersDescription => 'Перечислите по одному имени пользователя в строке. Пользователи, перечисленные здесь, будут привязаны к закладке "Изучение".';
	@override String get pinnedPages => 'Закрепленные страницы';
	@override String get pinnedPagesDescription => 'Если хотите закрепить страницы на главной сайта, сюда можно добавить пути к ним, каждый в отдельной строке.';
	@override String get pinnedClipId => 'Идентификатор закреплённой подборки';
	@override String get pinnedNotes => 'Закреплённый пост';
	@override String get hcaptcha => 'hCaptcha';
	@override String get enableHcaptcha => 'Включить hCaptcha';
	@override String get hcaptchaSiteKey => 'Ключ сайта';
	@override String get hcaptchaSecretKey => 'Секретный ключ';
	@override String get mcaptcha => 'mCaptcha';
	@override String get enableMcaptcha => 'Включить mCaptcha';
	@override String get mcaptchaSiteKey => 'Ключ сайта';
	@override String get mcaptchaSecretKey => 'Секретный ключ';
	@override String get mcaptchaInstanceUrl => 'Ссылка на сервер mCaptcha';
	@override String get recaptcha => 'reCAPTCHA';
	@override String get enableRecaptcha => 'Включить reCAPTCHA';
	@override String get recaptchaSiteKey => 'Ключ сайта';
	@override String get recaptchaSecretKey => 'Секретный ключ';
	@override String get turnstile => 'Сервис Turnstile';
	@override String get enableTurnstile => 'Включить Turnstile';
	@override String get turnstileSiteKey => 'Ключ сайта';
	@override String get turnstileSecretKey => 'Секретный ключ';
	@override String get avoidMultiCaptchaConfirm => 'Несколько способов проверки могут мешать друг другу. Подтвердите, если хотите отключить другие способы. Или нажмите «Отмена», чтобы оставить их включёнными.';
	@override String get antennas => 'Антенны';
	@override String get manageAntennas => 'Настройки антенн';
	@override String get name => 'Название';
	@override String get antennaSource => 'Источник антенны';
	@override String get antennaKeywords => 'Ключевые слова';
	@override String get antennaExcludeKeywords => 'Чёрный список слов';
	@override String get antennaExcludeBots => 'Исключать ботов';
	@override String get antennaKeywordsDescription => 'Пишите слова через пробел в одной строке, чтобы ловить их появление вместе; на отдельных строках располагайте слова, или группы слов, чтобы ловить любые из них.';
	@override String get notifyAntenna => 'Уведомлять о новых заметках';
	@override String get withFileAntenna => 'Только заметки с вложениями';
	@override String get excludeNotesInSensitiveChannel => 'Исключить заметки из конфиденциальных каналов';
	@override String get enableServiceworker => 'Включить ServiceWorker';
	@override String get antennaUsersDescription => 'Пишите каждое название аккаута на отдельной строке';
	@override String get caseSensitive => 'С учётом регистра';
	@override String get withReplies => 'Включая ответы';
	@override String get connectedTo => 'Вы подключены к следующим аккаунтам';
	@override String get notesAndReplies => 'Заметки и ответы';
	@override String get withFiles => 'Заметки с файлами';
	@override String get silence => 'Заглушить';
	@override String get silenceConfirm => ' Заглушить этого пользователя? Уверены?';
	@override String get unsilence => 'Снять глушение';
	@override String get unsilenceConfirm => 'Снять глушение с этого пользователя? Уверены?';
	@override String get popularUsers => 'Популярные пользователи';
	@override String get recentlyUpdatedUsers => 'Активные последнее время';
	@override String get recentlyRegisteredUsers => 'Недавно зарегистрированные пользователи';
	@override String get recentlyDiscoveredUsers => 'Недавно обнаруженные пользователи';
	@override String exploreUsersCount({required Object count}) => 'Пользователей: ${count}';
	@override String get exploreFediverse => 'Исследуйте Fediverse';
	@override String get popularTags => 'Популярные теги';
	@override String get userList => 'Списки';
	@override String get about => 'Описание';
	@override String get aboutMisskey => 'О Misskey';
	@override String get administrator => 'Администратор';
	@override String get token => 'Токен';
	@override String get x2fa => 'Двухфакторная аутентификация';
	@override String get setupOf2fa => 'Настроить двухфакторную аутентификацию';
	@override String get totp => 'Приложение-аутентификатор';
	@override String get totpDescription => 'Описание приложения-аутентификатора';
	@override String get moderator => 'Модератор';
	@override String get moderation => 'Модерация';
	@override String get moderationNote => 'Примечания модератора';
	@override String get moderationNoteDescription => 'Вы можете заполнять заметки, которые будут доступны только модераторам.';
	@override String get addModerationNote => 'Оставить заметку';
	@override String get moderationLogs => 'Журнал модерации';
	@override String nUsersMentioned({required Object n}) => 'Упомянуло пользователей: ${n}';
	@override String get securityKeyAndPasskey => 'Ключ безопасности и парольная фраза';
	@override String get securityKey => 'Ключ безопасности';
	@override String get lastUsed => 'Последнее использование';
	@override String lastUsedAt({required Object t}) => 'Последнее использование: ${t}';
	@override String get unregister => 'Отписаться';
	@override String get passwordLessLogin => 'Настроить вход без пароля';
	@override String get passwordLessLoginDescription => 'Вход без пароля';
	@override String get resetPassword => 'Сброс пароля:';
	@override String newPasswordIs({required Object password}) => 'Новый пароль — «${password}».';
	@override String get reduceUiAnimation => 'Уменьшить анимацию в пользовательском интерфейсе';
	@override String get share => 'Поделиться';
	@override String get notFound => 'Не найдено';
	@override String get notFoundDescription => 'Страница по указанной ссылке не найдена';
	@override String get uploadFolder => 'Место загрузки по умолчанию';
	@override String get markAsReadAllNotifications => 'Отметить все уведомления как прочитанные';
	@override String get markAsReadAllUnreadNotes => 'Отметить все заметки как прочитанные';
	@override String get markAsReadAllTalkMessages => 'Отметить все реплики как прочитанные';
	@override String get help => 'Помощь';
	@override String get inputMessageHere => 'Введите сообщение здесь';
	@override String get close => 'Закрыть';
	@override String get invites => 'Приглашения';
	@override String get members => 'Участники';
	@override String get transfer => 'Отдать';
	@override String get title => 'Заголовок';
	@override String get text => 'Текст';
	@override String get enable => 'Включить';
	@override String get next => 'Дальше';
	@override String get retype => 'Введите ещё раз';
	@override String noteOf({required Object user}) => 'Что пишет ${user}';
	@override String get quoteAttached => 'Цитата';
	@override String get quoteQuestion => 'Хотите добавить цитату?';
	@override String get attachAsFileQuestion => 'Текста в буфере обмена слишком много. Прикрепить как текстовый файл?';
	@override String get onlyOneFileCanBeAttached => 'К сообщению можно прикрепить только один файл';
	@override String get signinRequired => 'Пожалуйста, войдите';
	@override String get signinOrContinueOnRemote => 'Чтобы продолжить, вам необходимо войти в аккаунт на своём сервере или зарегистрироваться / войти в аккаунт на этом.';
	@override String get invitations => 'Приглашения';
	@override String get invitationCode => 'Код приглашения';
	@override String get checking => 'Проверка';
	@override String get available => 'Доступно';
	@override String get unavailable => 'Не доступно';
	@override String get usernameInvalidFormat => 'Можно использовать только латинские буквы (A—Z, a—z), цифры (0—9) и знак подчёркивания (_)';
	@override String get tooShort => 'Слишком короткий';
	@override String get tooLong => 'Слишком длинный';
	@override String get weakPassword => 'Слабый пароль';
	@override String get normalPassword => 'Хороший пароль';
	@override String get strongPassword => 'Надёжный пароль';
	@override String get passwordMatched => 'Совпали';
	@override String get passwordNotMatched => 'Не совпадают';
	@override String signinWith({required Object x}) => 'Использовать ${x} для входа';
	@override String get signinFailed => 'Невозможно войти в систему. Введенное вами имя пользователя или пароль неверны.';
	@override String get or => 'или';
	@override String get language => 'Язык';
	@override String get uiLanguage => 'Язык интерфейса';
	@override String aboutX({required Object x}) => 'Описание ${x}';
	@override String get emojiStyle => 'Стиль эмодзи';
	@override String get native => 'Системные';
	@override String get menuStyle => 'Стиль меню';
	@override String get style => 'Стиль';
	@override String get drawer => 'Панель';
	@override String get popup => 'Всплывающие окна';
	@override String get showNoteActionsOnlyHover => 'Показывать кнопки у заметок только при наведении';
	@override String get showReactionsCount => 'Видеть количество реакций на заметках';
	@override String get noHistory => 'История пока пуста';
	@override String get signinHistory => 'Журнал посещений';
	@override String get enableAdvancedMfm => 'Включить расширенный MFM';
	@override String get enableAnimatedMfm => 'Включить анимированную разметку MFM';
	@override String get doing => 'В процессе';
	@override String get category => 'Категория';
	@override String get tags => 'Метки';
	@override String get docSource => 'Источник документа';
	@override String get createAccount => 'Новая учётная запись';
	@override String get existingAccount => 'Существующая учётная запись';
	@override String get regenerate => 'Создать повторно';
	@override String get fontSize => 'Размер шрифта';
	@override String get mediaListWithOneImageAppearance => 'Вид изображения, если оно единственное в списке';
	@override String limitTo({required Object x}) => 'Ограничить до ${x}';
	@override String get noFollowRequests => 'Нерассмотренные запросы на подписку отсутствуют';
	@override String get openImageInNewTab => 'Открыть изображение в новой вкладке';
	@override String get dashboard => 'Панель управления';
	@override String get local => 'С этого сайта';
	@override String get remote => 'С других сайтов';
	@override String get total => 'Всего';
	@override String get weekOverWeekChanges => 'За неделю';
	@override String get dayOverDayChanges => 'За день';
	@override String get appearance => 'Внешний вид';
	@override String get clientSettings => 'Настройки клиента';
	@override String get accountSettings => 'Настройки учетной записи';
	@override String get promotion => 'Продвинуто';
	@override String get promote => 'Продвинуть';
	@override String get numberOfDays => 'Количество дней';
	@override String get hideThisNote => 'Спрятать эту запись';
	@override String get showFeaturedNotesInTimeline => 'Показывать в ленте заметки из «Горячего»';
	@override String get objectStorage => 'Хранилище';
	@override String get useObjectStorage => 'Занято в хранилище';
	@override String get objectStorageBaseUrl => 'Базовый адрес';
	@override String get objectStorageBaseUrlDesc => 'Это начальная часть адреса, используемого CDN или прокси, например для S3: https://<bucket>.s3.amazonaws.com, или дя GCS: \'https://storage.googleapis.com/<bucket>\'';
	@override String get objectStorageBucket => 'Bucket';
	@override String get objectStorageBucketDesc => 'Укажите название контейнера (Bucket) который используется на выбранном сервисе.';
	@override String get objectStoragePrefix => 'Префикс';
	@override String get objectStoragePrefixDesc => 'Файлы будут храниться в директории, соответствующей указанному здесь префиксу пути';
	@override String get objectStorageEndpoint => 'Конечная точка';
	@override String get objectStorageEndpointDesc => 'Если используете AWS S3, оставьте пустым. В остальных случаях укажите конечную точку (endpoint) в форме «<host>» или «<host>:<port>», так, как это описано в руководстве той службы, которую собираетесь использовать.';
	@override String get objectStorageRegion => 'Регион';
	@override String get objectStorageRegionDesc => 'Укажите регион, например xx-east-1. Если ваша служба не различает регионы, оставьте поле пустым, или впишите us-east-1.';
	@override String get objectStorageUseSSL => 'Использовать SSL';
	@override String get objectStorageUseSSLDesc => 'Отключите, если не собираетесь использовать протокол HTTPS для обмена по API.';
	@override String get objectStorageUseProxy => 'Использовать прокси';
	@override String get objectStorageUseProxyDesc => 'Отключите, если не будете испоьзовать прокси для соединений по протоколу ObjectStorage.';
	@override String get objectStorageSetPublicRead => 'Устанавливать public-read при загрузке на сервер';
	@override String get s3ForcePathStyleDesc => 'Включение s3ForcePathStyle приводит к тому, что имя корзины указывается как часть пути в URL, а не в имени хоста. Может потребоваться включить при использовании локального Minio или чего-то подобного.';
	@override String get serverLogs => 'Журнал сервера';
	@override String get deleteAll => 'Удалить всё';
	@override String get showFixedPostForm => 'Показывать поле для ввода новой заметки наверху ленты';
	@override String get showFixedPostFormInChannel => 'Показывать поле для ввода новой заметки наверху ленты (каналы)';
	@override String get withRepliesByDefaultForNewlyFollowed => 'По умолчанию включайте ответы новых пользователей, на которых вы подписались, во временную шкалу';
	@override String get newNoteRecived => 'Появилась новая заметка';
	@override String get newNote => 'Новая заметка';
	@override String get sounds => 'Звуки';
	@override String get sound => 'Звуки';
	@override String get notificationSoundSettings => 'Настройки звука уведомлений';
	@override String get listen => 'Слушать';
	@override String get none => 'Ничего';
	@override String get showInPage => 'Показать страницу';
	@override String get popout => 'Развернуть';
	@override String get volume => 'Громкость';
	@override String get masterVolume => 'Основная регулировка громкости';
	@override String get notUseSound => 'Выключить звук';
	@override String get useSoundOnlyWhenActive => 'Воспроизводить звук только когда Misskey активен.';
	@override String get details => 'Подробнее';
	@override String get renoteDetails => 'Узнать больше';
	@override String get chooseEmoji => 'Выберите эмодзи';
	@override String get unableToProcess => 'Не удаётся завершить операцию';
	@override String get recentUsed => 'Последние использованные';
	@override String get install => 'Установить';
	@override String get uninstall => 'Удалить';
	@override String get installedApps => 'Установленные приложения';
	@override String get nothing => 'Ничего нет';
	@override String get installedDate => 'Дата установки';
	@override String get lastUsedDate => 'Дата использования';
	@override String get state => 'Состояние';
	@override String get sort => 'Сортировать';
	@override String get ascendingOrder => 'По возрастанию';
	@override String get descendingOrder => 'По убыванию';
	@override String get scratchpad => 'Когтеточка';
	@override String get scratchpadDescription => '«Когтеточка» — это место для опытов с AiScript. Здесь можно писать программы, взаимодействующие с Misskey, запускать и смотреть что из этого получается.';
	@override String get uiInspector => 'Средство проверки пользовательского интерфейса';
	@override String get uiInspectorDescription => 'Вы можете просмотреть список экземпляров компонентов пользовательского интерфейса, существующих в памяти.  Элементы пользовательского интерфейса генерируются с помощью серии функций Ui:C:.';
	@override String get output => 'Выходы';
	@override String get script => 'Скрипт';
	@override String get disablePagesScript => 'Отключить скрипты на «Страницах»';
	@override String get updateRemoteUser => 'Обновить данные пользователя с его сервера';
	@override String get unsetUserAvatar => 'Убрать аватар';
	@override String get unsetUserAvatarConfirm => 'Вы точно хотите убрать аватар?';
	@override String get unsetUserBanner => 'Убрать баннер';
	@override String get unsetUserBannerConfirm => 'Вы точно хотите убрать баннер?';
	@override String get deleteAllFiles => 'Удалить все файлы';
	@override String get deleteAllFilesConfirm => 'Вы хотите удалить все файлы?';
	@override String get removeAllFollowing => 'Удалить всех подписчиков';
	@override String removeAllFollowingDescription({required Object host}) => 'Отменить все подписки с домена ${host}? Пожалуйста, применяйте это действие, если инстанс больше не существует.';
	@override String get userSuspended => 'Эта учётная запись заморожена';
	@override String get userSilenced => 'Этот пользователь был заглушен';
	@override String get yourAccountSuspendedTitle => 'Эта учетная запись заблокирована';
	@override String get yourAccountSuspendedDescription => 'Этот аккаунт нарушил ToS сервера, поэтому был заморожен. Свяжитесь с администратором, чтобы узнать подробности. Не пытайтесь создать новый аккаунт.';
	@override String get tokenRevoked => 'Токен недействителен';
	@override String get tokenRevokedDescription => 'Токен входа устарел. Пожалуйста, войдите снова.';
	@override String get accountDeleted => 'Учетная запись удалена';
	@override String get accountDeletedDescription => 'Эта учетная запись удалена';
	@override String get menu => 'Меню';
	@override String get divider => 'Линия-разделитель';
	@override String get addItem => 'Добавить элемент';
	@override String get rearrange => 'Сортировать по';
	@override String get relays => 'Ретрансляторы';
	@override String get addRelay => 'Добавить ретранслятор';
	@override String get inboxUrl => 'URL ящика входящих сообщений';
	@override String get addedRelays => 'Добавленные ретрансляторы';
	@override String get serviceworkerInfo => 'Нужно включить, чтобы работали push-уведомления.';
	@override String get deletedNote => 'Удалённая заметка';
	@override String get invisibleNote => 'Личное сообщение';
	@override String get enableInfiniteScroll => 'Включить бесконечную прокрутку';
	@override String get visibility => 'Видимость';
	@override String get poll => 'Опрос';
	@override String get useCw => 'Скрывать содержимое под предупреждением';
	@override String get enablePlayer => 'Включить проигрыватель';
	@override String get disablePlayer => 'Выключить проигрыватель';
	@override String get expandTweet => 'Развернуть заметку';
	@override String get themeEditor => 'Редактор темы оформления';
	@override String get description => 'Описание';
	@override String get describeFile => 'Добавить подпись';
	@override String get enterFileDescription => 'Введите подпись';
	@override String get author => 'Автор';
	@override String get leaveConfirm => 'Вы не сохранили изменения. Хотите выйти и потерять их?';
	@override String get manage => 'Управление';
	@override String get plugins => 'Расширения';
	@override String get preferencesBackups => 'Резервная копия';
	@override String get deck => 'Пульт';
	@override String get undeck => 'Покинуть пульт';
	@override String get useBlurEffectForModal => 'Размытие за формой ввода заметки';
	@override String get useFullReactionPicker => 'Полнофункциональный выбор реакций';
	@override String get width => 'Ширина';
	@override String get height => 'Высота';
	@override String get large => 'Крупно';
	@override String get medium => 'Средне';
	@override String get small => 'Мелко';
	@override String get generateAccessToken => 'Создать токен доступа';
	@override String get permission => 'Разрешения';
	@override String get adminPermission => 'Доступ администратора';
	@override String get enableAll => 'Включить все';
	@override String get disableAll => 'Выключить всё';
	@override String get tokenRequested => 'Открыть доступ к учётной записи';
	@override String get pluginTokenRequestedDescription => 'Это расширение сможет пользоваться разрешениями, установленными здесь.';
	@override String get notificationType => 'Тип уведомления';
	@override String get edit => 'Изменить';
	@override String get emailServer => 'Сервер электронной почты';
	@override String get enableEmail => 'Включить обмен электронной почтой';
	@override String get emailConfigInfo => 'Используется для подтверждения адреса электронной почты и сброса пароля.';
	@override String get email => 'Электронная почта';
	@override String get emailAddress => 'Адрес электронной почты';
	@override String get smtpConfig => 'Конфигурация SMTP-сервера';
	@override String get smtpHost => 'Хост';
	@override String get smtpPort => 'Порт';
	@override String get smtpUser => 'Имя пользователя';
	@override String get smtpPass => 'Пароль';
	@override String get emptyToDisableSmtpAuth => 'Не заполняйте имя пользователя и пароль, чтобы отключить аутентификацию в SMTP.';
	@override String get smtpSecure => 'Использовать SSL/TLS';
	@override String get smtpSecureInfo => 'Выключите при использовании STARTTLS.';
	@override String get testEmail => 'Отправить тестовое письмо';
	@override String get wordMute => 'Скрытие слов';
	@override String get wordMuteDescription => 'Сведите к минимуму записи, содержащие указанное утверждение. Нажмите на свернутую запись, чтобы отобразить ее.';
	@override String get hardWordMute => 'Строгое скрытие слов';
	@override String get showMutedWord => 'Отображать слово без уведомления (звука)';
	@override String get hardWordMuteDescription => 'Скрыть заметки, содержащие указанное слово или фразу. В отличие от word mute, заметка будет полностью скрыта от просмотра.';
	@override String get regexpError => 'Ошибка в регулярном выражении';
	@override String regexpErrorDescription({required Object tab, required Object line}) => 'В списке ${tab} скрытых слов, в строке ${line} обнаружена синтаксическая ошибка:';
	@override String get instanceMute => 'Глушение инстансов';
	@override String userSaysSomething({required Object name}) => '${name} что-то сообщает';
	@override String userSaysSomethingAbout({required Object name, required Object word}) => '${name} что-то говорил о「${word}」';
	@override String get makeActive => 'Активировать';
	@override String get display => 'Отображение';
	@override String get copy => 'Копировать';
	@override String get copiedToClipboard => 'Скопированы в буфер обмена';
	@override String get metrics => 'Метрики';
	@override String get overview => 'Обзор';
	@override String get logs => 'Журналы';
	@override String get delayed => 'Задержка';
	@override String get database => 'База данных';
	@override String get channel => 'Каналы';
	@override String get create => 'Создать';
	@override String get notificationSetting => 'Настройки уведомлений';
	@override String get notificationSettingDesc => 'Выберите тип уведомлений для отображения';
	@override String get useGlobalSetting => 'Использовать глобальные настройки';
	@override String get useGlobalSettingDesc => 'Если включено, будут использоваться настройки учётной записи. Если отключить, этот виджет можно будет настроить индивидуально.';
	@override String get other => 'Другие';
	@override String get regenerateLoginToken => 'Создать новый токен для входа';
	@override String get regenerateLoginTokenDescription => 'Создаёт новый токен, используемый внутри программы во время входа. Обычно в этом нет необходимости. При создании все устройства будут отключены.';
	@override String get theKeywordWhenSearchingForCustomEmoji => 'Это ключевое слово будет использовано при поиске эмодзи.';
	@override String get setMultipleBySeparatingWithSpace => 'Можно написать несколько через пробел';
	@override String get fileIdOrUrl => 'Идентификатор файла или ссылка';
	@override String get behavior => 'Поведение';
	@override String get sample => 'Пример';
	@override String get abuseReports => 'Жалобы';
	@override String get reportAbuse => 'Жалоба';
	@override String get reportAbuseRenote => 'Пожаловаться на репост';
	@override String reportAbuseOf({required Object name}) => 'Пожаловаться на пользователя ${name}';
	@override String get fillAbuseReportDescription => 'Опишите, пожалуйста, причину жалобы подробнее. Если речь о конкретной заметке, будьте добры приложить ссылку на неё.';
	@override String get abuseReported => 'Жалоба отправлена. Большое спасибо за информацию.';
	@override String get reporter => 'Сообщивший';
	@override String get reporteeOrigin => 'О ком сообщено';
	@override String get reporterOrigin => 'Кто сообщил';
	@override String get send => 'Отправить';
	@override String get openInNewTab => 'Открыть в новой вкладке';
	@override String get openInSideView => 'Открывать в боковой колонке';
	@override String get defaultNavigationBehaviour => 'Поведение навигации по умолчанию';
	@override String get editTheseSettingsMayBreakAccount => 'От изменений в этих настройках ваша учётная запись может поломаться.';
	@override String get instanceTicker => 'Строка с названием инстанса в заметках';
	@override String waitingFor({required Object x}) => 'Ждём, когда ${x} ответит';
	@override String get random => 'Случайные';
	@override String get system => 'Система';
	@override String get switchUi => 'Выбор вида';
	@override String get desktop => 'Компьютер';
	@override String get clip => 'Подборка';
	@override String get createNew => 'Новый документ';
	@override String get optional => 'Необязательно';
	@override String get createNewClip => 'Новая подборка';
	@override String get unclip => 'Убрать из подборки';
	@override String confirmToUnclipAlreadyClippedNote({required Object name}) => 'Эта заметка уже есть в подборке «${name}». Удалить из этой подборки?';
	@override String get public => 'Общедоступно';
	@override String get private => 'Личное';
	@override String i18nInfo({required Object link}) => 'Misskey переводят на разные языки добровольцы со всего света. Ваша помощь тоже пригодится здесь: ${link}.';
	@override String get manageAccessTokens => 'Управление токенами доступа';
	@override String get accountInfo => 'Сведения об учётной записи';
	@override String get notesCount => 'Количество заметок';
	@override String get repliesCount => 'Сколько раз пользователь кому-то ответил';
	@override String get renotesCount => 'Сколько раз пользователь делился заметками';
	@override String get repliedCount => 'Сколько раз ответили пользователю';
	@override String get renotedCount => 'Сколько раз делились заметками пользователя';
	@override String get followingCount => 'Количество подписок';
	@override String get followersCount => 'Количество подписавшихся';
	@override String get sentReactionsCount => 'Количество реакций пользователя';
	@override String get receivedReactionsCount => 'Количество реакций на заметки пользователя';
	@override String get pollVotesCount => 'Сколько раз пользователь участвовал в опросах';
	@override String get pollVotedCount => 'Сколько раз участвовали в опросах пользователя';
	@override String get yes => 'Да';
	@override String get no => 'Нет';
	@override String get driveFilesCount => 'Количество файлов на диске';
	@override String get driveUsage => 'Занято места на диске';
	@override String get noCrawle => 'Запретить паукам индексировать сайт';
	@override String get noCrawleDescription => 'Просьба поисковым системам не ходить по вашему профилю, по заметкам, страницам и не индексировать их.';
	@override String get lockedAccountInfo => 'Даже если вы вручную подтверждаете подписки, кто угодно может читать ваши заметки, если вы не отмечаете их «для подписчиков».';
	@override String get alwaysMarkSensitive => 'Отмечать файлы как «содержимое не для всех» по умолчанию';
	@override String get loadRawImages => 'Сразу показывать изображения в полном размере';
	@override String get disableShowingAnimatedImages => 'Не проигрывать анимацию';
	@override String get disableShowingAnimatedImages_caption => 'Если анимации всё равно не работают, проверьте настройки специальных возможностей и режимы экономии заряда в браузере или системе';
	@override String get highlightSensitiveMedia => 'Выделять содержимое не для всех';
	@override String get verificationEmailSent => 'Вам отправлено письмо для подтверждения. Пройдите, пожалуйста, по ссылке из письма, чтобы завершить проверку.';
	@override String get notSet => 'Не настроено';
	@override String get emailVerified => 'Адрес электронной почты подтверждён.';
	@override String get noteFavoritesCount => 'Количество добавленного в избранное';
	@override String get pageLikesCount => 'Количество понравившихся страниц';
	@override String get pageLikedCount => 'Количество страниц, понравившихся другим';
	@override String get contact => 'Почта для связи';
	@override String get useSystemFont => 'Использовать шрифт, предлагаемый системой';
	@override String get clips => 'Подборки';
	@override String get experimentalFeatures => 'Экспериментальные функции';
	@override String get experimental => 'Экспериментальные';
	@override String get thisIsExperimentalFeature => 'Это экспериментальная функция. Её поведение, вероятно, поменяется в следующей версии, а ещё она может работать не так, как задумано.';
	@override String get developer => 'Разработчик';
	@override String get makeExplorable => 'Опубликовать профиль в «Обзоре».';
	@override String get makeExplorableDescription => 'Если выключить, ваш профиль не будет показан в разделе «Обзор».';
	@override String get duplicate => 'Дубликат';
	@override String get left => 'Слева';
	@override String get center => 'По центру';
	@override String get wide => 'Толстый';
	@override String get narrow => 'Тонкий';
	@override String get reloadToApplySetting => 'Это настройка вступает в силу при загрузке страницы. Перезагрузить сейчас?';
	@override String get needReloadToApply => 'Изменения вступят в силу после перезагрузки страницы.';
	@override String get needToRestartServerToApply => 'Для вступления изменений в силу необходимо перезапустить сервер.';
	@override String get showTitlebar => 'Показать заголовок';
	@override String get clearCache => 'Очистить кэш';
	@override String onlineUsersCount({required Object n}) => 'Пользователей сейчас в сети: ${n}';
	@override String nUsers({required Object n}) => 'Пользователей: ${n}';
	@override String nNotes({required Object n}) => 'Заметок: ${n}';
	@override String get sendErrorReports => 'Посылать отчёты о сбоях';
	@override String get sendErrorReportsDescription => 'Если включено, когда возникнет какая-нибудь техническая проблема, подробные сведения об этом будут отправлены разработчикам Misskey. Это очень помогает делать программу лучше. В отчёты попадают тип и версия ОС, браузера, журнал действий (что привело к сбою) и тому подобное.';
	@override String get myTheme => 'Личная тема';
	@override String get backgroundColor => 'Фон';
	@override String get accentColor => 'Акцент';
	@override String get textColor => 'Текст';
	@override String get saveAs => 'Сохранить под названием…';
	@override String get advanced => 'Для продвинутых';
	@override String get advancedSettings => 'Расширенные настройки ';
	@override String get value => 'Значения';
	@override String get createdAt => 'Создано';
	@override String get updatedAt => 'Обновлено';
	@override String get saveConfirm => 'Сохранить изменения?';
	@override String get deleteConfirm => 'Удалить?';
	@override String get invalidValue => 'Недопустимое значение.';
	@override String get registry => 'Реестр';
	@override String get closeAccount => 'Закрыть учётную запись';
	@override String get currentVersion => 'Используемая версия';
	@override String get latestVersion => 'Самая свежая версия';
	@override String get youAreRunningUpToDateClient => 'У вас самая свежая версия клиента.';
	@override String get newVersionOfClientAvailable => 'Доступна более свежая версия клиента.';
	@override String get usageAmount => 'Использовано';
	@override String get capacity => 'Ёмкость';
	@override String get inUse => 'Занято';
	@override String get editCode => 'Редактировать исходный текст';
	@override String get apply => 'Применить';
	@override String get receiveAnnouncementFromInstance => 'Получать оповещения с инстанса';
	@override String get emailNotification => 'Уведомления по электронной почте';
	@override String get publish => 'Опубликовать';
	@override String get inChannelSearch => 'Поиск по каналу';
	@override String get useReactionPickerForContextMenu => 'Открывать палитру реакций правой кнопкой';
	@override String typingUsers({required Object users}) => 'Стук клавиш. Это ${users}…';
	@override String get jumpToSpecifiedDate => 'Перейти к заданной дате';
	@override String get showingPastTimeline => 'Отображается старая лента';
	@override String get clear => 'Очистить';
	@override String get markAllAsRead => 'Отметить всё как прочитанное';
	@override String get goBack => 'Выход';
	@override String get unlikeConfirm => 'В самом деле убрать «нравится»?';
	@override String get fullView => 'Полный вид';
	@override String get quitFullView => 'Закрыть полный вид';
	@override String get addDescription => 'Добавить описание';
	@override String get userPagePinTip => 'Можно добавить сюда заметки, выбрав нужную, и включив в её меню пункт «Закрепить в профиле».';
	@override String get notSpecifiedMentionWarning => 'В этой заметке есть упоминание тех, кто не включён в адресаты';
	@override String get info => 'Описание';
	@override String get userInfo => 'Сведения о пользователе';
	@override String get unknown => 'Неизвестно';
	@override String get onlineStatus => 'Присутствие в сети';
	@override String get hideOnlineStatus => 'Скрыть присутствие';
	@override String get hideOnlineStatusDescription => 'Сокрытие присутствия делает некоторые функции, такие как поиск, менее удобными.';
	@override String get online => 'В сети';
	@override String get active => 'Действует';
	@override String get offline => 'Не в сети';
	@override String get notRecommended => 'Не рекомендуется';
	@override String get botProtection => 'Ботозащита';
	@override String get instanceBlocking => 'Блокировка инстансов';
	@override String get selectAccount => 'Выберите учётную запись';
	@override String get switchAccount => 'Сменить учётную запись';
	@override String get enabled => 'Вкл.';
	@override String get disabled => 'Откл.';
	@override String get quickAction => 'Быстрое действие';
	@override String get user => 'Пользователи';
	@override String get administration => 'Управление';
	@override String get accounts => 'Учётные записи';
	@override String get switch_ => 'Переключение';
	@override String get noMaintainerInformationWarning => 'Не заполнены сведения об администраторах';
	@override String get noInquiryUrlWarning => 'URL-адрес контактной формы еще не задан.';
	@override String get noBotProtectionWarning => 'Ботозащита не настроена';
	@override String get configure => 'Настроить';
	@override String get postToGallery => 'Опубликовать в галерею';
	@override String get postToHashtag => 'Написать заметку с этим хештегом';
	@override String get gallery => 'Галерея';
	@override String get recentPosts => 'Недавние публикации';
	@override String get popularPosts => 'Популярные публикации';
	@override String get shareWithNote => 'Поделиться заметкой';
	@override String get ads => 'Реклама';
	@override String get expiration => 'Опрос длится';
	@override String get startingperiod => 'Начальный период';
	@override String get memo => 'Памятка';
	@override String get priority => 'Приоритет';
	@override String get high => 'Высокий';
	@override String get middle => 'Средне';
	@override String get low => 'Низкий';
	@override String get emailNotConfiguredWarning => 'Адрес почты пустует';
	@override String get ratio => 'Соотношение';
	@override String get previewNoteText => 'Предварительный просмотр';
	@override String get customCss => 'Индивидуальный CSS';
	@override String get customCssWarn => 'Используйте эту настройку только если знаете, что делаете. Ошибки здесь чреваты тем, что у вас перестанет нормально работать сайт.';
	@override String get global => 'Всеобщая';
	@override String get squareAvatars => 'Квадратные аватарки';
	@override String get sent => 'Отправить';
	@override String get received => 'Получено';
	@override String get searchResult => 'Результаты поиска';
	@override String get hashtags => 'Хештеги';
	@override String get troubleshooting => 'Разрешение проблем';
	@override String get useBlurEffect => 'Размытие в интерфейсе';
	@override String get learnMore => 'Подробнее';
	@override String get misskeyUpdated => 'Misskey обновился!';
	@override String get whatIsNew => 'Что новенького?';
	@override String get translate => 'Перевести';
	@override String translatedFrom({required Object x}) => 'Перевод. Язык оригинала — ${x}';
	@override String get accountDeletionInProgress => 'В настоящее время выполняется удаление учетной записи';
	@override String get usernameInfo => 'Имя, которое отличает вашу учетную запись от других на этом сервере. Вы можете использовать алфавит (a~z, A~Z), цифры (0~9) или символы подчеркивания (_). Имена пользователей не могут быть изменены позже.';
	@override String get aiChanMode => 'Режим Ай';
	@override String get devMode => 'Режим разработчика';
	@override String get keepCw => 'Сохраняйте предупреждения о содержимом';
	@override String get pubSub => 'Учётные записи Pub/Sub';
	@override String get lastCommunication => 'Последнее сообщение';
	@override String get resolved => 'Решено';
	@override String get unresolved => 'Без решения';
	@override String get breakFollow => 'Отписка';
	@override String get breakFollowConfirm => 'Действительно удалить этого подписчика?';
	@override String get itsOn => 'Включено';
	@override String get itsOff => 'Выключено';
	@override String get on => 'Вкл.';
	@override String get off => 'Выкл.';
	@override String get emailRequiredForSignup => 'Для регистрации учётной записи нужен адрес электронной почты';
	@override String get unread => 'Непрочитанное';
	@override String get filter => 'Фильтры';
	@override String get controlPanel => 'Панель управления';
	@override String get manageAccounts => 'Управление аккаунтом';
	@override String get makeReactionsPublic => 'Опубликовать список реакций';
	@override String get makeReactionsPublicDescription => 'Список сделанных вами реакций доступен для просмотра всем желающим.';
	@override String get classic => 'Классика';
	@override String get muteThread => 'Скрыть цепочку';
	@override String get unmuteThread => 'Отменить сокрытие цепочки';
	@override String get followingVisibility => 'Видимость подписок';
	@override String get followersVisibility => 'Видимость подписчиков';
	@override String get continueThread => 'Показать следующие ответы';
	@override String get deleteAccountConfirm => 'Учётная запись будет безвозвратно удалена. Подтверждаете?';
	@override String get incorrectPassword => 'Пароль неверен.';
	@override String get incorrectTotp => 'Введен неверный одноразовый пароль или срок его действия истек.';
	@override String voteConfirm({required Object choice}) => 'Отдать голос за «${choice}»?';
	@override String get hide => 'Спрятать';
	@override String get useDrawerReactionPickerForMobile => 'Выдвижная палитра на мобильном устройстве';
	@override String welcomeBackWithName({required Object name}) => 'С возвращением, ${name}!';
	@override String clickToFinishEmailVerification({required Object ok}) => 'Пожалуйста, нажмите [${ok}], чтобы завершить подтверждение адреса электронной почты.';
	@override String get overridedDeviceKind => 'Тип устройства';
	@override String get smartphone => 'Смартфон';
	@override String get tablet => 'Планшет';
	@override String get auto => 'Автоматически';
	@override String get themeColor => 'Цвет темы';
	@override String get size => 'Размер';
	@override String get numberOfColumn => 'Количество столбцов';
	@override String get searchByGoogle => 'Поиск';
	@override String get instanceDefaultLightTheme => 'Светлая тема по умолчанию';
	@override String get instanceDefaultDarkTheme => 'Темная тема по умолчанию';
	@override String get instanceDefaultThemeDescription => 'Введите код темы в формате объекта.';
	@override String get mutePeriod => 'Продолжительность скрытия';
	@override String get period => 'Опрос длится';
	@override String get indefinitely => 'вечно';
	@override String get tenMinutes => '10 минут';
	@override String get oneHour => '1 час';
	@override String get oneDay => '1 день';
	@override String get oneWeek => '1 неделя';
	@override String get oneMonth => '1 месяц';
	@override String get threeMonths => '3 месяца';
	@override String get oneYear => '1 год';
	@override String get threeDays => '3 дня';
	@override String get reflectMayTakeTime => 'Изменения могут занять время для отображения';
	@override String get failedToFetchAccountInformation => 'Не удалось получить информацию об аккаунте';
	@override String get rateLimitExceeded => 'Ограничение скорости превышено';
	@override String get cropImage => 'Кадрирование';
	@override String get cropImageAsk => 'Обрезать изображение?';
	@override String get cropYes => 'Обрезать';
	@override String get cropNo => 'Не обрезать';
	@override String get file => 'Файлы';
	@override String recentNHours({required Object n}) => 'Последние ${n} ч';
	@override String recentNDays({required Object n}) => 'Последние ${n} сут';
	@override String get noEmailServerWarning => 'Отправка писем выключена';
	@override String get thereIsUnresolvedAbuseReportWarning => 'Остались нерешённые жалобы';
	@override String get recommended => 'Рекомендуем';
	@override String get check => 'Проверить';
	@override String get driveCapOverrideLabel => 'Изменение лимита дискового пространства для этого пользователя';
	@override String get driveCapOverrideCaption => 'Введите нуль или меньше, чтобы использовать значение по умолчанию.';
	@override String get requireAdminForView => 'Для просмотра необходимо иметь аккаунт администратора';
	@override String get isSystemAccount => 'Данная учётная запись создана автоматически и управляется системой';
	@override String typeToConfirm({required Object x}) => 'Введите ${x} для продолжения';
	@override String get deleteAccount => 'Удаление учётной записи';
	@override String get document => 'Документ';
	@override String get numberOfPageCache => 'Количество сохранённых страниц в кэше';
	@override String get numberOfPageCacheDescription => 'Описание количества страниц в кэше';
	@override String get logoutConfirm => 'Вы хотите выйти из аккаунта?';
	@override String get logoutWillClearClientData => 'Выход из аккаунта удалит настройки клиента из этого браузера. Включите автоматическое резервное копирование, чтобы иметь возможность восстановить настройки при повторном входе.';
	@override String get lastActiveDate => 'Последняя дата использования';
	@override String get statusbar => 'Статусбар';
	@override String get pleaseSelect => 'Пожалуйста, выберите';
	@override String get reverse => 'Переворот';
	@override String get colored => 'Выделена цветом';
	@override String get refreshInterval => 'Интервал перезагрузки';
	@override String get label => 'Метка';
	@override String get type => 'Тип';
	@override String get speed => 'Скорость';
	@override String get slow => 'Медленная';
	@override String get fast => 'Быстрая';
	@override String get sensitiveMediaDetection => 'Распознание содержимого не для всех';
	@override String get localOnly => 'Локально';
	@override String get remoteOnly => 'Только удалённо';
	@override String get failedToUpload => 'Сбой выгрузки';
	@override String get cannotUploadBecauseInappropriate => 'Файл не может быть загружен, так как было установлено, что он может содержать неприемлемое содержимое.';
	@override String get cannotUploadBecauseNoFreeSpace => 'Файл не может быть загружен, так как не осталось места на диске';
	@override String get cannotUploadBecauseExceedsFileSizeLimit => 'Файл не может быть загружен, так как он превышает лимит размера файла.';
	@override String get cannotUploadBecauseUnallowedFileType => 'Формат файла не подходит';
	@override String get beta => 'Бета';
	@override String get enableAutoSensitive => 'Автоматическое определение содержимого не для всех';
	@override String get enableAutoSensitiveDescription => 'Позволяет определять наличие содержимого не для всех при помощи искусственного интеллекта там, где это возможно. Даже если эту опцию отключить, она всё равно может быть включена на весь инстанс.';
	@override String get activeEmailValidationDescription => 'Если включено, будет проводиться более строгая проверка адреса электронной почты, в том числе на то, что он действительный и не временный. Если же отключено, то проверяется только корректность написания адреса.';
	@override String get navbar => 'Панель навигации';
	@override String get shuffle => 'Перемешать';
	@override String get account => 'Учётные записи';
	@override String get move => 'Переместить';
	@override String get pushNotification => 'Push-уведомления';
	@override String get subscribePushNotification => 'Включить push-уведомления';
	@override String get unsubscribePushNotification => 'Выключить push-уведомления';
	@override String get pushNotificationAlreadySubscribed => 'Push-уведомления уже включены';
	@override String get pushNotificationNotSupported => 'Push-уведмления не поддерживаются инстансом или браузером';
	@override String get sendPushNotificationReadMessage => 'Удалять push-уведомления когда сообщение или прочитано';
	@override String get sendPushNotificationReadMessageCaption => 'На мгновение появится уведомление "". Расход заряда батареи может увеличиться ';
	@override String get pleaseAllowPushNotification => 'Пожалуйста, разрешите уведомление в браузере от сайта';
	@override String get browserPushNotificationDisabled => 'Вы не дали разрешение на уведомления сайту';
	@override String browserPushNotificationDisabledDescription({required Object serverName}) => 'Разрешите уведомления в настройках браузера от ${serverName}, чтобы включить PUSH уведомления';
	@override String get windowMaximize => 'Развернуть';
	@override String get windowMinimize => 'Свернуть';
	@override String get windowRestore => 'Восстановить';
	@override String get caption => 'Подпись (Automatic Translation)';
	@override String get loggedInAsBot => 'Вы под аккаунтом бота!';
	@override String get tools => 'Инструменты';
	@override String get cannotLoad => 'Не удалось загрузить';
	@override String get numberOfProfileView => 'Количество профилей для просмотра';
	@override String get like => 'Нравится!';
	@override String get unlike => 'Отменить «нравится»';
	@override String get numberOfLikes => 'Количество лайков';
	@override String get show => 'Показать';
	@override String get neverShow => 'Больше не показывать';
	@override String get remindMeLater => 'Напомнить позже';
	@override String get didYouLikeMisskey => 'Вам нравится Misskey?';
	@override String pleaseDonate({required Object host}) => 'Сайт ${host} работает на Misskey. Это бесплатное программное обеспечение, и ваши пожертвования очень бы помогли продолжать его разработку!';
	@override String correspondingSourceIsAvailable({required Object anchor}) => 'Соответствующий исходный код можно найти по адресу ${anchor} ';
	@override String get roles => 'Роли';
	@override String get role => 'Роль';
	@override String get noRole => 'Нет роли';
	@override String get normalUser => 'Обычный пользователь';
	@override String get undefined => 'неопределённо';
	@override String get assign => 'Назначить';
	@override String get unassign => 'Отменить назначение';
	@override String get color => 'Цвет';
	@override String get manageCustomEmojis => 'Управлять пользовательскими эмодзи';
	@override String get manageAvatarDecorations => 'Управление украшениями аватара';
	@override String get youCannotCreateAnymore => 'Вы достигли лимита создания.';
	@override String get cannotPerformTemporary => 'Временно недоступен';
	@override String get cannotPerformTemporaryDescription => 'Это действие временно невозможно выполнить из-за превышения лимита выполнения.';
	@override String get invalidParamError => 'Ошибка параметра';
	@override String get invalidParamErrorDescription => 'Проблема с параметрами запроса. Обычно это ошибка, но это также может быть связано с тем, что вы набрали слишком много символов.';
	@override String get permissionDeniedError => 'Операция запрещена';
	@override String get permissionDeniedErrorDescription => 'У этой учетной записи нет разрешения на выполнение этой операции.';
	@override String get preset => 'Шаблоны';
	@override String get selectFromPresets => 'Выбрать из шаблонов';
	@override String get custom => 'Пользовательские';
	@override String get achievements => 'Достижения';
	@override String get gotInvalidResponseError => 'Сервер ответил ошибкой';
	@override String get gotInvalidResponseErrorDescription => 'Сервер временно не доступен. Возможно проводятся технические работы, или сервер отключен.';
	@override String get thisPostMayBeAnnoying => 'Это сообщение может быть неприятным.';
	@override String get thisPostMayBeAnnoyingHome => 'Этот пост может быть отправлен на главную';
	@override String get thisPostMayBeAnnoyingCancel => 'Этот пост не может быть отменен.';
	@override String get thisPostMayBeAnnoyingIgnore => 'Этот пост может быть проигнорирован ';
	@override String get collapseRenotes => 'Сворачивать увиденные репосты';
	@override String get collapseRenotesDescription => 'Сворачивать посты с которыми вы взаимодействовали.';
	@override String get internalServerError => 'Внутренняя ошибка сервера';
	@override String get internalServerErrorDescription => 'Внутри сервера произошла непредвиденная ошибка.';
	@override String get copyErrorInfo => 'Скопировать код ошибки';
	@override String get joinThisServer => 'Присоединяйтесь к этому серверу';
	@override String get exploreOtherServers => 'Искать другие сервера';
	@override String get letsLookAtTimeline => 'Давайте посмотрим на ленту';
	@override String get disableFederationConfirm => 'Отключить федерацию?';
	@override String get disableFederationConfirmWarn => 'Дефедерация не делает заметку приватной. В большинстве случаев без федерации не обойтись.';
	@override String get disableFederationOk => 'Не федерируется';
	@override String get invitationRequiredToRegister => 'Этот сервер в настоящее время только по приглашению. Зарегистрироваться могут только те, у кого есть код приглашения.';
	@override String get emailNotSupported => 'Доставка почты не поддерживается на этом сервере';
	@override String get postToTheChannel => 'Отправить в канал';
	@override String get cannotBeChangedLater => 'Это нельзя изменить позже';
	@override String get reactionAcceptance => 'Допустимые реакции';
	@override String get likeOnly => 'Только «нравится!»';
	@override String get likeOnlyForRemote => 'Всё (с других серверов только «нравится!»)';
	@override String get nonSensitiveOnly => 'Только безопасные';
	@override String get nonSensitiveOnlyForLocalLikeOnlyForRemote => 'Только безопасные (с других серверов только «нравится!»)';
	@override String get rolesAssignedToMe => 'Мои роли';
	@override String get resetPasswordConfirm => 'Сбросить пароль?';
	@override String get sensitiveWords => 'Чувствительные слова';
	@override String get sensitiveWordsDescription => 'Установите общедоступный диапазон заметки, содержащей заданное слово, на домашний. Можно сделать несколько настроек, разделив их переносами строк.';
	@override String get sensitiveWordsDescription2 => 'Разделение пробелом создаёт спецификацию AND, а разделение косой чертой создаёт регулярное выражение.';
	@override String get prohibitedWords => 'Запрещённые слова';
	@override String get prohibitedWordsDescription => 'Включает вывод ошибки при попытке опубликовать пост, содержащий указанное слово/набор слов.\nМножество слов может быть указано, разделяемые новой строкой.';
	@override String get prohibitedWordsDescription2 => 'Разделение пробелом создаёт спецификацию AND, а разделение косой чертой создаёт регулярное выражение.';
	@override String get hiddenTags => 'Скрытые хештеги';
	@override String get hiddenTagsDescription => 'Установленные теги не будут отображаться в тренде, можно установить несколько тегов.';
	@override String get notesSearchNotAvailable => 'Поиск заметок недоступен';
	@override String get usersSearchNotAvailable => 'Функция "поиска пользователей" отключена';
	@override String get license => 'Лицензия';
	@override String get unfavoriteConfirm => 'Удалить избранное?';
	@override String get myClips => 'Мои подборки';
	@override String get drivecleaner => 'Очиститель дисков';
	@override String get retryAllQueuesNow => 'Повторить все очереди сейчас';
	@override String get retryAllQueuesConfirmTitle => 'Хотите попробовать ещё раз?';
	@override String get retryAllQueuesConfirmText => 'Нагрузка на сервер может увеличиться';
	@override String get enableChartsForRemoteUser => 'Создание диаграмм для удалённых пользователей';
	@override String get enableChartsForFederatedInstances => 'Создание диаграмм для удалённых серверов';
	@override String get enableStatsForFederatedInstances => 'Получить информацию об удаленном сервере';
	@override String get showClipButtonInNoteFooter => 'Показать кнопку добавления в подборку в меню действий с заметкой';
	@override String get reactionsDisplaySize => 'Размер реакций';
	@override String get limitWidthOfReaction => 'Ограничить максимальную ширину реакций и отображать их в уменьшенном размере.';
	@override String get noteIdOrUrl => 'ID или ссылка на заметку';
	@override String get video => 'Видео';
	@override String get videos => 'Видео';
	@override String get audio => 'Звук';
	@override String get audioFiles => 'Звуковые файлы';
	@override String get dataSaver => 'Экономия трафика';
	@override String get accountMigration => 'Перенос учётной записи';
	@override String get accountMoved => 'Учётная запись перенесена';
	@override String get accountMovedShort => 'Эта учётная запись перемещена';
	@override String get operationForbidden => 'Это действие запрещено';
	@override String get forceShowAds => 'Всегда отображать рекламу';
	@override String get addMemo => 'Добавить памятку';
	@override String get editMemo => 'Изменить памятку';
	@override String get reactionsList => 'Список реакций';
	@override String get renotesList => 'Репосты';
	@override String get notificationDisplay => 'Отображение уведомлений';
	@override String get leftTop => 'Слева вверху';
	@override String get rightTop => 'Справа сверху';
	@override String get leftBottom => 'Слева внизу';
	@override String get rightBottom => 'Справа внизу';
	@override String get stackAxis => 'Положение уведомлений';
	@override String get vertical => 'Вертикально';
	@override String get horizontal => 'Горизонтально';
	@override String get position => 'Позиция';
	@override String get serverRules => 'Правила сервера';
	@override String get pleaseConfirmBelowBeforeSignup => 'Прочитайте и согласитесь с информацией ниже, чтобы продолжить';
	@override String get pleaseAgreeAllToContinue => 'Чтобы продолжить, необходимо поставить отметки во всех полях "согласен".';
	@override String get continue_ => 'Продолжить';
	@override String get preservedUsernames => 'Зарезервированные имена пользователей';
	@override String get preservedUsernamesDescription => 'Перечислите зарезервированные имена пользователей, отделяя их строками. Они станут недоступны при создании учётной записи. Это ограничение не применяется при создании учётной записи администраторами. Также, уже существующие учётные записи останутся без изменений.';
	@override String get createNoteFromTheFile => 'Создать заметку из этого файла';
	@override String get archive => 'Архив';
	@override String get archived => 'Архивировано';
	@override String get unarchive => 'Разархивировать';
	@override String channelArchiveConfirmTitle({required Object name}) => 'Переместить ${name} в архив?';
	@override String get channelArchiveConfirmDescription => 'Архивированные каналы перестанут отображаться в списке каналов или результатах поиска. В них также нельзя будет добавлять новые записи.';
	@override String get thisChannelArchived => 'Этот канал находится в архиве.';
	@override String get displayOfNote => 'Отображение заметок';
	@override String get initialAccountSetting => 'Настройка профиля';
	@override String get youFollowing => 'Вы подписаны';
	@override String get preventAiLearning => 'Отказаться от использования в машинном обучении (Генеративный ИИ)';
	@override String get preventAiLearningDescription => 'Запросить краулеров не использовать опубликованный текст или изображения и т.д. для машинного обучения (Прогнозирующий / Генеративный ИИ) датасетов. Это достигается путём добавления "noai" HTTP-заголовка в ответ на соответствующий контент. Полного предотвращения через этот заголовок не избежать, так как он может быть просто проигнорирован.';
	@override String get options => 'Настройки ролей';
	@override String get specifyUser => 'Указанный пользователь';
	@override String get lookupConfirm => 'Хотите узнать?';
	@override String get openTagPageConfirm => 'Открыть страницу этого хештега?';
	@override String get specifyHost => 'Указать сайт';
	@override String get failedToPreviewUrl => 'Предварительный просмотр недоступен';
	@override String get update => 'Обновить';
	@override String get rolesThatCanBeUsedThisEmojiAsReaction => 'Роли тех, кому можно использовать эти эмодзи как реакцию';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionEmptyDescription => 'Если здесь ничего не указать, в качестве реакции эту эмодзи сможет использовать каждый.';
	@override String get rolesThatCanBeUsedThisEmojiAsReactionPublicRoleWarn => 'Эти роли должны быть общедоступными.';
	@override String get cancelReactionConfirm => 'Вы действительно хотите удалить свою реакцию?';
	@override String get changeReactionConfirm => 'Вы действительно хотите удалить свою реакцию?';
	@override String get later => 'Позже';
	@override String get goToMisskey => 'К Misskey';
	@override String get additionalEmojiDictionary => 'Дополнительные словари эмодзи';
	@override String get installed => 'Установлено';
	@override String get branding => 'Бренд';
	@override String get enableServerMachineStats => 'Опубликовать характеристики сервера';
	@override String get enableIdenticonGeneration => 'Включить генерацию иконки пользователя';
	@override String get showRoleBadgesOfRemoteUsers => 'Display the role badges assigned to remote users';
	@override String get turnOffToImprovePerformance => 'Отключение этого параметра может повысить производительность.';
	@override String get createInviteCode => 'Создать код приглашения';
	@override String get createWithOptions => 'Используйте параметры для создания';
	@override String get createCount => 'Количество приглашений';
	@override String get inviteCodeCreated => 'Создан пригласительный код';
	@override String get inviteLimitExceeded => 'Достигнут предел количества пригласительных кодов, которые могут быть созданы.';
	@override String createLimitRemaining({required Object limit}) => 'Пригласительные коды, которые могут быть созданы: ${limit} ';
	@override String inviteLimitResetCycle({required Object time, required Object limit}) => 'За определенное ${time} Вы можете создать неограниченное количество пригласительных кодов ${limit} ';
	@override String get expirationDate => 'Дата истечения';
	@override String get noExpirationDate => 'Бессрочно';
	@override String get inviteCodeUsedAt => 'Дата и время, когда был использован пригласительный код';
	@override String get registeredUserUsingInviteCode => 'Пользователи, которые использовали пригласительный код';
	@override String get waitingForMailAuth => 'Подтвердите вашу электронную почту';
	@override String get inviteCodeCreator => 'Создатель приглашения';
	@override String get usedAt => 'Использовано';
	@override String get unused => 'Неиспользованное';
	@override String get used => 'Использован';
	@override String get expired => 'Срок действия приглашения истёк';
	@override String get doYouAgree => 'Согласны?';
	@override String get beSureToReadThisAsItIsImportant => 'Это важно, поэтому, пожалуйста, прочтите это.';
	@override String iHaveReadXCarefullyAndAgree({required Object x}) => 'Я прочитал(а) и согласен(сна) с условиями "${x}';
	@override String get dialog => 'Диалог';
	@override String get icon => 'Аватар';
	@override String get forYou => 'Для вас';
	@override String get currentAnnouncements => 'Текущие новости';
	@override String get pastAnnouncements => 'Предыдущие новости';
	@override String get youHaveUnreadAnnouncements => 'У вас есть непрочитанные уведомления';
	@override String get useSecurityKey => 'Используйте ключ безопасности или Passkey, следуя подсказкам браузера';
	@override String get replies => 'Ответы';
	@override String get renotes => 'Репост';
	@override String get loadReplies => 'Показать ответы';
	@override String get loadConversation => 'Загрузить беседу';
	@override String get pinnedList => 'Закреплённый список';
	@override String get keepScreenOn => 'Держать экран включённым';
	@override String get verifiedLink => 'Эта ссылка принадлежит пользователю';
	@override String get notifyNotes => 'Оповещать о публикациях';
	@override String get unnotifyNotes => 'Отписаться от сообщений';
	@override String get authentication => 'Аутентификация';
	@override String get authenticationRequiredToContinue => 'Пожалуйста, пройдите аутентификацию, чтобы продолжить';
	@override String get dateAndTime => 'Дата и время';
	@override String get showRenotes => 'Показывать репосты';
	@override String get edited => 'Изменено';
	@override String get notificationRecieveConfig => 'Настроить оповещения';
	@override String get mutualFollow => 'Взаимные подписки';
	@override String get followingOrFollower => 'Подписки или подписчики';
	@override String get fileAttachedOnly => 'Только заметки с файлами';
	@override String get showRepliesToOthersInTimeline => 'Показывать ответы в ленте';
	@override String get hideRepliesToOthersInTimeline => 'Скрыть чужие ответы в ленте';
	@override String get showRepliesToOthersInTimelineAll => 'Показывать в ленте ответы пользователей, на которых вы подписаны';
	@override String get hideRepliesToOthersInTimelineAll => 'Скрывать в ленте ответы пользователей, на которых вы подписаны';
	@override String get confirmShowRepliesAll => 'Это нельзя будет отменить. Показать ответы от всех, на кого вы подписаны?';
	@override String get confirmHideRepliesAll => 'Это нельзя будет отменить. Скрыть ответы от всех, на кого вы подписаны?';
	@override String get externalServices => 'Интеграции';
	@override String get sourceCode => 'Исходный код';
	@override String get sourceCodeIsNotYetProvided => 'Исходный код пока не доступен. Свяжитесь с администратором, чтобы исправить эту проблему.';
	@override String get repositoryUrl => 'Ссылка на репозиторий';
	@override String get repositoryUrlDescription => 'Если вы используете Misskey как есть (без изменений в исходном коде), введите https://github.com/misskey-dev/misskey';
	@override String get repositoryUrlOrTarballRequired => 'Если репозиторий закрыт, необходимо предоставить ссылку на tarball. Подробности см. в файле ".config/example.yml"';
	@override String get feedback => 'Обратная связь';
	@override String get feedbackUrl => 'Ссылка для обратной связи';
	@override String get impressum => 'О владельце';
	@override String get privacyPolicy => 'Политика Конфиденциальности';
	@override String get privacyPolicyUrl => 'Ссылка на Политику Конфиденциальности';
	@override String get tosAndPrivacyPolicy => 'Условия использования и политика конфиденциальности';
	@override String get avatarDecorations => 'Украшения для аватара';
	@override String get attach => 'Прикрепить';
	@override String get detach => 'Открепить';
	@override String get detachAll => 'Убрать всё';
	@override String get angle => 'Угол';
	@override String get flip => 'Переворот';
	@override String get showAvatarDecorations => 'Показать украшения для аватара';
	@override String get releaseToRefresh => 'Отпустите, чтобы обновить';
	@override String get refreshing => 'Обновление...';
	@override String get pullDownToRefresh => 'Опустите что бы обновить';
	@override String get useGroupedNotifications => 'Отображать уведомления сгруппировано';
	@override String get emailVerificationFailedError => 'Не смогли подтвердить почту. Вероятно, истек срок письма';
	@override String get cwNotationRequired => 'Если включена опция «Скрыть содержимое», необходимо написать аннотацию.';
	@override String get doReaction => 'Добавить реакцию';
	@override String get code => 'Код';
	@override String get reloadRequiredToApplySettings => 'Для применения настроек необходима обновить страницу.';
	@override String remainingN({required Object n}) => 'Остаётся: ${n}';
	@override String get overwriteContentConfirm => 'Текущее содержимое будет перезаписано. Вы уверены?';
	@override String get seasonalScreenEffect => 'Эффект времени года на экране';
	@override String get decorate => 'Украсить';
	@override String get addMfmFunction => 'Добавить MFM';
	@override String get enableQuickAddMfmFunction => 'Показывать расширенный выбор MFM';
	@override String get bubbleGame => 'BubbleGame';
	@override String get sfx => 'Звуковые эффекты';
	@override String get soundWillBePlayed => 'Будет воспроизведен звук';
	@override String get showReplay => 'Показать повтор';
	@override String get replay => 'Ответить';
	@override String get endReplay => 'Конец повтора';
	@override String lastNDays({required Object n}) => 'Последние ${n} сут';
	@override String get hemisphere => 'Место проживания';
	@override String userSaysSomethingSensitive({required Object name}) => 'Сообщение, содержит конфиденциальные файлы от ${name}';
	@override String get enableHorizontalSwipe => 'Смахните в сторону, чтобы сменить вкладки';
	@override String get loading => 'Загрузка';
	@override String get surrender => 'Этот пост не может быть отменен.';
	@override String get gameRetry => 'Повторить попытку';
	@override String get notUsePleaseLeaveBlank => 'Если не используется, оставьте пустым';
	@override String get useTotp => 'Включить двухэтапную проверку';
	@override String get useBackupCode => 'Использовать резервные коды';
	@override String get launchApp => 'Запустить приложение';
	@override String get useNativeUIForVideoAudioPlayer => 'Использовать интерфейс браузера при проигрывании видео и звука';
	@override String get keepOriginalFilename => 'Сохранять исходное имя файла';
	@override String get keepOriginalFilenameDescription => 'Если вы выключите данную настройку, имена файлов будут автоматически заменены случайной строкой при загрузке.';
	@override String get noDescription => 'Нет описания';
	@override String get alwaysConfirmFollow => 'Всегда подтверждать подписку';
	@override String get inquiry => 'Связаться';
	@override String get tryAgain => 'Попробуйте еще раз позже';
	@override String get confirmWhenRevealingSensitiveMedia => 'Спрашивать перед открытием NSFW контента';
	@override String get sensitiveMediaRevealConfirm => 'Возможно, это NSFW контент. Показать?';
	@override String get createdLists => 'Созданные списки';
	@override String get createdAntennas => 'Созданные антенны';
	@override String fromX({required Object x}) => 'Из ${x}';
	@override String get genEmbedCode => 'Сгенерировать код для ';
	@override String get noteOfThisUser => 'Список заметок этого пользователя';
	@override String get clipNoteLimitExceeded => 'К этому клипу больше нельзя добавить заметки';
	@override String get performance => 'Производительность';
	@override String get modified => 'Изменено';
	@override String get discard => 'Отменить';
	@override String thereAreNChanges({required Object n}) => 'Изменено: ${n}';
	@override String get signinWithPasskey => 'Войдите в систему, используя свой пароль';
	@override String get unknownWebAuthnKey => 'Неизвестный ключ';
	@override String get passkeyVerificationFailed => 'Ошибка проверка ключа доступа ';
	@override String get passkeyVerificationSucceededButPasswordlessLoginDisabled => 'Проверка Passkey выполнена, но вход без пароля отключен';
	@override String get messageToFollower => 'Сообщение подписчикам';
	@override String get testCaptchaWarning => 'Эта тестовая CAPTCHA. <strong>Не используйте её!</strong>';
	@override String get prohibitedWordsForNameOfUser => 'Запрещенные слова (имя пользователя)';
	@override String get prohibitedWordsForNameOfUserDescription => 'Если имя пользователя содержит строку из этого списка, изменение имени пользователя будет запрещено. На пользователей с правами модератора это ограничение не распространяется. Имена пользователей также проверяются путём замены всех букв в нижнем регистре';
	@override String get yourNameContainsProhibitedWords => 'Имя, которое вы пытаетесь изменить, содержит запрещенную строку символов';
	@override String get yourNameContainsProhibitedWordsDescription => 'Имя содержит запрещённую строку символов. Если вы хотите использовать это имя, обратитесь к администратору сервера';
	@override String get thisContentsAreMarkedAsSigninRequiredByAuthor => 'Автор сообщения установил требование в виде авторизации для просмотра';
	@override String get lockdown => 'Доступ ограничен';
	@override String get pleaseSelectAccount => 'Выберите свой аккаунт';
	@override String get availableRoles => 'Доступные роли';
	@override String get federationSpecified => 'Сервер работает через белый список федерации. Связь с другими серверами ограничена';
	@override String get federationDisabled => 'Федерация отключена для этого сервера. Вы не можете взаимодействовать с пользователями на других серверах.';
	@override String get draft => 'Черновик';
	@override String get draftsAndScheduledNotes => 'Черновики и отложенные публикации';
	@override String get confirmOnReact => 'Подтверждать добавление реакции';
	@override String reactAreYouSure({required Object emoji}) => 'Добавить ${emoji}?';
	@override String get markAsSensitiveConfirm => 'Отметить контент как чувствительный?';
	@override String get unmarkAsSensitiveConfirm => 'Снять пометку о NSFW контенте?';
	@override String get preferences => 'Основное';
	@override String get accessibility => 'Специальные возможности';
	@override String get preferencesProfile => 'Настройки профиля';
	@override String get copyPreferenceId => 'Копировать ID настройки';
	@override String get resetToDefaultValue => 'Сбросить настройки до стандартных';
	@override String get overrideByAccount => 'Переопределить этим аккаунтом';
	@override String get untitled => 'Без названия';
	@override String get noName => 'Имя не указано';
	@override String get skip => 'Пропустить';
	@override String get syncBetweenDevices => 'Синхронизировать между устройствами';
	@override String get postForm => 'Форма отправки';
	@override String get textCount => 'Количество символов';
	@override String get information => 'Описание';
	@override String get inMinutes => 'мин';
	@override String get inDays => 'сут';
	@override String get schedule => 'Отложить';
	@override String get scheduled => 'Отложено';
	@override String get widgets => 'Виджеты';
	@override String get deviceInfo => 'Об устройстве';
	@override String get deviceInfoDescription => 'Эта информация может быть полезна при обращении в поддержку';
	@override String get youAreAdmin => 'Вы администратор';
	@override String get frame => 'Рамки';
	@override String get presets => 'Шаблоны';
	@override String get zeroPadding => 'Без отступов';
	@override String get nothingToConfigure => 'Нечего менять';
	@override late final _TranslationsMisskeyImageEditingRuRu imageEditing_ = _TranslationsMisskeyImageEditingRuRu._(_root);
	@override late final _TranslationsMisskeyImageFrameEditorRuRu imageFrameEditor_ = _TranslationsMisskeyImageFrameEditorRuRu._(_root);
	@override late final _TranslationsMisskeyChatRuRu chat_ = _TranslationsMisskeyChatRuRu._(_root);
	@override late final _TranslationsMisskeySettingsRuRu settings_ = _TranslationsMisskeySettingsRuRu._(_root);
	@override late final _TranslationsMisskeyDeliveryRuRu delivery_ = _TranslationsMisskeyDeliveryRuRu._(_root);
	@override late final _TranslationsMisskeyAnnouncementRuRu announcement_ = _TranslationsMisskeyAnnouncementRuRu._(_root);
	@override late final _TranslationsMisskeyInitialAccountSettingRuRu initialAccountSetting_ = _TranslationsMisskeyInitialAccountSettingRuRu._(_root);
	@override late final _TranslationsMisskeyInitialTutorialRuRu initialTutorial_ = _TranslationsMisskeyInitialTutorialRuRu._(_root);
	@override late final _TranslationsMisskeyTimelineDescriptionRuRu timelineDescription_ = _TranslationsMisskeyTimelineDescriptionRuRu._(_root);
	@override late final _TranslationsMisskeyServerSettingsRuRu serverSettings_ = _TranslationsMisskeyServerSettingsRuRu._(_root);
	@override late final _TranslationsMisskeyAccountMigrationRuRu accountMigration_ = _TranslationsMisskeyAccountMigrationRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsRuRu achievements_ = _TranslationsMisskeyAchievementsRuRu._(_root);
	@override late final _TranslationsMisskeyRoleRuRu role_ = _TranslationsMisskeyRoleRuRu._(_root);
	@override late final _TranslationsMisskeySensitiveMediaDetectionRuRu sensitiveMediaDetection_ = _TranslationsMisskeySensitiveMediaDetectionRuRu._(_root);
	@override late final _TranslationsMisskeyEmailUnavailableRuRu emailUnavailable_ = _TranslationsMisskeyEmailUnavailableRuRu._(_root);
	@override late final _TranslationsMisskeyFfVisibilityRuRu ffVisibility_ = _TranslationsMisskeyFfVisibilityRuRu._(_root);
	@override late final _TranslationsMisskeySignupRuRu signup_ = _TranslationsMisskeySignupRuRu._(_root);
	@override late final _TranslationsMisskeyAccountDeleteRuRu accountDelete_ = _TranslationsMisskeyAccountDeleteRuRu._(_root);
	@override late final _TranslationsMisskeyAdRuRu ad_ = _TranslationsMisskeyAdRuRu._(_root);
	@override late final _TranslationsMisskeyForgotPasswordRuRu forgotPassword_ = _TranslationsMisskeyForgotPasswordRuRu._(_root);
	@override late final _TranslationsMisskeyGalleryRuRu gallery_ = _TranslationsMisskeyGalleryRuRu._(_root);
	@override late final _TranslationsMisskeyEmailRuRu email_ = _TranslationsMisskeyEmailRuRu._(_root);
	@override late final _TranslationsMisskeyPluginRuRu plugin_ = _TranslationsMisskeyPluginRuRu._(_root);
	@override late final _TranslationsMisskeyPreferencesBackupsRuRu preferencesBackups_ = _TranslationsMisskeyPreferencesBackupsRuRu._(_root);
	@override late final _TranslationsMisskeyRegistryRuRu registry_ = _TranslationsMisskeyRegistryRuRu._(_root);
	@override late final _TranslationsMisskeyAboutMisskeyRuRu aboutMisskey_ = _TranslationsMisskeyAboutMisskeyRuRu._(_root);
	@override late final _TranslationsMisskeyDisplayOfSensitiveMediaRuRu displayOfSensitiveMedia_ = _TranslationsMisskeyDisplayOfSensitiveMediaRuRu._(_root);
	@override late final _TranslationsMisskeyInstanceTickerRuRu instanceTicker_ = _TranslationsMisskeyInstanceTickerRuRu._(_root);
	@override late final _TranslationsMisskeyServerDisconnectedBehaviorRuRu serverDisconnectedBehavior_ = _TranslationsMisskeyServerDisconnectedBehaviorRuRu._(_root);
	@override late final _TranslationsMisskeyChannelRuRu channel_ = _TranslationsMisskeyChannelRuRu._(_root);
	@override late final _TranslationsMisskeyMenuDisplayRuRu menuDisplay_ = _TranslationsMisskeyMenuDisplayRuRu._(_root);
	@override late final _TranslationsMisskeyWordMuteRuRu wordMute_ = _TranslationsMisskeyWordMuteRuRu._(_root);
	@override late final _TranslationsMisskeyInstanceMuteRuRu instanceMute_ = _TranslationsMisskeyInstanceMuteRuRu._(_root);
	@override late final _TranslationsMisskeyThemeRuRu theme_ = _TranslationsMisskeyThemeRuRu._(_root);
	@override late final _TranslationsMisskeySfxRuRu sfx_ = _TranslationsMisskeySfxRuRu._(_root);
	@override late final _TranslationsMisskeySoundSettingsRuRu soundSettings_ = _TranslationsMisskeySoundSettingsRuRu._(_root);
	@override late final _TranslationsMisskeyAgoRuRu ago_ = _TranslationsMisskeyAgoRuRu._(_root);
	@override late final _TranslationsMisskeyTimeInRuRu timeIn_ = _TranslationsMisskeyTimeInRuRu._(_root);
	@override late final _TranslationsMisskeyTimeRuRu time_ = _TranslationsMisskeyTimeRuRu._(_root);
	@override late final _TranslationsMisskeyX2faRuRu x2fa_ = _TranslationsMisskeyX2faRuRu._(_root);
	@override late final _TranslationsMisskeyPermissionsRuRu permissions_ = _TranslationsMisskeyPermissionsRuRu._(_root);
	@override late final _TranslationsMisskeyAuthRuRu auth_ = _TranslationsMisskeyAuthRuRu._(_root);
	@override late final _TranslationsMisskeyAntennaSourcesRuRu antennaSources_ = _TranslationsMisskeyAntennaSourcesRuRu._(_root);
	@override late final _TranslationsMisskeyWeekdayRuRu weekday_ = _TranslationsMisskeyWeekdayRuRu._(_root);
	@override late final _TranslationsMisskeyWidgetsRuRu widgets_ = _TranslationsMisskeyWidgetsRuRu._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsRuRu widgetOptions_ = _TranslationsMisskeyWidgetOptionsRuRu._(_root);
	@override late final _TranslationsMisskeyCwRuRu cw_ = _TranslationsMisskeyCwRuRu._(_root);
	@override late final _TranslationsMisskeyPollRuRu poll_ = _TranslationsMisskeyPollRuRu._(_root);
	@override late final _TranslationsMisskeyVisibilityRuRu visibility_ = _TranslationsMisskeyVisibilityRuRu._(_root);
	@override late final _TranslationsMisskeyPostFormRuRu postForm_ = _TranslationsMisskeyPostFormRuRu._(_root);
	@override late final _TranslationsMisskeyProfileRuRu profile_ = _TranslationsMisskeyProfileRuRu._(_root);
	@override late final _TranslationsMisskeyExportOrImportRuRu exportOrImport_ = _TranslationsMisskeyExportOrImportRuRu._(_root);
	@override late final _TranslationsMisskeyChartsRuRu charts_ = _TranslationsMisskeyChartsRuRu._(_root);
	@override late final _TranslationsMisskeyInstanceChartsRuRu instanceCharts_ = _TranslationsMisskeyInstanceChartsRuRu._(_root);
	@override late final _TranslationsMisskeyTimelinesRuRu timelines_ = _TranslationsMisskeyTimelinesRuRu._(_root);
	@override late final _TranslationsMisskeyPlayRuRu play_ = _TranslationsMisskeyPlayRuRu._(_root);
	@override late final _TranslationsMisskeyPagesRuRu pages_ = _TranslationsMisskeyPagesRuRu._(_root);
	@override late final _TranslationsMisskeyRelayStatusRuRu relayStatus_ = _TranslationsMisskeyRelayStatusRuRu._(_root);
	@override late final _TranslationsMisskeyNotificationRuRu notification_ = _TranslationsMisskeyNotificationRuRu._(_root);
	@override late final _TranslationsMisskeyDeckRuRu deck_ = _TranslationsMisskeyDeckRuRu._(_root);
	@override late final _TranslationsMisskeyDialogRuRu dialog_ = _TranslationsMisskeyDialogRuRu._(_root);
	@override late final _TranslationsMisskeyDisabledTimelineRuRu disabledTimeline_ = _TranslationsMisskeyDisabledTimelineRuRu._(_root);
	@override late final _TranslationsMisskeyDrivecleanerRuRu drivecleaner_ = _TranslationsMisskeyDrivecleanerRuRu._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsRuRu webhookSettings_ = _TranslationsMisskeyWebhookSettingsRuRu._(_root);
	@override late final _TranslationsMisskeyAbuseReportRuRu abuseReport_ = _TranslationsMisskeyAbuseReportRuRu._(_root);
	@override late final _TranslationsMisskeyModerationLogTypesRuRu moderationLogTypes_ = _TranslationsMisskeyModerationLogTypesRuRu._(_root);
	@override late final _TranslationsMisskeyFileViewerRuRu fileViewer_ = _TranslationsMisskeyFileViewerRuRu._(_root);
	@override late final _TranslationsMisskeyDataSaverRuRu dataSaver_ = _TranslationsMisskeyDataSaverRuRu._(_root);
	@override late final _TranslationsMisskeyHemisphereRuRu hemisphere_ = _TranslationsMisskeyHemisphereRuRu._(_root);
	@override late final _TranslationsMisskeyReversiRuRu reversi_ = _TranslationsMisskeyReversiRuRu._(_root);
	@override late final _TranslationsMisskeyRemoteLookupErrorsRuRu remoteLookupErrors_ = _TranslationsMisskeyRemoteLookupErrorsRuRu._(_root);
	@override late final _TranslationsMisskeySearchRuRu search_ = _TranslationsMisskeySearchRuRu._(_root);
	@override late final _TranslationsMisskeyWatermarkEditorRuRu watermarkEditor_ = _TranslationsMisskeyWatermarkEditorRuRu._(_root);
	@override late final _TranslationsMisskeyImageEffectorRuRu imageEffector_ = _TranslationsMisskeyImageEffectorRuRu._(_root);
	@override String get drafts => 'Черновик';
	@override late final _TranslationsMisskeyQrRuRu qr_ = _TranslationsMisskeyQrRuRu._(_root);
}

// Path: misskey.imageEditing_
class _TranslationsMisskeyImageEditingRuRu extends TranslationsMisskeyImageEditingEnUs {
	_TranslationsMisskeyImageEditingRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEditingVarsRuRu vars_ = _TranslationsMisskeyImageEditingVarsRuRu._(_root);
}

// Path: misskey.imageFrameEditor_
class _TranslationsMisskeyImageFrameEditorRuRu extends TranslationsMisskeyImageFrameEditorEnUs {
	_TranslationsMisskeyImageFrameEditorRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать рамку';
	@override String get header => 'Заголовок';
	@override String get footer => 'Нижняя часть';
	@override String get borderThickness => 'Толщина рамки';
	@override String get labelThickness => 'Толщина границ';
	@override String get font => 'Шрифт';
	@override String get fontSerif => 'Антиква (с засечками)';
	@override String get fontSansSerif => 'Гротеск (без засечек)';
}

// Path: misskey.chat_
class _TranslationsMisskeyChatRuRu extends TranslationsMisskeyChatEnUs {
	_TranslationsMisskeyChatRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get invitations => 'Пригласить';
	@override String get noHistory => 'История пока пуста';
	@override String get members => 'Участники';
	@override String get home => 'Главная';
	@override String get send => 'Отправить';
}

// Path: misskey.settings_
class _TranslationsMisskeySettingsRuRu extends TranslationsMisskeySettingsEnUs {
	_TranslationsMisskeySettingsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get webhook => 'Вебхук';
	@override String get preferencesBanner => 'Вы можете настроить общее поведение клиента по вашим предпочтениям';
	@override String get timelineAndNote => 'Лента и заметки';
	@override late final _TranslationsMisskeySettingsChatRuRu chat_ = _TranslationsMisskeySettingsChatRuRu._(_root);
}

// Path: misskey.delivery_
class _TranslationsMisskeyDeliveryRuRu extends TranslationsMisskeyDeliveryEnUs {
	_TranslationsMisskeyDeliveryRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get stop => 'Заморожено';
	@override late final _TranslationsMisskeyDeliveryTypeRuRu type_ = _TranslationsMisskeyDeliveryTypeRuRu._(_root);
}

// Path: misskey.announcement_
class _TranslationsMisskeyAnnouncementRuRu extends TranslationsMisskeyAnnouncementEnUs {
	_TranslationsMisskeyAnnouncementRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get tooManyActiveAnnouncementDescription => 'Большое количество оповещений может ухудшить пользовательский опыт. Рассмотрите архивирование неактуальных оповещений. ';
}

// Path: misskey.initialAccountSetting_
class _TranslationsMisskeyInitialAccountSettingRuRu extends TranslationsMisskeyInitialAccountSettingEnUs {
	_TranslationsMisskeyInitialAccountSettingRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get accountCreated => 'Аккаунт успешно создан!';
	@override String get letsStartAccountSetup => 'Давайте настроим вашу учётную запись.';
	@override String get profileSetting => 'Настройки профиля';
	@override String get privacySetting => 'Настройки конфиденциальности';
	@override String get initialAccountSettingCompleted => 'Первоначальная настройка успешно завершена!';
	@override String get startTutorial => 'Пройти Обучение';
	@override String get skipAreYouSure => 'Пропустить настройку?';
}

// Path: misskey.initialTutorial_
class _TranslationsMisskeyInitialTutorialRuRu extends TranslationsMisskeyInitialTutorialEnUs {
	_TranslationsMisskeyInitialTutorialRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get launchTutorial => 'Пройти обучение';
	@override late final _TranslationsMisskeyInitialTutorialNoteRuRu note_ = _TranslationsMisskeyInitialTutorialNoteRuRu._(_root);
	@override late final _TranslationsMisskeyInitialTutorialReactionRuRu reaction_ = _TranslationsMisskeyInitialTutorialReactionRuRu._(_root);
	@override late final _TranslationsMisskeyInitialTutorialPostNoteRuRu postNote_ = _TranslationsMisskeyInitialTutorialPostNoteRuRu._(_root);
}

// Path: misskey.timelineDescription_
class _TranslationsMisskeyTimelineDescriptionRuRu extends TranslationsMisskeyTimelineDescriptionEnUs {
	_TranslationsMisskeyTimelineDescriptionRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get home => 'В персональной ленте располагаются заметки тех, на которых вы подписаны.';
	@override String get local => 'Местная лента показывает заметки всех пользователей этого экземпляра.';
	@override String get social => 'В социальной ленте собирается всё, что есть в персональной и местной лентах.';
	@override String get global => 'В глобальную ленту попадает вообще всё со связанных экземпляров.';
}

// Path: misskey.serverSettings_
class _TranslationsMisskeyServerSettingsRuRu extends TranslationsMisskeyServerSettingsEnUs {
	_TranslationsMisskeyServerSettingsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get iconUrl => 'Адрес на иконку роли';
}

// Path: misskey.accountMigration_
class _TranslationsMisskeyAccountMigrationRuRu extends TranslationsMisskeyAccountMigrationEnUs {
	_TranslationsMisskeyAccountMigrationRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get moveFrom => 'Перенести другую учётную запись сюда';
	@override String get moveTo => 'Перенести учётную запись на другой сервер';
	@override String get moveAccountDescription => 'Это действие перенесёт ваш аккаунт на другой сервер.\n　・Подписчики с этого аккаунта автоматически подпишутся на новый\n　・Этот аккаунт отпишется от всех пользователей, на которых подписан сейчас\n　・Вы не сможете создавать новые заметки и т.д. на этом аккаунте\n\nТогда как перенос подписчиков происходит автоматически, вы должны будете подготовиться, сделав некоторые шаги, чтобы перенести список пользователей, на которых вы подписаны. Чтобы сделать это, экспортируйте список подписчиков в файл, который затем импортируете на новом аккаунте в меню настроек. То же самое необходимо будет сделать со списками, также как и со скрытыми и заблокированными пользователями.\n\n(Это объяснение применяется к Misskey v13.12.0 и выше. Другое ActivityPub программное обеспечение, такое, как Mastodon, может работать по-другому.';
	@override String get startMigration => 'Перенести';
	@override String get movedAndCannotBeUndone => 'Аккаунт был перемещён. Это действие необратимо.';
}

// Path: misskey.achievements_
class _TranslationsMisskeyAchievementsRuRu extends TranslationsMisskeyAchievementsEnUs {
	_TranslationsMisskeyAchievementsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get earnedAt => 'Разблокировано в';
	@override late final _TranslationsMisskeyAchievementsTypesRuRu types_ = _TranslationsMisskeyAchievementsTypesRuRu._(_root);
}

// Path: misskey.role_
class _TranslationsMisskeyRoleRuRu extends TranslationsMisskeyRoleEnUs {
	_TranslationsMisskeyRoleRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Новая роль';
	@override String get edit => 'Изменить роль';
	@override String get name => 'Название роли';
	@override String get description => 'Описание роли';
	@override String get permission => 'Ролевые полномочия';
	@override String get descriptionOfPermission => '<b>Модераторы</b> могут изменять базовые операции для модераторов.\n<b>Администраторы</b> могут изменять полностью настройки инстанса.';
	@override String get assignTarget => 'Метод присвоения';
	@override String get descriptionOfAssignTarget => '<b>Вручную</b> чтобы указать кому выдавать роль, а кому нет.\n<b>По условию<b> чтобы автоматически выдавать и удалять роль при условиях.';
	@override String get manual => 'Вручную';
	@override String get conditional => 'По условию';
	@override String get condition => 'Условия';
	@override String get isConditionalRole => 'Эта роль выдаётся по условию.';
	@override String get isPublic => 'Общедоступная роль';
	@override String get descriptionOfIsPublic => 'Список тех, кому назначена эта роль будет доступен всем. Кроме того эта роль будет отмечена у каждого в профиле.';
	@override String get options => 'Настройки ролей';
	@override String get policies => 'Политики';
	@override String get baseRole => 'Шаблон роли';
	@override String get useBaseValue => 'Использовать значение из шаблона';
	@override String get chooseRoleToAssign => 'Выберите роль, которую хотите выдать';
	@override String get iconUrl => 'Адрес на иконку роли';
	@override String get asBadge => 'Показывать как значок';
	@override String get descriptionOfAsBadge => 'Описание значка';
	@override String get canEditMembersByModerator => 'Могут назначать модераторы';
	@override String get descriptionOfCanEditMembersByModerator => 'Если включено, на эту роль могут назначать пользователей как администраторы, так и модераторы. Если выключено, назначать могут только администраторы.';
	@override String get priority => 'Приоритет';
	@override late final _TranslationsMisskeyRolePriorityRuRu priority_ = _TranslationsMisskeyRolePriorityRuRu._(_root);
	@override late final _TranslationsMisskeyRoleOptionsRuRu options_ = _TranslationsMisskeyRoleOptionsRuRu._(_root);
	@override late final _TranslationsMisskeyRoleConditionRuRu condition_ = _TranslationsMisskeyRoleConditionRuRu._(_root);
}

// Path: misskey.sensitiveMediaDetection_
class _TranslationsMisskeySensitiveMediaDetectionRuRu extends TranslationsMisskeySensitiveMediaDetectionEnUs {
	_TranslationsMisskeySensitiveMediaDetectionRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Машинное обучение может быть использовано для автоматического обнаружения чувствительных медиа для модерации. Нагрузка на сервер увеличивается незначительно.';
	@override String get sensitivity => 'Чувствительность обнаружения';
	@override String get sensitivityDescription => 'Более низкая чувствительность уменьшает количество ложных срабатываний (false positives). Повышение чувствительности уменьшает утечку при обнаружении (ложноотрицательные результаты).';
	@override String get setSensitiveFlagAutomatically => 'Обозначить как не для всех';
	@override String get setSensitiveFlagAutomaticallyDescription => 'Даже если этот параметр отключен, результат оценки сохраняется внутри системы.';
	@override String get analyzeVideos => 'Анализировать видео?';
	@override String get analyzeVideosDescription => 'Анализируйте видео в дополнение к неподвижным изображениям. Нагрузка на сервер немного увеличивается.';
}

// Path: misskey.emailUnavailable_
class _TranslationsMisskeyEmailUnavailableRuRu extends TranslationsMisskeyEmailUnavailableEnUs {
	_TranslationsMisskeyEmailUnavailableRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get used => 'Уже используется';
	@override String get format => 'Неверный формат';
	@override String get disposable => 'Временный адрес электронной почты не принимается';
	@override String get mx => 'Неверный почтовый сервер';
	@override String get smtp => 'Почтовый сервер не отвечает';
	@override String get banned => 'Этот адрес почты недоступен';
}

// Path: misskey.ffVisibility_
class _TranslationsMisskeyFfVisibilityRuRu extends TranslationsMisskeyFfVisibilityEnUs {
	_TranslationsMisskeyFfVisibilityRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get public => 'Общедоступны';
	@override String get followers => 'Показываются только подписчикам';
	@override String get private => 'Показываются только вам';
}

// Path: misskey.signup_
class _TranslationsMisskeySignupRuRu extends TranslationsMisskeySignupEnUs {
	_TranslationsMisskeySignupRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get almostThere => 'Почти готово!';
	@override String get emailAddressInfo => 'Введите ваш адрес электронной почты.';
	@override String emailSent({required Object email}) => 'На указанный вами адрес электронной почты (${email}) отправлено письмо. Перейдите по ссылке в письме, чтобы завершить регистрацию.';
}

// Path: misskey.accountDelete_
class _TranslationsMisskeyAccountDeleteRuRu extends TranslationsMisskeyAccountDeleteEnUs {
	_TranslationsMisskeyAccountDeleteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get accountDelete => 'Удалить свою учётную запись';
	@override String get mayTakeTime => 'Удаление учётной записи — ресурсозатратный процесс. Он может занять много времени, если вы много писали и загружали файлов.';
	@override String get sendEmail => 'Когда ваша учетная запись будет удалена, мы сообщим на указанную вами электронную почту.';
	@override String get requestAccountDelete => 'Запросить удаление вашей учетной записи';
	@override String get started => 'Процесс удаления начался.';
	@override String get inProgress => 'Удаление в процессе';
}

// Path: misskey.ad_
class _TranslationsMisskeyAdRuRu extends TranslationsMisskeyAdEnUs {
	_TranslationsMisskeyAdRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get back => 'Выход';
	@override String get reduceFrequencyOfThisAd => 'Реже показывать эту рекламу';
	@override String get hide => 'Не показывать';
}

// Path: misskey.forgotPassword_
class _TranslationsMisskeyForgotPasswordRuRu extends TranslationsMisskeyForgotPasswordEnUs {
	_TranslationsMisskeyForgotPasswordRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get enterEmail => 'Введите адрес электронной почты, который ввели при регистрации. На неё будет выслана ссылка для смены пароля.';
	@override String get ifNoEmail => 'Если вы не ввели свой адрес электронной почты, свяжитесь с администратором ресурса, чтобы сменить пароль.';
	@override String get contactAdmin => 'Здесь не используются адреса электронной почты, так что свяжитесь с администратором, чтобы поменять пароль.';
}

// Path: misskey.gallery_
class _TranslationsMisskeyGalleryRuRu extends TranslationsMisskeyGalleryEnUs {
	_TranslationsMisskeyGalleryRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get my => 'Личная';
	@override String get liked => 'Понравившееся';
	@override String get like => 'Нравится!';
	@override String get unlike => 'Отменить «нравится»';
}

// Path: misskey.email_
class _TranslationsMisskeyEmailRuRu extends TranslationsMisskeyEmailEnUs {
	_TranslationsMisskeyEmailRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyEmailFollowRuRu follow_ = _TranslationsMisskeyEmailFollowRuRu._(_root);
	@override late final _TranslationsMisskeyEmailReceiveFollowRequestRuRu receiveFollowRequest_ = _TranslationsMisskeyEmailReceiveFollowRequestRuRu._(_root);
}

// Path: misskey.plugin_
class _TranslationsMisskeyPluginRuRu extends TranslationsMisskeyPluginEnUs {
	_TranslationsMisskeyPluginRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get install => 'Установка расширений';
	@override String get installWarn => 'Пожалуйста, не устанавливайте расширения, которым не доверяете.';
	@override String get manage => 'Управление расширениями';
	@override String get viewSource => 'Просмотр исходника';
}

// Path: misskey.preferencesBackups_
class _TranslationsMisskeyPreferencesBackupsRuRu extends TranslationsMisskeyPreferencesBackupsEnUs {
	_TranslationsMisskeyPreferencesBackupsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get list => 'Существующие резервные копии';
	@override String get saveNew => 'Создать резервную копию';
	@override String get loadFile => 'Прочесть из файла';
	@override String get apply => 'Восстановить на это устройство';
	@override String get save => 'Обновить из текущих настроек';
	@override String get inputName => 'Введите название для резервной копии';
	@override String get cannotSave => 'Сохранить не удалось';
	@override String nameAlreadyExists({required Object name}) => 'Резервная копия под названием «${name}» уже существует. Придумайте другое.';
	@override String applyConfirm({required Object name}) => 'Правда хотите загрузить резервную копию «${name}» на это устройство? Этим будут потеряны текущие настройки.';
	@override String saveConfirm({required Object name}) => 'Сохранить резервную копию под названием «${name}»?';
	@override String deleteConfirm({required Object name}) => 'Удалить резервную копию «${name}»?';
	@override String renameConfirm({required Object old, required Object new_}) => 'Переименовать резервную копию «${old}» в «${new_}»?';
	@override String get noBackups => 'Здесь ещё нет резервных копий. Вы можете создать резервную копию настроек на этом сайте с помощью кнопки «Создать резервную копию».';
	@override String createdAt({required Object date, required Object time}) => 'Создана ${date} в ${time}';
	@override String updatedAt({required Object date, required Object time}) => 'Обновлена ${date} в ${time}';
	@override String get cannotLoad => 'Загрузить не удалось';
	@override String get invalidFile => 'Некорректный формат файла';
}

// Path: misskey.registry_
class _TranslationsMisskeyRegistryRuRu extends TranslationsMisskeyRegistryEnUs {
	_TranslationsMisskeyRegistryRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get scope => 'Область';
	@override String get key => 'Ключ';
	@override String get keys => 'Ключ';
	@override String get domain => 'Домен';
	@override String get createKey => 'Новый ключ';
}

// Path: misskey.aboutMisskey_
class _TranslationsMisskeyAboutMisskeyRuRu extends TranslationsMisskeyAboutMisskeyEnUs {
	_TranslationsMisskeyAboutMisskeyRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get about => 'Misskey — программа с открытым исходным кодом, которую разрабатывает syuilo с 2014 года.';
	@override String get contributors => 'Основные соавторы';
	@override String get allContributors => 'Все соавторы';
	@override String get source => 'Исходный код';
	@override String get translation => 'Перевод Misskey';
	@override String get donate => 'Пожертвование на Misskey';
	@override String get morePatrons => 'Большое спасибо и многим другим, кто принял участие в этом проекте! 🥰';
	@override String get patrons => 'Материальная поддержка';
	@override String get projectMembers => 'Участники проекта';
}

// Path: misskey.displayOfSensitiveMedia_
class _TranslationsMisskeyDisplayOfSensitiveMediaRuRu extends TranslationsMisskeyDisplayOfSensitiveMediaEnUs {
	_TranslationsMisskeyDisplayOfSensitiveMediaRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get respect => 'Скрывать содержимое не для всех';
	@override String get ignore => 'Показывать содержимое не для всех';
	@override String get force => 'Скрывать всё содержимое';
}

// Path: misskey.instanceTicker_
class _TranslationsMisskeyInstanceTickerRuRu extends TranslationsMisskeyInstanceTickerEnUs {
	_TranslationsMisskeyInstanceTickerRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get none => 'Не показывать';
	@override String get remote => 'Только для других сайтов';
	@override String get always => 'Показывать всегда';
}

// Path: misskey.serverDisconnectedBehavior_
class _TranslationsMisskeyServerDisconnectedBehaviorRuRu extends TranslationsMisskeyServerDisconnectedBehaviorEnUs {
	_TranslationsMisskeyServerDisconnectedBehaviorRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get reload => 'Автоматическая перезагрузка';
	@override String get dialog => 'Предупреждение';
	@override String get quiet => 'Показать ненавязчивое предупреждение';
}

// Path: misskey.channel_
class _TranslationsMisskeyChannelRuRu extends TranslationsMisskeyChannelEnUs {
	_TranslationsMisskeyChannelRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get create => 'Создать канал';
	@override String get edit => 'Редактировать канал';
	@override String get setBanner => 'Установить баннер';
	@override String get removeBanner => 'Удалить баннер';
	@override String get featured => 'Актуальные';
	@override String get owned => 'Собственные';
	@override String get following => 'Подписки';
	@override String usersCount({required Object n}) => 'Участников: ${n}';
	@override String notesCount({required Object n}) => 'Заметок: ${n}';
}

// Path: misskey.menuDisplay_
class _TranslationsMisskeyMenuDisplayRuRu extends TranslationsMisskeyMenuDisplayEnUs {
	_TranslationsMisskeyMenuDisplayRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get sideFull => 'Сбоку';
	@override String get sideIcon => 'Сбоку (только значки)';
	@override String get top => 'Сверху';
	@override String get hide => 'Спрятать';
}

// Path: misskey.wordMute_
class _TranslationsMisskeyWordMuteRuRu extends TranslationsMisskeyWordMuteEnUs {
	_TranslationsMisskeyWordMuteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get muteWords => 'Скрыть слово';
	@override String get muteWordsDescription => 'Пишите слова через пробел в одной строке, чтобы фильтровать их появление вместе; а если хотите фильтровать любое из них, пишите в отдельных строках.';
	@override String get muteWordsDescription2 => 'Здесь можно использовать регулярные выражения — просто заключите их между двумя дробными чертами (/).';
}

// Path: misskey.instanceMute_
class _TranslationsMisskeyInstanceMuteRuRu extends TranslationsMisskeyInstanceMuteEnUs {
	_TranslationsMisskeyInstanceMuteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get instanceMuteDescription => 'Любые активности, затрагивающие инстансы из данного списка, будут скрыты.';
	@override String get instanceMuteDescription2 => 'Пишите каждый инстанс на отдельной строке';
	@override String get title => 'Скрывает заметки с заданных инстансов.';
	@override String get heading => 'Список скрытых инстансов';
}

// Path: misskey.theme_
class _TranslationsMisskeyThemeRuRu extends TranslationsMisskeyThemeEnUs {
	_TranslationsMisskeyThemeRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get explore => 'Обзор';
	@override String get install => 'Установить тему';
	@override String get manage => 'Менеджер тем';
	@override String get code => 'Код темы';
	@override String get description => 'Описание';
	@override String installed({required Object name}) => 'Тема «${name}» установлена.';
	@override String get installedThemes => 'Установленные темы';
	@override String get builtinThemes => 'Встроенные темы';
	@override String get alreadyInstalled => 'Тема уже установлена.';
	@override String get invalid => 'Формат темы некорректный.';
	@override String get make => 'Создать тему';
	@override String get base => 'Основа';
	@override String get addConstant => 'Добавить константу';
	@override String get constant => 'Константа';
	@override String get defaultValue => 'По умолчанию';
	@override String get color => 'Цвет';
	@override String get refProp => 'Ссылка на свойство';
	@override String get refConst => 'Ссылка на константу';
	@override String get key => 'Ключ';
	@override String get func => 'Функции';
	@override String get funcKind => 'Тип функции';
	@override String get argument => 'Аргумент';
	@override String get basedProp => 'Исходное свойство';
	@override String get alpha => 'Непрозрачность';
	@override String get darken => 'Затемнение';
	@override String get lighten => 'Осветление';
	@override String get inputConstantName => 'Введите имя для константы.';
	@override String get importInfo => 'Если вы введете код темы здесь, вы можете импортировать его в редактор тем.';
	@override String deleteConstantConfirm({required Object const_}) => 'Вы действительно хотите удалить константу ${const_}?';
	@override late final _TranslationsMisskeyThemeKeysRuRu keys = _TranslationsMisskeyThemeKeysRuRu._(_root);
}

// Path: misskey.sfx_
class _TranslationsMisskeySfxRuRu extends TranslationsMisskeySfxEnUs {
	_TranslationsMisskeySfxRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get note => 'Заметки';
	@override String get noteMy => 'Собственные заметки';
	@override String get notification => 'Уведомления';
	@override String get reaction => 'При выборе реакции';
}

// Path: misskey.soundSettings_
class _TranslationsMisskeySoundSettingsRuRu extends TranslationsMisskeySoundSettingsEnUs {
	_TranslationsMisskeySoundSettingsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get driveFile => 'Использовать аудиофайл с Диска.';
	@override String get driveFileWarn => 'Выбрать аудиофайл с Диска.';
}

// Path: misskey.ago_
class _TranslationsMisskeyAgoRuRu extends TranslationsMisskeyAgoEnUs {
	_TranslationsMisskeyAgoRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get future => 'Из будущего';
	@override String get justNow => 'Только что';
	@override String secondsAgo({required Object n}) => '${n} с назад';
	@override String minutesAgo({required Object n}) => '${n} мин назад';
	@override String hoursAgo({required Object n}) => '${n} ч назад';
	@override String daysAgo({required Object n}) => '${n} сут назад';
	@override String weeksAgo({required Object n}) => '${n} нед. назад';
	@override String monthsAgo({required Object n}) => '${n} мес. назад';
	@override String yearsAgo({required Object n}) => '${n} г. назад';
	@override String get invalid => 'Ничего нет';
}

// Path: misskey.timeIn_
class _TranslationsMisskeyTimeInRuRu extends TranslationsMisskeyTimeInEnUs {
	_TranslationsMisskeyTimeInRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String seconds({required Object n}) => 'Через ${n} с';
	@override String minutes({required Object n}) => 'Через ${n} мин';
	@override String hours({required Object n}) => 'Через ${n} ч';
	@override String days({required Object n}) => 'Через ${n} сут';
	@override String weeks({required Object n}) => 'Через ${n} нед.';
	@override String months({required Object n}) => 'Через ${n} мес.';
	@override String years({required Object n}) => 'Через ${n} г.';
}

// Path: misskey.time_
class _TranslationsMisskeyTimeRuRu extends TranslationsMisskeyTimeEnUs {
	_TranslationsMisskeyTimeRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get second => 'с';
	@override String get minute => 'мин';
	@override String get hour => 'ч';
	@override String get day => 'сут';
}

// Path: misskey.x2fa_
class _TranslationsMisskeyX2faRuRu extends TranslationsMisskeyX2faEnUs {
	_TranslationsMisskeyX2faRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get alreadyRegistered => 'Двухфакторная аутентификация уже настроена.';
	@override String get registerTOTP => 'Начните настраивать приложение-аутентификатор';
	@override String step1({required Object a, required Object b}) => 'Прежде всего, установите на устройство приложение для аутентификации, например, ${a} или ${b}.';
	@override String get step2 => 'Далее отсканируйте отображаемый QR-код при помощи приложения.';
	@override String get step3Title => 'Введите проверочный код';
	@override String get step3 => 'И наконец, введите код, который покажет приложение.';
	@override String get step4 => 'Теперь при каждом входе на сайт вам нужно будет вводить код из приложения аналогичным образом.';
	@override String get securityKeyNotSupported => 'Ваш браузер не поддерживает ключи безопасности.';
	@override String get registerTOTPBeforeKey => 'Чтобы зарегистрировать ключ безопасности и пароль, сначала настройте приложение аутентификации.';
	@override String get securityKeyInfo => 'Вы можете настроить вход с помощью аппаратного ключа безопасности, поддерживающего FIDO2, или отпечатка пальца или PIN-кода на устройстве.';
	@override String get registerSecurityKey => 'Зарегистрируйте ключ безопасности ・Passkey';
	@override String get securityKeyName => 'Введите имя для ключа';
	@override String get tapSecurityKey => 'Пожалуйста, следуйте инструкциям в вашем браузере, чтобы зарегистрировать свой ключ безопасности или пароль';
	@override String get removeKey => 'Удалить ключ безопасности';
	@override String removeKeyConfirm({required Object name}) => 'Удалить резервную копию «${name}»?';
	@override String get whyTOTPOnlyRenew => 'Если ключ безопасности зарегистрирован, вы не сможете отключить приложение аутентификации.';
	@override String get renewTOTP => 'Перенастроите приложение аутентификации';
	@override String get renewTOTPConfirm => 'Проверочный код предыдущего приложения для аутентификации больше не будет доступен';
	@override String get renewTOTPOk => 'Настроить';
	@override String get renewTOTPCancel => 'Нет, спасибо';
}

// Path: misskey.permissions_
class _TranslationsMisskeyPermissionsRuRu extends TranslationsMisskeyPermissionsEnUs {
	_TranslationsMisskeyPermissionsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get readAccount => 'Просматривать данные учётной записи';
	@override String get writeAccount => 'Изменять данные учётной записи';
	@override String get readBlocks => 'Смотреть список блокировок';
	@override String get writeBlocks => 'Изменять список блокировок';
	@override String get readDrive => 'Смотреть содержимое «диска»';
	@override String get writeDrive => 'Изменять содержимое «диска»';
	@override String get readFavorites => 'Смотреть список избранного';
	@override String get writeFavorites => 'Изменять список избранного';
	@override String get readFollowing => 'Смотреть спискок подписок';
	@override String get writeFollowing => 'Изменять спискок подписок';
	@override String get readMessaging => 'Смотреть сообщения';
	@override String get writeMessaging => 'Писать и удалять сообщения';
	@override String get readMutes => 'Смотреть список скрытых пользователей';
	@override String get writeMutes => 'Изменять список скрытых пользователей';
	@override String get writeNotes => 'Писать и удалять заметки';
	@override String get readNotifications => 'Смотреть уведомления';
	@override String get writeNotifications => 'Изменять уведомления';
	@override String get readReactions => 'Смотреть реакции';
	@override String get writeReactions => 'Изменять реакции';
	@override String get writeVotes => 'Голосовать';
	@override String get readPages => 'Смотреть страницы';
	@override String get writePages => 'Изменять и удалять страницы';
	@override String get readPageLikes => 'Смотреть добавления страниц в избранное';
	@override String get writePageLikes => 'Изменять добавления страниц в избранное';
	@override String get readUserGroups => 'Смотреть группы пользователей';
	@override String get writeUserGroups => 'Изменять и удалять группы пользователей';
	@override String get readChannels => 'Смотреть каналы';
	@override String get writeChannels => 'Изменять каналы';
	@override String get readGallery => 'Просмотр галереи';
	@override String get writeGallery => 'Редактирование галереи';
	@override String get readGalleryLikes => 'Просмотр списка понравившегося в галерее';
	@override String get writeGalleryLikes => 'Изменение списка понравившегося в галерее';
	@override String get writeAdminResetPassword => 'Сбросить пароль пользователю';
	@override String get writeAdminSendEmail => 'Отправить письмо';
	@override String get writeChat => 'Писать и удалять сообщения';
}

// Path: misskey.auth_
class _TranslationsMisskeyAuthRuRu extends TranslationsMisskeyAuthEnUs {
	_TranslationsMisskeyAuthRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get shareAccessTitle => 'Разрешения для приложений';
	@override String shareAccess({required Object name}) => 'Дать доступ для «${name}» к вашей учётной записи?';
	@override String get shareAccessAsk => 'Уверены, что хотите дать приложению доступ к своей учётной записи?';
	@override String permission({required Object name}) => '${name} Запрашивает следующие разрешения:';
	@override String get permissionAsk => 'Приложение запрашивает следующие разрешения:';
	@override String get pleaseGoBack => 'Вернитесь, пожалуйста, в приложение';
	@override String get callback => 'Возврат в приложение';
	@override String get denied => 'Доступ закрыт';
	@override String get pleaseLogin => 'Вы должны войти в систему, чтобы дать разрешение приложению.';
}

// Path: misskey.antennaSources_
class _TranslationsMisskeyAntennaSourcesRuRu extends TranslationsMisskeyAntennaSourcesEnUs {
	_TranslationsMisskeyAntennaSourcesRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get all => 'Все заметки';
	@override String get homeTimeline => 'Заметки тех на которых вы подписаны';
	@override String get users => 'Заметки выбранных пользователей';
	@override String get userList => 'Заметки пользователей из выбранных списков';
}

// Path: misskey.weekday_
class _TranslationsMisskeyWeekdayRuRu extends TranslationsMisskeyWeekdayEnUs {
	_TranslationsMisskeyWeekdayRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get sunday => 'Воскресенье';
	@override String get monday => 'Понедельник';
	@override String get tuesday => 'Вторник';
	@override String get wednesday => 'Среда';
	@override String get thursday => 'Четверг';
	@override String get friday => 'Пятница';
	@override String get saturday => 'Суббота';
}

// Path: misskey.widgets_
class _TranslationsMisskeyWidgetsRuRu extends TranslationsMisskeyWidgetsEnUs {
	_TranslationsMisskeyWidgetsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Профиль';
	@override String get instanceInfo => 'Информация об инстансе';
	@override String get memo => 'Памятки';
	@override String get notifications => 'Уведомления';
	@override String get timeline => 'Лента';
	@override String get calendar => 'Календарь';
	@override String get trends => 'Актуальное';
	@override String get clock => 'Часы';
	@override String get rss => 'Просмотр RSS';
	@override String get rssTicker => 'Бегущая строка RSS';
	@override String get activity => 'Активность';
	@override String get photos => 'Фото';
	@override String get digitalClock => 'Цифровые часы';
	@override String get unixClock => 'Часы UNIX';
	@override String get federation => 'Федерация';
	@override String get instanceCloud => 'Облако инстансов';
	@override String get postForm => 'Форма отправки';
	@override String get slideshow => 'Показ слайдов';
	@override String get button => 'Кнопка';
	@override String get onlineUsers => 'Пользователи сейчас с сети';
	@override String get jobQueue => 'Очередь заданий';
	@override String get serverMetric => 'Показатели сервера';
	@override String get aiscript => 'Консоль AiScript';
	@override String get aiscriptApp => 'Приложение на AiScript';
	@override String get aichan => 'Ай';
	@override String get userList => 'Список аккаунтов';
	@override late final _TranslationsMisskeyWidgetsUserListRuRu userList_ = _TranslationsMisskeyWidgetsUserListRuRu._(_root);
	@override String get clicker => 'Счётчик щелчков';
	@override String get birthdayFollowings => 'Пользователи, у которых сегодня день рождения';
}

// Path: misskey.widgetOptions_
class _TranslationsMisskeyWidgetOptionsRuRu extends TranslationsMisskeyWidgetOptionsEnUs {
	_TranslationsMisskeyWidgetOptionsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get height => 'Высота';
	@override late final _TranslationsMisskeyWidgetOptionsButtonRuRu button_ = _TranslationsMisskeyWidgetOptionsButtonRuRu._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsClockRuRu clock_ = _TranslationsMisskeyWidgetOptionsClockRuRu._(_root);
	@override late final _TranslationsMisskeyWidgetOptionsBirthdayFollowingsRuRu birthdayFollowings_ = _TranslationsMisskeyWidgetOptionsBirthdayFollowingsRuRu._(_root);
}

// Path: misskey.cw_
class _TranslationsMisskeyCwRuRu extends TranslationsMisskeyCwEnUs {
	_TranslationsMisskeyCwRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get hide => 'Спрятать';
	@override String get show => 'Показать';
	@override String chars({required Object count}) => 'знаков: ${count}';
	@override String files({required Object count}) => 'файлов: ${count}';
}

// Path: misskey.poll_
class _TranslationsMisskeyPollRuRu extends TranslationsMisskeyPollEnUs {
	_TranslationsMisskeyPollRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get noOnlyOneChoice => 'Нужно хотя бы два варианта.';
	@override String choiceN({required Object n}) => 'Выбор ${n}';
	@override String get noMore => 'Больше вариантов добавить нельзя';
	@override String get canMultipleVote => 'Можно выбрать несколько вариантов';
	@override String get expiration => 'Опрос длится';
	@override String get infinite => 'вечно';
	@override String get at => 'до указанной даты';
	@override String get after => 'заданное время';
	@override String get deadlineDate => 'Дата окончания';
	@override String get deadlineTime => 'Время';
	@override String get duration => 'Длительность';
	@override String votesCount({required Object n}) => 'Голосов: ${n}';
	@override String totalVotes({required Object n}) => 'Голосов всего: ${n}';
	@override String get vote => 'Проголосовать';
	@override String get showResult => 'Смотреть результаты';
	@override String get voted => 'Голос отдан';
	@override String get closed => 'Завершено';
	@override String remainingDays({required Object d, required Object h}) => 'Осталось ${d} сут ${h} ч';
	@override String remainingHours({required Object h, required Object m}) => 'Осталось ${h} ч ${m} мин';
	@override String remainingMinutes({required Object m, required Object s}) => 'Осталось ${m} мин ${s} с';
	@override String remainingSeconds({required Object s}) => 'Осталось ${s} с';
}

// Path: misskey.visibility_
class _TranslationsMisskeyVisibilityRuRu extends TranslationsMisskeyVisibilityEnUs {
	_TranslationsMisskeyVisibilityRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get public => 'Общедоступно';
	@override String get publicDescription => 'Открыто для всех';
	@override String get home => 'Домашняя';
	@override String get homeDescription => 'Не для общих лент';
	@override String get followers => 'Для подписчиков';
	@override String get followersDescription => 'Только вашим подписчикам';
	@override String get specified => 'Личное';
	@override String get specifiedDescription => 'Тем, кого укажете';
	@override String get disableFederation => 'Отключить федерацию';
	@override String get disableFederationDescription => 'Не доставляет в другие экземпляры';
}

// Path: misskey.postForm_
class _TranslationsMisskeyPostFormRuRu extends TranslationsMisskeyPostFormEnUs {
	_TranslationsMisskeyPostFormRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get replyPlaceholder => 'Ответ на заметку...';
	@override String get quotePlaceholder => 'Пояснение к цитате...';
	@override String get channelPlaceholder => 'Отправить в канал';
	@override late final _TranslationsMisskeyPostFormHowToUseRuRu howToUse_ = _TranslationsMisskeyPostFormHowToUseRuRu._(_root);
	@override late final _TranslationsMisskeyPostFormPlaceholdersRuRu placeholders_ = _TranslationsMisskeyPostFormPlaceholdersRuRu._(_root);
}

// Path: misskey.profile_
class _TranslationsMisskeyProfileRuRu extends TranslationsMisskeyProfileEnUs {
	_TranslationsMisskeyProfileRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Имя';
	@override String get username => 'Имя пользователя';
	@override String get description => 'О себе';
	@override String get youCanIncludeHashtags => 'Можете использовать здесь хештеги.';
	@override String get metadata => 'Дополнительные сведения';
	@override String get metadataEdit => 'Редактировать дополнительные сведения';
	@override String get metadataDescription => 'Можно добавить до четырёх дополнительных граф в профиль.';
	@override String get metadataLabel => 'Метка';
	@override String get metadataContent => 'Содержимое';
	@override String get changeAvatar => 'Поменять аватар';
	@override String get changeBanner => 'Поменять изображение в шапке';
	@override String get verifiedLinkDescription => 'Указывая здесь URL, содержащий ссылку на профиль, иконка владения ресурсом может быть отображена рядом с полем';
	@override String avatarDecorationMax({required Object max}) => 'Вы можете добавить до ${max} украшений.';
}

// Path: misskey.exportOrImport_
class _TranslationsMisskeyExportOrImportRuRu extends TranslationsMisskeyExportOrImportEnUs {
	_TranslationsMisskeyExportOrImportRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get allNotes => 'Все заметки\n';
	@override String get favoritedNotes => 'Избранное';
	@override String get clips => 'Подборка';
	@override String get followingList => 'Подписки';
	@override String get muteList => 'Скрытые';
	@override String get blockingList => 'Заблокированные';
	@override String get userLists => 'Списки';
	@override String get excludeMutingUsers => 'За исключением скрытых пользователей';
	@override String get excludeInactiveUsers => 'Без неактивных учётных записей';
}

// Path: misskey.charts_
class _TranslationsMisskeyChartsRuRu extends TranslationsMisskeyChartsEnUs {
	_TranslationsMisskeyChartsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get federation => 'Федерация';
	@override String get apRequest => 'Запросы';
	@override String get usersIncDec => 'Изменение числа пользователей';
	@override String get usersTotal => 'Количество пользователей';
	@override String get activeUsers => 'Активные пользователи';
	@override String get notesIncDec => 'Изменение числа заметок';
	@override String get localNotesIncDec => 'Изменения числа локальных заметок';
	@override String get remoteNotesIncDec => 'Изменения числа заметок с других сайтов';
	@override String get notesTotal => 'Общее количество заметок';
	@override String get filesIncDec => 'Изменения числа файлов';
	@override String get filesTotal => 'Суммарное количество файлов';
	@override String get storageUsageIncDec => 'Изменения заполнения хранилища';
	@override String get storageUsageTotal => 'Суммарное заполнение хранилища';
}

// Path: misskey.instanceCharts_
class _TranslationsMisskeyInstanceChartsRuRu extends TranslationsMisskeyInstanceChartsEnUs {
	_TranslationsMisskeyInstanceChartsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get requests => 'Запросы';
	@override String get users => 'Изменение числа пользователей';
	@override String get usersTotal => 'Суммарное количество пользователей';
	@override String get notes => 'Изменение числа заметок';
	@override String get notesTotal => 'Суммарное количество заметок';
	@override String get ff => 'Изменения числа подписчиков';
	@override String get ffTotal => 'Суммарное количество подписчиков';
	@override String get cacheSize => 'Изменения размера кэша';
	@override String get cacheSizeTotal => 'Суммарный размер кэша';
	@override String get files => 'Изменения числа файлов';
	@override String get filesTotal => 'Суммарное количество файлов';
}

// Path: misskey.timelines_
class _TranslationsMisskeyTimelinesRuRu extends TranslationsMisskeyTimelinesEnUs {
	_TranslationsMisskeyTimelinesRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get home => 'Персональная';
	@override String get local => 'Местная';
	@override String get social => 'Социальная';
	@override String get global => 'Всеобщая';
}

// Path: misskey.play_
class _TranslationsMisskeyPlayRuRu extends TranslationsMisskeyPlayEnUs {
	_TranslationsMisskeyPlayRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get new_ => 'Создать приложение ';
	@override String get edit => 'Редактировать приложение';
	@override String get created => 'Приложение создано';
	@override String get updated => 'Приложение обновлено';
	@override String get deleted => 'Приложение удалено';
	@override String get pageSetting => 'Настройки приложения';
	@override String get editThisPage => 'Отредактировать страницу';
	@override String get viewSource => 'Просмотр исходника';
	@override String get my => 'Мои приложения ';
	@override String get liked => 'Понравилось';
	@override String get featured => 'Популярные';
	@override String get title => 'Заголовок';
	@override String get script => 'Скрипт';
	@override String get summary => 'Описание';
}

// Path: misskey.pages_
class _TranslationsMisskeyPagesRuRu extends TranslationsMisskeyPagesEnUs {
	_TranslationsMisskeyPagesRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get newPage => 'Создать страницу';
	@override String get editPage => 'Править страницу';
	@override String get readPage => 'Читать страницу';
	@override String get pageSetting => 'Настройки страницы';
	@override String get nameAlreadyExists => 'Указанный адрес страницы уже существует.';
	@override String get invalidNameTitle => 'Указанный адрес страницы недопустим.';
	@override String get invalidNameText => 'Проверьте, что не оставили поле пустым.';
	@override String get editThisPage => 'Правка этой страницы';
	@override String get viewSource => 'Просмотр исходника';
	@override String get viewPage => 'Смотреть страницы';
	@override String get like => 'Нравится';
	@override String get unlike => 'Отменить «нравится»';
	@override String get my => 'Свои страницы';
	@override String get liked => 'Понравившиеся страницы';
	@override String get featured => 'Популярные';
	@override String get inspector => 'Инспектор';
	@override String get contents => 'Содержимое';
	@override String get content => 'Содержимое';
	@override String get variables => 'Переменные';
	@override String get title => 'Заголовок';
	@override String get url => 'Адрес страницы';
	@override String get summary => 'Краткое содержание';
	@override String get alignCenter => 'Выровнять элементы по центру';
	@override String get hideTitleWhenPinned => 'Скрыть заголовок страницы при привязке к профилю';
	@override String get font => 'Шрифт';
	@override String get fontSerif => 'Антиква (с засечками)';
	@override String get fontSansSerif => 'Гротеск (без засечек)';
	@override String get eyeCatchingImageSet => 'Добавить картинку для привлечения внимания';
	@override String get eyeCatchingImageRemove => 'Убрать картинку для привлечения внимания';
	@override String get chooseBlock => 'Добавить блок';
	@override String get selectType => 'Выберите вид';
	@override String get contentBlocks => 'Содержательные';
	@override String get inputBlocks => 'Для ввода';
	@override String get specialBlocks => 'Особые';
	@override late final _TranslationsMisskeyPagesBlocksRuRu blocks = _TranslationsMisskeyPagesBlocksRuRu._(_root);
}

// Path: misskey.relayStatus_
class _TranslationsMisskeyRelayStatusRuRu extends TranslationsMisskeyRelayStatusEnUs {
	_TranslationsMisskeyRelayStatusRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get requesting => 'В ожидании одобрения';
	@override String get accepted => 'Одобрено.';
	@override String get rejected => 'Отказано.';
}

// Path: misskey.notification_
class _TranslationsMisskeyNotificationRuRu extends TranslationsMisskeyNotificationEnUs {
	_TranslationsMisskeyNotificationRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get fileUploaded => 'Файл успешно загружен.';
	@override String youGotMention({required Object name}) => '${name} упоминает вас.';
	@override String youGotReply({required Object name}) => '${name} отвечает вам.';
	@override String youGotQuote({required Object name}) => '${name} цитирует вас.';
	@override String youRenoted({required Object name}) => '${name} передаёт вашу заметку.';
	@override String get youWereFollowed => 'У вас новый подписчик.';
	@override String get youReceivedFollowRequest => 'У вас новый запрос на подписку.';
	@override String get yourFollowRequestAccepted => 'Ваш запрос на подписку одобрен.';
	@override String get pollEnded => 'Подведены окончательные итоги опроса';
	@override String unreadAntennaNote({required Object name}) => 'Антенна ${name}';
	@override String get emptyPushNotificationMessage => 'Обновлены push-уведомления';
	@override String get achievementEarned => 'Получено достижение';
	@override String get checkNotificationBehavior => 'Проверить внешний вид уведомления';
	@override String get sendTestNotification => 'Отправить тестовое уведомление';
	@override String get flushNotification => 'Очистить уведомления';
	@override late final _TranslationsMisskeyNotificationTypesRuRu types_ = _TranslationsMisskeyNotificationTypesRuRu._(_root);
	@override late final _TranslationsMisskeyNotificationActionsRuRu actions_ = _TranslationsMisskeyNotificationActionsRuRu._(_root);
}

// Path: misskey.deck_
class _TranslationsMisskeyDeckRuRu extends TranslationsMisskeyDeckEnUs {
	_TranslationsMisskeyDeckRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get alwaysShowMainColumn => 'Всегда показывать главную колонку';
	@override String get columnAlign => 'Выравнивание колонок';
	@override String get addColumn => 'Добавить колонку';
	@override String get configureColumn => 'Настройки колонок';
	@override String get swapLeft => 'Переставить левее';
	@override String get swapRight => 'Переставить правее';
	@override String get swapUp => 'Переставить выше';
	@override String get swapDown => 'Переставить ниже';
	@override String get stackLeft => 'В столбик влево';
	@override String get popRight => 'Из столбика вправо';
	@override String get profile => 'Расстановка';
	@override String get newProfile => 'Новая расстановка';
	@override String get deleteProfile => 'Удаление расстановки';
	@override String get introduction => 'Создайте идеальный интерфейс расставляя колонки как угодно';
	@override String get introduction2 => 'Чтобы добавлять колонки в любом месте, жмите «+» справа экрана.';
	@override String get widgetsIntroduction => 'Чтобы добавлять виджеты, выбирайте «Редактировать виджеты» в меню колонки.';
	@override late final _TranslationsMisskeyDeckColumnsRuRu columns_ = _TranslationsMisskeyDeckColumnsRuRu._(_root);
}

// Path: misskey.dialog_
class _TranslationsMisskeyDialogRuRu extends TranslationsMisskeyDialogEnUs {
	_TranslationsMisskeyDialogRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String charactersExceeded({required Object current, required Object max}) => 'Превышено максимальное количество символов! У вас ${current} / из   ${max}';
	@override String charactersBelow({required Object current, required Object min}) => 'Это ниже минимального количества символов! У вас ${current} / из ${min}';
}

// Path: misskey.disabledTimeline_
class _TranslationsMisskeyDisabledTimelineRuRu extends TranslationsMisskeyDisabledTimelineEnUs {
	_TranslationsMisskeyDisabledTimelineRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Лента отключена';
	@override String get description => 'Ваша текущая роль не позволяет пользоваться этой лентой.';
}

// Path: misskey.drivecleaner_
class _TranslationsMisskeyDrivecleanerRuRu extends TranslationsMisskeyDrivecleanerEnUs {
	_TranslationsMisskeyDrivecleanerRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get orderBySizeDesc => 'Размеры файлов по убыванию';
	@override String get orderByCreatedAtAsc => 'По увеличению даты';
}

// Path: misskey.webhookSettings_
class _TranslationsMisskeyWebhookSettingsRuRu extends TranslationsMisskeyWebhookSettingsEnUs {
	_TranslationsMisskeyWebhookSettingsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get createWebhook => 'Создать вебхук';
	@override String get modifyWebhook => 'Изменить Вебхук';
	@override String get name => 'Название';
	@override String get secret => 'Секрет';
	@override String get trigger => 'Условие срабатывания';
	@override String get active => 'Вкл.';
	@override late final _TranslationsMisskeyWebhookSettingsEventsRuRu events_ = _TranslationsMisskeyWebhookSettingsEventsRuRu._(_root);
	@override late final _TranslationsMisskeyWebhookSettingsSystemEventsRuRu systemEvents_ = _TranslationsMisskeyWebhookSettingsSystemEventsRuRu._(_root);
	@override String get deleteConfirm => 'Вы уверены, что хотите удалить этот Вебхук?';
}

// Path: misskey.abuseReport_
class _TranslationsMisskeyAbuseReportRuRu extends TranslationsMisskeyAbuseReportEnUs {
	_TranslationsMisskeyAbuseReportRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRuRu notificationRecipient_ = _TranslationsMisskeyAbuseReportNotificationRecipientRuRu._(_root);
}

// Path: misskey.moderationLogTypes_
class _TranslationsMisskeyModerationLogTypesRuRu extends TranslationsMisskeyModerationLogTypesEnUs {
	_TranslationsMisskeyModerationLogTypesRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get suspend => 'Заморозить';
	@override String get addCustomEmoji => 'Добавлено эмодзи';
	@override String get updateCustomEmoji => 'Изменено эмодзи';
	@override String get deleteCustomEmoji => 'Удалено эмодзи';
	@override String get deleteDriveFile => 'Файл удалён';
	@override String get resetPassword => 'Сброс пароля:';
	@override String get createInvitation => 'Создать код приглашения';
	@override String get createSystemWebhook => 'Создать Системный Вебхук';
	@override String get updateSystemWebhook => 'Обновить Системый Вебхук';
	@override String get deleteSystemWebhook => 'Удалить Системный Вебхук';
}

// Path: misskey.fileViewer_
class _TranslationsMisskeyFileViewerRuRu extends TranslationsMisskeyFileViewerEnUs {
	_TranslationsMisskeyFileViewerRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get url => 'Ссылка';
	@override String get attachedNotes => 'Закреплённые заметки';
}

// Path: misskey.dataSaver_
class _TranslationsMisskeyDataSaverRuRu extends TranslationsMisskeyDataSaverEnUs {
	_TranslationsMisskeyDataSaverRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyDataSaverCodeRuRu code_ = _TranslationsMisskeyDataSaverCodeRuRu._(_root);
}

// Path: misskey.hemisphere_
class _TranslationsMisskeyHemisphereRuRu extends TranslationsMisskeyHemisphereEnUs {
	_TranslationsMisskeyHemisphereRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get N => 'Северное полушарие';
	@override String get S => 'Южное полушарие';
	@override String get caption => 'Используется для некоторых настроек клиента для определения сезона.';
}

// Path: misskey.reversi_
class _TranslationsMisskeyReversiRuRu extends TranslationsMisskeyReversiEnUs {
	_TranslationsMisskeyReversiRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get total => 'Всего';
}

// Path: misskey.remoteLookupErrors_
class _TranslationsMisskeyRemoteLookupErrorsRuRu extends TranslationsMisskeyRemoteLookupErrorsEnUs {
	_TranslationsMisskeyRemoteLookupErrorsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRuRu noSuchObject_ = _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRuRu._(_root);
}

// Path: misskey.search_
class _TranslationsMisskeySearchRuRu extends TranslationsMisskeySearchEnUs {
	_TranslationsMisskeySearchRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get searchScopeAll => 'Все';
	@override String get searchScopeLocal => 'Местная';
	@override String get searchScopeUser => 'Указанный пользователь';
}

// Path: misskey.watermarkEditor_
class _TranslationsMisskeyWatermarkEditorRuRu extends TranslationsMisskeyWatermarkEditorEnUs {
	_TranslationsMisskeyWatermarkEditorRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get opacity => 'Непрозрачность';
	@override String get scale => 'Размер';
	@override String get text => 'Текст';
	@override String get position => 'Позиция';
	@override String get type => 'Тип';
	@override String get image => 'Изображения';
	@override String get advanced => 'Для продвинутых';
	@override String get angle => 'Угол';
}

// Path: misskey.imageEffector_
class _TranslationsMisskeyImageEffectorRuRu extends TranslationsMisskeyImageEffectorEnUs {
	_TranslationsMisskeyImageEffectorRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyImageEffectorFxPropsRuRu fxProps_ = _TranslationsMisskeyImageEffectorFxPropsRuRu._(_root);
}

// Path: misskey.qr_
class _TranslationsMisskeyQrRuRu extends TranslationsMisskeyQrEnUs {
	_TranslationsMisskeyQrRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get showTabTitle => 'Отображение';
	@override String get raw => 'Текст';
}

// Path: misskey.imageEditing_.vars_
class _TranslationsMisskeyImageEditingVarsRuRu extends TranslationsMisskeyImageEditingVarsEnUs {
	_TranslationsMisskeyImageEditingVarsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Описание файла';
	@override String get filename => 'Имя файла';
	@override String get filename_without_ext => 'Имя файла без расширения';
	@override String get year => 'Год создания';
	@override String get month => 'Месяц создания';
	@override String get day => 'День создания';
	@override String get hour => 'Час создания';
	@override String get minute => 'Минуты создания';
	@override String get second => 'Секунды создания';
	@override String get camera_model => 'Модель камеры';
	@override String get camera_lens_model => 'Модель линзы';
	@override String get camera_mm => 'Фокусное расстояние';
	@override String get camera_mm_35 => 'Фокусное расстояние (экв. 35 мм)';
	@override String get camera_f => 'Диафрагма';
	@override String get camera_s => 'Выдержка';
	@override String get camera_iso => 'ISO';
	@override String get gps_lat => 'Широта';
	@override String get gps_long => 'Долгота';
}

// Path: misskey.settings_.chat_
class _TranslationsMisskeySettingsChatRuRu extends TranslationsMisskeySettingsChatEnUs {
	_TranslationsMisskeySettingsChatRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get showSenderName => 'Показывать имя отправителя';
	@override String get sendOnEnter => 'Использовать Enter для отправки';
}

// Path: misskey.delivery_.type_
class _TranslationsMisskeyDeliveryTypeRuRu extends TranslationsMisskeyDeliveryTypeEnUs {
	_TranslationsMisskeyDeliveryTypeRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get none => 'Публикация';
}

// Path: misskey.initialTutorial_.note_
class _TranslationsMisskeyInitialTutorialNoteRuRu extends TranslationsMisskeyInitialTutorialNoteEnUs {
	_TranslationsMisskeyInitialTutorialNoteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Посты в Misskey называются \'Заметками.\' Заметки отсортированы в хронологическом порядке в ленте и обновляются в режиме реального времени.';
}

// Path: misskey.initialTutorial_.reaction_
class _TranslationsMisskeyInitialTutorialReactionRuRu extends TranslationsMisskeyInitialTutorialReactionEnUs {
	_TranslationsMisskeyInitialTutorialReactionRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get reactToContinue => 'Добавьте реакцию, чтобы продолжить.';
}

// Path: misskey.initialTutorial_.postNote_
class _TranslationsMisskeyInitialTutorialPostNoteRuRu extends TranslationsMisskeyInitialTutorialPostNoteEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyInitialTutorialPostNoteVisibilityRuRu visibility_ = _TranslationsMisskeyInitialTutorialPostNoteVisibilityRuRu._(_root);
}

// Path: misskey.achievements_.types_
class _TranslationsMisskeyAchievementsTypesRuRu extends TranslationsMisskeyAchievementsTypesEnUs {
	_TranslationsMisskeyAchievementsTypesRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAchievementsTypesNotes1RuRu notes1_ = _TranslationsMisskeyAchievementsTypesNotes1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10RuRu notes10_ = _TranslationsMisskeyAchievementsTypesNotes10RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100RuRu notes100_ = _TranslationsMisskeyAchievementsTypesNotes100RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes500RuRu notes500_ = _TranslationsMisskeyAchievementsTypesNotes500RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes1000RuRu notes1000_ = _TranslationsMisskeyAchievementsTypesNotes1000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes5000RuRu notes5000_ = _TranslationsMisskeyAchievementsTypesNotes5000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes10000RuRu notes10000_ = _TranslationsMisskeyAchievementsTypesNotes10000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes20000RuRu notes20000_ = _TranslationsMisskeyAchievementsTypesNotes20000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes30000RuRu notes30000_ = _TranslationsMisskeyAchievementsTypesNotes30000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes40000RuRu notes40000_ = _TranslationsMisskeyAchievementsTypesNotes40000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes50000RuRu notes50000_ = _TranslationsMisskeyAchievementsTypesNotes50000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes60000RuRu notes60000_ = _TranslationsMisskeyAchievementsTypesNotes60000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes70000RuRu notes70000_ = _TranslationsMisskeyAchievementsTypesNotes70000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes80000RuRu notes80000_ = _TranslationsMisskeyAchievementsTypesNotes80000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes90000RuRu notes90000_ = _TranslationsMisskeyAchievementsTypesNotes90000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNotes100000RuRu notes100000_ = _TranslationsMisskeyAchievementsTypesNotes100000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin3RuRu login3_ = _TranslationsMisskeyAchievementsTypesLogin3RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin7RuRu login7_ = _TranslationsMisskeyAchievementsTypesLogin7RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin15RuRu login15_ = _TranslationsMisskeyAchievementsTypesLogin15RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin30RuRu login30_ = _TranslationsMisskeyAchievementsTypesLogin30RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin60RuRu login60_ = _TranslationsMisskeyAchievementsTypesLogin60RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin100RuRu login100_ = _TranslationsMisskeyAchievementsTypesLogin100RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin200RuRu login200_ = _TranslationsMisskeyAchievementsTypesLogin200RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin300RuRu login300_ = _TranslationsMisskeyAchievementsTypesLogin300RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin400RuRu login400_ = _TranslationsMisskeyAchievementsTypesLogin400RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin500RuRu login500_ = _TranslationsMisskeyAchievementsTypesLogin500RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin600RuRu login600_ = _TranslationsMisskeyAchievementsTypesLogin600RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin700RuRu login700_ = _TranslationsMisskeyAchievementsTypesLogin700RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin800RuRu login800_ = _TranslationsMisskeyAchievementsTypesLogin800RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin900RuRu login900_ = _TranslationsMisskeyAchievementsTypesLogin900RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLogin1000RuRu login1000_ = _TranslationsMisskeyAchievementsTypesLogin1000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteClipped1RuRu noteClipped1_ = _TranslationsMisskeyAchievementsTypesNoteClipped1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteFavorited1RuRu noteFavorited1_ = _TranslationsMisskeyAchievementsTypesNoteFavorited1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMyNoteFavorited1RuRu myNoteFavorited1_ = _TranslationsMisskeyAchievementsTypesMyNoteFavorited1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesProfileFilledRuRu profileFilled_ = _TranslationsMisskeyAchievementsTypesProfileFilledRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesMarkedAsCatRuRu markedAsCat_ = _TranslationsMisskeyAchievementsTypesMarkedAsCatRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing1RuRu following1_ = _TranslationsMisskeyAchievementsTypesFollowing1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing10RuRu following10_ = _TranslationsMisskeyAchievementsTypesFollowing10RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing50RuRu following50_ = _TranslationsMisskeyAchievementsTypesFollowing50RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing100RuRu following100_ = _TranslationsMisskeyAchievementsTypesFollowing100RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowing300RuRu following300_ = _TranslationsMisskeyAchievementsTypesFollowing300RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1RuRu followers1_ = _TranslationsMisskeyAchievementsTypesFollowers1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers10RuRu followers10_ = _TranslationsMisskeyAchievementsTypesFollowers10RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers50RuRu followers50_ = _TranslationsMisskeyAchievementsTypesFollowers50RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers100RuRu followers100_ = _TranslationsMisskeyAchievementsTypesFollowers100RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers300RuRu followers300_ = _TranslationsMisskeyAchievementsTypesFollowers300RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers500RuRu followers500_ = _TranslationsMisskeyAchievementsTypesFollowers500RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFollowers1000RuRu followers1000_ = _TranslationsMisskeyAchievementsTypesFollowers1000RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCollectAchievements30RuRu collectAchievements30_ = _TranslationsMisskeyAchievementsTypesCollectAchievements30RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewAchievements3minRuRu viewAchievements3min_ = _TranslationsMisskeyAchievementsTypesViewAchievements3minRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesILoveMisskeyRuRu iLoveMisskey_ = _TranslationsMisskeyAchievementsTypesILoveMisskeyRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesFoundTreasureRuRu foundTreasure_ = _TranslationsMisskeyAchievementsTypesFoundTreasureRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient30minRuRu client30min_ = _TranslationsMisskeyAchievementsTypesClient30minRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClient60minRuRu client60min_ = _TranslationsMisskeyAchievementsTypesClient60minRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minRuRu noteDeletedWithin1min_ = _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAtLateNightRuRu postedAtLateNight_ = _TranslationsMisskeyAchievementsTypesPostedAtLateNightRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPostedAt0min0secRuRu postedAt0min0sec_ = _TranslationsMisskeyAchievementsTypesPostedAt0min0secRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSelfQuoteRuRu selfQuote_ = _TranslationsMisskeyAchievementsTypesSelfQuoteRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesHtl20npmRuRu htl20npm_ = _TranslationsMisskeyAchievementsTypesHtl20npmRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesViewInstanceChartRuRu viewInstanceChart_ = _TranslationsMisskeyAchievementsTypesViewInstanceChartRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadRuRu outputHelloWorldOnScratchpad_ = _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesOpen3windowsRuRu open3windows_ = _TranslationsMisskeyAchievementsTypesOpen3windowsRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceRuRu driveFolderCircularReference_ = _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesReactWithoutReadRuRu reactWithoutRead_ = _TranslationsMisskeyAchievementsTypesReactWithoutReadRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesClickedClickHereRuRu clickedClickHere_ = _TranslationsMisskeyAchievementsTypesClickedClickHereRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesJustPlainLuckyRuRu justPlainLucky_ = _TranslationsMisskeyAchievementsTypesJustPlainLuckyRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesSetNameToSyuiloRuRu setNameToSyuilo_ = _TranslationsMisskeyAchievementsTypesSetNameToSyuiloRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1RuRu passedSinceAccountCreated1_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2RuRu passedSinceAccountCreated2_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3RuRu passedSinceAccountCreated3_ = _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3RuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayRuRu loggedInOnBirthday_ = _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayRuRu loggedInOnNewYearsDay_ = _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesCookieClickedRuRu cookieClicked_ = _TranslationsMisskeyAchievementsTypesCookieClickedRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBrainDiverRuRu brainDiver_ = _TranslationsMisskeyAchievementsTypesBrainDiverRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadRuRu bubbleGameExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadRuRu._(_root);
	@override late final _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadRuRu bubbleGameDoubleExplodingHead_ = _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadRuRu._(_root);
}

// Path: misskey.role_.priority_
class _TranslationsMisskeyRolePriorityRuRu extends TranslationsMisskeyRolePriorityEnUs {
	_TranslationsMisskeyRolePriorityRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get low => 'Низкий';
	@override String get middle => 'Средне';
	@override String get high => 'Высокий';
}

// Path: misskey.role_.options_
class _TranslationsMisskeyRoleOptionsRuRu extends TranslationsMisskeyRoleOptionsEnUs {
	_TranslationsMisskeyRoleOptionsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get gtlAvailable => 'Может просматривать глобальную ленту';
	@override String get ltlAvailable => 'Может просматривать местную ленту';
	@override String get canPublicNote => 'Может публиковать общедоступные заметки';
	@override String get canInvite => 'Может создавать пригласительные коды';
	@override String get canManageCustomEmojis => 'Управлять пользовательскими эмодзи';
	@override String get canManageAvatarDecorations => 'Управление украшениями аватара';
	@override String get driveCapacity => 'Доступное пространство на «диске»';
	@override String get alwaysMarkNsfw => 'Всегда отмечать файлы как «не для всех»';
	@override String get pinMax => 'Доступное количество закреплённых заметок';
	@override String get antennaMax => 'Доступное количество антенн';
	@override String get wordMuteMax => 'Доступное количество знаков в списке скрытия слов';
	@override String get webhookMax => 'Максимум web-хуков';
	@override String get clipMax => 'Максимальное количество подборок';
	@override String get noteEachClipsMax => 'Максимальное количество заметок в подборке';
	@override String get userListMax => 'Максимальное количество списков аккаунтов';
	@override String get userEachUserListsMax => 'Максимальное количество аккаунтов в списке';
	@override String get rateLimitFactor => 'Ограничение активности';
	@override String get descriptionOfRateLimitFactor => 'Меньшее значение — слабые ограничения, большее — сильные';
	@override String get canHideAds => 'Может скрыть рекламу';
	@override String get canImportFollowing => 'Можно импортировать подписчиков';
}

// Path: misskey.role_.condition_
class _TranslationsMisskeyRoleConditionRuRu extends TranslationsMisskeyRoleConditionEnUs {
	_TranslationsMisskeyRoleConditionRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get isLocal => 'Местный';
	@override String get isRemote => 'Неместный';
	@override String get createdLessThan => 'Аккаунт младше, чем...';
	@override String get createdMoreThan => 'Аккаунт старше, чем...';
	@override String get followersLessThanOrEq => 'Количество подписчиков не превышает…';
	@override String get followersMoreThanOrEq => 'Количество подписчиков не меньше чем…';
	@override String get followingLessThanOrEq => 'Количество подписок не превышает…';
	@override String get followingMoreThanOrEq => 'Количество подписок не меньше чем…';
	@override String get and => 'Выполнено несколько условий:..';
	@override String get or => 'Выполнено любое из условий:..';
	@override String get not => 'Кроме тех, у кого…';
}

// Path: misskey.email_.follow_
class _TranslationsMisskeyEmailFollowRuRu extends TranslationsMisskeyEmailFollowEnUs {
	_TranslationsMisskeyEmailFollowRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новый подписчик';
}

// Path: misskey.email_.receiveFollowRequest_
class _TranslationsMisskeyEmailReceiveFollowRequestRuRu extends TranslationsMisskeyEmailReceiveFollowRequestEnUs {
	_TranslationsMisskeyEmailReceiveFollowRequestRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новый запрос на подписку.';
}

// Path: misskey.theme_.keys
class _TranslationsMisskeyThemeKeysRuRu extends TranslationsMisskeyThemeKeysEnUs {
	_TranslationsMisskeyThemeKeysRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get accent => 'Акцент';
	@override String get bg => 'Фон';
	@override String get fg => 'Текст';
	@override String get focus => 'Фокус';
	@override String get indicator => 'Индикатор';
	@override String get panel => 'Панель';
	@override String get shadow => 'Тень';
	@override String get header => 'Заголовок';
	@override String get navBg => 'Фон боковой панели';
	@override String get navFg => 'Текст на боковой панели';
	@override String get navActive => 'Текст на боковой панели (активирован)';
	@override String get navIndicator => 'Индикатор на боковой панели';
	@override String get link => 'Ссылка';
	@override String get hashtag => 'Хештег';
	@override String get mention => 'Упоминание';
	@override String get mentionMe => 'Упоминания вас';
	@override String get renote => 'Репост';
	@override String get modalBg => 'Фон формы поверх страницы';
	@override String get divider => 'Разделитель';
	@override String get scrollbarHandle => 'Ползунок прокрутки';
	@override String get scrollbarHandleHover => 'Ползунок прокрутки (под указателем)';
	@override String get dateLabelFg => 'Текст отметки даты';
	@override String get infoBg => 'Фон сообщения';
	@override String get infoFg => 'Текст сообщения';
	@override String get infoWarnBg => 'Фон предупреждения';
	@override String get infoWarnFg => 'Текст предупреждения';
	@override String get toastBg => 'Фон оповещения';
	@override String get toastFg => 'Текст оповещения';
	@override String get buttonBg => 'Фон кнопки';
	@override String get buttonHoverBg => 'Текст кнопки';
	@override String get inputBorder => 'Рамка поля ввода';
	@override String get badge => 'Значок';
	@override String get messageBg => 'Фон беседы';
	@override String get fgHighlighted => 'Подсвеченный текст';
}

// Path: misskey.widgets_.userList_
class _TranslationsMisskeyWidgetsUserListRuRu extends TranslationsMisskeyWidgetsUserListEnUs {
	_TranslationsMisskeyWidgetsUserListRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get chooseList => 'Выберите список';
}

// Path: misskey.widgetOptions_.button_
class _TranslationsMisskeyWidgetOptionsButtonRuRu extends TranslationsMisskeyWidgetOptionsButtonEnUs {
	_TranslationsMisskeyWidgetOptionsButtonRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get colored => 'Выделена цветом';
}

// Path: misskey.widgetOptions_.clock_
class _TranslationsMisskeyWidgetOptionsClockRuRu extends TranslationsMisskeyWidgetOptionsClockEnUs {
	_TranslationsMisskeyWidgetOptionsClockRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get size => 'Размер';
}

// Path: misskey.widgetOptions_.birthdayFollowings_
class _TranslationsMisskeyWidgetOptionsBirthdayFollowingsRuRu extends TranslationsMisskeyWidgetOptionsBirthdayFollowingsEnUs {
	_TranslationsMisskeyWidgetOptionsBirthdayFollowingsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get period => 'Длительность';
}

// Path: misskey.postForm_.howToUse_
class _TranslationsMisskeyPostFormHowToUseRuRu extends TranslationsMisskeyPostFormHowToUseEnUs {
	_TranslationsMisskeyPostFormHowToUseRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get visibility_title => 'Видимость';
	@override String get menu_title => 'Меню';
}

// Path: misskey.postForm_.placeholders_
class _TranslationsMisskeyPostFormPlaceholdersRuRu extends TranslationsMisskeyPostFormPlaceholdersEnUs {
	_TranslationsMisskeyPostFormPlaceholdersRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get a => 'Как дела?';
	@override String get b => 'Что интересного вокруг?';
	@override String get c => 'Что грызёт тебя, дружище?';
	@override String get d => 'Есть что сказать?..';
	@override String get e => 'Напишите что-нибудь…';
	@override String get f => 'В ожидании, когда вы напишете…';
}

// Path: misskey.pages_.blocks
class _TranslationsMisskeyPagesBlocksRuRu extends TranslationsMisskeyPagesBlocksEnUs {
	_TranslationsMisskeyPagesBlocksRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get text => 'Текст';
	@override String get textarea => 'Текст в рамке';
	@override String get section => 'Раздел';
	@override String get image => 'Изображения';
	@override String get button => 'Кнопка';
	@override String get note => 'Встроенная заметка';
	@override late final _TranslationsMisskeyPagesBlocksNoteRuRu note_ = _TranslationsMisskeyPagesBlocksNoteRuRu._(_root);
}

// Path: misskey.notification_.types_
class _TranslationsMisskeyNotificationTypesRuRu extends TranslationsMisskeyNotificationTypesEnUs {
	_TranslationsMisskeyNotificationTypesRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get all => 'Все';
	@override String get follow => 'Подписки';
	@override String get mention => 'Упоминания';
	@override String get reply => 'Ответы';
	@override String get renote => 'Репосты';
	@override String get quote => 'Цитаты';
	@override String get reaction => 'Реакции';
	@override String get pollEnded => 'Окончания опросов';
	@override String get receiveFollowRequest => 'Получен запрос на подписку';
	@override String get followRequestAccepted => 'Запрос на подписку одобрен';
	@override String get achievementEarned => 'Получение достижений';
	@override String get login => 'Войти';
	@override String get app => 'Уведомления из приложений';
}

// Path: misskey.notification_.actions_
class _TranslationsMisskeyNotificationActionsRuRu extends TranslationsMisskeyNotificationActionsEnUs {
	_TranslationsMisskeyNotificationActionsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get followBack => 'отвечает взаимной подпиской';
	@override String get reply => 'Ответ';
	@override String get renote => 'Репост';
}

// Path: misskey.deck_.columns_
class _TranslationsMisskeyDeckColumnsRuRu extends TranslationsMisskeyDeckColumnsEnUs {
	_TranslationsMisskeyDeckColumnsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get main => 'Основная';
	@override String get widgets => 'Виджеты';
	@override String get notifications => 'Уведомления';
	@override String get tl => 'Лента';
	@override String get antenna => 'Антенны';
	@override String get list => 'Списки';
	@override String get channel => 'Каналы';
	@override String get mentions => 'Упоминания';
	@override String get direct => 'Личное';
	@override String get roleTimeline => 'История Ролей';
}

// Path: misskey.webhookSettings_.events_
class _TranslationsMisskeyWebhookSettingsEventsRuRu extends TranslationsMisskeyWebhookSettingsEventsEnUs {
	_TranslationsMisskeyWebhookSettingsEventsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get follow => 'Когда подписались на пользователя';
	@override String get followed => 'Когда на вас подписались';
	@override String get note => 'Когда создали заметку';
	@override String get reply => 'Когда получили ответ на заметку';
	@override String get renote => 'Когда вас репостнули';
	@override String get reaction => 'Когда получили реакцию';
	@override String get mention => 'Когда вас упоминают';
}

// Path: misskey.webhookSettings_.systemEvents_
class _TranslationsMisskeyWebhookSettingsSystemEventsRuRu extends TranslationsMisskeyWebhookSettingsSystemEventsEnUs {
	_TranslationsMisskeyWebhookSettingsSystemEventsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get abuseReport => 'Когда приходит жалоба';
	@override String get abuseReportResolved => 'Когда разрешается жалоба';
	@override String get userCreated => 'Когда создан пользователь';
}

// Path: misskey.abuseReport_.notificationRecipient_
class _TranslationsMisskeyAbuseReportNotificationRecipientRuRu extends TranslationsMisskeyAbuseReportNotificationRecipientEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRuRu recipientType_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRuRu._(_root);
	@override String get notifiedWebhook => 'Используемый Вебхук';
}

// Path: misskey.dataSaver_.code_
class _TranslationsMisskeyDataSaverCodeRuRu extends TranslationsMisskeyDataSaverCodeEnUs {
	_TranslationsMisskeyDataSaverCodeRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подсветка кода';
}

// Path: misskey.remoteLookupErrors_.noSuchObject_
class _TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRuRu extends TranslationsMisskeyRemoteLookupErrorsNoSuchObjectEnUs {
	_TranslationsMisskeyRemoteLookupErrorsNoSuchObjectRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не найдено';
}

// Path: misskey.imageEffector_.fxProps_
class _TranslationsMisskeyImageEffectorFxPropsRuRu extends TranslationsMisskeyImageEffectorFxPropsEnUs {
	_TranslationsMisskeyImageEffectorFxPropsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get angle => 'Угол';
	@override String get scale => 'Размер';
	@override String get size => 'Размер';
	@override String get offset => 'Позиция';
	@override String get color => 'Цвет';
	@override String get opacity => 'Непрозрачность';
	@override String get lightness => 'Осветление';
}

// Path: misskey.initialTutorial_.postNote_.visibility_
class _TranslationsMisskeyInitialTutorialPostNoteVisibilityRuRu extends TranslationsMisskeyInitialTutorialPostNoteVisibilityEnUs {
	_TranslationsMisskeyInitialTutorialPostNoteVisibilityRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get public => 'Твоя заметка будет видна всем.';
	@override String get doNotSendConfidencialOnDirect2 => 'Администратор целевого сервера может видеть что вы отправляете. Будьте осторожны с конфиденциальной информацией, когда отправляете личные заметки пользователям с ненадёжных серверов.';
}

// Path: misskey.achievements_.types_.notes1_
class _TranslationsMisskeyAchievementsTypesNotes1RuRu extends TranslationsMisskeyAchievementsTypesNotes1EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Первые шаги в Misskey';
	@override String get description => 'Опубликована первая заметка';
	@override String get flavor => 'Приятных дней с Misskey!';
}

// Path: misskey.achievements_.types_.notes10_
class _TranslationsMisskeyAchievementsTypesNotes10RuRu extends TranslationsMisskeyAchievementsTypesNotes10EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Несколько заметок';
	@override String get description => 'Опубликовано 10 заметок';
}

// Path: misskey.achievements_.types_.notes100_
class _TranslationsMisskeyAchievementsTypesNotes100RuRu extends TranslationsMisskeyAchievementsTypesNotes100EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Много заметок';
	@override String get description => 'Опубликовано 100 заметок';
}

// Path: misskey.achievements_.types_.notes500_
class _TranslationsMisskeyAchievementsTypesNotes500RuRu extends TranslationsMisskeyAchievementsTypesNotes500EnUs {
	_TranslationsMisskeyAchievementsTypesNotes500RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Всё в заметках';
	@override String get description => 'Опубликовано 500 заметок';
}

// Path: misskey.achievements_.types_.notes1000_
class _TranslationsMisskeyAchievementsTypesNotes1000RuRu extends TranslationsMisskeyAchievementsTypesNotes1000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes1000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Гора заметок';
	@override String get description => 'Опубликовано 1000 заметок';
}

// Path: misskey.achievements_.types_.notes5000_
class _TranslationsMisskeyAchievementsTypesNotes5000RuRu extends TranslationsMisskeyAchievementsTypesNotes5000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes5000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Заметки льются рекой';
	@override String get description => 'Опубликовано 5000 заметок';
}

// Path: misskey.achievements_.types_.notes10000_
class _TranslationsMisskeyAchievementsTypesNotes10000RuRu extends TranslationsMisskeyAchievementsTypesNotes10000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes10000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Превосходство в заметках';
	@override String get description => 'Опубликовано 10 000 заметок';
}

// Path: misskey.achievements_.types_.notes20000_
class _TranslationsMisskeyAchievementsTypesNotes20000RuRu extends TranslationsMisskeyAchievementsTypesNotes20000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes20000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нужно больше заметок!';
	@override String get description => 'Опубликовано 20 000 заметок';
}

// Path: misskey.achievements_.types_.notes30000_
class _TranslationsMisskeyAchievementsTypesNotes30000RuRu extends TranslationsMisskeyAchievementsTypesNotes30000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes30000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Заметки, заметки, заметки';
	@override String get description => 'Опубликовано 30 000 заметок';
}

// Path: misskey.achievements_.types_.notes40000_
class _TranslationsMisskeyAchievementsTypesNotes40000RuRu extends TranslationsMisskeyAchievementsTypesNotes40000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes40000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Фабрика заметок';
	@override String get description => 'Опубликовано 40 000 заметок';
}

// Path: misskey.achievements_.types_.notes50000_
class _TranslationsMisskeyAchievementsTypesNotes50000RuRu extends TranslationsMisskeyAchievementsTypesNotes50000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes50000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Планета заметок';
	@override String get description => 'Опубликовано 50 000 заметок';
}

// Path: misskey.achievements_.types_.notes60000_
class _TranslationsMisskeyAchievementsTypesNotes60000RuRu extends TranslationsMisskeyAchievementsTypesNotes60000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes60000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Замет-квазар';
	@override String get description => 'Опубликовано 60 000 заметок';
}

// Path: misskey.achievements_.types_.notes70000_
class _TranslationsMisskeyAchievementsTypesNotes70000RuRu extends TranslationsMisskeyAchievementsTypesNotes70000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes70000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чёрная дыра из заметок';
	@override String get description => 'Опубликовано 70 000 заметок';
}

// Path: misskey.achievements_.types_.notes80000_
class _TranslationsMisskeyAchievementsTypesNotes80000RuRu extends TranslationsMisskeyAchievementsTypesNotes80000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes80000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Галактика заметок';
	@override String get description => 'Опубликовано 80 000 заметок';
}

// Path: misskey.achievements_.types_.notes90000_
class _TranslationsMisskeyAchievementsTypesNotes90000RuRu extends TranslationsMisskeyAchievementsTypesNotes90000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes90000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вселенная заметок';
	@override String get description => 'Опубликовано 90 000 заметок';
}

// Path: misskey.achievements_.types_.notes100000_
class _TranslationsMisskeyAchievementsTypesNotes100000RuRu extends TranslationsMisskeyAchievementsTypesNotes100000EnUs {
	_TranslationsMisskeyAchievementsTypesNotes100000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'ALL YOUR NOTE ARE BELONG TO US';
	@override String get description => 'Опубликовано 100 000 заметок';
	@override String get flavor => 'Вам правда нужно столько писать?';
}

// Path: misskey.achievements_.types_.login3_
class _TranslationsMisskeyAchievementsTypesLogin3RuRu extends TranslationsMisskeyAchievementsTypesLogin3EnUs {
	_TranslationsMisskeyAchievementsTypesLogin3RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новичок Ⅰ';
	@override String get description => '3 дня на сайте';
	@override String get flavor => 'С сегодняшнего дня зовите меня просто мискиец';
}

// Path: misskey.achievements_.types_.login7_
class _TranslationsMisskeyAchievementsTypesLogin7RuRu extends TranslationsMisskeyAchievementsTypesLogin7EnUs {
	_TranslationsMisskeyAchievementsTypesLogin7RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новичок Ⅱ';
	@override String get description => 'Неделя на сайте';
	@override String get flavor => 'Кажется, вы начали свыкаться с этим, нет?';
}

// Path: misskey.achievements_.types_.login15_
class _TranslationsMisskeyAchievementsTypesLogin15RuRu extends TranslationsMisskeyAchievementsTypesLogin15EnUs {
	_TranslationsMisskeyAchievementsTypesLogin15RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Новичок Ⅲ';
	@override String get description => '15 дней на сайте';
}

// Path: misskey.achievements_.types_.login30_
class _TranslationsMisskeyAchievementsTypesLogin30RuRu extends TranslationsMisskeyAchievementsTypesLogin30EnUs {
	_TranslationsMisskeyAchievementsTypesLogin30RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мискиец Ⅰ';
	@override String get description => '30 дней на сайте';
}

// Path: misskey.achievements_.types_.login60_
class _TranslationsMisskeyAchievementsTypesLogin60RuRu extends TranslationsMisskeyAchievementsTypesLogin60EnUs {
	_TranslationsMisskeyAchievementsTypesLogin60RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мискиец Ⅱ';
	@override String get description => '60 дней на сайте';
}

// Path: misskey.achievements_.types_.login100_
class _TranslationsMisskeyAchievementsTypesLogin100RuRu extends TranslationsMisskeyAchievementsTypesLogin100EnUs {
	_TranslationsMisskeyAchievementsTypesLogin100RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мискиец Ⅲ';
	@override String get description => '100 дней на сайте';
	@override String get flavor => 'Жестокий мискиец';
}

// Path: misskey.achievements_.types_.login200_
class _TranslationsMisskeyAchievementsTypesLogin200RuRu extends TranslationsMisskeyAchievementsTypesLogin200EnUs {
	_TranslationsMisskeyAchievementsTypesLogin200RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсегдатай Ⅰ';
	@override String get description => '200 дней на сайте';
}

// Path: misskey.achievements_.types_.login300_
class _TranslationsMisskeyAchievementsTypesLogin300RuRu extends TranslationsMisskeyAchievementsTypesLogin300EnUs {
	_TranslationsMisskeyAchievementsTypesLogin300RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсегдатай Ⅱ';
	@override String get description => '300 дней на сайте';
}

// Path: misskey.achievements_.types_.login400_
class _TranslationsMisskeyAchievementsTypesLogin400RuRu extends TranslationsMisskeyAchievementsTypesLogin400EnUs {
	_TranslationsMisskeyAchievementsTypesLogin400RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Завсегдатай Ⅲ';
	@override String get description => '400 дней на сайте';
}

// Path: misskey.achievements_.types_.login500_
class _TranslationsMisskeyAchievementsTypesLogin500RuRu extends TranslationsMisskeyAchievementsTypesLogin500EnUs {
	_TranslationsMisskeyAchievementsTypesLogin500RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран Ⅰ';
	@override String get description => '500 дней на сайте';
	@override String get flavor => 'Господа, я люблю заметки';
}

// Path: misskey.achievements_.types_.login600_
class _TranslationsMisskeyAchievementsTypesLogin600RuRu extends TranslationsMisskeyAchievementsTypesLogin600EnUs {
	_TranslationsMisskeyAchievementsTypesLogin600RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран Ⅱ';
	@override String get description => '600 дней на сайте';
}

// Path: misskey.achievements_.types_.login700_
class _TranslationsMisskeyAchievementsTypesLogin700RuRu extends TranslationsMisskeyAchievementsTypesLogin700EnUs {
	_TranslationsMisskeyAchievementsTypesLogin700RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ветеран Ⅲ';
	@override String get description => '700 дней на сайте';
}

// Path: misskey.achievements_.types_.login800_
class _TranslationsMisskeyAchievementsTypesLogin800RuRu extends TranslationsMisskeyAchievementsTypesLogin800EnUs {
	_TranslationsMisskeyAchievementsTypesLogin800RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Повелитель заметок Ⅰ';
	@override String get description => '800 дней на сайте';
}

// Path: misskey.achievements_.types_.login900_
class _TranslationsMisskeyAchievementsTypesLogin900RuRu extends TranslationsMisskeyAchievementsTypesLogin900EnUs {
	_TranslationsMisskeyAchievementsTypesLogin900RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Повелитель заметок Ⅱ';
	@override String get description => '900 дней на сайте';
}

// Path: misskey.achievements_.types_.login1000_
class _TranslationsMisskeyAchievementsTypesLogin1000RuRu extends TranslationsMisskeyAchievementsTypesLogin1000EnUs {
	_TranslationsMisskeyAchievementsTypesLogin1000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Повелитель заметок Ⅲ';
	@override String get description => '1000 дней на сайте';
	@override String get flavor => 'Спасибо, что пользуетесь Misskey!';
}

// Path: misskey.achievements_.types_.noteClipped1_
class _TranslationsMisskeyAchievementsTypesNoteClipped1RuRu extends TranslationsMisskeyAchievementsTypesNoteClipped1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteClipped1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нельзя не сохранить';
	@override String get description => 'Первая заметка в подборке';
}

// Path: misskey.achievements_.types_.noteFavorited1_
class _TranslationsMisskeyAchievementsTypesNoteFavorited1RuRu extends TranslationsMisskeyAchievementsTypesNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesNoteFavorited1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Смотрящий на звёзды';
	@override String get description => 'Первое добавление в избранное';
}

// Path: misskey.achievements_.types_.myNoteFavorited1_
class _TranslationsMisskeyAchievementsTypesMyNoteFavorited1RuRu extends TranslationsMisskeyAchievementsTypesMyNoteFavorited1EnUs {
	_TranslationsMisskeyAchievementsTypesMyNoteFavorited1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'В поиске звёзд';
	@override String get description => 'Кому-то понравилась ваша заметка';
}

// Path: misskey.achievements_.types_.profileFilled_
class _TranslationsMisskeyAchievementsTypesProfileFilledRuRu extends TranslationsMisskeyAchievementsTypesProfileFilledEnUs {
	_TranslationsMisskeyAchievementsTypesProfileFilledRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Приготовления закончены';
	@override String get description => 'Заполнен профиль';
}

// Path: misskey.achievements_.types_.markedAsCat_
class _TranslationsMisskeyAchievementsTypesMarkedAsCatRuRu extends TranslationsMisskeyAchievementsTypesMarkedAsCatEnUs {
	_TranslationsMisskeyAchievementsTypesMarkedAsCatRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш покорный слуга кот';
	@override String get description => 'Включена опция «Аккаунт кота»';
	@override String get flavor => 'Позвольте представиться: я — кот, просто кот, у меня еще нет имени.';
}

// Path: misskey.achievements_.types_.following1_
class _TranslationsMisskeyAchievementsTypesFollowing1RuRu extends TranslationsMisskeyAchievementsTypesFollowing1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Я не один';
	@override String get description => 'Сделана первая подписка';
}

// Path: misskey.achievements_.types_.following10_
class _TranslationsMisskeyAchievementsTypesFollowing10RuRu extends TranslationsMisskeyAchievementsTypesFollowing10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing10RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не останавливайся… Не останавливайся…';
	@override String get description => 'Количество подписок достигло 10';
}

// Path: misskey.achievements_.types_.following50_
class _TranslationsMisskeyAchievementsTypesFollowing50RuRu extends TranslationsMisskeyAchievementsTypesFollowing50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing50RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Много друзей';
	@override String get description => 'Количество подписок достигло 50';
}

// Path: misskey.achievements_.types_.following100_
class _TranslationsMisskeyAchievementsTypesFollowing100RuRu extends TranslationsMisskeyAchievementsTypesFollowing100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing100RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сотня друзей';
	@override String get description => 'Количество подписок достигло 100';
}

// Path: misskey.achievements_.types_.following300_
class _TranslationsMisskeyAchievementsTypesFollowing300RuRu extends TranslationsMisskeyAchievementsTypesFollowing300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowing300RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Друзья в избытке';
	@override String get description => 'Количество подписок достигло 300';
}

// Path: misskey.achievements_.types_.followers1_
class _TranslationsMisskeyAchievementsTypesFollowers1RuRu extends TranslationsMisskeyAchievementsTypesFollowers1EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Первый подписчик';
	@override String get description => 'Появился 1 подписчик';
}

// Path: misskey.achievements_.types_.followers10_
class _TranslationsMisskeyAchievementsTypesFollowers10RuRu extends TranslationsMisskeyAchievementsTypesFollowers10EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers10RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Следуй за мной!';
	@override String get description => 'Количество подписчиков достигло 10';
}

// Path: misskey.achievements_.types_.followers50_
class _TranslationsMisskeyAchievementsTypesFollowers50RuRu extends TranslationsMisskeyAchievementsTypesFollowers50EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers50RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Один за другим';
	@override String get description => 'Количество подписчиков достигло 50';
}

// Path: misskey.achievements_.types_.followers100_
class _TranslationsMisskeyAchievementsTypesFollowers100RuRu extends TranslationsMisskeyAchievementsTypesFollowers100EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers100RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Всеобщий любимец';
	@override String get description => 'Количество подписчиков достигло 100';
}

// Path: misskey.achievements_.types_.followers300_
class _TranslationsMisskeyAchievementsTypesFollowers300RuRu extends TranslationsMisskeyAchievementsTypesFollowers300EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers300RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'В очередь!';
	@override String get description => 'Количество подписчиков достигло 300';
}

// Path: misskey.achievements_.types_.followers500_
class _TranslationsMisskeyAchievementsTypesFollowers500RuRu extends TranslationsMisskeyAchievementsTypesFollowers500EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers500RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Радиостанция';
	@override String get description => 'Количество подписчиков достигло 500';
}

// Path: misskey.achievements_.types_.followers1000_
class _TranslationsMisskeyAchievementsTypesFollowers1000RuRu extends TranslationsMisskeyAchievementsTypesFollowers1000EnUs {
	_TranslationsMisskeyAchievementsTypesFollowers1000RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Авторитет';
	@override String get description => 'Количество подписчиков достигло 1000';
}

// Path: misskey.achievements_.types_.collectAchievements30_
class _TranslationsMisskeyAchievementsTypesCollectAchievements30RuRu extends TranslationsMisskeyAchievementsTypesCollectAchievements30EnUs {
	_TranslationsMisskeyAchievementsTypesCollectAchievements30RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Достигатор';
	@override String get description => 'Получено 30 достижений';
}

// Path: misskey.achievements_.types_.viewAchievements3min_
class _TranslationsMisskeyAchievementsTypesViewAchievements3minRuRu extends TranslationsMisskeyAchievementsTypesViewAchievements3minEnUs {
	_TranslationsMisskeyAchievementsTypesViewAchievements3minRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Любовь к успехам';
	@override String get description => 'Более 3 минут любования достижениями';
}

// Path: misskey.achievements_.types_.iLoveMisskey_
class _TranslationsMisskeyAchievementsTypesILoveMisskeyRuRu extends TranslationsMisskeyAchievementsTypesILoveMisskeyEnUs {
	_TranslationsMisskeyAchievementsTypesILoveMisskeyRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Я люблю Misskey';
	@override String get description => 'Написана заметка «I ❤ #Misskey»';
	@override String get flavor => 'Спасибо за поддержку Misskey! Ваша команда разработчиков';
}

// Path: misskey.achievements_.types_.foundTreasure_
class _TranslationsMisskeyAchievementsTypesFoundTreasureRuRu extends TranslationsMisskeyAchievementsTypesFoundTreasureEnUs {
	_TranslationsMisskeyAchievementsTypesFoundTreasureRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Охота за сокровищами';
	@override String get description => 'Найдено спрятанное сокровище';
}

// Path: misskey.achievements_.types_.client30min_
class _TranslationsMisskeyAchievementsTypesClient30minRuRu extends TranslationsMisskeyAchievementsTypesClient30minEnUs {
	_TranslationsMisskeyAchievementsTypesClient30minRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перерыв на обед';
	@override String get description => 'Прошло 30 минут с момента запуска клиента';
}

// Path: misskey.achievements_.types_.client60min_
class _TranslationsMisskeyAchievementsTypesClient60minRuRu extends TranslationsMisskeyAchievementsTypesClient60minEnUs {
	_TranslationsMisskeyAchievementsTypesClient60minRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не наглядеться на Misskey';
	@override String get description => 'Misskey был открыт 60 минут подряд';
}

// Path: misskey.achievements_.types_.noteDeletedWithin1min_
class _TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minRuRu extends TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minEnUs {
	_TranslationsMisskeyAchievementsTypesNoteDeletedWithin1minRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ой, нет!';
	@override String get description => 'Заметка удалена через минуту после публикации';
}

// Path: misskey.achievements_.types_.postedAtLateNight_
class _TranslationsMisskeyAchievementsTypesPostedAtLateNightRuRu extends TranslationsMisskeyAchievementsTypesPostedAtLateNightEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAtLateNightRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Житель ночи';
	@override String get description => 'Заметка опубликована в глухую ночь';
	@override String get flavor => 'Вроде бы пора спать';
}

// Path: misskey.achievements_.types_.postedAt0min0sec_
class _TranslationsMisskeyAchievementsTypesPostedAt0min0secRuRu extends TranslationsMisskeyAchievementsTypesPostedAt0min0secEnUs {
	_TranslationsMisskeyAchievementsTypesPostedAt0min0secRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Говорящие часы';
	@override String get description => 'Заметка опубликована ровно в 0 минут 0 секунд';
	@override String get flavor => 'Дин-дон дин-дон';
}

// Path: misskey.achievements_.types_.selfQuote_
class _TranslationsMisskeyAchievementsTypesSelfQuoteRuRu extends TranslationsMisskeyAchievementsTypesSelfQuoteEnUs {
	_TranslationsMisskeyAchievementsTypesSelfQuoteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Самовоспроизведение';
	@override String get description => 'Процитирована собственная заметка';
}

// Path: misskey.achievements_.types_.htl20npm_
class _TranslationsMisskeyAchievementsTypesHtl20npmRuRu extends TranslationsMisskeyAchievementsTypesHtl20npmEnUs {
	_TranslationsMisskeyAchievementsTypesHtl20npmRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'В потоке';
	@override String get description => 'Достигнута скорость домашней ленты в 20 з/мин (заметок минуту)';
}

// Path: misskey.achievements_.types_.viewInstanceChart_
class _TranslationsMisskeyAchievementsTypesViewInstanceChartRuRu extends TranslationsMisskeyAchievementsTypesViewInstanceChartEnUs {
	_TranslationsMisskeyAchievementsTypesViewInstanceChartRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Аналитик';
	@override String get description => 'Просмотрены статистические диаграммы инстанса';
}

// Path: misskey.achievements_.types_.outputHelloWorldOnScratchpad_
class _TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadRuRu extends TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadEnUs {
	_TranslationsMisskeyAchievementsTypesOutputHelloWorldOnScratchpadRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Привет, мир!';
	@override String get description => 'Выведен текст «hello world» в Когтеточке';
}

// Path: misskey.achievements_.types_.open3windows_
class _TranslationsMisskeyAchievementsTypesOpen3windowsRuRu extends TranslationsMisskeyAchievementsTypesOpen3windowsEnUs {
	_TranslationsMisskeyAchievementsTypesOpen3windowsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Многооконный';
	@override String get description => 'Открыто одновременно 3 окна';
}

// Path: misskey.achievements_.types_.driveFolderCircularReference_
class _TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceRuRu extends TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceEnUs {
	_TranslationsMisskeyAchievementsTypesDriveFolderCircularReferenceRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Циклическая ссылка';
	@override String get description => 'Попытка создать на «диске» рекурсивно вложенную папку';
}

// Path: misskey.achievements_.types_.reactWithoutRead_
class _TranslationsMisskeyAchievementsTypesReactWithoutReadRuRu extends TranslationsMisskeyAchievementsTypesReactWithoutReadEnUs {
	_TranslationsMisskeyAchievementsTypesReactWithoutReadRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Не читай @ отвечай!';
	@override String get description => 'На заметку более чем 100 знаков написан ответ в первые же 3 секунды с её появления.';
}

// Path: misskey.achievements_.types_.clickedClickHere_
class _TranslationsMisskeyAchievementsTypesClickedClickHereRuRu extends TranslationsMisskeyAchievementsTypesClickedClickHereEnUs {
	_TranslationsMisskeyAchievementsTypesClickedClickHereRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нажмите здесь';
	@override String get description => 'Нажато здесь';
}

// Path: misskey.achievements_.types_.justPlainLucky_
class _TranslationsMisskeyAchievementsTypesJustPlainLuckyRuRu extends TranslationsMisskeyAchievementsTypesJustPlainLuckyEnUs {
	_TranslationsMisskeyAchievementsTypesJustPlainLuckyRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Чистая удача';
	@override String get description => 'Может достаться с вероятностью 0,005% каждые 10 секунд.';
}

// Path: misskey.achievements_.types_.setNameToSyuilo_
class _TranslationsMisskeyAchievementsTypesSetNameToSyuiloRuRu extends TranslationsMisskeyAchievementsTypesSetNameToSyuiloEnUs {
	_TranslationsMisskeyAchievementsTypesSetNameToSyuiloRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Комплекс бога';
	@override String get description => 'Установлено «syuilo» в качестве имени';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated1_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1RuRu extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated1RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Первая годовщина';
	@override String get description => 'Прошёл 1 год с момента регистрации';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated2_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2RuRu extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated2RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вторая годовщина';
	@override String get description => 'Прошло 2 года с момента регистрации';
}

// Path: misskey.achievements_.types_.passedSinceAccountCreated3_
class _TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3RuRu extends TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3EnUs {
	_TranslationsMisskeyAchievementsTypesPassedSinceAccountCreated3RuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Третья годовщина';
	@override String get description => 'Прошло 3 года с момента регистрации';
}

// Path: misskey.achievements_.types_.loggedInOnBirthday_
class _TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayRuRu extends TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnBirthdayRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'С днём рождения!';
	@override String get description => 'Вход на сайт в свой день рождения';
}

// Path: misskey.achievements_.types_.loggedInOnNewYearsDay_
class _TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayRuRu extends TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayEnUs {
	_TranslationsMisskeyAchievementsTypesLoggedInOnNewYearsDayRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'С Новым годом!';
	@override String get description => 'Вход на сайт в первый день года';
	@override String get flavor => 'Желаем отличного года на нашем сайте!';
}

// Path: misskey.achievements_.types_.cookieClicked_
class _TranslationsMisskeyAchievementsTypesCookieClickedRuRu extends TranslationsMisskeyAchievementsTypesCookieClickedEnUs {
	_TranslationsMisskeyAchievementsTypesCookieClickedRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Игра, в которой вы щёлкаете по печенькам';
	@override String get description => 'Нажато печенье';
	@override String get flavor => 'Стоп, вы вообще на том сайте-то?';
}

// Path: misskey.achievements_.types_.brainDiver_
class _TranslationsMisskeyAchievementsTypesBrainDiverRuRu extends TranslationsMisskeyAchievementsTypesBrainDiverEnUs {
	_TranslationsMisskeyAchievementsTypesBrainDiverRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Brain Diver';
	@override String get description => 'Опубликована ссылка на песню «Brain Diver»';
	@override String get flavor => 'Мисски-Мисски Ла-Ту-Ма';
}

// Path: misskey.achievements_.types_.bubbleGameExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadRuRu extends TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameExplodingHeadRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => '🤯';
	@override String get description => 'Самый большой объект в Bubble game';
}

// Path: misskey.achievements_.types_.bubbleGameDoubleExplodingHead_
class _TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadRuRu extends TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadEnUs {
	_TranslationsMisskeyAchievementsTypesBubbleGameDoubleExplodingHeadRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Двойной🤯';
	@override String get description => 'Два самых больших объекта в Bubble game одновременно!';
}

// Path: misskey.pages_.blocks.note_
class _TranslationsMisskeyPagesBlocksNoteRuRu extends TranslationsMisskeyPagesBlocksNoteEnUs {
	_TranslationsMisskeyPagesBlocksNoteRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get id => 'Идентификатор заметки';
	@override String get idDescription => 'Можно также вставить ссылку на заметку.';
	@override String get detailed => 'Подробный вид';
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRuRu extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Электронная почта';
	@override String get webhook => 'Вебхук';
	@override late final _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsRuRu captions_ = _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsRuRu._(_root);
}

// Path: misskey.abuseReport_.notificationRecipient_.recipientType_.captions_
class _TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsRuRu extends TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsEnUs {
	_TranslationsMisskeyAbuseReportNotificationRecipientRecipientTypeCaptionsRuRu._(TranslationsRuRu root) : this._root = root, super.internal(root);

	final TranslationsRuRu _root; // ignore: unused_field

	// Translations
	@override String get mail => 'Уведомлять модераторов по почте (только при поступлении жалоб)';
	@override String get webhook => 'Отправить уведомление Системному Вебхуку при получении или разрешении жалоб.';
}
