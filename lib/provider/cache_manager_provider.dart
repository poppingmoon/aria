import 'package:file/file.dart' hide FileSystem;
import 'package:file/local.dart';
import 'package:file/memory.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:isar_community/isar.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../model/database/cache_object.dart' as db;
import 'isar_provider.dart';

part 'cache_manager_provider.g.dart';

const _key = 'libCachedImageData';

@riverpod
ImageCacheManager cacheManager(Ref ref) {
  final cacheManager = _ImageCacheManager(
    Config(
      _key,
      maxNrOfCacheObjects: 100000,
      repo: _IsarCacheInfoRepository(ref),
      fileSystem: _IOFileSystem(_key),
    ),
  );
  cacheManager.store.cleanupRunMinInterval = const Duration(minutes: 1);
  return cacheManager;
}

extension on db.CacheObject {
  CacheObject toCacheObject() => CacheObject(
    url,
    id: id,
    key: key,
    relativePath: relativePath,
    eTag: eTag,
    validTill: validTill,
    touched: touched,
    length: length,
  );
}

class _IsarCacheInfoRepository extends CacheInfoRepository {
  _IsarCacheInfoRepository(this.ref);

  final Ref ref;
  late final Isar _isar;

  @override
  Future<bool> open() async {
    _isar = await ref.read(isarProvider.future);
    return true;
  }

  @override
  Future<dynamic> updateOrInsert(CacheObject cacheObject) {
    if (cacheObject.id == null) {
      return insert(cacheObject);
    } else {
      return update(cacheObject);
    }
  }

  @override
  Future<CacheObject> insert(
    CacheObject cacheObject, {
    bool setTouchedToNow = true,
  }) async {
    final id = await _isar.writeTxn(
      () => _isar.cacheObjects.put(
        db.CacheObject()
          ..id = cacheObject.id
          ..url = cacheObject.url
          ..key = cacheObject.key
          ..relativePath = cacheObject.relativePath
          ..eTag = cacheObject.eTag
          ..validTill = cacheObject.validTill
          ..touched = setTouchedToNow ? DateTime.now() : cacheObject.touched
          ..length = cacheObject.length,
      ),
    );
    return cacheObject.copyWith(id: id);
  }

  @override
  Future<CacheObject?> get(String key) async {
    final object = await _isar.cacheObjects.where().keyEqualTo(key).findFirst();
    return object?.toCacheObject();
  }

  @override
  Future<int> delete(int id) async {
    final deleted = await _isar.writeTxn(() => _isar.cacheObjects.delete(id));
    return deleted ? 1 : 0;
  }

  @override
  Future<int> deleteAll(Iterable<int> ids) {
    return _isar.writeTxn(() => _isar.cacheObjects.deleteAll(ids.toList()));
  }

  @override
  Future<int> update(
    CacheObject cacheObject, {
    bool setTouchedToNow = true,
  }) async {
    await insert(cacheObject, setTouchedToNow: setTouchedToNow);
    return 1;
  }

  @override
  Future<List<CacheObject>> getAllObjects() async {
    final objects = await _isar.cacheObjects.where().findAll();
    return objects.map((object) => object.toCacheObject()).toList();
  }

  @override
  Future<List<CacheObject>> getObjectsOverCapacity(int capacity) async {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    final objects = await _isar.cacheObjects
        .where()
        .touchedLessThan(yesterday)
        .sortByTouchedDesc()
        .offset(capacity)
        .findAll();
    return objects.map((object) => object.toCacheObject()).toList();
  }

  @override
  Future<List<CacheObject>> getOldObjects(Duration maxAge) async {
    final expirationDate = DateTime.now().subtract(maxAge);
    final objects = await _isar.cacheObjects
        .where()
        .touchedLessThan(expirationDate)
        .findAll();
    return objects.map((object) => object.toCacheObject()).toList();
  }

  @override
  Future<bool> close() async => true;

  @override
  Future<void> deleteDataFile() async {}

  @override
  Future<bool> exists() async => true;
}

class _ImageCacheManager extends CacheManager with ImageCacheManager {
  _ImageCacheManager(super.config);

  @override
  Stream<FileResponse> getFileStream(
    String url, {
    String? key,
    Map<String, String>? headers,
    bool withProgress = false,
  }) async* {
    if (url.startsWith('data:')) {
      final urlString = url;
      if (Uri.tryParse(urlString) case final url?) {
        final data = UriData.fromUri(url);
        final file = MemoryFileSystem().file(const Uuid().v4());
        await file.writeAsBytes(data.contentAsBytes());
        yield FileInfo(file, FileSource.Cache, DateTime(10000), urlString);
        return;
      }
    }
    yield* super.getFileStream(
      url,
      key: key,
      headers: headers,
      withProgress: withProgress,
    );
  }
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
