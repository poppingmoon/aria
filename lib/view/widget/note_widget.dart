import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/note_extension.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/check_word_mute_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_collapse_reason_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../util/extract_url.dart';
import '../../util/get_note_action.dart';
import 'channel_color_bar_box.dart';
import 'cw_button.dart';
import 'deleted_renote_widget.dart';
import 'hard_muted_note_widget.dart';
import 'instance_ticker_widget.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'muted_note_widget.dart';
import 'note_footer.dart';
import 'note_header.dart';
import 'note_sheet.dart';
import 'note_simple_widget.dart';
import 'note_sub_widget.dart';
import 'note_summary.dart';
import 'poll_widget.dart';
import 'reactions_viewer.dart';
import 'renote_header.dart';
import 'url_preview.dart';
import 'user_avatar.dart';

class NoteWidget extends HookConsumerWidget {
  const NoteWidget({
    super.key,
    required this.account,
    required this.noteId,
    this.clipId,
    this.withHardMute = true,
    this.focusPostForm,
    this.note,
    this.showFooter,
    this.backgroundColor,
    this.margin = EdgeInsets.zero,
    this.borderRadius,
  });

  final Account account;
  final String noteId;
  final String? clipId;
  final bool withHardMute;
  final void Function()? focusPostForm;
  final Note? note;
  final bool? showFooter;
  final Color? backgroundColor;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return HardMutedNoteWidget(borderRadius: borderRadius);
    }
    final appearNote =
        this.note ?? ref.watch(appearNoteProvider(account, noteId));
    if (appearNote == null) {
      return Padding(
        padding: margin,
        child: DeletedRenoteWidget(
          account: account,
          note: note,
          backgroundColor: this.backgroundColor,
          borderRadius: borderRadius,
        ),
      );
    }
    final hardMuted = ref.watch(
      checkWordMuteProvider(account, appearNote.id, hardMute: true),
    );
    if (hardMuted && withHardMute) {
      return HardMutedNoteWidget(borderRadius: borderRadius);
    }
    final muted = useState(
      hardMuted || ref.watch(checkWordMuteProvider(account, appearNote.id)),
    );
    if (muted.value) {
      return Padding(
        padding: margin,
        child: MutedNoteWidget(
          account: account,
          note: appearNote,
          onTap: () => muted.value = false,
          borderRadius: borderRadius,
        ),
      );
    }

    final (
      verticalPadding,
      horizontalPadding,
      showAvatars,
      tapAction,
      doubleTapAction,
      longPressAction,
      avatarScale,
      collapseRenotes,
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
          settings.avatarScale,
          settings.collapseRenotes,
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
    final isRenote = note.isRenote;
    final isMyRenote =
        account.username == note.user.username && note.user.host == null;
    final isMyNote =
        account.username == appearNote.user.username &&
        appearNote.user.host == null;
    final renoteCollapsed = useState(
      collapseRenotes &&
          isRenote &&
          (isMyRenote || isMyNote || appearNote.myReaction != null),
    );
    final backgroundColor = this.backgroundColor ?? noteBackgroundColor;
    final onTap = useMemoized(
      () => getNoteAction(
        account: account,
        type: tapAction,
        note: note,
        appearNote: appearNote,
        clipId: clipId,
      ),
      [account, tapAction, noteId, clipId],
    );
    final onDoubleTap = useMemoized(
      () => getNoteAction(
        account: account,
        type: doubleTapAction,
        note: note,
        appearNote: appearNote,
        clipId: clipId,
      ),
      [account, doubleTapAction, noteId, clipId],
    );
    final onLongPress = useMemoized(
      () => getNoteAction(
        account: account,
        type: longPressAction,
        note: note,
        appearNote: appearNote,
        clipId: clipId,
      ),
      [account, longPressAction, noteId, clipId],
    );
    final style = DefaultTextStyle.of(context).style;

    return Padding(
      padding: margin,
      child: Material(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        clipBehavior: Clip.hardEdge,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap != null ? () => onTap(ref) : null,
          onDoubleTap: onDoubleTap != null ? () => onDoubleTap(ref) : null,
          onLongPress: onLongPress != null ? () => onLongPress(ref) : null,
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 4.0,
              top: verticalPadding,
              end: horizontalPadding,
              bottom: verticalPadding,
            ),
            child: Column(
              children: [
                if (appearNote case Note(
                  :final replyId?,
                ) when !renoteCollapsed.value) ...[
                  DefaultTextStyle.merge(
                    style: style.apply(
                      color: style.color?.withValues(alpha: 0.7),
                      fontSizeFactor: 0.9,
                    ),
                    child: IconTheme.merge(
                      data: IconThemeData(
                        color: style.color?.withValues(alpha: 0.7),
                      ),
                      child: ChannelColorBarBox(
                        note: appearNote.reply,
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: horizontalPadding - 4.0,
                          ),
                          child: NoteSubWidget(
                            account: account,
                            noteId: replyId,
                            focusPostForm: focusPostForm,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                ],
                if (isRenote) ...[
                  ChannelColorBarBox(
                    note: note,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: horizontalPadding - 4.0,
                      ),
                      child: RenoteHeader(
                        account: account,
                        noteId: noteId,
                        onTap: () => context.push('/$account/notes/$noteId'),
                        onLongPress: () => showNoteSheet(
                          context: context,
                          account: account,
                          noteId: noteId,
                          renote: true,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                ],
                if (renoteCollapsed.value) ...[
                  ChannelColorBarBox(
                    note: appearNote,
                    child: Row(
                      children: [
                        SizedBox(width: horizontalPadding - 4.0),
                        if (showAvatars) ...[
                          UserAvatar(
                            account: account,
                            user: appearNote.user,
                            size: style.lineHeight,
                            onTap: appearNote.userId.isNotEmpty
                                ? () => context.push(
                                    '/$account/users/${appearNote.userId}',
                                  )
                                : null,
                          ),
                          const SizedBox(width: 8.0),
                        ],
                        Expanded(
                          child: DefaultTextStyle.merge(
                            style: style.apply(
                              color: style.color?.withValues(alpha: 0.7),
                              fontSizeFactor: 0.9,
                            ),
                            child: NoteSummary(
                              account: account,
                              noteId: appearNote.id,
                              onTap: () => renoteCollapsed.value = false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ] else
                  ChannelColorBarBox(
                    note: appearNote,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: horizontalPadding - 4.0),
                        if (showAvatars)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              top: 4.0,
                              end: 10.0,
                            ),
                            child: UserAvatar(
                              account: account,
                              user: appearNote.user,
                              size: style.lineHeight * avatarScale,
                              onTap: appearNote.userId.isNotEmpty
                                  ? () => context.push(
                                      '/$account/users/${appearNote.userId}',
                                    )
                                  : null,
                            ),
                          ),
                        Expanded(
                          child: _NoteContent(
                            account: account,
                            noteId: noteId,
                            note: note,
                            appearNote: appearNote,
                            clipId: clipId,
                            style: style,
                            showFooter: showFooter,
                            focusPostForm: focusPostForm,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NoteContent extends HookConsumerWidget {
  const _NoteContent({
    required this.account,
    required this.noteId,
    required this.note,
    required this.appearNote,
    required this.clipId,
    required this.style,
    required this.showFooter,
    required this.focusPostForm,
  });

  final Account account;
  final String noteId;
  final Note note;
  final Note appearNote;
  final String? clipId;
  final TextStyle style;
  final bool? showFooter;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (
      showReactionsViewer,
      showNoteFooter,
      alwaysExpandCw,
      alwaysExpandLongNote,
      showTicker,
      showAllReactions,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showNoteReactionsViewer,
          settings.showNoteFooter,
          settings.alwaysExpandCw,
          settings.alwaysExpandLongNote,
          switch (settings.instanceTicker) {
            InstanceTicker.none => false,
            InstanceTicker.remote =>
              appearNote.user.instance != null && appearNote.user.host != null,
            InstanceTicker.always => true,
          },
          settings.alwaysShowAllReactions,
        ),
      ),
    );
    final showFooter = this.showFooter ?? showNoteFooter;
    final showContent = useState(alwaysExpandCw);
    final parsed = appearNote.text != null
        ? ref.watch(parsedMfmProvider(appearNote.text!))
        : null;
    final renoteUrl = note.uri?.toString() ?? note.url?.toString();
    final urls = useMemoized(
      () => parsed != null
          ? extractUrl(parsed).where((url) => url != renoteUrl).toList()
          : null,
      [parsed],
    );
    final collapseReason = appearNote.cw == null && !alwaysExpandLongNote
        ? ref.watch(noteCollapseReasonProvider(account, appearNote.id))
        : null;
    final isCollapsed = useState(collapseReason != null);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NoteHeader(account: account, note: appearNote),
        if (showTicker)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: DefaultTextStyle.merge(
              style: style.apply(fontSizeFactor: 0.9),
              child: InstanceTickerWidget(
                account: account,
                instance: appearNote.user.instance,
                host: appearNote.user.host,
              ),
            ),
          ),
        if (appearNote case Note(:final cw?)) ...[
          if (cw.isNotEmpty)
            Mfm(
              account: account,
              text: cw,
              emojis: appearNote.emojis,
              author: appearNote.user,
              noteId: appearNote.id,
              nyaize: true,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: CwButton(
              note: appearNote,
              onPressed: (value) => showContent.value = value,
              isOpen: showContent.value,
            ),
          ),
        ],
        if (appearNote.cw == null || showContent.value) ...[
          if (parsed != null || appearNote.replyId != null)
            if (collapseReason case CollapseReason.large)
              ClipRect(
                clipBehavior: isCollapsed.value ? Clip.antiAlias : Clip.none,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: double.infinity,
                    maxHeight: isCollapsed.value ? 300.0 : double.infinity,
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
                        if (isCollapsed.value && bounds.height >= 300.0)
                          0.9
                        else
                          1.0,
                        1.0,
                      ],
                    ).createShader(bounds),
                    child: _NoteMfm(
                      account: account,
                      nodes: parsed,
                      note: appearNote,
                    ),
                  ),
                ),
              )
            else
              _NoteMfm(
                account: account,
                nodes: parsed,
                note: appearNote,
                maxLines: isCollapsed.value ? 10 : null,
              ),
          const SizedBox(height: 4.0),
          if (!isCollapsed.value) ...[
            if (appearNote.files.isNotEmpty) ...[
              MediaList(
                account: account,
                files: appearNote.files,
                user: appearNote.user,
              ),
              const SizedBox(height: 8.0),
            ],
            if (appearNote case Note(:final poll?)) ...[
              PollWidget(account: account, noteId: appearNote.id, poll: poll),
              const SizedBox(height: 4.0),
            ],
            if (urls != null && urls.isNotEmpty)
              for (final url in urls) ...[
                UrlPreview(account: account, link: url),
                const SizedBox(height: 8.0),
              ],
            if (appearNote case Note(:final renoteId?)) ...[
              DottedBorder(
                options: RoundedRectDottedBorderOptions(
                  color: colors.renote,
                  dashPattern: const [2, 4],
                  radius: const Radius.circular(8.0),
                ),
                child: DefaultTextStyle.merge(
                  style: style.apply(fontSizeFactor: 0.95),
                  child: NoteSimpleWidget(
                    account: account,
                    noteId: renoteId,
                    borderRadius: BorderRadius.circular(4.0),
                    showFooter: this.showFooter,
                    focusPostForm: focusPostForm,
                    note: appearNote.renote,
                  ),
                ),
              ),
              const SizedBox(height: 4.0),
            ],
          ],
          if (collapseReason != null) ...[
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
            const SizedBox(height: 4.0),
          ],
        ] else
          const SizedBox(height: 2.0),
        if (appearNote case Note(:final channel?)) ...[
          InkWell(
            onTap: () => context.push('/$account/channels/${channel.id}'),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.tv,
                  color: style.color?.withValues(alpha: 0.7),
                  size: style.lineHeight * 0.8,
                ),
                const SizedBox(width: 2.0),
                Expanded(
                  child: Text(
                    channel.name,
                    style: style.apply(
                      color: style.color?.withValues(alpha: 0.7),
                      fontSizeFactor: 0.8,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
        ],
        if (appearNote.reactionAcceptance != ReactionAcceptance.likeOnly &&
            showReactionsViewer &&
            appearNote.reactions.isNotEmpty) ...[
          ReactionsViewer(
            account: account,
            noteId: appearNote.id,
            showAllReactions: showAllReactions,
            note: appearNote,
          ),
        ],
        if (showFooter)
          NoteFooter(
            account: account,
            note: note,
            appearNote: appearNote,
            clipId: clipId,
            focusPostForm: focusPostForm,
          ),
      ],
    );
  }
}

class _NoteMfm extends StatelessWidget {
  const _NoteMfm({
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
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Mfm(
      account: account,
      leadingSpans: [
        if (note.replyId case final replyId?) ...[
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: InkWell(
              borderRadius: BorderRadius.circular(8.0),
              onTap: () => context.push('/$account/notes/$replyId'),
              child: Icon(Icons.reply, color: theme.colorScheme.primary),
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 4.0)),
        ],
      ],
      nodes: nodes,
      emojis: note.emojis,
      author: note.user,
      noteId: note.id,
      nyaize: true,
      maxLines: maxLines,
    );
  }
}
