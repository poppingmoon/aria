import 'package:characters/characters.dart';

extension StringExtension on String {
  String get breakAll => Characters(this).join('\u200B');

  String replaceLineBreaks() {
    return replaceAll('\n', ' ');
  }

  String toHankaku() {
    return replaceAllMapped(
      RegExp('[Ａ-Ｚａ-ｚ０-９]'),
      (match) => String.fromCharCode(match[0]!.codeUnitAt(0) - 65248),
    );
  }
}
