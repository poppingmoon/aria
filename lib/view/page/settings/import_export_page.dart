import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/aria_backup.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/aiscript_storage_notifier_provider.dart';
import '../../../provider/api/drive_files_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/cache_manager_provider.dart';
import '../../../provider/file_system_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_theme_codes_notifier_provider.dart';
import '../../../provider/timeline_tabs_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/format_datetime.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/message_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/account_preview.dart';
import '../../widget/general_settings_scaffold.dart';
import '../drive_page.dart';

class ImportExportPage extends ConsumerWidget {
  const ImportExportPage({super.key});

  Future<AriaBackup> _export(WidgetRef ref) async {
    final accounts = ref.read(accountsNotifierProvider);
    final packageInfo = await PackageInfo.fromPlatform();
    return AriaBackup(
      metadata: {
        'createdAt': DateTime.now().toUtc().toIso8601String(),
        'packageInfo': packageInfo.data,
        'platform': defaultTargetPlatform.name,
      },
      timelineTabs: ref.read(timelineTabsNotifierProvider),
      accountSettings: {
        for (final account in accounts)
          '$account': ref.read(accountSettingsNotifierProvider(account)),
      },
      generalSettings: ref.read(generalSettingsNotifierProvider),
      themes: ref.read(misskeyThemeCodesNotifierProvider),
      aiscriptStorage: {
        for (final account in accounts)
          '$account': ref.read(aiscriptStorageNotifierProvider(account)),
      },
    );
  }

  Future<bool> _import(WidgetRef ref, AriaBackup backup) async {
    if (backup case AriaBackup(:final timelineTabs?)) {
      await ref
          .read(timelineTabsNotifierProvider.notifier)
          .import(timelineTabs);
    }
    if (backup case AriaBackup(:final accountSettings?)) {
      for (final e in accountSettings.entries) {
        final account = Account.fromString(e.key);
        await ref
            .read(accountSettingsNotifierProvider(account).notifier)
            .import(e.value);
      }
    }
    if (backup case AriaBackup(:final generalSettings?)) {
      await ref
          .read(generalSettingsNotifierProvider.notifier)
          .import(generalSettings);
    }
    if (backup case AriaBackup(:final themes?)) {
      await ref.read(misskeyThemeCodesNotifierProvider.notifier).import(themes);
    }
    if (backup case AriaBackup(:final aiscriptStorage?)) {
      for (final e in aiscriptStorage.entries) {
        final account = Account.fromString(e.key);
        await ref
            .read(aiscriptStorageNotifierProvider(account).notifier)
            .import(e.value);
      }
    }
    return true;
  }

  Future<Account?> _selectAccount(
    BuildContext context,
    List<Account> accounts,
  ) {
    return showDialog(
      context: context,
      builder:
          (context) => SimpleDialog(
            title: Text(t.misskey.selectAccount),
            children:
                accounts
                    .map(
                      (account) => AccountPreview(
                        account: account,
                        onTap: () => context.pop(account),
                      ),
                    )
                    .toList(),
          ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.importAndExport)),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ExpansionTile(
                leading: const Icon(Icons.file_upload),
                title: Text(t.misskey.export),
                initiallyExpanded: true,
                children: [
                  if (accounts.isNotEmpty)
                    ListTile(
                      leading: const Icon(Icons.cloud),
                      title: Text(t.misskey.drive),
                      onTap: () async {
                        final account = await _selectAccount(context, accounts);
                        if (!context.mounted) return;
                        if (account != null) {
                          final result = await showDialog<(DriveFolder?,)>(
                            context: ref.context,
                            builder:
                                (context) => DrivePage(
                                  account: account,
                                  selectFolder: true,
                                ),
                          );
                          if (!context.mounted) return;
                          if (result == null) return;
                          final folderId = result.$1?.id;
                          final tempDirectory =
                              await ref
                                  .read(fileSystemProvider)
                                  .systemTempDirectory
                                  .createTemp();
                          final tempFile = tempDirectory.childFile('aria.json');
                          if (!context.mounted) return;
                          final data = await futureWithDialog(
                            context,
                            _export(ref),
                          );
                          if (data == null) return;
                          if (!context.mounted) return;
                          await futureWithDialog(
                            context,
                            tempFile.writeAsString(jsonEncode(data)),
                          );
                          if (!context.mounted) return;
                          await futureWithDialog(
                            context,
                            ref
                                .read(
                                  driveFilesNotifierProvider(
                                    account,
                                    folderId,
                                  ).notifier,
                                )
                                .upload(
                                  tempFile,
                                  comment: t.aria.settingsFileForAria,
                                ),
                            message: t.aria.uploaded,
                          );
                        }
                      },
                    ),
                  ListTile(
                    leading: const Icon(Icons.copy),
                    title: Text(t.misskey.copy),
                    onTap: () async {
                      final data = await futureWithDialog(
                        context,
                        _export(ref),
                      );
                      if (!context.mounted) return;
                      copyToClipboard(context, jsonEncode(data));
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ExpansionTile(
                leading: const Icon(Icons.file_download),
                title: Text(t.misskey.import),
                initiallyExpanded: true,
                children: [
                  if (accounts.isNotEmpty)
                    ListTile(
                      leading: const Icon(Icons.cloud),
                      title: Text(t.misskey.drive),
                      onTap: () async {
                        final account = await _selectAccount(context, accounts);
                        if (!context.mounted || account == null) return;
                        final result = await showDialog<(DriveFolder?,)>(
                          context: ref.context,
                          builder:
                              (context) => DrivePage(
                                account: account,
                                selectFolder: true,
                              ),
                        );
                        if (!context.mounted) return;
                        if (result == null) return;
                        final folderId = result.$1?.id;
                        if (!context.mounted) return;
                        final files = await futureWithDialog(
                          context,
                          Future.wait(
                            ['aria.json', 'aria.json.unknown'].map(
                              (name) => ref
                                  .read(misskeyProvider(account))
                                  .drive
                                  .files
                                  .find(
                                    DriveFilesFindRequest(
                                      name: name,
                                      folderId: folderId,
                                    ),
                                  ),
                            ),
                          ),
                        );
                        if (files == null) return;
                        final latest =
                            files.flattenedToList
                                .sortedBy((file) => file.createdAt)
                                .lastOrNull;
                        if (!context.mounted) return;
                        if (latest == null) {
                          await showMessageDialog(context, t.aria.fileNotFound);
                          return;
                        }
                        final file = await futureWithDialog(
                          context,
                          ref
                              .read(cacheManagerProvider)
                              .getSingleFile(latest.url),
                        );
                        try {
                          final json =
                              json5Decode(await file!.readAsString())
                                  as Map<String, dynamic>;
                          final backup = AriaBackup.fromJson(json);
                          if (!context.mounted) return;
                          final confirmed = await confirm(
                            context,
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(t.aria.importConfirm),
                                Text(
                                  '${t.misskey.createdAt}: ${absoluteTime(latest.createdAt)}',
                                ),
                              ],
                            ),
                          );
                          if (!context.mounted) return;
                          if (confirmed) {
                            final result = await futureWithDialog(
                              context,
                              _import(ref, backup),
                            );
                            if (result == null) return;
                            if (!context.mounted) return;
                            await showMessageDialog(
                              context,
                              t.aria.importCompleted,
                            );
                          }
                        } catch (_) {
                          if (!context.mounted) return;
                          await showMessageDialog(
                            context,
                            t.misskey.invalidValue,
                          );
                        }
                      },
                    ),
                  ListTile(
                    leading: const Icon(Icons.paste),
                    title: Text(t.aria.paste),
                    onTap: () async {
                      final result = await showDialog<String>(
                        context: context,
                        builder:
                            (context) => TextFieldDialog(
                              title: Text(t.aria.paste),
                              maxLines: 10,
                            ),
                      );
                      if (result != null) {
                        try {
                          final json =
                              json5Decode(result) as Map<String, dynamic>;
                          final backup = AriaBackup.fromJson(json);
                          if (!context.mounted) return;
                          final confirmed = await confirm(
                            context,
                            message: t.aria.importConfirm,
                          );
                          if (!context.mounted) return;
                          if (confirmed) {
                            final result = await futureWithDialog(
                              context,
                              _import(ref, backup),
                            );
                            if (result == null) return;
                            if (!context.mounted) return;
                            await showMessageDialog(
                              context,
                              t.aria.importCompleted,
                            );
                          }
                        } catch (_) {
                          if (!context.mounted) return;
                          await showMessageDialog(
                            context,
                            t.misskey.invalidValue,
                          );
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      selectedDestination: GeneralSettingsDestination.importExport,
    );
  }
}
