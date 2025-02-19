import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import 'drive_folder_sheet.dart';

class DriveFolderWidget extends ConsumerWidget {
  const DriveFolderWidget({
    super.key,
    required this.account,
    required this.folder,
    this.onTap,
    this.onLongPress,
  });

  final Account account;
  final DriveFolder folder;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uploadFolder = ref.watch(
      accountSettingsNotifierProvider(
        account,
      ).select((settings) => settings.uploadFolder),
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(context).style;

    return Card(
      color: colors.driveFolderBg,
      shadowColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.folder),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      folder.name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (folder.id == uploadFolder)
                      Text(
                        t.misskey.uploadFolder,
                        style: style.apply(
                          fontSizeFactor: 0.9,
                          color: style.color?.withValues(alpha: 0.8),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed:
                  () => showModalBottomSheet<void>(
                    context: context,
                    builder:
                        (context) =>
                            DriveFolderSheet(account: account, folder: folder),
                  ),
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
