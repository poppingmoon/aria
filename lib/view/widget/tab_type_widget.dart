import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../model/tab_type.dart';

class TabTypeWidget extends StatelessWidget {
  const TabTypeWidget({super.key, required this.tabType});

  final TabType tabType;

  @override
  Widget build(BuildContext context) {
    return Text(switch (tabType) {
      TabType.homeTimeline => t.misskey.timelines_.home,
      TabType.localTimeline => t.misskey.timelines_.local,
      TabType.hybridTimeline => t.misskey.timelines_.social,
      TabType.globalTimeline => t.misskey.timelines_.global,
      TabType.roleTimeline => t.misskey.role,
      TabType.userList => t.misskey.userList,
      TabType.antenna => t.misskey.antennas,
      TabType.channel => t.misskey.channel,
      TabType.hashtag => t.misskey.hashtags,
      TabType.mention => t.misskey.mentions,
      TabType.direct => t.misskey.directNotes,
      TabType.user => t.misskey.user,
      TabType.notifications => t.misskey.notifications,
      TabType.custom => t.aria.custom,
    });
  }
}
