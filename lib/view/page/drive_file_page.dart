import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/drive_file_notifier_provider.dart';
import '../widget/drive_file_info.dart';
import '../widget/drive_file_notes.dart';
import '../widget/drive_file_sheet.dart';
import '../widget/error_message.dart';

class DriveFilePage extends ConsumerWidget {
  const DriveFilePage({
    super.key,
    required this.account,
    required this.fileId,
  });

  final Account account;
  final String fileId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(driveFileNotifierProvider(account, fileId));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.fileViewer_.title),
          actions: [
            if (file.valueOrNull case final file?)
              IconButton(
                onPressed: () async {
                  final result = await showModalBottomSheet<({bool deleted})?>(
                    context: context,
                    builder: (context) => DriveFileSheet(
                      account: account,
                      file: file,
                    ),
                    clipBehavior: Clip.antiAlias,
                  );
                  if (!context.mounted) return;
                  if (result?.deleted ?? false) {
                    context.pop();
                  } else {
                    ref.invalidate(driveFileNotifierProvider(account, fileId));
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
            switch (file) {
              AsyncValue(valueOrNull: final file?) =>
                DriveFileInfo(account: account, file: file),
              AsyncValue(:final error?, :final stackTrace) =>
                SingleChildScrollView(
                  child: ErrorMessage(error: error, stackTrace: stackTrace),
                ),
              _ => const Center(child: CircularProgressIndicator()),
            },
            DriveFileNotes(account: account, fileId: fileId),
          ],
        ),
      ),
    );
  }
}
