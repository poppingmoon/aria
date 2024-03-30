import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';

class ThemeModeWidget extends StatelessWidget {
  const ThemeModeWidget({super.key, required this.themeMode});

  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (themeMode) {
        ThemeMode.system => t.misskey.syncDeviceDarkMode,
        ThemeMode.light => t.misskey.light,
        ThemeMode.dark => t.misskey.dark,
      },
    );
  }
}
