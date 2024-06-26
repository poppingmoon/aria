import 'package:collection/collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:pretty_bytes/pretty_bytes.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../../provider/api/drive_folders_notifier_provider.dart';
import '../../provider/api/drive_stats_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/selected_drive_files_notifier_provider.dart';
import '../widget/drive_create_sheet.dart';
import '../widget/drive_file_widget.dart';
import '../widget/drive_files_sheet.dart';
import '../widget/drive_folder_sheet.dart';
import '../widget/drive_folder_widget.dart';
import '../widget/pagination_bottom_widget.dart';

class DrivePage extends HookConsumerWidget {
  const DrivePage({
    super.key,
    required this.account,
    this.selectFile = false,
    this.selectFiles = false,
    this.selectFolder = false,
    this.type = FileType.any,
  });

  final Account account;
  final bool selectFile;
  final bool selectFiles;
  final bool selectFolder;
  final FileType type;

  static const itemMaxCrossAxisExtent = 300.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hierarchyFolders = useState(<DriveFolder>[]);
    final folderId = hierarchyFolders.value.lastOrNull?.id;
    final parentId = hierarchyFolders.value.lastOrNull?.parentId;
    final currentFolder = ref.watch(
          driveFoldersNotifierProvider(account, parentId).select(
            (folders) => folders.valueOrNull?.items
                .firstWhereOrNull((folder) => folder.id == folderId),
          ),
        ) ??
        hierarchyFolders.value.lastOrNull;
    final folders = ref.watch(driveFoldersNotifierProvider(account, folderId));
    final files = ref.watch(driveFilesNotifierProvider(account, folderId));
    final selectedFiles = ref.watch(selectedDriveFilesNotifierProvider);
    final stats = !selectFiles && !selectFolder
        ? ref.watch(driveStatsProvider(account)).valueOrNull
        : null;
    final isSelecting = selectFiles || selectedFiles.isNotEmpty;
    final controller = useScrollController();
    final isAtBottom = useState(false);
    useEffect(
      () {
        if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
          controller.addListener(() {
            if (controller.position.extentAfter < 100) {
              if (!isAtBottom.value) {
                ref
                    .read(
                      driveFoldersNotifierProvider(account, folderId).notifier,
                    )
                    .loadMore();
                ref
                    .read(
                      driveFilesNotifierProvider(account, folderId).notifier,
                    )
                    .loadMore();
                isAtBottom.value = true;
              }
            } else if (isAtBottom.value) {
              isAtBottom.value = false;
            }
          });
        }
        return;
      },
      [],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return PopScope(
      canPop: currentFolder == null && selectedFiles.isEmpty,
      onPopInvoked: (_) {
        if (selectedFiles.isNotEmpty) {
          ref.read(selectedDriveFilesNotifierProvider.notifier).removeAll();
        } else if (currentFolder != null) {
          hierarchyFolders.value = hierarchyFolders.value
              .sublist(0, hierarchyFolders.value.length - 1);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading:
              selectedFiles.isEmpty ? const BackButton() : const CloseButton(),
          title: selectFiles || selectedFiles.isNotEmpty
              ? Text.rich(
                  TextSpan(
                    text: t.misskey.selectFiles,
                    children: [
                      if (selectedFiles.isNotEmpty)
                        TextSpan(
                          text: ' (${selectedFiles.length})',
                          style: TextStyle(color: colors.fg.withOpacity(0.5)),
                        ),
                    ],
                  ),
                )
              : selectFolder
                  ? Text(t.misskey.selectFolder)
                  : Text(t.misskey.drive),
          actions: [
            if (selectedFiles.isEmpty && folderId == null && stats != null)
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () =>
                    context.push('/settings/accounts/$account/drive'),
                child: Text('${t.misskey.inUse}: ${prettyBytes(
                  stats.usage.toDouble(),
                  locale: Localizations.localeOf(context).toLanguageTag(),
                  binary: true,
                )} / ${prettyBytes(
                  stats.capacity.toDouble(),
                  locale: Localizations.localeOf(context).toLanguageTag(),
                  binary: true,
                )}'),
              ),
            if (!selectFiles && !selectFolder)
              IconButton(
                onPressed: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => DriveCreateSheet(
                    account: account,
                    folder: currentFolder,
                  ),
                  clipBehavior: Clip.hardEdge,
                ),
                icon: const Icon(Icons.add),
              ),
            if (isSelecting) ...[
              if (files
                  case AsyncValue(
                    valueOrNull: PaginationState(items: final files),
                  ))
                if (files.isNotEmpty)
                  if (files.every(
                    (file) => selectedFiles.any((e) => e.id == file.id),
                  ))
                    IconButton(
                      onPressed: () => ref
                          .read(selectedDriveFilesNotifierProvider.notifier)
                          .removeAll(),
                      icon: const Icon(Icons.deselect),
                    )
                  else
                    IconButton(
                      onPressed: () => ref
                          .read(selectedDriveFilesNotifierProvider.notifier)
                          .addAll(files),
                      icon: const Icon(Icons.select_all),
                    ),
              IconButton(
                onPressed: selectedFiles.isNotEmpty
                    ? () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => DriveFilesSheet(
                            account: account,
                            files: selectedFiles,
                          ),
                        )
                    : null,
                icon: const Icon(Icons.more_vert),
              ),
            ] else if (currentFolder != null)
              IconButton(
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => DriveFolderSheet(
                      account: account,
                      folder: currentFolder,
                    ),
                  );
                  final siblings = await ref.read(
                    driveFoldersNotifierProvider(account, parentId).future,
                  );
                  final updated = siblings.items.firstWhereOrNull(
                    (folder) => folder.id == currentFolder.id,
                  );
                  if (updated == null) {
                    hierarchyFolders.value = hierarchyFolders.value
                        .sublist(0, hierarchyFolders.value.length - 1);
                  } else if (updated != currentFolder) {
                    hierarchyFolders.value = [
                      ...hierarchyFolders.value
                          .sublist(0, hierarchyFolders.value.length - 1),
                      updated,
                    ];
                  }
                },
                icon: const Icon(Icons.more_vert),
              ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // With `reverse: true`, `SingleChildScrollView` shows the right
                // edge even if its child is long. So it shows current folder,
                // which is the rightmost item.
                reverse: true,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                        onPressed: hierarchyFolders.value.isNotEmpty
                            ? () => hierarchyFolders.value = []
                            : null,
                        style: TextButton.styleFrom(
                          foregroundColor: colors.fg.withOpacity(0.8),
                          disabledForegroundColor: colors.fg,
                        ),
                        icon: const Icon(Icons.cloud),
                      ),
                    ),
                    ...hierarchyFolders.value
                        .mapIndexed(
                          (index, folder) => [
                            Icon(
                              Icons.navigate_next,
                              color: colors.fg.withOpacity(0.5),
                            ),
                            TextButton(
                              onPressed: folder.id != folderId
                                  ? () => hierarchyFolders.value =
                                      hierarchyFolders.value
                                          .sublist(0, index + 1)
                                  : null,
                              style: TextButton.styleFrom(
                                foregroundColor: colors.fg.withOpacity(0.8),
                                disabledForegroundColor: colors.fg,
                              ),
                              child: Text(
                                folder.name,
                                style: TextStyle(
                                  fontWeight: folder.id == folderId
                                      ? FontWeight.bold
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        )
                        .flattened,
                  ],
                ),
              ),
            ),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () => Future.wait([
            ref.refresh(driveFoldersNotifierProvider(account, folderId).future),
            ref.refresh(driveFilesNotifierProvider(account, folderId).future),
          ]),
          child: CustomScrollView(
            controller: controller,
            slivers: [
              if (folders
                  case AsyncValue(
                    valueOrNull: PaginationState(items: final folders)
                  ))
                SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: itemMaxCrossAxisExtent,
                    mainAxisExtent: 100,
                  ),
                  itemCount: folders.length,
                  itemBuilder: (context, index) => DriveFolderWidget(
                    account: account,
                    folder: folders[index],
                    onTap: () => hierarchyFolders.value = [
                      ...hierarchyFolders.value,
                      folders[index],
                    ],
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => DriveFolderSheet(
                        account: account,
                        folder: folders[index],
                      ),
                    ),
                  ),
                ),
              SliverToBoxAdapter(
                child: PaginationBottomWidget(
                  paginationState: folders,
                  loadMore: () => ref
                      .read(
                        driveFoldersNotifierProvider(account, folderId)
                            .notifier,
                      )
                      .loadMore(skipError: true),
                ),
              ),
              if (files
                  case AsyncValue(
                    valueOrNull: PaginationState(items: final files)
                  ))
                Builder(
                  builder: (context) {
                    final filtered = files.where(
                      (file) => switch (type) {
                        FileType.media =>
                          file.type.startsWith(RegExp('image|video')),
                        FileType.image => file.type.startsWith('image'),
                        FileType.video => file.type.startsWith('video'),
                        FileType.audio => file.type.startsWith('audio'),
                        FileType.any || FileType.custom => true,
                      },
                    );
                    return SliverGrid.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: itemMaxCrossAxisExtent,
                      ),
                      itemCount: filtered.length,
                      itemBuilder: (context, index) {
                        final file = filtered.elementAt(index);
                        final isSelected =
                            selectedFiles.any((e) => e.id == file.id);
                        return DriveFileWidget(
                          account: account,
                          file: file,
                          isSelected: isSelected,
                          onTap: () {
                            if (selectFile) {
                              context.pop(file);
                            } else if (isSelecting) {
                              if (isSelected) {
                                ref
                                    .read(
                                      selectedDriveFilesNotifierProvider
                                          .notifier,
                                    )
                                    .remove(file.id);
                              } else {
                                ref
                                    .read(
                                      selectedDriveFilesNotifierProvider
                                          .notifier,
                                    )
                                    .add(file);
                              }
                            } else {
                              context.push(
                                '/$account/drive/file/${folderId != null ? '$folderId/' : ''}${file.id}',
                              );
                            }
                          },
                          onLongPress: () => ref
                              .read(selectedDriveFilesNotifierProvider.notifier)
                              .add(file),
                        );
                      },
                    );
                  },
                ),
              SliverToBoxAdapter(
                child: PaginationBottomWidget(
                  paginationState: files,
                  loadMore: () => ref
                      .read(
                        driveFilesNotifierProvider(account, folderId).notifier,
                      )
                      .loadMore(skipError: true),
                  noItemsLabel: folders.valueOrNull?.items.isEmpty ?? false
                      ? folderId == null
                          ? t.misskey.emptyDrive
                          : t.misskey.emptyFolder
                      : null,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: selectFiles
              ? selectedFiles.isNotEmpty
                  ? () => context.pop(selectedFiles)
                  : null
              : selectFolder
                  ? () => context.pop((currentFolder,))
                  : () => showModalBottomSheet<void>(
                        context: context,
                        builder: (context) => DriveCreateSheet(
                          account: account,
                          folder: currentFolder,
                        ),
                        clipBehavior: Clip.hardEdge,
                      ),
          child: selectFiles || selectFolder
              ? const Icon(Icons.check)
              : const Icon(Icons.add),
        ),
      ),
    );
  }
}
