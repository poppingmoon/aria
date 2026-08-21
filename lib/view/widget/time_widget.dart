import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';
import '../../provider/absolute_time_provider.dart';
import '../../util/format_datetime.dart';

class const TimeWidget({
  super.key,
  final List<InlineSpan>? leadingSpans,
  required final DateTime? time,
  final Widget Function(
    BuildContext context,
    String? absolute,
    String? relative,
  )?
  builder,
  final bool detailed = false,
  final bool absolute = false,
  final String? fallbackText,
  final bool disableTooltip = false,
  final TextStyle? style,
  final TextScaler? textScaler,
}) extends ConsumerWidget {
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
