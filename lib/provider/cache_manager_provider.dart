import 'package:file/file.dart' hide FileSystem;
import 'package:file/local.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_manager_provider.g.dart';

const _key = 'libCachedImageData';

@Riverpod(dependencies: [])
ImageCacheManager cacheManager(Ref ref) {
  final cacheManager = _ImageCacheManager(
    Config(
      _key,
      maxNrOfCacheObjects: 100000,
      repo: JsonCacheInfoRepository(databaseName: _key),
      fileSystem: _IOFileSystem(_key),
    ),
  );
  cacheManager.store.cleanupRunMinInterval = const Duration(minutes: 1);
  return cacheManager;
}

class _ImageCacheManager extends CacheManager with ImageCacheManager {
  _ImageCacheManager(super.config);
}

class _IOFileSystem implements FileSystem {
  final Future<Directory> _fileDir;
  final String _cacheKey;

  _IOFileSystem(this._cacheKey) : _fileDir = createDirectory(_cacheKey);

  static Future<Directory> createDirectory(String key) async {
    final baseDir = await getApplicationCacheDirectory();
    final path = p.join(baseDir.path, key);

    const fs = LocalFileSystem();
    final directory = fs.directory(path);
    await directory.create(recursive: true);
    return directory;
  }

  @override
  Future<File> createFile(String name) async {
    final directory = await _fileDir;
    if (!directory.existsSync()) {
      await createDirectory(_cacheKey);
    }
    return directory.childFile(name);
  }
}
