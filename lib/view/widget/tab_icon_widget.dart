import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide ImageIcon;

import '../../constant/tab_icon_data.dart';
import '../../model/tab_icon.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import 'image_widget.dart';
import 'unicode_emoji.dart';

class TabIconWidget extends StatelessWidget {
  const TabIconWidget({
    super.key,
    required this.tabSettings,
    this.size = 24.0,
  });

  final TabSettings tabSettings;
  final double size;

  @override
  Widget build(BuildContext context) {
    return switch (tabSettings.icon) {
      MaterialIcon(:final codePoint) => Icon(
          tabIconData.firstWhereOrNull((data) => data.codePoint == codePoint),
          size: size,
        ),
      ImageIcon(:final url) => ImageWidget(
          url: url,
          width: size,
          height: size,
        ),
      EmojiIcon(:final emoji) => UnicodeEmoji(
          emoji: emoji,
          style: TextStyle(
            fontSize: size / DefaultTextStyle.of(context).style.height!,
          ),
        ),
      _ => Icon(
          switch (tabSettings.tabType) {
            TabType.homeTimeline => Icons.home,
            TabType.localTimeline => Icons.timeline,
            TabType.hybridTimeline => Icons.cyclone,
            TabType.globalTimeline => Icons.public,
            TabType.roleTimeline => Icons.workspace_premium,
            TabType.userList => Icons.list,
            TabType.antenna => Icons.settings_input_antenna,
            TabType.channel => Icons.tv,
            TabType.mention => Icons.alternate_email,
            TabType.direct => Icons.mail,
            TabType.user => Icons.person,
          },
          size: size,
        ),
    };
  }
}
