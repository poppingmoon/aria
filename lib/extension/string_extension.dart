import 'package:characters/characters.dart';

extension StringExtension on String {
  String get breakAll => Characters(this).join('\u200B');

  String replaceLineBreaks() {
    return replaceAll('\n', ' ');
  }
}
