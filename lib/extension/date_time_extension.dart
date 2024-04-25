extension DateTimeExtension on DateTime {
  bool isBetween(DateTime? first, DateTime? second) {
    if (first == null || second == null) {
      return false;
    }
    return !isBefore(first) && isBefore(second);
  }
}
