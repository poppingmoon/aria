import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'timeline_last_viewed_at_provider.dart';
import 'timeline_tabs_notifier_provider.dart';

part 'timeline_tab_index_notifier_provider.g.dart';

@riverpod
class TimelineTabIndexNotifier extends _$TimelineTabIndexNotifier {
  @override
  int build() {
    final tabs = ref.watch(timelineTabsNotifierProvider);
    int latestIndex = 0;
    DateTime latestDate = DateTime(0);
    for (final (index, tabSettings) in tabs.indexed) {
      final lastViewedAt = ref.read(timelineLastViewedAtProvider(tabSettings));
      if (lastViewedAt != null && lastViewedAt.isAfter(latestDate)) {
        latestIndex = index;
        latestDate = lastViewedAt;
      }
    }
    return latestIndex;
  }

  // ignore: use_setters_to_change_properties
  void updateIndex(int index) {
    state = index;
  }
}
