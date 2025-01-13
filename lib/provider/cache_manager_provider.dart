import 'package:file/file.dart' hide FileSystem;
import 'package:file/local.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache_manager_provider.g.dart';

@riverpod
ImageCacheManager cacheManager(Ref ref) {
  return _CacheManager();
}

class _CacheManager extends CacheManager with ImageCacheManager {
  static const key = 'libCachedImageData';

  static final _CacheManager _instance = _CacheManager._();

  factory _CacheManager() {
    return _instance;
  }

  _CacheManager._() : super(Config(key, fileSystem: _IOFileSystem(key)));
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
    if (!(await directory.exists())) {
      await createDirectory(_cacheKey);
    }
    return directory.childFile(name);
  }
}
