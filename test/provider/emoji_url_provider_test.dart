import 'package:aria/model/account.dart';
import 'package:aria/provider/api/meta_notifier_provider.dart';
import 'package:aria/provider/emoji_provider.dart';
import 'package:aria/provider/emoji_url_provider.dart';
import 'package:aria/provider/server_url_notifier_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

void main() {
  test('basic', () {
    const account = Account(host: 'misskey.tld');
    final container = ProviderContainer.test(
      overrides: [
        emojiProvider(account.host, ':emoji@.:').overrideWithValue(
          Emoji(
            aliases: [],
            name: 'emoji',
            url: Uri.parse('https://media.misskey.tld/emoji/emoji.png'),
          ),
        ),
        metaNotifierProvider(account.host).overrideWithBuild(
          (_, _) => const MetaResponse(mediaProxy: 'https://proxy.misskey.tld'),
        ),
        serverUrlNotifierProvider(
          account.host,
        ).overrideWithValue(Uri.https(account.host)),
      ],
    );
    expect(
      container.read(emojiUrlProvider(account, ':emoji@.:')),
      equals((
        'https://proxy.misskey.tld/image.webp?url=https%3A%2F%2Fmedia.misskey.tld%2Femoji%2Femoji.png&emoji=1',
        'https://media.misskey.tld/emoji/emoji.png',
      )),
    );
  });
}
