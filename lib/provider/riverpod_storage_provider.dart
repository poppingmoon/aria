import 'package:hooks_riverpod/experimental/persist.dart';
import 'package:isar_community/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/database/riverpod_storage_item.dart';
import '../util/fast_hash.dart';
import 'isar_provider.dart';

part 'riverpod_storage_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Storage<String, String>> riverpodStorage(Ref ref) async {
  final isar = await ref.watch(isarProvider.future);
  return _JsonIsarStorage.open(isar);
}

final class _JsonIsarStorage extends Storage<String, String> {
  _JsonIsarStorage._(this.isar);

  final Isar isar;

  static Future<_JsonIsarStorage> open(Isar isar) async {
    final instance = _JsonIsarStorage._(isar);
    await instance.deleteOutOfDate();
    return instance;
  }

  @override
  Future<void> deleteOutOfDate() async {
    await isar.writeTxn(
      () => isar.riverpodStorageItems
          .filter()
          .expireAtLessThan(DateTime.now())
          .deleteAll(),
    );
  }

  @override
  Future<void> delete(String key) async {
    await isar.writeTxn(() => isar.riverpodStorageItems.delete(fastHash(key)));
  }

  @override
  Future<PersistedData<String>?> read(String key) async {
    final result = await isar.riverpodStorageItems.get(fastHash(key));
    if (result != null) {
      return PersistedData(
        result.text,
        destroyKey: result.destroyKey,
        expireAt: result.expireAt,
      );
    } else {
      return null;
    }
  }

  @override
  Future<void> write(String key, String value, StorageOptions options) async {
    final item = RiverpodStorageItem()
      ..id = fastHash(key)
      ..text = value;
    if (options.cacheTime.duration case final duration?) {
      item.expireAt = DateTime.now().add(duration);
    }
    if (options.destroyKey case final destroyKey?) {
      item.destroyKey = destroyKey;
    }
    await isar.writeTxn(() => isar.riverpodStorageItems.put(item));
  }
}
