import 'package:intl/intl.dart';

import '../i18n/strings.g.dart';

String relativeTime(DateTime time) {
  final duration = DateTime.now().difference(time);
  final isFuture = duration.isNegative;
  final abs = duration.abs();
  if (abs.inDays >= 365) {
    return isFuture
        ? t.misskey.timeIn_.years(n: (abs.inDays / 365).round())
        : t.misskey.ago_.yearsAgo(n: (abs.inDays / 365).round());
  } else if (abs.inDays >= 30) {
    return isFuture
        ? t.misskey.timeIn_.months(n: (abs.inDays / 30).round())
        : t.misskey.ago_.monthsAgo(n: (abs.inDays / 30).round());
  } else if (abs.inDays >= 7) {
    return isFuture
        ? t.misskey.timeIn_.weeks(n: (abs.inDays / 7).round())
        : t.misskey.ago_.weeksAgo(n: (abs.inDays / 7).round());
  } else if (abs.inDays >= 1) {
    return isFuture
        ? t.misskey.timeIn_.days(n: abs.inDays)
        : t.misskey.ago_.daysAgo(n: abs.inDays);
  } else if (abs.inHours >= 1) {
    return isFuture
        ? t.misskey.timeIn_.hours(n: abs.inHours)
        : t.misskey.ago_.hoursAgo(n: abs.inHours);
  } else if (abs.inMinutes >= 1) {
    return isFuture
        ? t.misskey.timeIn_.minutes(n: abs.inMinutes)
        : t.misskey.ago_.minutesAgo(n: abs.inMinutes);
  } else if (duration.inSeconds >= 10 || duration.inSeconds < -3) {
    return isFuture
        ? t.misskey.timeIn_.seconds(n: abs.inSeconds)
        : t.misskey.ago_.secondsAgo(n: abs.inSeconds);
  } else {
    return t.misskey.ago_.justNow;
  }
}

String absoluteTime(DateTime time) {
  final lang = t.$meta.locale.languageTag;
  final prefix = time.year.isNegative ? '-' : '';
  return '$prefix${DateFormat.yMd(lang).add_jms().format(time.toLocal())}';
}
