import 'package:kana_kit/kana_kit.dart';

String safeToHiragana(String input) {
  try {
    return const KanaKit().toHiragana(input);
  } catch (_) {
    return input;
  }
}
