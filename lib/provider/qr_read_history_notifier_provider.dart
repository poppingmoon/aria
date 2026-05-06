import 'package:collection/collection.dart';
import 'package:isar_community/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/database/qr_read_history.dart';
import 'isar_provider.dart';

part 'qr_read_history_notifier_provider.g.dart';

@riverpod
class QrReadHistoryNotifier extends _$QrReadHistoryNotifier {
  @override
  Stream<List<String>> build(Account account) async* {
    final isar = await ref.watch(isarProvider.future);
    yield* isar.qrReadHistorys
        .where(sort: Sort.desc)
        .anyId()
        .limit(30)
        .watch(fireImmediately: true)
        .map((items) => items.map((item) => item.text).toList());
  }

  Future<void> addAll(Iterable<String> values) async {
    final items = values.toList().reversed.toList();
    if (!const ListEquality<String>().equals(
      items,
      state.value?.take(items.length).toList(),
    )) {
      final isar = await ref.read(isarProvider.future);
      await isar.writeTxn(
        () => isar.qrReadHistorys.putAll(
          items.map((value) => QrReadHistory()..text = value).toList(),
        ),
      );
    }
  }

  Future<void> delete(String value) async {
    final isar = await ref.read(isarProvider.future);
    await isar.writeTxn(
      isar.qrReadHistorys.where().textEqualTo(value).deleteAll,
    );
  }
}
