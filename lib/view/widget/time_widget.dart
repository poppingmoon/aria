import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../provider/absolute_time_provider.dart';
import '../../util/format_datetime.dart';

class TimeWidget extends ConsumerWidget {
  const TimeWidget({
    super.key,
    this.leadingSpans,
    required this.time,
    this.builder,
    this.detailed = false,
    this.absolute = false,
    this.fallbackText,
    this.disableTooltip = false,
    this.style,
    this.textScaler,
  });

  final List<InlineSpan>? leadingSpans;
  final DateTime? time;
  final Widget Function(
    BuildContext context,
    String? absolute,
    String? relative,
  )?
  builder;
  final bool detailed;
  final bool absolute;
  final String? fallbackText;
  final bool disableTooltip;
  final TextStyle? style;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = this.time;

    if (time == null) {
      return builder?.call(context, null, null) ??
          Text.rich(
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
        ? ref.watch(absoluteTimeProvider(t.$meta.locale.languageTag, time))
        : null;
    final relative = !disableTooltip || detailed || !this.absolute
        ? relativeTime(time)
        : null;

    if (builder case final builder?) {
      return builder(context, absolute, relative);
    } else if (disableTooltip) {
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
