import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../util/format_datetime.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.time,
    this.detailed = false,
    this.absolute = false,
    this.textScaler,
  });

  final DateTime? time;
  final bool detailed;
  final bool absolute;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    final time = this.time;

    if (time == null) {
      return Text(t.misskey.ago_.invalid, textScaler: textScaler);
    }

    final absolute = absoluteTime(time);
    final relative = relativeTime(time);

    return Tooltip(
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
    );
  }
}
