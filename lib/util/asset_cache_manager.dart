import 'package:file/file.dart';
import 'package:file/memory.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class AssetCacheManager extends CacheManager with ImageCacheManager {
  AssetCacheManager() : super(Config('assetCacheManager'));

  @override
  Future<File> getSingleFile(
    String url, {
    String? key,
    Map<String, String>? headers,
  }) async {
    final file = MemoryFileSystem().file(url);
    if (file.existsSync()) {
      return file;
    } else {
      await file.create(recursive: true);
      final data = await rootBundle.load(url);
      await file.writeAsBytes(data.buffer.asUint8List());
      return file;
    }
  }

  @override
  Stream<FileResponse> getImageFile(
    String url, {
    String? key,
    Map<String, String>? headers,
    bool withProgress = false,
    int? maxHeight,
    int? maxWidth,
  }) async* {
    final file = await getSingleFile(url);
    yield FileInfo(file, FileSource.Cache, DateTime(10000), url);
  }
}
