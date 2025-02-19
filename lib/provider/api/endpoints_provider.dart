import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../cache_manager_provider.dart';
import 'misskey_provider.dart';

part 'endpoints_provider.g.dart';

// This provider depends on the `cacheManagerProvider`, but whether it is scoped
// does not matter here.
// ignore: provider_dependencies
@riverpod
Stream<List<String>> endpoints(Ref ref, String host) async* {
  final link = ref.keepAlive();
  final key = '$host/endpoints';
  try {
    final file = await ref.read(cacheManagerProvider).getFileFromCache(key);
    if (file != null) {
      final s = await file.file.readAsString();
      yield (jsonDecode(s) as List).whereType<String>().toList();
    }
  } catch (_) {}
  try {
    final endpoints =
        await ref.watch(misskeyProvider(Account(host: host))).endpoints();
    yield endpoints;
    await ref
        .read(cacheManagerProvider)
        .putFile(key, utf8.encode(jsonEncode(endpoints)), eTag: key);
  } catch (_) {
    link.close();
    rethrow;
  }
}
