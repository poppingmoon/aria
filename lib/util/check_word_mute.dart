import 'package:aho_corasick/aho_corasick.dart';

bool checkWordMute(
  String text,
  AhoCorasick ac,
  List<List<String>> filters,
  List<RegExp> regExps,
) {
  if (ac.firstMatch(text) != null) {
    return true;
  }
  if (filters
      .any((filter) => filter.every((keyword) => text.contains(keyword)))) {
    return true;
  }
  return regExps.any((regExp) => regExp.hasMatch(text));
}
