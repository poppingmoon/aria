import 'package:misskey_dart/misskey_dart.dart';

extension EmojiExtension on Emoji {
  String get emoji => ':$name@.:';
}
