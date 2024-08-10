import 'dart:typed_data';

import 'package:file/memory.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class FakeFileSystem implements FileSystem {
  @override
  Future<File> createFile(String name) async {
    return MemoryFileSystem().file(name);
  }
}

class FakeCacheManager extends CacheManager with ImageCacheManager {
  FakeCacheManager()
      : super(
          Config(
            'fakeCacheManager',
            repo: JsonCacheInfoRepository(path: 'fake.json'),
            fileSystem: FakeFileSystem(),
          ),
        );

  @override
  Future<FileInfo?> getFileFromCache(
    String key, {
    bool ignoreMemCache = false,
  }) async {
    return null;
  }

  @override
  Future<File> putFile(
    String url,
    Uint8List fileBytes, {
    String? key,
    String? eTag,
    Duration maxAge = const Duration(days: 30),
    String fileExtension = 'file',
  }) async {
    return MemoryFileSystem().file(url);
  }
}
