import 'package:hooks_riverpod/experimental/persist.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../riverpod_storage_provider.dart';
import 'misskey_provider.dart';

part 'meta_notifier_provider.g.dart';

@riverpod
@JsonPersist()
class MetaNotifier extends _$MetaNotifier {
  @override
  FutureOr<MetaResponse> build(String host) async {
    final link = ref.keepAlive();
    persist(ref.watch(riverpodStorageProvider.future));
    try {
      final meta = await ref.read(misskeyProvider(Account(host: host))).meta();
      return meta;
    } catch (_) {
      link.close();
      if (state.value case final meta?) {
        return meta;
      }
      rethrow;
    }
  }
}
