import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class OnlineIndicator extends StatelessWidget {
  const OnlineIndicator({
    super.key,
    required this.onlineStatus,
    required this.size,
  });

  final OnlineStatus? onlineStatus;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: switch (onlineStatus) {
        OnlineStatus.online => t.misskey.online,
        OnlineStatus.active => t.misskey.active,
        OnlineStatus.offline => t.misskey.offline,
        OnlineStatus.unknown || null => t.misskey.unknown,
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: switch (onlineStatus) {
            OnlineStatus.online => const Color(0xff58d4c9),
            OnlineStatus.active => const Color(0xffe4bc48),
            OnlineStatus.offline => const Color(0xffea5353),
            OnlineStatus.unknown || null => const Color(0xff888888),
          },
          border: Border.all(
            color: Theme.of(context).colorScheme.surface,
            width: 3.0,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          shape: BoxShape.circle,
        ),
        child: SizedBox.square(dimension: size),
      ),
    );
  }
}
