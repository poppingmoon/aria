import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/tab_settings.dart';
import 'timeline_tab_index_notifier_provider.dart';
import 'timeline_tabs_notifier_provider.dart';

part 'timeline_tab_settings_provider.g.dart';

@riverpod
TabSettings? timelineTabSettings(TimelineTabSettingsRef ref) {
  final index = ref.watch(timelineTabIndexNotifierProvider);
  return ref.watch(
    timelineTabsNotifierProvider.select((tabs) => tabs.elementAtOrNull(index)),
  );
}
