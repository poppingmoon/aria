import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';

class const ThemeModeWidget({super.key, required final ThemeMode themeMode})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(switch (themeMode) {
      ThemeMode.system => t.misskey.syncDeviceDarkMode,
      ThemeMode.light => t.misskey.light,
      ThemeMode.dark => t.misskey.dark,
    });
  }
}
