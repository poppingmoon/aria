import 'package:aria/extension/emoji_extension.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/api/misskey_provider.dart';
import 'package:aria/provider/cache_manager_provider.dart';
import 'package:aria/provider/dio_provider.dart';
import 'package:aria/provider/emoji_provider.dart';
import 'package:aria/provider/note_provider.dart';
import 'package:aria/provider/shared_preferences_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:misskey_dart/misskey_dart.dart';

import 'fake_cache_manager.dart';
import 'fake_shared_preferences.dart';

List<Override> createOverrides(
  Account account, {
  MeDetailed? i,
  MetaResponse? meta,
  Note? note,
  List<Emoji>? emojis,
  Map<String, dynamic>? prefs,
}) {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  final misskey = Misskey(host: account.host, dio: dio);
  if (i != null) {
    dioAdapter.onPost('i', (server) => server.reply(200, i.toJson()));
  }
  if (meta != null) {
    dioAdapter.onPost('meta', (server) => server.reply(200, meta.toJson()));
  }
  final cacheManager = FakeCacheManager();
  addTearDown(cacheManager.dispose);

  return [
    cacheManagerProvider.overrideWithValue(cacheManager),
    sharedPreferencesProvider.overrideWithValue(
      FakeSharedPreferences(prefs ?? {}),
    ),
    dioProvider.overrideWithValue(dio),
    misskeyProvider(account).overrideWithValue(misskey),
    misskeyProvider(
      account.copyWith(username: null),
    ).overrideWithValue(misskey),
    if (note != null) noteProvider(account, note.id).overrideWithValue(note),
    ...?emojis?.map(
      (emoji) =>
          emojiProvider(account.host, emoji.emoji).overrideWithValue(emoji),
    ),
  ];
}
