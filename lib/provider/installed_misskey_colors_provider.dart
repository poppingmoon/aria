import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/misskey_colors.dart';
import '../util/compile_theme.dart';
import 'misskey_themes_provider.dart';

part 'installed_misskey_colors_provider.g.dart';

@riverpod
List<MisskeyColors> installedMisskeyColors(InstalledMisskeyColorsRef ref) {
  final themes = ref.watch(misskeyThemesProvider);
  return themes.nonNulls
      .map((theme) {
        try {
          return compileTheme(theme);
        } catch (_) {
          return null;
        }
      })
      .nonNulls
      .toList();
}
