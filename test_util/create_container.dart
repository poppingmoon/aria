import 'package:aria/extension/emoji_extension.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/api/meta_provider.dart';
import 'package:aria/provider/api/misskey_provider.dart';
import 'package:aria/provider/emoji_provider.dart';
import 'package:aria/provider/note_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:misskey_dart/misskey_dart.dart';

Future<ProviderContainer> createContainer(
  Account account, {
  MeDetailed? i,
  MetaResponse? meta,
  Note? note,
  List<Emoji>? emojis,
}) async {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  final misskey = Misskey(host: account.host, dio: dio);
  if (i != null) {
    dioAdapter.onPost(
      'i',
      (server) => server.reply(200, i.toJson()),
    );
  }
  final container = ProviderContainer(
    overrides: [
      misskeyProvider(account).overrideWithValue(misskey),
      if (meta != null)
        metaProvider(account).overrideWith((provider) async => meta),
      if (note != null) noteProvider(account, note.id).overrideWithValue(note),
      ...?emojis?.map(
        (emoji) =>
            emojiProvider(account.host, emoji.emoji).overrideWithValue(emoji),
      ),
    ],
  );
  if (i != null) {
    await container.read(iNotifierProvider(account).future);
  }
  if (meta != null) {
    await container.read(metaProvider(account).future);
  }
  addTearDown(container.dispose);
  return container;
}
