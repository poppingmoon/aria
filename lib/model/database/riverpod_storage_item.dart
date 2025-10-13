import 'package:isar_community/isar.dart';

part 'riverpod_storage_item.g.dart';

@collection
class RiverpodStorageItem {
  Id id = Isar.autoIncrement;

  late String text;

  DateTime? expireAt;

  String? destroyKey;
}
