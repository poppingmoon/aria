import 'package:intl/intl.dart';

import '../i18n/strings.g.dart';

String relativeTime(DateTime time) {
  final duration = DateTime.now().difference(time);
  if (duration.isNegative) {
    return switch (duration.inSeconds) {
      > -3 => t.misskey.ago_.justNow,
      > -60 => t.misskey.timeIn_.seconds(n: -duration.inSeconds),
      > -3600 => t.misskey.timeIn_.minutes(n: -duration.inMinutes),
      _ => switch (duration.inDays) {
          > -1 => t.misskey.timeIn_.hours(n: -duration.inHours),
          > -7 => t.misskey.timeIn_.days(n: -duration.inDays),
          > -30 => t.misskey.timeIn_.weeks(n: (-duration.inDays / 7).round()),
          > -365 =>
            t.misskey.timeIn_.months(n: (-duration.inDays / 30).round()),
          _ => t.misskey.timeIn_.years(n: (-duration.inDays / 365).round()),
        }
    };
  } else {
    return switch (duration.inSeconds) {
      < 10 => t.misskey.ago_.justNow,
      < 60 => t.misskey.ago_.secondsAgo(n: duration.inSeconds),
      < 3600 => t.misskey.ago_.minutesAgo(n: duration.inMinutes),
      _ => switch (duration.inDays) {
          < 1 => t.misskey.ago_.hoursAgo(n: duration.inHours),
          < 7 => t.misskey.ago_.daysAgo(n: duration.inDays),
          < 30 => t.misskey.ago_.weeksAgo(n: (duration.inDays / 7).round()),
          < 365 => t.misskey.ago_.monthsAgo(n: (duration.inDays / 30).round()),
          _ => t.misskey.ago_.yearsAgo(n: (duration.inDays / 365).round()),
        },
    };
  }
}

String absoluteTime(DateTime time) {
  final lang = t.$meta.locale.languageTag;
  final prefix = time.year.isNegative ? '-' : '';
  return '$prefix${DateFormat.yMd(lang).add_jms().format(time.toUtc().toLocal())}';
}
