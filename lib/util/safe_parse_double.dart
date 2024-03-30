double? safeParseDouble(dynamic value) {
  if (value is String) {
    // Ignore trailing dots.
    final trimmed = value.replaceFirst(RegExp(r'\.+$'), '');
    return double.tryParse(trimmed);
  }
  return null;
}
