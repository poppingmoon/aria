import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../util/compress_image.dart';
import '../account_settings_notifier_provider.dart';
import 'misskey_provider.dart';

part 'attaches_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class AttachesNotifier extends _$AttachesNotifier {
  @override
  List<PostFile> build(Account account) {
    return [];
  }

  void add(PostFile file) {
    final fileIds = state
        .map((file) => file is DrivePostFile ? file.file.id : null)
        .nonNulls;
    if (file is! DrivePostFile || !fileIds.contains(file.file.id)) {
      state = [...state, file];
    }
  }

  void addAll(Iterable<PostFile> files) {
    final fileIds = state
        .map((file) => file is DrivePostFile ? file.file.id : null)
        .nonNulls;
    state = [
      ...state,
      ...files.where(
        (file) => file is! DrivePostFile || !fileIds.contains(file.file.id),
      ),
    ];
  }

  void replace(int index, PostFile file) {
    state = [
      ...state.sublist(0, index),
      file,
      ...state.sublist(index + 1),
    ];
  }

  void remove(int index) {
    state = [
      ...state.sublist(0, index),
      ...state.sublist(index + 1),
    ];
  }

  void removeAll() {
    state = [];
  }

  void reorder(int oldIndex, int newIndex) {
    final items = state.toList();
    final item = items.removeAt(oldIndex);
    items.insert(oldIndex < newIndex ? newIndex - 1 : newIndex, item);
    state = items;
  }

  Future<DriveFile> upload(int index) async {
    final file = state[index];
    switch (file) {
      case LocalPostFile():
        replace(index, file.copyWith(uploading: true));
        final data = await file.file.readAsBytes();
        final resized = ref
                .read(accountSettingsNotifierProvider(account))
                .keepOriginalUploading
            ? null
            : await compressImage(data, file.type);
        final driveFile =
            await ref.read(misskeyProvider(account)).drive.files.createAsBinary(
                  DriveFilesCreateRequest(
                    folderId: ref
                        .read(accountSettingsNotifierProvider(account))
                        .uploadFolder,
                    name: file.name,
                    isSensitive: file.isSensitive,
                    comment: file.comment,
                    force: true,
                  ),
                  resized ?? data,
                );
        replace(index, DrivePostFile.fromDriveFile(driveFile));
        return driveFile;
      case DrivePostFile():
        return file.file;
    }
  }

  Future<List<DriveFile>> uploadAll() {
    return Future.wait(List.generate(state.length, upload));
  }
}
