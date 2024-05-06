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
import '../../util/get_note_action.dart';
import '../../util/navigate.dart';
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
    final muted =
        useState(ref.watch(checkWordMuteProvider(account, appearNote.id)));
    if (muted.value) {
      return InkWell(
        onTap: () => muted.value = false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
    final conversation = appearNote.replyId != null
        ? ref.watch(conversationNotesProvider(account, noteId))
        : null;
    final children = ref.watch(childrenNotesNotifierProvider(account, noteId));
    final isRenote = note.isRenote;
    final showContent = useState(false);
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
        padding: const EdgeInsets.all(4.0),
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
                  child: Column(
                    children: [
                      for (final note in conversation.reversed) ...[
                        NoteSubWidget(account: account, noteId: note.id),
                        const Divider(height: 0.0),
                      ],
                    ],
                  ),
                ),
              ),
            if (isRenote) RenoteHeader(account: account, noteId: noteId),
            ChannelColorBarBox(
              note: appearNote,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        UserAvatar(
                          account: account,
                          user: appearNote.user,
                          size: style.lineHeight * 2.5,
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
                                DefaultTextStyle.merge(
                                  style: style.apply(fontSizeFactor: 0.9),
                                  child: InstanceTickerWidget(
                                    account: account,
                                    instance: appearNote.user.instance,
                                    host: appearNote.user.host,
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
                                    onLinkTap: (link) =>
                                        navigate(ref, account, link),
                                  ),
                                  [
                                    account,
                                    parsed,
                                    colors,
                                    appearNote.user,
                                    appearNote.emojis,
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
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      if (appearNote.files.isNotEmpty)
                        MediaList(
                          account: account,
                          files: appearNote.files,
                          user: note.user,
                        ),
                      if (appearNote case Note(:final poll?))
                        PollWidget(
                          account: account,
                          noteId: appearNote.id,
                          poll: poll,
                        ),
                      if (urls != null)
                        ...urls.map(
                          (url) => UrlPreview(account: account, link: url),
                        ),
                      if (appearNote case Note(:final renoteId?))
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DottedBorder(
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
                        ),
                    ],
                    if (appearNote case Note(:final channel?))
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
                      hideDetails: true,
                    ),
                    if (children
                        case AsyncValue(
                          valueOrNull: PaginationState(items: final notes),
                        ))
                      Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color:
                                  Theme.of(context).colorScheme.outlineVariant,
                              width: 2.0,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ListView.separated(
                          itemBuilder: (context, index) => index < notes.length
                              ? NoteSubWidget(
                                  account: account,
                                  noteId: notes[index].id,
                                  showReplies: true,
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
