import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../util/format_datetime.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.time,
    this.onTap,
    this.detailed = false,
  });

  final DateTime? time;
  final void Function()? onTap;
  final bool detailed;

  @override
  Widget build(BuildContext context) {
    final time = this.time;

    return InkWell(
      onTap: onTap,
      child: time != null
          ? Tooltip(
              message:
                  '${absoluteTime(time)}.${time.millisecond.toString().padLeft(3, '0')}',
              child: Text(
                detailed
                    ? '${absoluteTime(time)} (${relativeTime(time)})'
                    : relativeTime(time),
              ),
            )
          : Text(t.misskey.ago_.invalid),
    );
  }
}
