import 'package:aria/model/account.dart';
import 'package:aria/provider/emoji_url_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../test_util/create_container.dart';

void main() {
  test('basic', () async {
    const account = Account(host: 'misskey.tld');
    final container = await createContainer(
      account,
      meta: const MetaResponse(mediaProxy: 'https://proxy.misskey.tld'),
      emojis: [
        Emoji(
          aliases: [],
          name: 'emoji',
          url: Uri.parse('https://media.misskey.tld/emoji/emoji.png'),
        ),
      ],
    );
    expect(
      container.read(emojiUrlProvider(account, ':emoji@.:')),
      equals(
        (
          'https://proxy.misskey.tld/image.webp?url=https%3A%2F%2Fmedia.misskey.tld%2Femoji%2Femoji.png&emoji=1',
          'https://media.misskey.tld/emoji/emoji.png',
        ),
      ),
    );
  });
}
