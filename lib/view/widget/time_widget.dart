import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../util/format_datetime.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    this.leadingSpans,
    required this.time,
    this.detailed = false,
    this.absolute = false,
    this.fallbackText,
    this.disableTooltip = false,
    this.style,
    this.textScaler,
  });

  final List<InlineSpan>? leadingSpans;
  final DateTime? time;
  final bool detailed;
  final bool absolute;
  final String? fallbackText;
  final bool disableTooltip;
  final TextStyle? style;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    final time = this.time;

    if (time == null) {
      return Text.rich(
        TextSpan(
          children: [
            ...?leadingSpans,
            TextSpan(text: fallbackText ?? t.misskey.ago_.invalid),
          ],
        ),
        style: style,
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
            ...?leadingSpans,
            TextSpan(
              text: detailed
                  ? '$absolute ($relative)'
                  : this.absolute
                  ? absolute
                  : relative,
            ),
          ],
        ),
        style: style,
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
              ...?leadingSpans,
              TextSpan(
                text: detailed
                    ? '$absolute ($relative)'
                    : this.absolute
                    ? absolute
                    : relative,
              ),
            ],
          ),
          style: style,
          textScaler: textScaler,
        ),
      );
    }
  }
}
