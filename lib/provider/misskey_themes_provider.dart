import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/misskey_theme.dart';
import 'misskey_theme_codes_notifier_provider.dart';

part 'misskey_themes_provider.g.dart';

@Riverpod(keepAlive: true)
List<MisskeyTheme?> misskeyThemes(Ref ref) {
  final codes = ref.watch(misskeyThemeCodesNotifierProvider);
  return codes.map((code) {
    try {
      return MisskeyTheme.fromJson(json5Decode(code) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }).toList();
}
