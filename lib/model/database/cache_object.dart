import 'package:isar_community/isar.dart';

part 'cache_object.g.dart';

@collection
class CacheObject {
  Id? id;

  late String url;

  @Index(unique: true)
  late String key;

  late String relativePath;

  String? eTag;

  late DateTime validTill;

  @Index()
  DateTime? touched;

  int? length;
}
