import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/window_size_repository.dart';
import 'shared_preferences_provider.dart';

part 'window_size_repository_provider.g.dart';

@riverpod
WindowSizeRepository windowSizeRepository(Ref ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return WindowSizeRepository(prefs);
}
