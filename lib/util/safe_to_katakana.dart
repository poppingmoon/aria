import 'package:kana_kit/kana_kit.dart';

String safeToKatakana(String input) {
  try {
    return const KanaKit().toKatakana(input);
  } catch (_) {
    return input;
  }
}
