import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/note_is_deleted_notifier_provider.dart';
import 'note_fallback_widget.dart';

class DeletedNoteWidget extends ConsumerWidget {
  const DeletedNoteWidget({
    super.key,
    this.account,
    this.noteId,
    this.borderRadius = const BorderRadius.all(Radius.circular(16.0)),
  });

  final Account? account;
  final String? noteId;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if ((account, noteId) case (final account?, final noteId?)) {
      final isDeleted = ref.watch(
        noteIsDeletedNotifierProvider(account, noteId),
      );
      if (isDeleted) {
        return _DeletedNoteWidget(borderRadius: borderRadius);
      } else {
        return NoteFallbackWidget(account: account, noteId: noteId);
      }
    } else {
      return _DeletedNoteWidget(borderRadius: borderRadius);
    }
  }
}

class _DeletedNoteWidget extends StatelessWidget {
  const _DeletedNoteWidget({required this.borderRadius});

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Colors.transparent,
            Colors.transparent,
            Color.fromRGBO(158, 158, 158, 0.1),
            Color.fromRGBO(158, 158, 158, 0.1),
          ],
          stops: [0.0, 0.7, 0.7, 1.0],
          tileMode: TileMode.repeated,
          transform: GradientRotation(-pi / 4),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(t.misskey.deletedNote),
        ),
      ),
    );
  }
}
