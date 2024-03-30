import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/file_system_provider.dart';
import '../page/drive_page.dart';

class FilePickerSheet extends ConsumerWidget {
  const FilePickerSheet({
    super.key,
    required this.account,
    this.allowMultiple = false,
  });

  final Account account;
  final bool allowMultiple;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: const Icon(Icons.upload),
          title: Text(t.aria.fromDevice),
          onTap: () async {
            final result = await FilePicker.platform
                .pickFiles(allowMultiple: allowMultiple);
            if (!context.mounted) return;
            if (result case FilePickerResult(:final files)) {
              if (allowMultiple) {
                context.pop(
                  files
                      .map(
                        (file) => LocalPostFile.fromFile(
                          ref.read(fileSystemProvider).file(file.path),
                        ),
                      )
                      .toList(),
                );
              } else if (files.length == 1) {
                context.pop(
                  LocalPostFile.fromFile(
                    ref.read(fileSystemProvider).file(files.single),
                  ),
                );
              }
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
                ),
              );
              if (!context.mounted) return;
              if (result != null) {
                context.pop(DrivePostFile.fromDriveFile(result));
              }
            }
          },
        ),
        // TODO: from camera
      ],
    );
  }
}
