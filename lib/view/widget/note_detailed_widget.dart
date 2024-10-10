import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
import 'emoji_sheet.dart';
import 'instance_ticker_widget.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'note_footer.dart';
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
      return const SizedBox.shrink();
    }
    final (verticalPadding, horizontalPadding) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.noteVerticalPadding, settings.noteHorizontalPadding),
      ),
    );
    final muted = useState(
      ref.watch(checkWordMuteProvider(account, appearNote.id)) ||
          ref.watch(
            checkWordMuteProvider(account, appearNote.id, hardMute: true),
          ),
    );
    if (muted.value) {
      return InkWell(
        onTap: () => muted.value = false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: horizontalPadding,
          ),
          child: Text.rich(
            t.aria.userSaysSomething(
              name: TextSpan(
                children: buildUsername(
                  ref,
                  account: account,
                  user: appearNote.user,
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.7),
                  ),
                ),
              ),
            ),
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    final tapAction = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteTapAction),
    );
    final doubleTapAction = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteDoubleTapAction),
    );
    final longPressAction = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteLongPressAction),
    );
    final mfmSettings = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.advancedMfm,
          settings.animatedMfm,
          settings.fontFamily,
          settings.fontSize,
          settings.lineHeight,
        ),
      ),
    );
    final conversation = appearNote.replyId != null
        ? ref.watch(conversationNotesProvider(account, noteId))
        : null;
    final children = ref.watch(childrenNotesNotifierProvider(account, noteId));
    final isRenote = note.isRenote;
    final showContent = useState(
      ref.watch(
        generalSettingsNotifierProvider
            .select((settings) => settings.alwaysExpandCw),
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
    final avatarScale = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.avatarScale),
    );
    final showTicker = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => switch (settings.instanceTicker) {
          InstanceTicker.none => false,
          InstanceTicker.remote =>
            appearNote.user.instance != null && appearNote.user.host != null,
          InstanceTicker.always => true,
        },
      ),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return InkWell(
      onTap: tapAction != NoteActionType.expand
          ? getNoteAction(
              ref,
              account: account,
              type: tapAction,
              note: note,
              appearNote: appearNote,
            )
          : null,
      onDoubleTap: doubleTapAction != NoteActionType.expand
          ? getNoteAction(
              ref,
              account: account,
              type: doubleTapAction,
              note: note,
              appearNote: appearNote,
            )
          : null,
      onLongPress: longPressAction != NoteActionType.expand
          ? getNoteAction(
              ref,
              account: account,
              type: longPressAction,
              note: note,
              appearNote: appearNote,
            )
          : null,
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.0,
          top: verticalPadding,
          right: horizontalPadding,
          bottom: verticalPadding,
        ),
        child: Column(
          children: [
            if (conversation case AsyncData(valueOrNull: final conversation?))
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: DefaultTextStyle.merge(
                  style: style.apply(
                    color: style.color?.withOpacity(0.7),
                    fontSizeFactor: 0.9,
                  ),
                  child: IconTheme.merge(
                    data: IconThemeData(color: style.color?.withOpacity(0.7)),
                    child: Column(
                      children: [
                        for (final note in conversation.reversed) ...[
                          ChannelColorBarBox(
                            note: appearNote.reply,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: horizontalPadding - 4.0,
                              ),
                              child: NoteSubWidget(
                                account: account,
                                noteId: note.id,
                              ),
                            ),
                          ),
                          const Divider(height: 0.0),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            if (isRenote)
              ChannelColorBarBox(
                note: note,
                child: Padding(
                  padding: EdgeInsets.only(left: horizontalPadding - 4.0),
                  child: RenoteHeader(account: account, noteId: noteId),
                ),
              ),
            ChannelColorBarBox(
              note: appearNote,
              child: Padding(
                padding: EdgeInsets.only(left: horizontalPadding - 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        UserAvatar(
                          account: account,
                          user: appearNote.user,
                          size: style.lineHeight * avatarScale,
                          onTap: () => context
                              .push('/$account/users/${appearNote.userId}'),
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
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        DefaultTextStyle.merge(
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          child: UsernameWidget(
                                            account: account,
                                            user: appearNote.user,
                                            onTap: () => context.push(
                                              '/$account/users/${appearNote.userId}',
                                            ),
                                            onLongPress: () => showUserSheet(
                                              context: context,
                                              account: account,
                                              userId: appearNote.userId,
                                            ),
                                          ),
                                        ),
                                        if (appearNote.user.isBot)
                                          DefaultTextStyle.merge(
                                            style: style.apply(
                                              color:
                                                  style.color?.withOpacity(0.8),
                                              fontSizeFactor: 0.8,
                                            ),
                                            child: const BotBadge(),
                                          ),
                                      ],
                                    ),
                                  ),
                                  if (note.updatedAt case final updatedAt?)
                                    Tooltip(
                                      message: '${t.misskey.edited}: '
                                          '${absoluteTime(updatedAt)}'
                                          '.${updatedAt.millisecond.toString().padLeft(3, '0')} '
                                          '(${relativeTime(updatedAt)})',
                                      child: const Icon(Icons.edit),
                                    ),
                                  if (appearNote.visibility !=
                                      NoteVisibility.public)
                                    NoteVisibilityIcon(
                                      visibility: appearNote.visibility,
                                    ),
                                  if (appearNote.localOnly)
                                    Tooltip(
                                      message: t.misskey.visibility_
                                          .disableFederation,
                                      child: const Icon(Icons.rocket_outlined),
                                    ),
                                ],
                              ),
                              AcctWidget(
                                account: account,
                                user: appearNote.user,
                              ),
                              if (showTicker)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
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
                      Mfm(
                        account: account,
                        text: cw,
                        emojis: appearNote.emojis,
                        author: appearNote.user,
                        nyaize: true,
                        selectable: true,
                        onTapEmoji: (emoji) => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => EmojiSheet(
                            account: account,
                            emoji: emoji,
                            targetNote: appearNote,
                          ),
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
                        SelectableText.rich(
                          TextSpan(
                            children: [
                              if (note.replyId != null)
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(8.0),
                                    onTap: () => context.push(
                                      '/$account/notes/${note.replyId}',
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 4.0),
                                      child: Icon(
                                        Icons.reply,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ),
                              if (parsed != null)
                                ...useMemoized(
                                  () => buildMfm(
                                    ref,
                                    account: account,
                                    nodes: parsed,
                                    emojis: appearNote.emojis,
                                    author: appearNote.user,
                                    nyaize: true,
                                    onTapEmoji: (emoji) =>
                                        showModalBottomSheet<void>(
                                      context: context,
                                      builder: (context) => EmojiSheet(
                                        account: account,
                                        emoji: emoji,
                                        targetNote: appearNote,
                                      ),
                                    ),
                                  ),
                                  [
                                    account,
                                    parsed,
                                    colors,
                                    appearNote.user,
                                    appearNote.emojis,
                                    mfmSettings,
                                  ],
                                ),
                              if (appearNote.renoteId != null)
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: InkWell(
                                    onTap: () {
                                      context.push(
                                        '/$account/notes/${appearNote.renoteId}',
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
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
                          ),
                        ),
                      if (appearNote.files.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: MediaList(
                            account: account,
                            files: appearNote.files,
                            user: note.user,
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
                          color: colors.renote,
                          borderType: BorderType.RRect,
                          dashPattern: const [2, 4],
                          radius: const Radius.circular(8.0),
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
                        onTap: () =>
                            context.push('/$account/channels/${channel.id}'),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                              ),
                              child: Icon(
                                Icons.tv,
                                color: style.color?.withOpacity(0.7),
                                size: style.lineHeight * 0.8,
                              ),
                            ),
                            Text(
                              channel.name,
                              style: style.apply(
                                color: style.color?.withOpacity(0.7),
                                fontSizeFactor: 0.8,
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
                          color: style.color?.withOpacity(0.7),
                          fontSizeFactor: 0.9,
                        ),
                        child: TimeWidget(
                          time: appearNote.createdAt,
                          detailed: true,
                        ),
                      ),
                    ),
                    if (appearNote.reactionAcceptance !=
                        ReactionAcceptance.likeOnly)
                      ReactionsViewer(
                        account: account,
                        noteId: appearNote.id,
                      ),
                    NoteFooter(
                      account: account,
                      noteId: noteId,
                      disableHeader: true,
                    ),
                    if (children
                        case AsyncValue(
                          valueOrNull: PaginationState(items: final notes),
                        ) when notes.isNotEmpty)
                      Container(
                        margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color:
                                  Theme.of(context).colorScheme.outlineVariant,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: ListView.separated(
                          itemBuilder: (context, index) => index < notes.length
                              ? ChannelColorBarBox(
                                  note: notes[index],
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
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
                                          noteId,
                                        ).notifier,
                                      )
                                      .loadMore(skipError: true),
                                ),
                          separatorBuilder: (context, index) =>
                              index < notes.length - 1
                                  ? const Divider()
                                  : const SizedBox.shrink(),
                          itemCount: notes.length + 1,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
