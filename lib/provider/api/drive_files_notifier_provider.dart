import 'dart:async';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:file/file.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'endpoints_provider.dart';
import 'misskey_provider.dart';

part 'drive_files_notifier_provider.g.dart';

@riverpod
class DriveFilesNotifier extends _$DriveFilesNotifier {
  @override
  Stream<PaginationState<DriveFile>> build(
    Account account,
    String? folderId,
  ) async* {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 1), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchFiles();
      yield PaginationState.fromIterable(response);
      if (response.isNotEmpty && response.length < 10) {
        await loadMore();
      }
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<DriveFile>> _fetchFiles({String? untilId}) {
    return _misskey.drive.files.files(
      DriveFilesRequest(folderId: folderId, untilId: untilId, limit: 30),
    );
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchFiles(untilId: value.items.lastOrNull?.id);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }

  Future<void> upload(
    File file, {
    String? name,
    String? comment,
    bool? isSensitive,
  }) async {
    final response = await _misskey.drive.files.create(
      DriveFilesCreateRequest(
        folderId: folderId,
        name: name ?? file.basename,
        comment: comment,
        isSensitive: isSensitive,
        force: true,
      ),
      file,
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [response, ...value.items]));
  }

  Future<void> uploadBinary(
    Uint8List data, {
    String? name,
    String? comment,
    bool? isSensitive,
  }) async {
    final response = await _misskey.drive.files.createAsBinary(
      DriveFilesCreateRequest(
        folderId: folderId,
        name: name,
        comment: comment,
        isSensitive: isSensitive,
        force: true,
      ),
      data,
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [response, ...value.items]));
  }

  Future<void> uploadFromUrl(
    String url, {
    String? comment,
    bool? isSensitive,
  }) async {
    await _misskey.drive.files.uploadFromUrl(
      DriveFilesUploadFromUrlRequest(
        url: url,
        folderId: folderId,
        comment: comment,
        isSensitive: isSensitive,
        force: true,
      ),
    );
  }

  Future<void> delete(String fileId) async {
    await _misskey.drive.files.delete(DriveFilesDeleteRequest(fileId: fileId));
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.where((file) => file.id != fileId).toList(),
      ),
    );
  }

  Future<void> updateFile({
    required String fileId,
    String? name,
    bool? isSensitive,
    String? comment,
  }) async {
    final response = await _misskey.drive.files.update(
      DriveFilesUpdateRequest(
        fileId: fileId,
        name: name,
        isSensitive: isSensitive,
        comment: comment,
      ),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map((file) => file.id == fileId ? response : file)
            .toList(),
      ),
    );
  }

  Future<void> move({required String fileId, required String? folderId}) async {
    if (folderId == this.folderId) {
      return;
    }
    // To preserve `folderId` key even if it is null.
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'drive/files/update',
      {'fileId': fileId, 'folderId': folderId},
      excludeRemoveNullPredicate: (key, _) => key == 'folderId',
    );
    final file = DriveFile.fromJson(response);
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.where((file) => file.id != fileId).toList(),
      ),
    );
    ref.read(driveFilesNotifierProvider(account, folderId).notifier).add(file);
  }

  Future<void> moveBulkFrom(List<DriveFile> files) async {
    bool isMoveBulkAvailable = false;
    try {
      final endpoints = await ref.read(endpointsProvider(account.host).future);
      isMoveBulkAvailable = endpoints.contains('drive/files/move-bulk');
    } catch (_) {}
    if (isMoveBulkAvailable) {
      await _misskey.drive.files.moveBulk(
        DriveFilesMoveBulkRequest(
          fileIds: files.map((file) => file.id).toList(),
          folderId: folderId,
        ),
      );
      final groups = files.groupListsBy((file) => file.folderId);
      for (final MapEntry(key: folderId, value: files) in groups.entries) {
        ref
            .read(driveFilesNotifierProvider(account, folderId).notifier)
            .removeAll(files.map((file) => file.id));
      }
      addAll(files.map((file) => file.copyWith(folderId: folderId)));
    } else {
      await Future.wait(
        files.map(
          (file) => ref
              .read(driveFilesNotifierProvider(account, file.folderId).notifier)
              .move(fileId: file.id, folderId: folderId),
        ),
      );
    }
  }

  void add(DriveFile file) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [file, ...value.items]));
  }

  void addAll(Iterable<DriveFile> files) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [...files, ...value.items]));
  }

  void removeAll(Iterable<String> fileIds) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.where((file) => !fileIds.contains(file.id)).toList(),
      ),
    );
  }

  void replace(DriveFile file) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.map((f) => f.id == file.id ? file : f).toList(),
      ),
    );
  }
}
