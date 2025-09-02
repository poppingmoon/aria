import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/builtin_misskey_colors.g.dart';
import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/installed_misskey_colors_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/theme_mode_widget.dart';

class ThemePage extends ConsumerWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generalSettings = ref.watch(generalSettingsNotifierProvider);
    final lightColors = ref.watch(misskeyColorsProvider(Brightness.light));
    final darkColors = ref.watch(misskeyColorsProvider(Brightness.dark));
    final installedColors = ref.watch(installedMisskeyColorsProvider);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.theme)),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: Icon(switch (generalSettings.themeMode) {
                  ThemeMode.system => Icons.mode_night,
                  ThemeMode.light => Icons.light_mode,
                  ThemeMode.dark => Icons.dark_mode,
                }),
                title: Text(t.misskey.theme),
                subtitle: ThemeModeWidget(themeMode: generalSettings.themeMode),
                onTap: () async {
                  final result = await showRadioDialog(
                    context,
                    title: Text(t.misskey.theme),
                    values: ThemeMode.values,
                    initialValue: generalSettings.themeMode,
                    titleBuilder: (context, value) =>
                        ThemeModeWidget(themeMode: value),
                  );
                  if (result != null) {
                    await ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setThemeMode(result);
                  }
                },
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.light_mode_outlined),
                title: Text(t.misskey.themeForLightMode),
                subtitle: Text(lightColors.name),
                onTap: () async {
                  final result = await showRadioDialog(
                    context,
                    title: Text(t.misskey.themeForLightMode),
                    values: [
                      ...builtinMisskeyColors,
                      ...installedColors,
                    ].where((colors) => !colors.isDark).toList(),
                    initialValue: lightColors,
                    titleBuilder: (context, value) => Text(value.name),
                  );
                  if (result != null) {
                    await ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setLightThemeId(result.id);
                  }
                },
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.dark_mode_outlined),
                title: Text(t.misskey.themeForDarkMode),
                subtitle: Text(darkColors.name),
                onTap: () async {
                  final result = await showRadioDialog(
                    context,
                    title: Text(t.misskey.themeForDarkMode),
                    values: [
                      ...builtinMisskeyColors,
                      ...installedColors,
                    ].where((colors) => colors.isDark).toList(),
                    initialValue: darkColors,
                    titleBuilder: (context, value) => Text(value.name),
                  );
                  if (result != null) {
                    await ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setDarkThemeId(result.id);
                  }
                },
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: Text(t.misskey.theme_.manage),
                subtitle: Text(
                  '${t.misskey.theme_.installedThemes}: ${installedColors.length}',
                ),
                onTap: () => context.push('/settings/theme/manage'),
              ),
            ),
          ),
        ],
      ),
      selectedDestination: GeneralSettingsDestination.theme,
    );
  }
}
