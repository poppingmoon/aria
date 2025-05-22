import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../util/format_datetime.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.time,
    this.onTap,
    this.detailed = false,
    this.absolute = false,
    this.textScaler,
  });

  final DateTime? time;
  final void Function()? onTap;
  final bool detailed;
  final bool absolute;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    final time = this.time;
    final absolute = time != null ? absoluteTime(time) : null;
    final relative = time != null ? relativeTime(time) : null;

    return InkWell(
      onTap: onTap,
      child: time != null && absolute != null && relative != null
          ? Tooltip(
              message:
                  '$absolute.${time.millisecond.toString().padLeft(3, '0')} ($relative)',
              child: Text(
                detailed
                    ? '$absolute ($relative)'
                    : this.absolute
                    ? absolute
                    : relative,
                textScaler: textScaler,
              ),
            )
          : Text(t.misskey.ago_.invalid),
    );
  }
}
