import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'drive_files_notifier_provider.dart';
import 'misskey_provider.dart';

part 'drive_file_notifier_provider.g.dart';

@riverpod
class DriveFileNotifier extends _$DriveFileNotifier {
  @override
  FutureOr<DriveFile> build(Account account, String fileId) {
    return ref
        .watch(misskeyProvider(account))
        .drive
        .files
        .show(DriveFilesShowRequest(fileId: fileId));
  }

  Future<void> updateFile({
    String? name,
    bool? isSensitive,
    String? comment,
  }) async {
    final response =
        await ref.read(misskeyProvider(account)).drive.files.update(
              DriveFilesUpdateRequest(
                fileId: fileId,
                name: name,
                isSensitive: isSensitive,
                comment: comment,
              ),
            );
    state = AsyncValue.data(response);
    ref
        .read(driveFilesNotifierProvider(account, response.folderId).notifier)
        .replace(response);
  }
}
