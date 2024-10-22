import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../cache_manager_provider.dart';
import 'misskey_provider.dart';

part 'endpoints_provider.g.dart';

@riverpod
Stream<List<String>> endpoints(Ref ref, String host) async* {
  final link = ref.keepAlive();
  final key = '$host/endpoints';
  final file = await ref.watch(cacheManagerProvider).getFileFromCache(key);
  if (file != null) {
    try {
      final s = await file.file.readAsString();
      yield jsonDecode(s) as List<String>;
    } catch (_) {}
  }
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
