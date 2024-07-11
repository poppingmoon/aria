import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../widget/drive_file_info.dart';
import '../widget/drive_file_notes.dart';
import '../widget/drive_file_sheet.dart';

class DriveFilePage extends ConsumerWidget {
  const DriveFilePage({
    super.key,
    required this.account,
    required this.fileId,
    required this.folderId,
  });

  final Account account;
  final String fileId;
  final String? folderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(
      driveFilesNotifierProvider(account, folderId).select(
        (files) =>
            files.valueOrNull?.items.firstWhereOrNull((e) => e.id == fileId),
      ),
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.fileViewer_.title),
          actions: [
            if (file != null)
              IconButton(
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => DriveFileSheet(
                      account: account,
                      file: file,
                    ),
                    clipBehavior: Clip.antiAlias,
                  );
                  final siblings = await ref.read(
                    driveFilesNotifierProvider(account, file.folderId).future,
                  );
                  if (!context.mounted) return;
                  if (siblings.items.every((e) => e.id != file.id)) {
                    // File is deleted.
                    context.pop();
                  }
                },
                icon: const Icon(Icons.more_vert),
              ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.info),
              Tab(text: t.misskey.fileViewer_.attachedNotes),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            if (file != null)
              DriveFileInfo(account: account, file: file)
            else
              const Center(child: CircularProgressIndicator()),
            DriveFileNotes(account: account, fileId: fileId),
          ],
        ),
      ),
    );
  }
}
