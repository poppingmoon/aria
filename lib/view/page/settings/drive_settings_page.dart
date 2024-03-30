import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/api/drive_folder_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../drive_page.dart';

class DriveSettingsPage extends ConsumerWidget {
  const DriveSettingsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(accountSettingsNotifierProvider(account));
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final uploadFolder = settings.uploadFolder != null
        ? ref
            .watch(driveFolderProvider(account, settings.uploadFolder!))
            .valueOrNull
        : null;

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.drive)),
      body: ListView(
        children: [
          ListTile(
            title: Text(t.misskey.uploadFolder),
            subtitle: settings.uploadFolder == null || uploadFolder != null
                ? Text(uploadFolder?.name ?? '/')
                : null,
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showDialog<(DriveFolder?,)>(
                context: ref.context,
                builder: (context) => DrivePage(
                  account: account,
                  selectFolder: true,
                ),
              );
              if (result == null) return;
              await ref
                  .read(accountSettingsNotifierProvider(account).notifier)
                  .setUploadFolder(result.$1?.id);
            },
          ),
          SwitchListTile(
            title: Text(t.misskey.keepOriginalUploading),
            subtitle: Text(t.misskey.keepOriginalUploadingDescription),
            value: settings.keepOriginalUploading,
            onChanged: (value) => ref
                .read(accountSettingsNotifierProvider(account).notifier)
                .setKeepOriginalUploading(value),
          ),
          if (i != null) ...[
            SwitchListTile(
              title: Text(t.misskey.alwaysMarkSensitive),
              value: i.alwaysMarkNsfw,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setAlwaysMarkSensitive(value),
              ),
            ),
            SwitchListTile(
              title: Text(t.misskey.enableAutoSensitive),
              subtitle: Text(t.misskey.enableAutoSensitiveDescription),
              value: i.autoSensitive,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setAutoSensitive(value),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
