import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/misskey_colors.dart';
import '../util/compile_theme.dart';
import 'misskey_themes_provider.dart';

part 'installed_misskey_colors_provider.g.dart';

@riverpod
MisskeyColors? installedMisskeyColors(Ref ref, String id) {
  final theme = ref.watch(
    misskeyThemesProvider.select(
      (themes) => themes.firstWhereOrNull((theme) => theme?.id == id),
    ),
  );
  if (theme == null) {
    return null;
  }
  try {
    return compileTheme(theme);
  } catch (_) {
    return null;
  }
}
