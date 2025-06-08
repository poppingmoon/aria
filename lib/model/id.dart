const _time2000 = 946684800000;
const _meidOffset = 0x800000000000;
const _base32Chars = '0123456789abcdefghijklmnopqrstuv';
const _crockfordsBase32Chars = '0123456789ABCDEFGHJKMNPQRSTVWXYZ';

int _parseCrockfordsBase32(String str) {
  return int.parse(
    str
        .split('')
        .map((s) => _base32Chars[_crockfordsBase32Chars.indexOf(s)])
        .join(),
    radix: 32,
  );
}

String _toCrockfordsBase32(BigInt i) {
  return i
      .toRadixString(32)
      .split('')
      .map((s) => _crockfordsBase32Chars[_base32Chars.indexOf(s)])
      .join();
}

enum IdGenMethod { aid, aidx, meid, meidg, ulid, objectid }

class Id {
  const Id({required this.method, required this.date, this.random = ''});

  final IdGenMethod method;
  final DateTime date;
  final String random;

  static Id parse(String str) {
    return switch (str.length) {
      10 => Id(
        method: IdGenMethod.aid,
        date: DateTime.fromMillisecondsSinceEpoch(
          int.parse(str.substring(0, 8), radix: 36) + _time2000,
        ),
        random: str.substring(8),
      ),
      16 => Id(
        method: IdGenMethod.aidx,
        date: DateTime.fromMillisecondsSinceEpoch(
          int.parse(str.substring(0, 8), radix: 36) + _time2000,
        ),
        random: str.substring(8),
      ),
      24 => switch (str[0]) {
        '8' => Id(
          method: IdGenMethod.meid,
          date: DateTime.fromMillisecondsSinceEpoch(
            int.parse(str.substring(0, 12), radix: 16) - _meidOffset,
          ),
          random: str.substring(12),
        ),
        'g' => Id(
          method: IdGenMethod.meidg,
          date: DateTime.fromMillisecondsSinceEpoch(
            int.parse(str.substring(1, 12), radix: 16),
          ),
          random: str.substring(12),
        ),
        _ => Id(
          method: IdGenMethod.objectid,
          date: DateTime.fromMillisecondsSinceEpoch(
            int.parse(str.substring(0, 8), radix: 16) * 1000,
          ),
          random: str.substring(8),
        ),
      },
      26 => Id(
        method: IdGenMethod.ulid,
        date: DateTime.fromMillisecondsSinceEpoch(
          _parseCrockfordsBase32(str.substring(0, 10)),
        ),
        random: str.substring(10),
      ),
      _ => throw FormatException('invalid id format', str),
    };
  }

  static Id? tryParse(String str) {
    try {
      return parse(str);
    } catch (_) {
      return null;
    }
  }

  @override
  String toString() {
    final epochMillis = date.millisecondsSinceEpoch;
    switch (method) {
      case IdGenMethod.aid:
        final timeStr = (epochMillis - _time2000)
            .toRadixString(36)
            .padLeft(8, '0');
        final randomStr = random.padLeft(2, '0');
        return '$timeStr$randomStr';
      case IdGenMethod.aidx:
        final timeStr = (epochMillis - _time2000)
            .toRadixString(36)
            .padLeft(8, '0');
        final randomStr = random.padLeft(8, '0');
        return '$timeStr$randomStr';
      case IdGenMethod.meid:
        final timeStr = (epochMillis + _meidOffset)
            .toRadixString(16)
            .padLeft(12, '0');
        final randomStr = random.padLeft(12, '0');
        return '$timeStr$randomStr';
      case IdGenMethod.meidg:
        final timeStr = epochMillis.toRadixString(16).padLeft(11, '0');
        final randomStr = random.padLeft(12, '0');
        return 'g$timeStr$randomStr';
      case IdGenMethod.ulid:
        final timeStr = _toCrockfordsBase32(
          BigInt.from(epochMillis),
        ).padLeft(10, '0');
        final randomStr = random.padLeft(16, '0');
        return '$timeStr$randomStr';
      case IdGenMethod.objectid:
        final timeStr = (epochMillis ~/ 1000).toRadixString(16).padLeft(8, '0');
        final randomStr = random.padLeft(16, '0');
        return '$timeStr$randomStr';
    }
  }
}
