import 'package:uuid/uuid.dart';

const _specialExtensions = [
  'gz',
  'bz2',
  'xz',
  'zst',
  'lz',
  'lz4',
  'sz',
  'z',
  'zstd',
];

String randomizeFilename(String filename) {
  final name = const Uuid().v4();
  final parts = filename.split('.');
  if (parts.length <= 1) {
    return name;
  }
  final ext =
      _specialExtensions.contains(parts.last)
          ? parts.length > 2
              ? parts.sublist(parts.length - 2).join('.')
              : parts.last
          : parts.last;
  return '$name.$ext';
}
