import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/drive_file_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/copy_text.dart';
import '../../util/format_datetime.dart';
import '../../util/future_with_dialog.dart';
import '../../util/navigate.dart';
import '../../util/pretty_bytes.dart';
import '../dialog/file_caption_edit_dialog.dart';
import '../dialog/text_field_dialog.dart';
import 'media_list.dart';
import 'time_widget.dart';
import 'url_widget.dart';

class DriveFileInfo extends ConsumerWidget {
  const DriveFileInfo({super.key, required this.account, required this.file});

  final Account account;
  final DriveFile file;

  Future<void> _setName(WidgetRef ref, DriveFile file) async {
    final name = await showTextFieldDialog(
      ref.context,
      title: Text(t.misskey.enterFileName),
      initialText: file.name,
    );
    if (!ref.context.mounted) return;
    if (name != null && name != file.name) {
      await futureWithDialog(
        ref.context,
        ref
            .read(driveFileNotifierProvider(account, file.id).notifier)
            .updateFile(name: name),
      );
    }
  }

  Future<void> _setComment(WidgetRef ref, DriveFile file) async {
    final comment = await showDialog<String>(
      context: ref.context,
      builder:
          (context) =>
              FileCaptionEditDialog(file: DrivePostFile.fromDriveFile(file)),
    );
    if (!ref.context.mounted) return;
    if (comment != null && comment != file.comment) {
      await futureWithDialog(
        ref.context,
        ref
            .read(driveFileNotifierProvider(account, file.id).notifier)
            .updateFile(comment: comment),
      );
    }
  }

  Future<void> _setIsSensitive(WidgetRef ref, bool? isSensitive) async {
    if (isSensitive == null) return;
    await ref
        .read(driveFileNotifierProvider(account, file.id).notifier)
        .updateFile(isSensitive: isSensitive);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MediaList(
              account: account,
              files: [file],
              user: ref.watch(iNotifierProvider(account)).valueOrNull,
            ),
          ),
          IconTheme(
            data: IconThemeData(
              color: colors.accent,
              size: DefaultTextStyle.of(context).style.lineHeight,
            ),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(3.0),
                1: FlexColumnWidth(7.0),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.misskey.fileName),
                    ),
                    InkWell(
                      onTap: () => _setName(ref, file),
                      onLongPress: () => copyToClipboard(context, file.name),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            text: file.name,
                            children: const [
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(Icons.edit),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.misskey.caption),
                    ),
                    InkWell(
                      onTap: () => _setComment(ref, file),
                      onLongPress:
                          file.comment != null
                              ? () => copyToClipboard(context, file.comment!)
                              : null,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            text: file.comment ?? '(${t.misskey.none})',
                            children: const [
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(Icons.edit),
                              ),
                            ],
                            style: TextStyle(
                              color:
                                  file.comment == null
                                      ? colors.fg.withValues(alpha: 0.5)
                                      : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.misskey.sensitive),
                    ),
                    Checkbox(
                      value: file.isSensitive,
                      onChanged:
                          (isSensitive) => futureWithDialog(
                            context,
                            _setIsSensitive(ref, isSensitive),
                          ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.misskey.fileViewer_.uploadedAt),
                    ),
                    InkWell(
                      onLongPress:
                          () => copyToClipboard(
                            context,
                            absoluteTime(file.createdAt),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TimeWidget(time: file.createdAt, detailed: true),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.misskey.fileViewer_.type),
                    ),
                    InkWell(
                      onLongPress: () => copyToClipboard(context, file.type),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(file.type),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.misskey.fileViewer_.size),
                    ),
                    InkWell(
                      onLongPress:
                          () =>
                              copyToClipboard(context, prettyBytes(file.size)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(prettyBytes(file.size.toDouble())),
                      ),
                    ),
                  ],
                ),
                if (file.properties.width != null)
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(t.misskey.width),
                      ),
                      InkWell(
                        onLongPress:
                            () => copyToClipboard(
                              context,
                              file.properties.width.toString(),
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(file.properties.width.toString()),
                        ),
                      ),
                    ],
                  ),
                if (file.properties.height != null)
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(t.misskey.height),
                      ),
                      InkWell(
                        onLongPress:
                            () => copyToClipboard(
                              context,
                              file.properties.height.toString(),
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(file.properties.height.toString()),
                        ),
                      ),
                    ],
                  ),
                TableRow(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('URL'),
                    ),
                    InkWell(
                      onLongPress: () => copyToClipboard(context, file.url),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: UrlWidget(
                          url: file.url,
                          onTap: () => navigate(ref, account, file.url),
                          style: TextStyle(color: colors.link),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 120.0),
        ],
      ),
    );
  }
}
