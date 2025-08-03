import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_off_icons/material_off_icons.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/note_extension.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../model/pagination_state.dart';
import '../../provider/api/children_notes_notifier_provider.dart';
import '../../provider/api/conversation_notes_provider.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/check_word_mute_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../util/extract_url.dart';
import '../../util/format_datetime.dart';
import '../../util/get_note_action.dart';
import 'acct_widget.dart';
import 'bot_badge.dart';
import 'channel_color_bar_box.dart';
import 'cw_button.dart';
import 'deleted_note_widget.dart';
import 'deleted_renote_widget.dart';
import 'instance_ticker_widget.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'muted_note_widget.dart';
import 'note_footer.dart';
import 'note_sheet.dart';
import 'note_simple_widget.dart';
import 'note_sub_widget.dart';
import 'note_visibility_icon.dart';
import 'pagination_bottom_widget.dart';
import 'poll_widget.dart';
import 'reactions_viewer.dart';
import 'renote_header.dart';
import 'time_widget.dart';
import 'url_preview.dart';
import 'user_avatar.dart';
import 'user_sheet.dart';
import 'username_widget.dart';

class NoteDetailedWidget extends HookConsumerWidget {
  const NoteDetailedWidget({
    super.key,
    required this.account,
    required this.noteId,
  });

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final appearNote = ref.watch(appearNoteProvider(account, noteId));
    if (appearNote == null) {
      return DeletedRenoteWidget(
        account: account,
        note: note,
        backgroundColor: Colors.transparent,
      );
    }
    final muted = useState(
      ref.watch(checkWordMuteProvider(account, appearNote.id)) ||
          ref.watch(
            checkWordMuteProvider(account, appearNote.id, hardMute: true),
          ),
    );
    if (muted.value) {
      return MutedNoteWidget(
        account: account,
        note: note,
        onTap: () => muted.value = false,
        backgroundColor: Colors.transparent,
      );
    }

    final (
      verticalPadding,
      horizontalPadding,
      tapAction,
      enableInfiniteScroll,
      doubleTapAction,
      longPressAction,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.noteVerticalPadding,
          settings.noteHorizontalPadding,
          settings.noteTapAction,
          settings.enableInfiniteScroll,
          settings.noteDoubleTapAction,
          settings.noteLongPressAction,
        ),
      ),
    );
    final children = ref.watch(
      childrenNotesNotifierProvider(account, appearNote.id),
    );
    final conversation = appearNote.replyId != null
        ? ref.watch(conversationNotesProvider(account, appearNote.id))
        : null;
    final isRenote = note.isRenote;
    final onTap = useMemoized(
      () => tapAction != NoteActionType.expand
          ? getNoteAction(
              account: account,
              type: tapAction,
              note: note,
              appearNote: appearNote,
              disableHeader: true,
            )
          : null,
      [account, tapAction, noteId],
    );
    final onDoubleTap = useMemoized(
      () => doubleTapAction != NoteActionType.expand
          ? getNoteAction(
              account: account,
              type: doubleTapAction,
              note: note,
              appearNote: appearNote,
              disableHeader: true,
            )
          : null,
      [account, doubleTapAction, noteId],
    );
    final onLongPress = useMemoized(
      () => longPressAction != NoteActionType.expand
          ? getNoteAction(
              account: account,
              type: longPressAction,
              note: note,
              appearNote: appearNote,
              disableHeader: true,
            )
          : null,
      [account, longPressAction, noteId],
    );
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;

    return InkWell(
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
            if (conversation?.valueOrNull case final conversation?)
              DefaultTextStyle.merge(
                style: style.apply(
                  color: style.color?.withValues(alpha: 0.7),
                  fontSizeFactor: 0.9,
                ),
                child: IconTheme.merge(
                  data: IconThemeData(
                    color: style.color?.withValues(alpha: 0.7),
                  ),
                  child: Column(
                    children: [
                      if (conversation.isNotEmpty)
                        for (final note in conversation.reversed) ...[
                          ChannelColorBarBox(
                            note: appearNote.reply,
                            child: Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: horizontalPadding - 4.0,
                              ),
                              child: NoteSubWidget(
                                account: account,
                                noteId: note.id,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                        ]
                      else ...[
                        const DeletedNoteWidget(),
                        const SizedBox(height: 8.0),
                      ],
                    ],
                  ),
                ),
              ),
            if (isRenote)
              ChannelColorBarBox(
                note: note,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: horizontalPadding - 4.0,
                  ),
                  child: RenoteHeader(
                    account: account,
                    noteId: noteId,
                    onLongPress: () => showNoteSheet(
                      context: context,
                      account: account,
                      noteId: noteId,
                      renote: true,
                      disableHeader: true,
                    ),
                  ),
                ),
              ),
            ChannelColorBarBox(
              note: appearNote,
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: horizontalPadding - 4.0,
                ),
                child: _NoteDetailedContent(
                  account: account,
                  note: note,
                  appearNote: appearNote,
                  style: style,
                ),
              ),
            ),
            if (children case AsyncValue(
              valueOrNull: PaginationState(items: final notes),
            ) when notes.isNotEmpty) ...[
              const SizedBox(height: 8.0),
              ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => index < notes.length
                    ? ChannelColorBarBox(
                        note: notes[index],
                        child: Container(
                          margin: EdgeInsetsDirectional.only(
                            start: horizontalPadding - 4.0,
                          ),
                          decoration: BoxDecoration(
                            border: BorderDirectional(
                              start: BorderSide(
                                color: theme.colorScheme.outlineVariant,
                                width: 2.0,
                              ),
                            ),
                          ),
                          padding: const EdgeInsetsDirectional.only(
                            start: 4.0,
                            top: 4.0,
                            bottom: 4.0,
                          ),
                          child: NoteSubWidget(
                            account: account,
                            noteId: notes[index].id,
                            showReplies: true,
                          ),
                        ),
                      )
                    : PaginationBottomWidget(
                        paginationState: children,
                        loadMore: () => ref
                            .read(
                              childrenNotesNotifierProvider(
                                account,
                                appearNote.id,
                              ).notifier,
                            )
                            .loadMore(skipError: true),
                      ),
                separatorBuilder: (context, index) => index < notes.length - 1
                    ? Container(
                        margin: EdgeInsetsDirectional.only(
                          start: horizontalPadding - 4.0,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(
                            start: BorderSide(
                              color: theme.colorScheme.outlineVariant,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: const Divider(height: 0.0),
                      )
                    : const SizedBox.shrink(),
                itemCount: notes.length + 1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _NoteDetailedContent extends HookConsumerWidget {
  const _NoteDetailedContent({
    required this.account,
    required this.note,
    required this.appearNote,
    required this.style,
  });

  final Account account;
  final Note note;
  final Note appearNote;
  final TextStyle style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showContent = useState(
      ref.watch(
        generalSettingsNotifierProvider.select(
          (settings) => settings.alwaysExpandCw,
        ),
      ),
    );
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
    final (avatarScale, showTicker, showAllReactions) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.avatarScale,
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
    final theme = Theme.of(context);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            UserAvatar(
              account: account,
              user: appearNote.user,
              size: style.lineHeight * avatarScale,
              showOnlineIndicator: true,
              onTap: () => context.push('/$account/users/${appearNote.userId}'),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            DefaultTextStyle.merge(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              child: InkWell(
                                onTap: () => context.push(
                                  '/$account/users/${appearNote.userId}',
                                ),
                                onLongPress: () => showUserSheet(
                                  context: context,
                                  account: account,
                                  userId: appearNote.userId,
                                ),
                                child: UsernameWidget(
                                  account: account,
                                  user: appearNote.user,
                                ),
                              ),
                            ),
                            if (appearNote.user.isBot)
                              DefaultTextStyle.merge(
                                style: style.apply(
                                  color: style.color?.withValues(alpha: 0.8),
                                  fontSizeFactor: 0.8,
                                ),
                                child: const BotBadge(),
                              ),
                          ],
                        ),
                      ),
                      if (appearNote.updatedAt case final updatedAt?)
                        Tooltip(
                          message:
                              '${t.misskey.edited}: '
                              '${absoluteTime(updatedAt)}'
                              '.${updatedAt.millisecond.toString().padLeft(3, '0')} '
                              '(${relativeTime(updatedAt)})',
                          child: const Icon(Icons.edit),
                        ),
                      if (appearNote.visibility != NoteVisibility.public)
                        NoteVisibilityIcon(visibility: appearNote.visibility),
                      if (appearNote.localOnly)
                        Tooltip(
                          message: t.misskey.visibility_.disableFederation,
                          child: const Icon(OffIcons.rocket),
                        ),
                    ],
                  ),
                  AcctWidget(account: account, user: appearNote.user),
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
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        if (appearNote case Note(:final cw?)) ...[
          if (cw.isNotEmpty)
            SelectionArea(
              child: Mfm(
                account: account,
                text: cw,
                emojis: appearNote.emojis,
                author: appearNote.user,
                noteId: appearNote.id,
                nyaize: true,
              ),
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
          if (parsed != null ||
              appearNote.replyId != null ||
              appearNote.renoteId != null)
            SelectionArea(
              child: Mfm(
                account: account,
                leadingSpans: [
                  if (appearNote.replyId case final replyId?)
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8.0),
                        onTap: () => context.push('/$account/notes/$replyId'),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 4.0),
                          child: Icon(
                            Icons.reply,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                ],
                nodes: parsed,
                trailingSpans: [
                  if (appearNote.renoteId case final renoteId?)
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
                emojis: appearNote.emojis,
                author: appearNote.user,
                noteId: appearNote.id,
                nyaize: true,
              ),
            ),
          if (appearNote.files.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: MediaList(
                account: account,
                files: appearNote.files,
                user: appearNote.user,
              ),
            ),
          if (appearNote case Note(:final poll?))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: PollWidget(
                account: account,
                noteId: appearNote.id,
                poll: poll,
              ),
            ),
          if (urls != null)
            ...urls.map(
              (url) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: UrlPreview(account: account, link: url),
              ),
            ),
          if (appearNote case Note(:final renoteId?)) ...[
            const SizedBox(height: 4.0),
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
                ),
              ),
            ),
          ],
        ],
        if (appearNote case Note(:final channel?)) ...[
          const SizedBox(height: 4.0),
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
        ],
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: DefaultTextStyle.merge(
            style: style.apply(
              color: style.color?.withValues(alpha: 0.7),
              fontSizeFactor: 0.9,
            ),
            child: TimeWidget(time: appearNote.createdAt, detailed: true),
          ),
        ),
        if (appearNote.reactionAcceptance != ReactionAcceptance.likeOnly)
          ReactionsViewer(
            account: account,
            noteId: appearNote.id,
            showAllReactions: showAllReactions,
          ),
        NoteFooter(
          account: account,
          note: note,
          appearNote: appearNote,
          disableHeader: true,
        ),
      ],
    );
  }
}
