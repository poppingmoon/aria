import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_manager_provider.g.dart';

@riverpod
ImageCacheManager cacheManager(Ref ref) {
  return DefaultCacheManager();
}
