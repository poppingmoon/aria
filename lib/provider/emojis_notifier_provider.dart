import 'dart:async';

import 'package:hooks_riverpod/experimental/persist.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/endpoints_notifier_provider.dart';
import 'api/misskey_provider.dart';
import 'riverpod_storage_provider.dart';

part 'emojis_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
@JsonPersist()
class EmojisNotifier extends _$EmojisNotifier {
  @override
  FutureOr<Map<String, Emoji>> build(String host) async {
    ref.onDispose(() => _timer?.cancel());
    persist(ref.watch(riverpodStorageProvider.future));
    final response = await _fetchEmojis();
    _recentlyFetched = true;
    _timer = Timer(const Duration(minutes: 10), () {
      _recentlyFetched = false;
    });
    return {for (final emoji in response) emoji.name: emoji};
  }

  Misskey get _misskey => ref.read(misskeyProvider(Account(host: host)));

  Timer? _timer;

  bool _recentlyFetched = false;

  Future<List<Emoji>> _fetchEmojis() async {
    final endpoints = await ref.read(endpointsNotifierProvider(host).future);
    if (endpoints.contains('emojis')) {
      final emojis = await _misskey.emojis();
      return emojis.emojis;
    } else {
      final meta = await _misskey.apiService.post<Map<String, dynamic>>(
        'meta',
        {},
      );
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

  Future<void> reloadEmojis({bool force = false}) async {
    if (force || (state.value?.isEmpty ?? true) || !_recentlyFetched) {
      final emojis = await _fetchEmojis();
      state = AsyncData({for (final emoji in emojis) emoji.name: emoji});
      _recentlyFetched = true;
      _timer = Timer(const Duration(minutes: 10), () {
        _recentlyFetched = false;
      });
    }
  }

  void add(Emoji emoji) {
    state = AsyncData({...?state.value, emoji.name: emoji});
  }

  void addAll(Iterable<Emoji> emojis) {
    state = AsyncData({
      ...?state.value,
      for (final emoji in emojis) emoji.name: emoji,
    });
  }

  void deleteAll(Iterable<String> names) {
    final value = state.value;
    if (value == null) return;
    final emojis = Map.of(value);
    emojis.removeWhere((key, _) => names.contains(key));
    state = AsyncData(emojis);
  }
}
