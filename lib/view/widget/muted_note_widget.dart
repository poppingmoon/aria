import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import 'username_widget.dart';

class MutedNoteWidget extends ConsumerWidget {
  const MutedNoteWidget({
    super.key,
    required this.account,
    required this.note,
    this.onTap,
    this.backgroundColor,
    this.borderRadius,
  });

  final Account account;
  final Note note;
  final void Function()? onTap;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (verticalPadding, horizontalPadding, noteBackgroundColor) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.noteVerticalPadding,
          settings.noteHorizontalPadding,
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
    final backgroundColor = this.backgroundColor ?? noteBackgroundColor;
    final theme = Theme.of(context);

    return Material(
      color: backgroundColor ?? theme.colorScheme.surface,
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: horizontalPadding,
          ),
          child: SizedBox(
            width: double.infinity,
            child: UsernameWidget(
              account: account,
              user: note.user,
              builder: (context, span) => Text.rich(
                t.aria.userSaysSomething(name: span),
                style: TextStyle(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
