import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import 'drive_file_sheet.dart';
import 'post_file_thumbnail.dart';

class DriveFileWidget extends ConsumerWidget {
  const DriveFileWidget({
    super.key,
    required this.account,
    required this.file,
    this.isSelected = false,
    this.onTap,
    this.onLongPress,
  });

  final Account account;
  final DriveFile file;
  final bool isSelected;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      color: isSelected ? theme.colorScheme.primary : null,
      clipBehavior: Clip.hardEdge,
      child: IconTheme.merge(
        data: IconThemeData(
          color: isSelected
              ? theme.colorScheme.onPrimary
              : theme.colorScheme.onSurface,
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: isSelected
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSurface,
          ),
          child: InkWell(
            onTap: onTap,
            onLongPress: onLongPress,
            child: Column(
              children: [
                Expanded(
                  child: PostFileThumbnail(
                    file: DrivePostFile.fromDriveFile(file),
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                  children: [
                    Visibility(
                      visible: file.isSensitive,
                      maintainState: true,
                      maintainAnimation: true,
                      maintainSize: true,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Tooltip(
                          message: t.misskey.sensitive,
                          child: const Icon(Icons.warning_amber),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        file.name,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      onPressed: () => showModalBottomSheet<void>(
                        context: context,
                        builder: (context) =>
                            DriveFileSheet(account: account, file: file),
                        clipBehavior: Clip.antiAlias,
                      ),
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
