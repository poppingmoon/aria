import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:pretty_bytes/pretty_bytes.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/api/drive_folder_provider.dart';
import '../../../provider/api/drive_stats_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/key_value_widget.dart';
import '../drive_page.dart';

class DriveSettingsPage extends ConsumerWidget {
  const DriveSettingsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(accountSettingsNotifierProvider(account));
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final stats = ref.watch(driveStatsProvider(account)).valueOrNull;
    final usageRatio = stats != null
        ? stats.usage / max(max(1, stats.usage), stats.capacity).toDouble()
        : 0.0;
    final barColor =
        HSLColor.fromAHSL(1.0, (1 - usageRatio) * 180, 0.7, 0.5).toColor();
    final uploadFolder = settings.uploadFolder != null
        ? ref
            .watch(driveFolderProvider(account, settings.uploadFolder!))
            .valueOrNull
        : null;

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.drive)),
      body: ListView(
        children: [
          if (stats != null) ...[
            ListTile(
              title: Text(t.misskey.usageAmount),
              subtitle: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                height: 16.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      barColor,
                      barColor,
                      Colors.black12,
                    ],
                    stops: [
                      0.0,
                      usageRatio,
                      usageRatio,
                    ],
                  ),
                  border: Border.all(color: Colors.white30),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: KeyValueWidget(
                      label: t.misskey.inUse,
                      text: prettyBytes(
                        stats.usage.toDouble(),
                        locale: Localizations.localeOf(context).toLanguageTag(),
                        binary: true,
                      ),
                    ),
                  ),
                  Expanded(
                    child: KeyValueWidget(
                      label: t.misskey.capacity,
                      text: prettyBytes(
                        stats.capacity.toDouble(),
                        locale: Localizations.localeOf(context).toLanguageTag(),
                        binary: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
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
          SwitchListTile(
            title: Text(t.misskey.keepOriginalFilename),
            subtitle: Text(t.misskey.keepOriginalFilenameDescription),
            value: settings.keepOriginalFilename,
            onChanged: (value) => ref
                .read(accountSettingsNotifierProvider(account).notifier)
                .setKeepOriginalFilename(value),
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
      selectedDestination: AccountSettingsDestination.drive,
    );
  }
}
