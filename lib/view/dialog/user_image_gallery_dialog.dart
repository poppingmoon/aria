import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import 'error_message_dialog.dart';
import 'image_gallery_dialog.dart';

Future<void> showUserImageGalleryDialog(
  BuildContext context, {
  required Account account,
  required String userId,
  String? initialNoteId,
  String? initialFileId,
}) {
  return showDialog(
    context: context,
    builder: (context) => UserImageGalleryDialog(
      account: account,
      userId: userId,
      initialNoteId: initialNoteId,
      initialFileId: initialFileId,
    ),
    useSafeArea: false,
  );
}

class UserImageGalleryDialog extends HookConsumerWidget {
  const UserImageGalleryDialog({
    super.key,
    required this.account,
    required this.userId,
    this.initialNoteId,
    this.initialFileId,
  });

  final Account account;
  final String userId;
  final String? initialNoteId;
  final String? initialFileId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = TabSettings(
      tabType: TabType.user,
      account: account,
      withFiles: true,
      userId: userId,
    );
    final notes = ref.watch(timelineNotesNotifierProvider(tabSettings));

    return switch (notes) {
      AsyncValue(valueOrNull: final notes?) => _UserImageGalleryDialog(
        tabSettings: tabSettings,
        notes: notes.items,
        initialNoteId: initialNoteId,
        initialFileId: initialFileId,
      ),
      AsyncValue(:final error?, :final stackTrace) => ErrorMessageDialog(
        error: error,
        stackTrace: stackTrace,
      ),
      _ => const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    };
  }
}

class _UserImageGalleryDialog extends HookConsumerWidget {
  const _UserImageGalleryDialog({
    required this.tabSettings,
    required this.notes,
    this.initialNoteId,
    this.initialFileId,
  });

  final TabSettings tabSettings;
  final List<Note> notes;
  final String? initialNoteId;
  final String? initialFileId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noteIds = notes
        .map((note) => List.generate(note.files.length, (_) => note.id))
        .flattenedToList;
    final files = notes.map((note) => note.files).flattenedToList;
    final initialIndex = useMemoized(() {
      int index = -1;
      while (true) {
        index = files.indexWhere((file) => file.id == initialFileId, index + 1);
        if (index < 0) {
          return 0;
        }
        if (noteIds.elementAtOrNull(index) == initialNoteId) {
          return index;
        }
      }
    });
    final controller = usePageController(initialPage: initialIndex);
    useEffect(() {
      bool isAtEnd = false;

      void callback() {
        if (controller.page case final page? when files.length - page < 4) {
          if (!isAtEnd) {
            ref
                .read(timelineNotesNotifierProvider(tabSettings).notifier)
                .loadMore();
            isAtEnd = true;
          }
        } else {
          isAtEnd = false;
        }
      }

      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, [files.length]);

    return ImageGalleryDialog(
      account: tabSettings.account,
      files: files,
      noteIds: noteIds,
      controller: controller,
      initialIndex: initialIndex,
    );
  }
}
