import 'dart:convert';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../cache_manager_provider.dart';
import 'misskey_provider.dart';

part 'meta_notifier_provider.g.dart';

// This provider depends on the `cacheManagerProvider`, but whether it is scoped
// does not matter here.
// ignore: provider_dependencies
@riverpod
class MetaNotifier extends _$MetaNotifier {
  @override
  Stream<MetaResponse> build(String host) async* {
    final link = ref.keepAlive();
    FileInfo? file;
    try {
      file = await ref.watch(cacheManagerProvider).getFileFromCache(_key);
      if (file != null) {
        final s = await file.file.readAsString();
        yield MetaResponse.fromJson(jsonDecode(s) as Map<String, dynamic>);
      }
    } catch (_) {}
    final lastModified = await file?.file.lastModified();
    if (lastModified == null ||
        DateTime.now().difference(lastModified) >= const Duration(hours: 6)) {
      try {
        final response = await _fetchMeta();
        yield response;
        await _save(response);
      } catch (_) {
        link.close();
        rethrow;
      }
    }
  }

  String get _key => '$host/meta';

  Future<MetaResponse> _fetchMeta() {
    return ref.read(misskeyProvider(Account(host: host))).meta();
  }

  Future<void> _save(MetaResponse meta) async {
    await ref
        .read(cacheManagerProvider)
        .putFile(_key, utf8.encode(jsonEncode(meta)), eTag: _key);
  }

  Future<void> reloadMeta() async {
    final response = await _fetchMeta();
    state = AsyncData(response);
    await _save(response);
  }
}
