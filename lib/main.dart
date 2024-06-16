import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constant/shortcuts.dart';
import 'gen/assets.gen.dart';
import 'i18n/strings.g.dart';
import 'provider/general_settings_notifier_provider.dart';
import 'provider/shared_preferences_provider.dart';
import 'provider/theme_data_provider.dart';
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
  final prefs = await SharedPreferences.getInstance();
  await RustLib.init();
  runApp(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: TranslationProvider(child: const Aria()),
    ),
  );
}

class Aria extends ConsumerWidget {
  const Aria({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final lightTheme = ref.watch(themeDataProvider(Brightness.light));
    final darkTheme = ref.watch(themeDataProvider(Brightness.dark));
    final themeMode = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.themeMode),
    );

    return MaterialApp.router(
      routerConfig: router,
      title: 'Aria',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      scrollBehavior: AppScrollBehavior(),
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

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
