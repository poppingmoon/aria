import 'package:material_ui/material_ui.dart';

import '../../model/tab_settings.dart';
import 'tab_type_widget.dart';

class const TabNameWidget({super.key, required final TabSettings tabSettings})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (tabSettings case TabSettings(:final name?)) {
      return Text(name);
    } else {
      return TabTypeWidget(tabType: tabSettings.tabType);
    }
  }
}
