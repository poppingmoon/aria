import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/database/cache_object.dart';
import '../model/database/note_draft.dart';
import '../model/database/qr_read_history.dart';
import '../model/database/riverpod_storage_item.dart';

part 'isar_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Isar> isar(Ref ref) async {
  final directory = await getApplicationSupportDirectory();

  return Isar.open([
    CacheObjectSchema,
    NoteDraftSchema,
    QrReadHistorySchema,
    RiverpodStorageItemSchema,
  ], directory: directory.path);
}
