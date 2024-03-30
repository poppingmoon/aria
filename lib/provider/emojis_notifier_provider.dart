import 'dart:async';
import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/endpoints_provider.dart';
import 'api/misskey_provider.dart';
import 'shared_preferences_provider.dart';

part 'emojis_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class EmojisNotifier extends _$EmojisNotifier {
  @override
  Map<String, Emoji> build(String host) {
    ref.onDispose(() => _timer?.cancel());
    final value = ref.watch(sharedPreferencesProvider).getStringList(_key);
    if (value != null) {
      return {
        for (final emoji in value
            .map((e) => Emoji.fromJson(jsonDecode(e) as Map<String, dynamic>)))
          emoji.name: emoji,
      };
    } else {
      return {};
    }
  }

  String get _key => '$host/emojis';

  Timer? _timer;

  bool _recentlyFetched = false;

  Future<void> _save() async {
    await ref
        .read(sharedPreferencesProvider)
        .setStringList(_key, state.values.map((e) => jsonEncode(e)).toList());
  }

  Future<void> _fetch() async {
    final endpoints = await ref.read(endpointsProvider(host).future);
    if (endpoints.contains('emojis')) {
      final emojis =
          await ref.read(misskeyProvider(Account(host: host))).emojis();
      state = {for (final emoji in emojis.emojis) emoji.name: emoji};
    } else {
      final meta = await ref
          .read(misskeyProvider(Account(host: host)))
          .apiService
          .post<Map<String, dynamic>>('meta', {});
      final emojis = meta['emojis'];
      if (emojis is List) {
        state = {
          for (final emoji in emojis)
            if (emoji is Map<String, dynamic>)
              emoji['name'] as String: Emoji(
                aliases: ((emoji['aliases'] ?? <String>[]) as List)
                    .whereType<String>()
                    .toList(),
                name: emoji['name'] as String,
                category: emoji['category'] as String?,
                url: Uri.parse((emoji['url'] as String).trim()),
              ),
        };
      }
    }
  }

  Future<void> fetchIfNeeded() async {
    if (state.isEmpty || !_recentlyFetched) {
      await _fetch();
      _recentlyFetched = true;
      _timer = Timer(const Duration(minutes: 10), () {
        _recentlyFetched = false;
      });
    }
  }

  Future<void> fetchAndSave() async {
    await _fetch();
    await _save();
  }

  Future<void> fetchAndSaveIfNeeded() async {
    if (state.isEmpty || !_recentlyFetched) {
      await fetchAndSave();
      _recentlyFetched = true;
      _timer = Timer(const Duration(minutes: 10), () {
        _recentlyFetched = false;
      });
    }
  }

  void add(Emoji emoji) {
    state = {...state, emoji.name: emoji};
  }

  void addAll(Iterable<Emoji> emojis) {
    state = {
      ...state,
      for (final emoji in emojis) emoji.name: emoji,
    };
  }

  void deleteAll(Iterable<String> names) {
    final emojis = Map.of(state);
    emojis.removeWhere((key, _) => names.contains(key));
    state = emojis;
  }
}
