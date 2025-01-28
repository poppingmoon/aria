import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:file/file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_apns_only/flutter_apns_only.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/util/legacy_to_async_migration_util.dart';
import 'package:shared_preferences_platform_interface/types.dart';
import 'package:unifiedpush/unifiedpush.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:webpush_encryption/webpush_encryption.dart';
import 'package:window_manager/window_manager.dart';

import 'constant/colors.dart';
import 'constant/notification_channel_id.dart';
import 'constant/shortcuts.dart';
import 'extension/user_extension.dart';
import 'gen/assets.gen.dart';
import 'hook/on_window_move_hook.dart';
import 'hook/on_window_moved_hook.dart';
import 'hook/on_window_resize_hook.dart';
import 'hook/on_window_resized_hook.dart';
import 'i18n/strings.g.dart';
import 'model/account.dart';
import 'model/id.dart';
import 'provider/apns_push_connector_provider.dart';
import 'provider/cache_manager_provider.dart';
import 'provider/general_settings_notifier_provider.dart';
import 'provider/push_notification_notifier_provider.dart';
import 'provider/shared_preferences_provider.dart';
import 'provider/theme_data_provider.dart';
import 'provider/unified_push_endpoint_notifier_provider.dart';
import 'provider/user_ids_notifier_provider.dart';
import 'provider/web_push_key_set_notifier_provider.dart';
import 'provider/window_position_repository_provider.dart';
import 'provider/window_size_repository_provider.dart';
import 'repository/window_position_repository.dart';
import 'repository/window_size_repository.dart';
import 'router/router.dart';
import 'rust/frb_generated.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(
      ['BIZ UDGothic'],
      await rootBundle.loadString(Assets.fonts.bIZUDGothic.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['BIZ UDMincho'],
      await rootBundle.loadString(Assets.fonts.bIZUDMincho.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['M PLUS 1'],
      await rootBundle.loadString(Assets.fonts.mplus1.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['M PLUS 2'],
      await rootBundle.loadString(Assets.fonts.mplus2.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['Noto Sans JP'],
      await rootBundle.loadString(Assets.fonts.notoSansJP.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['Noto Sans KR'],
      await rootBundle.loadString(Assets.fonts.notoSansKR.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['Noto Sans SC'],
      await rootBundle.loadString(Assets.fonts.notoSansSC.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['Noto Sans TC'],
      await rootBundle.loadString(Assets.fonts.notoSansTC.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['Noto Serif JP'],
      await rootBundle.loadString(Assets.fonts.notoSerifJP.ofl),
    );
    yield LicenseEntryWithLineBreaks(
      ['Pretendard'],
      await rootBundle.loadString(Assets.fonts.pretendard.license),
    );
    yield LicenseEntryWithLineBreaks(
      ['misskey'],
      await rootBundle.loadString(Assets.misskey.copying),
    );
    yield LicenseEntryWithLineBreaks(
      ['misskey'],
      await rootBundle.loadString(Assets.misskey.license),
    );
  });
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(),
  );
  const migrationCompletedKey = 'migrationCompleted';
  if (!prefs.containsKey(migrationCompletedKey)) {
    await migrateLegacySharedPreferencesToSharedPreferencesAsyncIfNecessary(
      legacySharedPreferencesInstance: await SharedPreferences.getInstance(),
      sharedPreferencesAsyncOptions: const SharedPreferencesOptions(),
      migrationCompletedKey: migrationCompletedKey,
    );
    await prefs.reloadCache();
  }
  if (defaultTargetPlatform
      case TargetPlatform.linux ||
          TargetPlatform.macOS ||
          TargetPlatform.windows) {
    await windowManager.ensureInitialized();
    final size = WindowSizeRepository(prefs).getSize();
    final position = WindowPositionRepository(prefs).getPosition();
    final options = WindowOptions(size: size);
    await windowManager.waitUntilReadyToShow(options, () async {
      if (position != null) {
        await windowManager.setPosition(position);
      }
      await windowManager.show();
      await windowManager.focus();
    });
  }
  runApp(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: TranslationProvider(child: const Aria()),
    ),
  );
}

class Aria extends HookConsumerWidget {
  const Aria({super.key});

  Future<void> _init(WidgetRef ref) async {
    final generalSettings = ref.read(generalSettingsNotifierProvider);
    Future(() {
      if (generalSettings.locale case final locale?) {
        LocaleSettings.setLocale(locale);
      } else {
        LocaleSettings.useDeviceLocale();
      }
    }).ignore();
    if (generalSettings.keepScreenOn) {
      WakelockPlus.enable().ignore();
    }
    RustLib.init().ignore();

    if (defaultTargetPlatform == TargetPlatform.android) {
      final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      await flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('ic_notification'),
        ),
        onDidReceiveNotificationResponse: (response) =>
            _onDidReceiveNotificationResponse(ref, response),
      );

      await UnifiedPush.initialize(
        onNewEndpoint: (endpoint, instance) => ref
            .read(unifiedPushEndpointNotifierProvider(instance).notifier)
            .updateEndpoint(endpoint),
        onRegistrationFailed: (instance) => ref
            .read(unifiedPushEndpointNotifierProvider(instance).notifier)
            .remove(),
        onUnregistered: (instance) => ref
            .read(unifiedPushEndpointNotifierProvider(instance).notifier)
            .remove(),
        onMessage: (message, instance) async {
          Account account = Account.fromString(instance);
          final keySet = await ref.read(
            webPushKeySetNotifierNotifierProvider(account).future,
          );

          final PushNotification notification;
          if (keySet != null) {
            final decrypted = await WebPush().decrypt(keySet, message);
            final webPushMessage =
                jsonDecode(utf8.decode(decrypted)) as Map<String, dynamic>;
            notification = PushNotification.fromJson(webPushMessage);
          } else {
            final fcmMessage =
                jsonDecode(utf8.decode(message)) as Map<String, dynamic>;
            fcmMessage['body'] = jsonDecode(fcmMessage['body'] as String);
            notification = PushNotification.fromJson(fcmMessage);
            account = ref
                    .read(userIdsNotifierProvider)
                    .entries
                    .firstWhereOrNull((e) => e.value == notification.userId)
                    ?.key ??
                account;
          }

          final currentLocale = LocaleSettings.currentLocale;
          if (generalSettings.locale case final locale?
              when locale != currentLocale) {
            await LocaleSettings.setLocale(locale);
          } else if (AppLocaleUtils.findDeviceLocale() != currentLocale) {
            await LocaleSettings.useDeviceLocale();
          }

          final title = switch (notification.body?.type) {
            NotificationType.follow => t.misskey.notification_.youWereFollowed,
            NotificationType.mention => t.misskey.notification_.youGotMention(
                name: notification.body?.user?.nameOrUsername ?? '',
              ),
            NotificationType.reply => t.misskey.notification_.youGotReply(
                name: notification.body?.user?.nameOrUsername ?? '',
              ),
            NotificationType.renote => t.misskey.notification_.youRenoted(
                name: notification.body?.user?.nameOrUsername ?? '',
              ),
            NotificationType.quote => t.misskey.notification_.youGotQuote(
                name: notification.body?.user?.nameOrUsername ?? '',
              ),
            NotificationType.note => t.misskey.notification_.newNote,
            NotificationType.reaction => [
                notification.body?.reaction?.split('@')[0].replaceAll(':', ''),
                notification.body?.user?.nameOrUsername,
              ].nonNulls.join(' '),
            NotificationType.receiveFollowRequest =>
              t.misskey.notification_.youReceivedFollowRequest,
            NotificationType.followRequestAccepted =>
              t.misskey.notification_.yourFollowRequestAccepted,
            NotificationType.achievementEarned =>
              t.misskey.notification_.achievementEarned,
            NotificationType.login => t.misskey.notification_.login,
            NotificationType.exportCompleted =>
              t.misskey.notification_.exportOfXCompleted(
                x: switch (notification.body?.exportedEntity) {
                  UserExportableEntities.antenna => t.misskey.antennas,
                  UserExportableEntities.blocking => t.misskey.blockedUsers,
                  UserExportableEntities.clip => t.misskey.clips,
                  UserExportableEntities.customEmoji => t.misskey.customEmojis,
                  UserExportableEntities.favorite => t.misskey.favorites,
                  UserExportableEntities.following => t.misskey.following,
                  UserExportableEntities.muting => t.misskey.mutedUsers,
                  UserExportableEntities.note => t.misskey.notes,
                  UserExportableEntities.userList => t.misskey.lists,
                  null => '',
                },
              ),
            NotificationType.pollEnded => t.misskey.notification_.pollEnded,
            NotificationType.roleAssigned =>
              t.misskey.notification_.roleAssigned,
            NotificationType.app =>
              notification.body?.header ?? notification.body?.body,
            NotificationType.test => t.misskey.notification_.testNotification,
            _ => null,
          };
          final body = switch (notification.body?.type) {
            NotificationType.follow ||
            NotificationType.receiveFollowRequest ||
            NotificationType.followRequestAccepted =>
              notification.body?.user?.nameOrUsername,
            NotificationType.mention ||
            NotificationType.reply ||
            NotificationType.renote ||
            NotificationType.quote ||
            NotificationType.note ||
            NotificationType.reaction ||
            NotificationType.pollEnded =>
              notification.body?.note?.text,
            NotificationType.achievementEarned => switch (
                  notification.body?.achievement) {
                'notes1' => t.misskey.achievements_.types_.notes1_.title,
                'notes10' => t.misskey.achievements_.types_.notes10_.title,
                'notes100' => t.misskey.achievements_.types_.notes100_.title,
                'notes500' => t.misskey.achievements_.types_.notes500_.title,
                'notes1000' => t.misskey.achievements_.types_.notes1000_.title,
                'notes5000' => t.misskey.achievements_.types_.notes5000_.title,
                'notes10000' =>
                  t.misskey.achievements_.types_.notes10000_.title,
                'notes20000' =>
                  t.misskey.achievements_.types_.notes20000_.title,
                'notes30000' =>
                  t.misskey.achievements_.types_.notes30000_.title,
                'notes40000' =>
                  t.misskey.achievements_.types_.notes40000_.title,
                'notes50000' =>
                  t.misskey.achievements_.types_.notes50000_.title,
                'notes60000' =>
                  t.misskey.achievements_.types_.notes60000_.title,
                'notes70000' =>
                  t.misskey.achievements_.types_.notes70000_.title,
                'notes80000' =>
                  t.misskey.achievements_.types_.notes80000_.title,
                'notes90000' =>
                  t.misskey.achievements_.types_.notes90000_.title,
                'notes100000' =>
                  t.misskey.achievements_.types_.notes100000_.title,
                'login3' => t.misskey.achievements_.types_.login3_.title,
                'login7' => t.misskey.achievements_.types_.login7_.title,
                'login15' => t.misskey.achievements_.types_.login15_.title,
                'login30' => t.misskey.achievements_.types_.login30_.title,
                'login60' => t.misskey.achievements_.types_.login60_.title,
                'login100' => t.misskey.achievements_.types_.login100_.title,
                'login200' => t.misskey.achievements_.types_.login200_.title,
                'login300' => t.misskey.achievements_.types_.login300_.title,
                'login400' => t.misskey.achievements_.types_.login400_.title,
                'login500' => t.misskey.achievements_.types_.login500_.title,
                'login600' => t.misskey.achievements_.types_.login600_.title,
                'login700' => t.misskey.achievements_.types_.login700_.title,
                'login800' => t.misskey.achievements_.types_.login800_.title,
                'login900' => t.misskey.achievements_.types_.login900_.title,
                'login1000' => t.misskey.achievements_.types_.login1000_.title,
                'noteClipped1' =>
                  t.misskey.achievements_.types_.noteClipped1_.title,
                'noteFavorited1' =>
                  t.misskey.achievements_.types_.noteFavorited1_.title,
                'myNoteFavorited1' =>
                  t.misskey.achievements_.types_.myNoteFavorited1_.title,
                'profileFilled' =>
                  t.misskey.achievements_.types_.profileFilled_.title,
                'markedAsCat' =>
                  t.misskey.achievements_.types_.markedAsCat_.title,
                'following1' =>
                  t.misskey.achievements_.types_.following1_.title,
                'following10' =>
                  t.misskey.achievements_.types_.following10_.title,
                'following50' =>
                  t.misskey.achievements_.types_.following50_.title,
                'following100' =>
                  t.misskey.achievements_.types_.following100_.title,
                'following300' =>
                  t.misskey.achievements_.types_.following300_.title,
                'followers1' =>
                  t.misskey.achievements_.types_.followers1_.title,
                'followers10' =>
                  t.misskey.achievements_.types_.followers10_.title,
                'followers50' =>
                  t.misskey.achievements_.types_.followers50_.title,
                'followers100' =>
                  t.misskey.achievements_.types_.followers100_.title,
                'followers300' =>
                  t.misskey.achievements_.types_.followers300_.title,
                'followers500' =>
                  t.misskey.achievements_.types_.followers500_.title,
                'followers1000' =>
                  t.misskey.achievements_.types_.followers1000_.title,
                'collectAchievements30' =>
                  t.misskey.achievements_.types_.collectAchievements30_.title,
                'viewAchievements3min' =>
                  t.misskey.achievements_.types_.viewAchievements3min_.title,
                'iLoveMisskey' =>
                  t.misskey.achievements_.types_.iLoveMisskey_.title,
                'foundTreasure' =>
                  t.misskey.achievements_.types_.foundTreasure_.title,
                'client30min' =>
                  t.misskey.achievements_.types_.client30min_.title,
                'client60min' =>
                  t.misskey.achievements_.types_.client60min_.title,
                'noteDeletedWithin1min' =>
                  t.misskey.achievements_.types_.noteDeletedWithin1min_.title,
                'postedAtLateNight' =>
                  t.misskey.achievements_.types_.postedAtLateNight_.title,
                'postedAt0min0sec' =>
                  t.misskey.achievements_.types_.postedAt0min0sec_.title,
                'selfQuote' => t.misskey.achievements_.types_.selfQuote_.title,
                'htl20npm' => t.misskey.achievements_.types_.htl20npm_.title,
                'viewInstanceChart' =>
                  t.misskey.achievements_.types_.viewInstanceChart_.title,
                'outputHelloWorldOnScratchpad' => t.misskey.achievements_.types_
                    .outputHelloWorldOnScratchpad_.title,
                'open3windows' =>
                  t.misskey.achievements_.types_.open3windows_.title,
                'driveFolderCircularReference' => t.misskey.achievements_.types_
                    .driveFolderCircularReference_.title,
                'reactWithoutRead' =>
                  t.misskey.achievements_.types_.reactWithoutRead_.title,
                'clickedClickHere' =>
                  t.misskey.achievements_.types_.clickedClickHere_.title,
                'justPlainLucky' =>
                  t.misskey.achievements_.types_.justPlainLucky_.title,
                'setNameToSyuilo' =>
                  t.misskey.achievements_.types_.setNameToSyuilo_.title,
                'passedSinceAccountCreated1' => t.misskey.achievements_.types_
                    .passedSinceAccountCreated1_.title,
                'passedSinceAccountCreated2' => t.misskey.achievements_.types_
                    .passedSinceAccountCreated2_.title,
                'passedSinceAccountCreated3' => t.misskey.achievements_.types_
                    .passedSinceAccountCreated3_.title,
                'loggedInOnBirthday' =>
                  t.misskey.achievements_.types_.loggedInOnBirthday_.title,
                'loggedInOnNewYearsDay' =>
                  t.misskey.achievements_.types_.loggedInOnNewYearsDay_.title,
                'cookieClicked' =>
                  t.misskey.achievements_.types_.cookieClicked_.title,
                'brainDiver' =>
                  t.misskey.achievements_.types_.brainDiver_.title,
                'smashTestNotificationButton' => t.misskey.achievements_.types_
                    .smashTestNotificationButton_.title,
                'tutorialCompleted' =>
                  t.misskey.achievements_.types_.tutorialCompleted_.title,
                'bubbleGameExplodingHead' =>
                  t.misskey.achievements_.types_.bubbleGameExplodingHead_.title,
                'bubbleGameDoubleExplodingHead' => t.misskey.achievements_
                    .types_.bubbleGameDoubleExplodingHead_.title,
                _ => null,
              },
            NotificationType.roleAssigned => notification.body?.role?.name,
            NotificationType.app => notification.body?.header != null
                ? notification.body?.body
                : null,
            NotificationType.test =>
              t.misskey.notification_.notificationWillBeDisplayedLikeThis,
            _ => null,
          };

          File? file;
          if (notification.body?.user?.avatarUrl ?? notification.body?.icon
              case final url?) {
            file = await ref
                .read(cacheManagerProvider)
                .getSingleFile(url.toString());
          }

          await flutterLocalNotificationsPlugin.show(
            DateTime.now().millisecondsSinceEpoch & 0x7fffffff,
            title,
            body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                notificationChannelId,
                t.misskey.notifications,
                styleInformation: BigTextStyleInformation(body ?? ''),
                color: ariaColor,
                largeIcon:
                    file != null ? FilePathAndroidBitmap(file.path) : null,
                groupKey: account.toString(),
                subText: account.toString(),
              ),
            ),
            payload: jsonEncode(notification),
          );

          final userId = notification.userId;
          final summaryId = userId != null
              ? Id.tryParse(userId)?.date.millisecondsSinceEpoch
              : null;
          await flutterLocalNotificationsPlugin.show(
            (summaryId ?? 0) & 0x7fffffff,
            title,
            body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                notificationChannelId,
                t.misskey.notifications,
                color: ariaColor,
                groupKey: account.toString(),
                subText: account.toString(),
                setAsGroupSummary: true,
              ),
            ),
            payload: jsonEncode(PushNotification(userId: notification.userId)),
          );
        },
      );

      final appLaunchDetails = await flutterLocalNotificationsPlugin
          .getNotificationAppLaunchDetails();
      if (appLaunchDetails?.notificationResponse case final response?) {
        _onDidReceiveNotificationResponse(ref, response);
      }
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      Future<void> onMessageOpenedApp(ApnsRemoteMessage message) async {
        if (message.payload['data'] case final Map<dynamic, dynamic> data) {
          if (data['payload'] case final Map<dynamic, dynamic> payload) {
            final notification = PushNotification.fromJson(
              payload.map((key, value) => MapEntry(key.toString(), value)),
            );
            ref
                .read(pushNotificationNotifierProvider.notifier)
                .add(notification);
          }
        }
      }

      final connector = ref.read(apnsPushConnectorProvider);
      connector.configureApns(
        onLaunch: onMessageOpenedApp,
        onResume: onMessageOpenedApp,
      );
      connector.shouldPresent = (_) async => true;
    }
  }

  void _onDidReceiveNotificationResponse(
    WidgetRef ref,
    NotificationResponse response,
  ) {
    if (response.payload case final payload?) {
      final json = jsonDecode(payload) as Map<String, dynamic>;
      final notification = PushNotification.fromJson(json);
      ref.read(pushNotificationNotifierProvider.notifier).add(notification);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final lightTheme = ref.watch(themeDataProvider(Brightness.light));
    final darkTheme = ref.watch(themeDataProvider(Brightness.dark));
    final themeMode = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.themeMode),
    );
    useEffect(
      () {
        _init(ref);
        return;
      },
      [],
    );
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        useOnAppLifecycleStateChange(
          (_, state) async {
            if (state == AppLifecycleState.resumed) {
              final appLaunchDetails = await FlutterLocalNotificationsPlugin()
                  .getNotificationAppLaunchDetails();
              if (appLaunchDetails?.notificationResponse case final response?) {
                _onDidReceiveNotificationResponse(ref, response);
              }
            }
          },
        );
      case TargetPlatform.linux:
        final sizeTimer = useMemoized(
          () => RestartableTimer(const Duration(seconds: 1), () async {
            final size = await windowManager.getSize();
            await ref.read(windowSizeRepositoryProvider).setSize(size);
          }),
          [],
        );
        final positionTimer = useMemoized(
          () => RestartableTimer(const Duration(seconds: 1), () async {
            final position = await windowManager.getPosition();
            await ref
                .read(windowPositionRepositoryProvider)
                .setPosition(position);
          }),
          [],
        );
        useOnWindowResize(sizeTimer.reset);
        useOnWindowMove(positionTimer.reset);
      case TargetPlatform.macOS || TargetPlatform.windows:
        useOnWindowResized(() async {
          final size = await windowManager.getSize();
          await ref.read(windowSizeRepositoryProvider).setSize(size);
        });
        useOnWindowMoved(() async {
          final position = await windowManager.getPosition();
          await ref
              .read(windowPositionRepositoryProvider)
              .setPosition(position);
        });
      default:
    }

    return MaterialApp.router(
      routerConfig: router,
      title: 'Aria',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      scrollBehavior: _AppScrollBehavior(),
      shortcuts: {
        ...WidgetsApp.defaultShortcuts,
        darkModeActivator: VoidCallbackIntent(() {
          final themeMode = ref.read(
            generalSettingsNotifierProvider
                .select((settings) => settings.themeMode),
          );
          ref.read(generalSettingsNotifierProvider.notifier).setThemeMode(
                switch (themeMode) {
                  ThemeMode.system || ThemeMode.light => ThemeMode.dark,
                  ThemeMode.dark => ThemeMode.light,
                },
              );
        }),
        focusUpActivator: const DirectionalFocusIntent(TraversalDirection.up),
        focusDownActivator:
            const DirectionalFocusIntent(TraversalDirection.down),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }

  @override
  Set<PointerDeviceKind> get dragDevices => PointerDeviceKind.values.toSet();
}
