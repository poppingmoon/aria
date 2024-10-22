import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'drive_folder_provider.g.dart';

@riverpod
FutureOr<DriveFolder> driveFolder(
  Ref ref,
  Account account,
  String folderId,
) {
  return ref
      .read(misskeyProvider(account))
      .drive
      .folders
      .show(DriveFoldersShowRequest(folderId: folderId));
}
