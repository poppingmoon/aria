import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/database/riverpod_storage_item.dart';

part 'isar_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Isar> isar(Ref ref) async {
  final directory = await getApplicationDocumentsDirectory();
  return Isar.open([RiverpodStorageItemSchema], directory: directory.path);
}
