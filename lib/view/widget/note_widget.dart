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
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/check_word_mute_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_is_long_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../util/extract_url.dart';
import '../../util/navigate.dart';
import 'channel_color_bar_box.dart';
import 'cw_button.dart';
import 'emoji_sheet.dart';
import 'instance_ticker.dart';
import 'media_list.dart';
import 'mfm.dart';
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
import 'username_widget.dart';

class NoteWidget extends HookConsumerWidget {
  const NoteWidget({
    super.key,
    required this.account,
    required this.noteId,
    this.showDate = true,
    this.showFooter,
    this.onExpand = _pushNotePage,
    this.onLongPress = _showNoteSheet,
    this.postFormFocusNode,
    this.withHardMute = true,
  });

  final Account account;
  final String noteId;
  final bool showDate;
  final bool? showFooter;
  final void Function(BuildContext context, Account account, Note note)?
      onExpand;
  final void Function(BuildContext context, Account account, Note note)?
      onLongPress;
  final FocusNode? postFormFocusNode;
  final bool withHardMute;

  static void _pushNotePage(BuildContext context, Account account, Note note) {
    context.push('/$account/notes/${note.id}');
  }

  static void _showNoteSheet(BuildContext context, Account account, Note note) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => NoteSheet(account: account, noteId: note.id),
      clipBehavior: Clip.hardEdge,
      isScrollControlled: true,
    );
  }

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
    final hardMuted = withHardMute &&
        ref.watch(
          checkWordMuteProvider(account, appearNote.id, hardMute: true),
        );
    if (hardMuted) {
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

    final expandOnTap = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.expandNoteOnTap),
    );
    final expandOnDoubleTap = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.expandNoteOnDoubleTap),
    );
    final showAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showAvatarsInNote),
    );
    final showReactionsViewer = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showNoteReactionsViewer),
    );
    final bool showFooter = this.showFooter ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.showNoteFooter),
        );
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final isRenote = note.isRenote;
    final isMyRenote = i != null && note.user.id == i.id;
    final isMyNote = i != null && appearNote.user.id == i.id;
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
    final isLong =
        note.cw == null && ref.watch(noteIsLongProvider(account, noteId));
    final isCollapsed = useState(appearNote.cw == null && isLong);
    final renoteCollapsed = useState(
      ref.watch(
            generalSettingsNotifierProvider
                .select((settings) => settings.collapseRenotes),
          ) &&
          isRenote &&
          (isMyRenote || isMyNote || appearNote.myReaction != null),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return ClipRect(
      child: InkWell(
        onTap: expandOnTap && onExpand != null
            ? () => onExpand?.call(context, account, appearNote)
            : null,
        onDoubleTap: expandOnDoubleTap && onExpand != null
            ? () => onExpand?.call(context, account, appearNote)
            : null,
        onLongPress: onLongPress != null
            ? () => onLongPress?.call(context, account, note)
            : null,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              if (appearNote case Note(:final replyId?))
                if (!renoteCollapsed.value)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: DefaultTextStyle.merge(
                      style: style.apply(
                        color: style.color?.withOpacity(0.7),
                        fontSizeFactor: 0.9,
                      ),
                      child: NoteSubWidget(
                        account: account,
                        noteId: replyId,
                        postFormFocusNode: postFormFocusNode,
                      ),
                    ),
                  ),
              if (isRenote)
                RenoteHeader(
                  account: account,
                  noteId: noteId,
                  onTap: () => context.push('/$account/notes/$noteId'),
                ),
              if (renoteCollapsed.value)
                ChannelColorBarBox(
                  note: appearNote,
                  child: Row(
                    children: [
                      if (showAvatars)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: UserAvatar(
                            user: appearNote.user,
                            size: style.lineHeight,
                            onTap: () => context
                                .push('/$account/users/${appearNote.userId}'),
                          ),
                        )
                      else
                        const SizedBox(width: 8.0),
                      Expanded(
                        child: DefaultTextStyle.merge(
                          style: style.apply(
                            color: style.color?.withOpacity(0.7),
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
                )
              else
                ChannelColorBarBox(
                  note: appearNote,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showAvatars)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: UserAvatar(
                            user: appearNote.user,
                            size: style.lineHeight * 2.5,
                            onTap: () => context
                                .push('/$account/users/${appearNote.userId}'),
                          ),
                        )
                      else
                        const SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4.0),
                            NoteHeader(
                              account: account,
                              note: appearNote,
                              showDate: showDate,
                            ),
                            if (appearNote.user
                                case User(:final instance?, :final host?))
                              DefaultTextStyle.merge(
                                style: style.apply(fontSizeFactor: 0.9),
                                child: InstanceTicker(
                                  account: account,
                                  instance: instance,
                                  host: host,
                                ),
                              ),
                            if (appearNote case Note(:final cw?)) ...[
                              if (cw.isNotEmpty)
                                Mfm(
                                  account: account,
                                  text: cw,
                                  emojis: appearNote.emojis,
                                  author: appearNote.user,
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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.0),
                                child: CwButton(
                                  note: appearNote,
                                  onPressed: (value) =>
                                      showContent.value = value,
                                  isOpen: showContent.value,
                                ),
                              ),
                            ],
                            if (appearNote.cw == null || showContent.value) ...[
                              if (parsed != null || appearNote.replyId != null)
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      if (appearNote
                                          case Note(:final replyId?)) ...[
                                        WidgetSpan(
                                          alignment:
                                              PlaceholderAlignment.middle,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            onTap: () => context.push(
                                              '/$account/notes/$replyId',
                                            ),
                                            child: Icon(
                                              Icons.reply,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                        const WidgetSpan(
                                          child: SizedBox(width: 4.0),
                                        ),
                                      ],
                                      if (parsed != null)
                                        ...useMemoized(
                                          () => buildMfm(
                                            ref,
                                            account: account,
                                            nodes: parsed,
                                            author: appearNote.user,
                                            emojis: appearNote.emojis,
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
                                            maxLines:
                                                isCollapsed.value ? 10 : null,
                                          ),
                                          [
                                            account,
                                            parsed,
                                            colors,
                                            appearNote.user,
                                            appearNote.emojis,
                                            isCollapsed.value,
                                          ],
                                        ),
                                    ],
                                  ),
                                  maxLines: isCollapsed.value ? 10 : null,
                                ),
                              if (!isCollapsed.value) ...[
                                if (appearNote.files.isNotEmpty)
                                  MediaList(
                                    account: account,
                                    files: appearNote.files,
                                    user: appearNote.user,
                                  ),
                                if (appearNote case Note(:final poll?))
                                  PollWidget(
                                    account: account,
                                    noteId: appearNote.id,
                                    poll: poll,
                                  ),
                                if (urls != null)
                                  ...urls.map(
                                    (url) =>
                                        UrlPreview(account: account, link: url),
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
                                        style: style.apply(
                                          fontSizeFactor: 0.95,
                                        ),
                                        child: NoteSimpleWidget(
                                          account: account,
                                          noteId: renoteId,
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          showFooter: this.showFooter,
                                          postFormFocusNode: postFormFocusNode,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                              if (isLong)
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    textStyle: style,
                                    minimumSize: Size(
                                      double.infinity,
                                      style.fontSize! * 2.5,
                                    ),
                                  ),
                                  onPressed: () =>
                                      isCollapsed.value = !isCollapsed.value,
                                  child: Text(
                                    isCollapsed.value
                                        ? t.misskey.showMore
                                        : t.misskey.showLess,
                                  ),
                                ),
                            ],
                            if (appearNote case Note(:final channel?))
                              InkWell(
                                onTap: () => context
                                    .push('/$account/channels/${channel.id}'),
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
                            const SizedBox(height: 4.0),
                            if (appearNote.reactionAcceptance !=
                                    ReactionAcceptance.likeOnly &&
                                showReactionsViewer)
                              ReactionsViewer(
                                account: account,
                                noteId: appearNote.id,
                              ),
                            if (showFooter)
                              NoteFooter(
                                account: account,
                                noteId: noteId,
                                postFormFocusNode: postFormFocusNode,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}