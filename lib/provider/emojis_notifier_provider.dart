import 'dart:async';
import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/endpoints_provider.dart';
import 'api/misskey_provider.dart';
import 'cache_manager_provider.dart';

part 'emojis_notifier_provider.g.dart';

// ignore: provider_dependencies
@Riverpod(keepAlive: true)
class EmojisNotifier extends _$EmojisNotifier {
  @override
  Future<Map<String, Emoji>> build(String host) async {
    ref.onDispose(() => _timer?.cancel());
    final file = await ref.watch(cacheManagerProvider).getFileFromCache(_key);
    if (file != null) {
      try {
        final s = await file.file.readAsString();
        final emojis = (jsonDecode(s) as List).map(
          (e) => Emoji.fromJson(e as Map<String, dynamic>),
        );
        final lastModified = await file.file.lastModified();
        _recentlyFetched = DateTime.now().difference(lastModified) <
            const Duration(minutes: 10);
        if (_recentlyFetched) {
          _timer = Timer(const Duration(minutes: 10), () {
            _recentlyFetched = false;
          });
        }
        return {for (final emoji in emojis) emoji.name: emoji};
      } catch (_) {}
    }
    final response = await _fetchEmojis();
    unawaited(_save(response));
    _recentlyFetched = true;
    _timer = Timer(const Duration(minutes: 10), () {
      _recentlyFetched = false;
    });
    return {for (final emoji in response) emoji.name: emoji};
  }

  String get _key => '$host/emojis';

  Timer? _timer;

  bool _recentlyFetched = false;

  Future<void> _save(List<Emoji> emojis) async {
    await ref
        .read(cacheManagerProvider)
        .putFile(_key, utf8.encode(jsonEncode(emojis)));
  }

  Future<List<Emoji>> _fetchEmojis() async {
    final endpoints = await ref.read(endpointsProvider(host).future);
    if (endpoints.contains('emojis')) {
      final emojis =
          await ref.read(misskeyProvider(Account(host: host))).emojis();
      return emojis.emojis;
    } else {
      final meta = await ref
          .read(misskeyProvider(Account(host: host)))
          .apiService
          .post<Map<String, dynamic>>('meta', {});
      final emojis = meta['emojis'];
      if (emojis is List) {
        return [
          for (final emoji in emojis)
            if (emoji is Map<String, dynamic>)
              Emoji(
                aliases: ((emoji['aliases'] ?? <String>[]) as List)
                    .whereType<String>()
                    .toList(),
                name: emoji['name'] as String,
                category: emoji['category'] as String?,
                url: Uri.parse((emoji['url'] as String).trim()),
              ),
        ];
      }
      return [];
    }
  }

  Future<void> reloadEmojis() async {
    if ((state.valueOrNull?.isEmpty ?? true) || !_recentlyFetched) {
      final emojis = await _fetchEmojis();
      state = AsyncData({for (final emoji in emojis) emoji.name: emoji});
      await _save(emojis);
      _recentlyFetched = true;
      _timer = Timer(const Duration(minutes: 10), () {
        _recentlyFetched = false;
      });
    }
  }

  void add(Emoji emoji) {
    state = AsyncData({...?state.valueOrNull, emoji.name: emoji});
  }

  void addAll(Iterable<Emoji> emojis) {
    state = AsyncData({
      ...?state.valueOrNull,
      for (final emoji in emojis) emoji.name: emoji,
    });
  }

  void deleteAll(Iterable<String> names) {
    final value = state.valueOrNull;
    if (value == null) return;
    final emojis = Map.of(value);
    emojis.removeWhere((key, _) => names.contains(key));
    state = AsyncData(emojis);
  }
}
