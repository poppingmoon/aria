import 'package:characters/characters.dart';

const _digit0Code = 0x30; // '0'
const _digit9Code = 0x39; // '9'
const _upperACode = 0x41; // 'A'
const _upperZCode = 0x5a; // 'Z'
const _lowerACode = 0x61; // 'a'
const _lowerZCode = 0x7a; // 'z'
const _upperAGraveCode = 0xc0; // 'À'

bool _maybeAlphanumeric(int code) {
  return (_digit0Code <= code && code <= _digit9Code) ||
      (_upperACode <= code && code <= _upperZCode) ||
      (_lowerACode <= code && code <= _lowerZCode) ||
      _upperAGraveCode <= code;
}

extension StringExtension on String {
  String get breakAll {
    final buffer = StringBuffer();
    final characters = CharacterRange(this);
    bool previousMaybeAlnum;
    if (characters.moveNext()) {
      final character = characters.current;
      buffer.write(character);
      previousMaybeAlnum = _maybeAlphanumeric(character.codeUnitAt(0));
    } else {
      return this;
    }
    while (characters.moveNext()) {
      final character = characters.current;
      final maybeAlnum = _maybeAlphanumeric(character.codeUnitAt(0));
      if (previousMaybeAlnum && maybeAlnum) {
        buffer.write('\u200B');
      }
      buffer.write(character);
      previousMaybeAlnum = maybeAlnum;
    }
    return buffer.toString();
  }

  String toHankaku() {
    return replaceAllMapped(
      RegExp('[Ａ-Ｚａ-ｚ０-９]'),
      (match) => String.fromCharCode(match[0]!.codeUnitAt(0) - 65248),
    );
  }
}
