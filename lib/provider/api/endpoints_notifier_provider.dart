import 'package:hooks_riverpod/experimental/persist.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../riverpod_storage_provider.dart';
import 'misskey_provider.dart';

part 'endpoints_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
@JsonPersist()
class EndpointsNotifier extends _$EndpointsNotifier {
  @override
  FutureOr<List<String>> build(String host) {
    persist(ref.watch(riverpodStorageProvider.future));
    return ref.watch(misskeyProvider(Account(host: host))).endpoints();
  }
}
