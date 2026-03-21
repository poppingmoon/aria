import 'package:hooks_riverpod/experimental/persist.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../riverpod_storage_provider.dart';
import 'misskey_provider.dart';

part 'endpoints_notifier_provider.g.dart';

@riverpod
@JsonPersist()
class EndpointsNotifier extends _$EndpointsNotifier {
  @override
  FutureOr<List<String>> build(String host) async {
    persist(ref.watch(riverpodStorageProvider.future));
    try {
      final endpoints = await ref
          .watch(misskeyProvider(Account(host: host)))
          .endpoints();
      ref.keepAlive();
      return endpoints;
    } catch (_) {
      if (state.value case final endpoints?) {
        return endpoints;
      }
      rethrow;
    }
  }
}
