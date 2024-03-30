import 'package:flutter/material.dart';

import '../../model/tab_settings.dart';
import 'tab_type_widget.dart';

class TabNameWidget extends StatelessWidget {
  const TabNameWidget({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context) {
    if (tabSettings case TabSettings(:final name?)) {
      return Text(name);
    } else {
      return TabTypeWidget(tabType: tabSettings.tabType);
    }
  }
}
