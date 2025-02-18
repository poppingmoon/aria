import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_is_long_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'note_footer.dart';
import 'poll_widget.dart';
import 'reactions_viewer.dart';

class SubNoteContent extends HookConsumerWidget {
  const SubNoteContent({
    super.key,
    required this.account,
    required this.noteId,
    this.showFooter,
    this.focusPostForm,
    this.note,
  });

  final Account account;
  final String noteId;
  final bool? showFooter;
  final void Function()? focusPostForm;
  final Note? note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final showReactionsViewer = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showSubNoteReactionsViewer,
      ),
    );
    final bool showFooter =
        this.showFooter ??
        ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.showSubNoteFooter,
          ),
        );
    final parsed =
        note.text != null ? ref.watch(parsedMfmProvider(note.text!)) : null;
    final isLong =
        note.cw == null &&
        !ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.alwaysExpandLongNote,
          ),
        ) &&
        ref.watch(noteIsLongProvider(account, noteId));
    final expandMedia = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.alwaysExpandMediaInSubNote,
      ),
    );
    final showAllReactions = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.alwaysShowAllReactions,
      ),
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final isCollapsed = useState(isLong);
    final isFilesCollapsed = useState(true);
    final isPollCollapsed = useState(true);
    final style = DefaultTextStyle.of(context).style;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (parsed != null || note.replyId != null || note.renoteId != null)
          Mfm(
            account: account,
            leadingSpans: [
              if (note.replyId case final replyId?)
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8.0),
                    onTap: () => context.push('/$account/notes/$replyId'),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 4.0),
                      child: Icon(
                        Icons.reply,
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: style.color?.a),
                      ),
                    ),
                  ),
                ),
            ],
            nodes: parsed,
            trailingSpans: [
              if (note.renoteId case final renoteId?)
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: InkWell(
                    onTap: () => context.push('/$account/notes/$renoteId'),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 4.0),
                      child: Text(
                        'RN: ...',
                        style: TextStyle(
                          color: colors.renote,
                          fontStyle: FontStyle.italic,
                        ),
                        textScaler: TextScaler.noScaling,
                      ),
                    ),
                  ),
                ),
            ],
            emojis: note.emojis,
            author: note.user,
            nyaize: true,
            maxLines: isCollapsed.value ? 10 : null,
          ),
        if (!isCollapsed.value) ...[
          if (note.files.isNotEmpty) ...[
            if (!expandMedia)
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsetsDirectional.only(
                    top: 4.0,
                    end: 8.0,
                    bottom: 4.0,
                  ),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed:
                    () => isFilesCollapsed.value = !isFilesCollapsed.value,
                icon: Icon(
                  isFilesCollapsed.value
                      ? Icons.arrow_right
                      : Icons.arrow_drop_down,
                ),
                label: Text(t.misskey.withNFiles(n: note.files.length)),
              ),
            if (expandMedia || !isFilesCollapsed.value)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: MediaList(
                  account: account,
                  files: note.files,
                  user: note.user,
                ),
              ),
          ],
          if (note.poll case final poll?) ...[
            if (!expandMedia)
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsetsDirectional.only(
                    top: 4.0,
                    end: 8.0,
                    bottom: 4.0,
                  ),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () => isPollCollapsed.value = !isPollCollapsed.value,
                icon: Icon(
                  isPollCollapsed.value
                      ? Icons.arrow_right
                      : Icons.arrow_drop_down,
                ),
                label: Text(t.misskey.poll),
              ),
            if (expandMedia || !isPollCollapsed.value)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: PollWidget(account: account, noteId: noteId, poll: poll),
              ),
          ],
        ],
        if (isLong)
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: colors.fg,
              backgroundColor: colors.buttonBg,
              textStyle: style
                  .apply(fontSizeFactor: 0.9)
                  .copyWith(fontWeight: FontWeight.bold),
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              minimumSize: const Size(double.infinity, 0.0),
              side: BorderSide.none,
              visualDensity: VisualDensity.standard,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => isCollapsed.value = !isCollapsed.value,
            child: Text(
              isCollapsed.value ? t.misskey.showMore : t.misskey.showLess,
            ),
          ),
        if (showReactionsViewer &&
            note.reactionAcceptance != ReactionAcceptance.likeOnly) ...[
          const SizedBox(height: 4.0),
          ReactionsViewer(
            account: account,
            noteId: noteId,
            showAllReactions: showAllReactions,
            note: this.note,
          ),
        ],
        if (showFooter)
          NoteFooter(
            account: account,
            noteId: noteId,
            focusPostForm: focusPostForm,
            note: this.note,
          ),
      ],
    );
  }
}
