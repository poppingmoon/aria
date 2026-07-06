import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../util/format_datetime.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.time,
    this.detailed = false,
    this.absolute = false,
    this.disableTooltip = false,
    this.textScaler,
  });

  final DateTime? time;
  final bool detailed;
  final bool absolute;
  final bool disableTooltip;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    final time = this.time;

    if (time == null) {
      return Text.rich(
        TextSpan(children: [TextSpan(text: t.misskey.ago_.invalid)]),
        textScaler: textScaler,
      );
    }

    final absolute = !disableTooltip || detailed || this.absolute
        ? absoluteTime(time)
        : null;
    final relative = !disableTooltip || detailed || !this.absolute
        ? relativeTime(time)
        : null;

    if (disableTooltip) {
      return Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: detailed
                  ? '$absolute ($relative)'
                  : this.absolute
                  ? absolute
                  : relative,
            ),
          ],
        ),
        textScaler: textScaler,
      );
    } else {
      return Tooltip(
        message:
            '$absolute.${time.millisecond.toString().padLeft(3, '0')}'
            ' ($relative)',
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: detailed
                    ? '$absolute ($relative)'
                    : this.absolute
                    ? absolute
                    : relative,
              ),
            ],
          ),
          textScaler: textScaler,
        ),
      );
    }
  }
}
