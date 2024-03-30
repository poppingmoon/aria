import 'package:punycode/punycode.dart';

String toUnicode(String host) {
  return host.splitMapJoin(
    '.',
    onNonMatch: (n) {
      if (n.startsWith('xn--')) {
        try {
          return punycodeDecode(n.substring(4));
        } catch (_) {}
      }
      return n;
    },
  );
}

String toAscii(String host) {
  return host.splitMapJoin(
    '.',
    onNonMatch: (n) {
      if (RegExp(r'[^\x00-\x7F]').hasMatch(n)) {
        try {
          return 'xn--${punycodeEncode(n)}';
        } catch (_) {}
      }
      return n;
    },
  );
}
