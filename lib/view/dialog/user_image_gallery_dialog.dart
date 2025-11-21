import 'dart:math';

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
      AsyncValue(value: final notes?) => _UserImageGalleryDialog(
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
    final noteIdFilePairs = notes
        .map(
          (note) => note.files
              .where((file) => file.type.startsWith('image/'))
              .map((file) => (noteId: note.id, file: file)),
        )
        .flattenedToList;
    final noteIds = noteIdFilePairs.map((pair) => pair.noteId).toList();
    final files = noteIdFilePairs.map((pair) => pair.file).toList();
    final initialIndex = useMemoized(() {
      final index = noteIdFilePairs.indexWhere(
        (pair) => pair.noteId == initialNoteId && pair.file.id == initialFileId,
      );
      return max(0, index);
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
