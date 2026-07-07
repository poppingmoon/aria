import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'date_format_provider.dart';

part 'absolute_time_provider.g.dart';

@riverpod
String absoluteTime(Ref ref, String? locale, DateTime time) {
  final prefix = time.year.isNegative ? '-' : '';
  final dateFormat = ref.watch(dateFormatProvider(locale));

  return '$prefix${dateFormat.format(time.toLocal())}';
}
