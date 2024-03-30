import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_manager_provider.g.dart';

@Riverpod(keepAlive: true)
CacheManager cacheManager(CacheManagerRef ref) {
  return DefaultCacheManager();
}
