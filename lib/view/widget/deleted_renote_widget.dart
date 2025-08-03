import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/general_settings_notifier_provider.dart';
import 'channel_color_bar_box.dart';
import 'deleted_note_widget.dart';
import 'note_sheet.dart';
import 'renote_header.dart';

class DeletedRenoteWidget extends HookConsumerWidget {
  const DeletedRenoteWidget({
    super.key,
    required this.account,
    required this.note,
    this.backgroundColor,
    this.borderRadius,
  });

  final Account account;
  final Note note;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  void Function(BuildContext context)? _getNoteAction(NoteActionType type) {
    if (note.id.isEmpty) {
      return null;
    }
    return switch (type) {
      NoteActionType.none => null,
      NoteActionType.expand => (context) => context.push(
        '/$account/notes/${note.id}',
      ),
      NoteActionType.menu => (context) => showNoteSheet(
        context: context,
        account: account,
        noteId: note.id,
      ),
      NoteActionType.reaction => null,
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      verticalPadding,
      horizontalPadding,
      showAvatars,
      tapAction,
      doubleTapAction,
      longPressAction,
      noteBackgroundColor,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.noteVerticalPadding,
          settings.noteHorizontalPadding,
          settings.showAvatarsInNote,
          settings.noteTapAction,
          settings.noteDoubleTapAction,
          settings.noteLongPressAction,
          switch (note.visibility) {
            NoteVisibility.public => settings.publicNoteBackgroundColor,
            NoteVisibility.home => settings.homeNoteBackgroundColor,
            NoteVisibility.followers => settings.followersNoteBackgroundColor,
            NoteVisibility.specified => settings.specifiedNoteBackgroundColor,
            null => null,
          },
        ),
      ),
    );
    final onTap = useMemoized(() => _getNoteAction(tapAction), [
      account,
      tapAction,
      note.id,
    ]);
    final onDoubleTap = useMemoized(() => _getNoteAction(doubleTapAction), [
      account,
      doubleTapAction,
      note.id,
    ]);
    final onLongPress = useMemoized(() => _getNoteAction(longPressAction), [
      account,
      longPressAction,
      note.id,
    ]);
    final backgroundColor = this.backgroundColor ?? noteBackgroundColor;
    final theme = Theme.of(context);

    return Material(
      color: backgroundColor ?? theme.colorScheme.surface,
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap != null ? () => onTap(context) : null,
        onDoubleTap: onDoubleTap != null ? () => onDoubleTap(context) : null,
        onLongPress: onLongPress != null ? () => onLongPress(context) : null,
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 4.0,
            top: verticalPadding,
            end: horizontalPadding,
            bottom: verticalPadding,
          ),
          child: Column(
            children: [
              ChannelColorBarBox(
                note: note,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: horizontalPadding - 4.0,
                  ),
                  child: RenoteHeader(
                    account: account,
                    noteId: note.id,
                    onTap: () => context.push('/$account/notes/${note.id}'),
                    onLongPress: () => showNoteSheet(
                      context: context,
                      account: account,
                      noteId: note.id,
                      renote: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4.0),
              const DeletedNoteWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
