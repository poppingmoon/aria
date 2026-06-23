import 'dart:async';

import 'package:file/file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mime/mime.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:uuid/uuid.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../model/streaming/main_event.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/file_system_provider.dart';
import '../../provider/streaming/main_stream_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/message_dialog.dart';
import '../dialog/text_field_dialog.dart';
import '../page/drive_page.dart';

class FilePickerSheet extends ConsumerWidget {
  const FilePickerSheet({
    super.key,
    required this.account,
    this.type,
    this.allowMultiple = false,
  });

  final Account account;
  final FileType? type;
  final bool allowMultiple;

  Future<List<File>> _collectFiles(
    FileSystem fileSystem,
    List<PlatformFile> files, {
    FileType? type,
  }) async {
    final result = <File>[];
    for (final file in files) {
      if (file.path case final path?) {
        if (fileSystem.isDirectorySync(path)) {
          await for (final entity in fileSystem.directory(path).list()) {
            if (entity is File) {
              if (type == FileType.image) {
                final type = lookupMimeType(entity.path);
                if (!(type?.startsWith('image/') ?? false)) {
                  continue;
                }
              }
              result.add(entity);
            }
          }
        } else {
          result.add(fileSystem.file(file.path));
        }
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        if (type == null)
          ListTile(
            leading: const Icon(Icons.upload_file),
            title: Text('${t.aria.fromDevice} (${t.aria.media})'),
            onTap: allowMultiple
                ? () async {
                    final result = await FilePicker.pickFiles(
                      type: FileType.media,
                    );
                    if (!context.mounted) return;
                    if (result?.files case final platformFiles?) {
                      final files = await _collectFiles(
                        ref.read(fileSystemProvider),
                        platformFiles,
                      );
                      if (!context.mounted) return;
                      context.pop(files.map(LocalPostFile.fromFile).toList());
                    }
                  }
                : () async {
                    final result = await FilePicker.pickFile(
                      type: FileType.media,
                    );
                    if (!context.mounted) return;
                    if (result != null) {
                      final files = await _collectFiles(
                        ref.read(fileSystemProvider),
                        [result],
                      );
                      if (!context.mounted) return;
                      if (files.length >= 2) {
                        for (final file in files) {
                          final type = lookupMimeType(file.path);
                          if (type?.startsWith('image/') ?? false) {
                            context.pop(LocalPostFile.fromFile(file));
                            return;
                          }
                        }
                      }
                      context.pop(
                        files.map(LocalPostFile.fromFile).firstOrNull,
                      );
                    }
                  },
          ),
        ListTile(
          leading: const Icon(Icons.upload),
          title: Text(
            type == null
                ? '${t.aria.fromDevice} (${t.misskey.file})'
                : t.aria.fromDevice,
          ),
          onTap: allowMultiple
              ? () async {
                  final result = await FilePicker.pickFiles(
                    type: type ?? FileType.any,
                  );
                  if (!context.mounted) return;
                  if (result?.files case final platformFiles?) {
                    final files = await _collectFiles(
                      ref.read(fileSystemProvider),
                      platformFiles,
                      type: type,
                    );
                    if (!context.mounted) return;
                    context.pop(files.map(LocalPostFile.fromFile).toList());
                  }
                }
              : () async {
                  final result = await FilePicker.pickFile(
                    type: type ?? FileType.any,
                  );
                  if (!context.mounted) return;
                  if (result != null) {
                    final files = await _collectFiles(
                      ref.read(fileSystemProvider),
                      [result],
                      type: type,
                    );
                    if (!context.mounted) return;
                    context.pop(files.map(LocalPostFile.fromFile).firstOrNull);
                  }
                },
        ),
        ListTile(
          leading: const Icon(Icons.cloud),
          title: Text(t.misskey.fromDrive),
          onTap: () async {
            if (allowMultiple) {
              final result = await showDialog<List<DriveFile>>(
                context: context,
                builder: (context) => DrivePage(
                  account: account,
                  selectFiles: true,
                  type: type ?? FileType.any,
                ),
              );
              if (!context.mounted) return;
              if (result != null) {
                context.pop(
                  result
                      .map((file) => DrivePostFile.fromDriveFile(file))
                      .toList(),
                );
              }
            } else {
              final result = await showDialog<DriveFile>(
                context: context,
                builder: (context) => DrivePage(
                  account: account,
                  selectFile: true,
                  type: type ?? FileType.any,
                ),
              );
              if (!context.mounted) return;
              if (result != null) {
                context.pop(DrivePostFile.fromDriveFile(result));
              }
            }
          },
        ),
        ListTile(
          leading: const Icon(Icons.link),
          title: Text(t.misskey.fromUrl),
          onTap: () async {
            final result = await showTextFieldDialog(
              context,
              title: Text(t.misskey.uploadFromUrl),
            );
            if (!context.mounted) return;
            if (result == null) return;
            final url = Uri.tryParse(result.trim());
            if (url == null) {
              await showMessageDialog(context, t.misskey.invalidValue);
              return;
            }
            final marker = const Uuid().v4();
            final completer = Completer<DriveFile>();
            final sub = ref.listenManual(mainStreamProvider(account), (
              _,
              next,
            ) {
              if (next case AsyncData(
                value: UrlUploadFinished(marker: final m?, :final file),
              ) when m == marker) {
                completer.complete(file);
              }
            });
            final folderId = ref
                .read(accountSettingsNotifierProvider(account))
                .uploadFolder;
            await futureWithDialog(
              context,
              ref
                  .read(misskeyProvider(account))
                  .drive
                  .files
                  .uploadFromUrl(
                    DriveFilesUploadFromUrlRequest(
                      url: url.toString(),
                      folderId: folderId,
                      // Set comment to distinguish requested file while polling
                      comment: marker,
                      marker: marker,
                      force: true,
                    ),
                  ),
            );
            final timer = Timer.periodic(const Duration(seconds: 5), (_) async {
              try {
                final files = await ref
                    .read(misskeyProvider(account))
                    .drive
                    .files
                    .files(DriveFilesRequest(folderId: folderId, limit: 1));
                final file = files.firstOrNull;
                if (file != null && file.comment == marker) {
                  completer.complete(file);
                }
              } catch (_) {}
            });
            if (!context.mounted) return;
            final file = await futureWithDialog(
              context,
              completer.future.timeout(const Duration(minutes: 1)),
            );
            sub.close();
            timer.cancel();
            if (!context.mounted) return;
            if (file == null) return;
            final updated = await futureWithDialog(
              context,
              ref
                  .read(misskeyProvider(account))
                  .apiService
                  .post<Map<String, dynamic>>(
                    'drive/files/update',
                    DriveFilesUpdateRequest(fileId: file.id).toJson(),
                    excludeRemoveNullPredicate: (key, _) => key == 'comment',
                  )
                  .then((response) => DriveFile.fromJson(response)),
            );
            if (!context.mounted) return;
            if (updated == null) return;
            if (allowMultiple) {
              context.pop([DrivePostFile.fromDriveFile(updated)]);
            } else {
              context.pop(DrivePostFile.fromDriveFile(updated));
            }
          },
        ),
        // TODO: from camera
      ],
    );
  }
}
