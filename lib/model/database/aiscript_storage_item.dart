import 'package:isar_community/isar.dart';

part 'aiscript_storage_item.g.dart';

@collection
class AiscriptStorageItem {
  Id id = Isar.autoIncrement;

  @Index(composite: [CompositeIndex('key')], unique: true, replace: true)
  late String account;

  late String key;

  late String value;
}
