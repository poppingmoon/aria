import 'safe_parse_double.dart';

Duration? safeParseDuration(dynamic duration, {bool allowNegative = false}) {
  if (duration is String && duration.endsWith('s')) {
    final seconds = safeParseDouble(duration.substring(0, duration.length - 1));
    if (seconds != null && (seconds >= 0 || allowNegative)) {
      return Duration(milliseconds: (seconds * 1000).toInt());
    }
  }
  return null;
}
