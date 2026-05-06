import 'package:isar_community/isar.dart';

part 'qr_read_history.g.dart';

@collection
class QrReadHistory {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String text;
}
