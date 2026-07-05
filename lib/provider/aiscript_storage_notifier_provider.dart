import 'dart:convert';

import 'package:isar_community/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/database/aiscript_storage_item.dart';
import 'isar_provider.dart';
import 'shared_preferences_provider.dart';

part 'aiscript_storage_notifier_provider.g.dart';

@riverpod
class AiscriptStorageNotifier extends _$AiscriptStorageNotifier {
  @override
  void build(Account account) {}

  String get _key => '$account/aiscript';

  Future<void> migrate() async {
    final prefs = ref.read(sharedPreferencesProvider);
    final value = prefs.getString(_key);
    if (value != null) {
      final json = jsonDecode(value);
      if (json is Map<String, dynamic>) {
        final storage = json.map(
          (key, value) => MapEntry(key, value.toString()),
        );
        await import(storage);
        await prefs.remove(_key);
      }
    }
  }

  Future<void> save(String key, String value) async {
    final isar = await ref.read(isarProvider.future);
    await isar.writeTxn(
      () => isar.aiscriptStorageItems.put(
        AiscriptStorageItem()
          ..account = account.toString()
          ..key = key
          ..value = value,
      ),
    );
  }

  Future<String?> load(String key) async {
    final isar = await ref.read(isarProvider.future);
    final item = await isar.aiscriptStorageItems.getByAccountKey(
      account.toString(),
      key,
    );
    return item?.value;
  }

  Future<void> remove(String key) async {
    final isar = await ref.read(isarProvider.future);
    await isar.writeTxn(
      () =>
          isar.aiscriptStorageItems.deleteByAccountKey(account.toString(), key),
    );
  }

  Future<void> import(Map<String, String> storage) async {
    final acct = account.toString();
    final items = storage.entries
        .map(
          (entry) => AiscriptStorageItem()
            ..account = acct
            ..key = entry.key
            ..value = entry.value,
        )
        .toList();
    final isar = await ref.read(isarProvider.future);
    await isar.writeTxn(() => isar.aiscriptStorageItems.putAll(items));
  }

  Future<Map<String, String>> export() async {
    final isar = await ref.read(isarProvider.future);
    final items = await isar.aiscriptStorageItems
        .where()
        .accountEqualToAnyKey(account.toString())
        .findAll();
    return {for (final item in items) item.key: item.value};
  }
}
