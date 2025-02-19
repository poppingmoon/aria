import 'dart:math';

import 'package:intl/intl.dart';

const _units = ['B', 'KiB', 'MiB', 'GiB', 'TiB', 'PiB', 'EiB', 'ZiB', 'YiB'];

String prettyBytes(num bytes) {
  if (bytes == 0) {
    return '0 B';
  }
  final exponent = min(
    (log(bytes.abs()) / log(1024)).floor(),
    _units.length - 1,
  );
  final number = bytes / pow(1024, exponent);
  final numberStr = (NumberFormat()..maximumSignificantDigits = 3).format(
    number,
  );
  return '$numberStr ${_units[exponent]}';
}
