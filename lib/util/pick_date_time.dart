import 'package:flutter/material.dart';

Future<DateTime?> pickDateTime(
  BuildContext context, {
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  final date = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate ?? DateTime(0),
    lastDate: lastDate ?? DateTime(10000),
  );
  if (!context.mounted) return null;
  if (date == null) return null;
  final time = await showTimePicker(
    context: context,
    initialTime: initialDate != null
        ? TimeOfDay.fromDateTime(initialDate)
        : TimeOfDay.now(),
  );
  if (time == null) return null;
  return date.copyWith(hour: time.hour, minute: time.minute);
}
