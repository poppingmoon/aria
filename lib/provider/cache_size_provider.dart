import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_size_provider.g.dart';

@riverpod
FutureOr<int> cacheSize(Ref ref) async {
  return (await getApplicationCacheDirectory())
      .list(recursive: true)
      .fold<int>(0, (acc, entity) => acc + entity.statSync().size);
}
