import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_collapse_reason_provider.dart';
import '../../provider/note_notifier_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'poll_widget.dart';

class SubNoteContent extends HookConsumerWidget {
  const SubNoteContent({
    super.key,
    required this.account,
    required this.noteId,
    this.focusPostForm,
  });

  final Account account;
  final String noteId;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteNotifierProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final (showSubNoteFooter, alwaysExpandLongNote, expandMedia) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showSubNoteFooter,
          settings.alwaysExpandLongNote,
          settings.alwaysExpandMediaInSubNote,
        ),
      ),
    );
    final parsed = note.text != null
        ? ref.watch(parsedMfmProvider(note.text!))
        : null;
    final collapseReason = note.cw == null && !alwaysExpandLongNote
        ? ref.watch(noteCollapseReasonProvider(account, noteId))
        : null;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final isCollapsed = useState(collapseReason != null);
    final isFilesCollapsed = useState(true);
    final isPollCollapsed = useState(true);
    final style = DefaultTextStyle.of(context).style;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (parsed != null || note.replyId != null || note.renoteId != null)
          if (collapseReason case CollapseReason.large)
            ClipRect(
              clipBehavior: isCollapsed.value ? Clip.antiAlias : Clip.none,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: double.infinity,
                  maxHeight: isCollapsed.value ? 200.0 : double.infinity,
                ),
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white.withValues(alpha: 0.0),
                    ],
                    stops: [
                      0.0,
                      if (isCollapsed.value && bounds.height >= 200.0)
                        0.9
                      else
                        1.0,
                      1.0,
                    ],
                  ).createShader(bounds),
                  child: _SubNoteMfm(
                    account: account,
                    nodes: parsed,
                    note: note,
                  ),
                ),
              ),
            )
          else
            _SubNoteMfm(
              account: account,
              nodes: parsed,
              note: note,
              maxLines: isCollapsed.value ? 10 : null,
            ),
        if (!isCollapsed.value) ...[
          if (note.files.isNotEmpty) ...[
            if (!expandMedia)
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () =>
                    isFilesCollapsed.value = !isFilesCollapsed.value,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isFilesCollapsed.value
                          ? Icons.arrow_right
                          : Icons.arrow_drop_down,
                      size: style.lineHeight + 8.0,
                    ),
                    Text(t.misskey.withNFiles(n: note.files.length)),
                  ],
                ),
              ),
            if (expandMedia || !isFilesCollapsed.value) ...[
              const SizedBox(height: 4.0),
              MediaList(account: account, files: note.files, user: note.user),
            ],
          ],
          if (note.poll case final poll?) ...[
            if (!expandMedia)
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () => isPollCollapsed.value = !isPollCollapsed.value,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isPollCollapsed.value
                          ? Icons.arrow_right
                          : Icons.arrow_drop_down,
                      size: style.lineHeight + 8.0,
                    ),
                    Text(t.misskey.poll),
                  ],
                ),
              ),
            if (expandMedia || !isPollCollapsed.value) ...[
              const SizedBox(height: 4.0),
              PollWidget(account: account, noteId: noteId, poll: poll),
            ],
          ],
        ],
        if (collapseReason != null) ...[
          const SizedBox(height: 4.0),
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
        ],
      ],
    );
  }
}

class _SubNoteMfm extends ConsumerWidget {
  const _SubNoteMfm({
    required this.account,
    required this.nodes,
    required this.note,
    this.maxLines,
  });

  final Account account;
  final List<MfmNode>? nodes;
  final Note note;
  final int? maxLines;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = DefaultTextStyle.of(context).style;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Mfm(
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
                  color: colors.accent.withValues(alpha: style.color?.a),
                ),
              ),
            ),
          ),
      ],
      nodes: nodes,
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
      noteId: note.id,
      nyaize: true,
      maxLines: maxLines,
    );
  }
}
