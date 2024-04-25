import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/tab_settings.dart';
import 'shared_preferences_provider.dart';

part 'timeline_last_viewed_at_notifier_provider.g.dart';

@riverpod
class TimelineLastViewedAtNotifier extends _$TimelineLastViewedAtNotifier {
  @override
  DateTime? build(TabSettings tabSettings) {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      return DateTime.tryParse(value);
    }
    return null;
  }

  String get _key =>
      'timelineTabs/${tabSettings.id ?? tabSettings.tabType}/lastViewed';

  void save(DateTime date) {
    ref.read(sharedPreferencesProvider).setString(_key, date.toIso8601String());
  }
}
