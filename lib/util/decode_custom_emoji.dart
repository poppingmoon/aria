final _decodeCustomEmojiRegexp = RegExp(r'^:([\w+-]+)(?:@([\w.-]+))?:$');

(String?, String?) decodeCustomEmoji(String emoji) {
  final match = _decodeCustomEmojiRegexp.firstMatch(emoji);
  final name = match?.group(1);
  final host = match?.group(2);
  return (name, host == '.' ? null : host);
}
