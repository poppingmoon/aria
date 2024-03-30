import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/tab_settings.dart';
import '../widget/tab_icon_widget.dart';
import '../widget/tab_name_widget.dart';
import '../widget/timeline_list_view.dart';

class TimelinePage extends ConsumerWidget {
  const TimelinePage({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            TabIconWidget(tabSettings: tabSettings),
            Expanded(child: TabNameWidget(tabSettings: tabSettings)),
          ],
        ),
      ),
      body: TimelineListView(tabSettings: tabSettings),
    );
  }
}
