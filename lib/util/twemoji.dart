Uri getTwemojiUrl(String emoji) {
  // https://github.com/jdecked/twemoji/blob/v17.0.3/scripts/build.js#L337-L350
  final normalized = !emoji.contains('\u200D')
      ? emoji.replaceAll('\uFE0F', '')
      : emoji;
  final name = normalized.runes.map((rune) => rune.toRadixString(16)).join('-');

  return Uri(
    scheme: 'https',
    host: 'raw.githubusercontent.com',
    pathSegments: [
      'jdecked',
      'twemoji',
      'main',
      'assets',
      '72x72',
      '$name.png',
    ],
  );
}
