import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date_format_provider.g.dart';

@riverpod
DateFormat dateFormat(Ref ref, String? locale) {
  return DateFormat.yMd(locale).add_jms();
}
