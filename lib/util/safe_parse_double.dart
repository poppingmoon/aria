double? safeParseDouble(dynamic value) {
  if (value is String) {
    // Ignore trailing dots.
    final trimmed = value.replaceFirst(RegExp(r'\.+$'), '');
    final result = double.tryParse(trimmed);
    if (result?.isFinite ?? false) {
      return result;
    }
  }
  return null;
}
