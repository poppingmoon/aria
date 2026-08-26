import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../model/tab_settings.dart';
import '../widget/tab_icon_widget.dart';
import '../widget/tab_name_widget.dart';
import '../widget/timeline_list_view.dart';

class const TimelinePage({super.key, required final TabSettings tabSettings})
    extends ConsumerWidget {
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
