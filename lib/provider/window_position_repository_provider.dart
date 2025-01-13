import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/window_position_repository.dart';
import 'shared_preferences_provider.dart';

part 'window_position_repository_provider.g.dart';

@riverpod
WindowPositionRepository windowPositionRepository(Ref ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return WindowPositionRepository(prefs);
}
