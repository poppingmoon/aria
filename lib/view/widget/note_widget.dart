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
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/check_word_mute_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_is_long_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../util/extract_url.dart';
import '../../util/get_note_action.dart';
import 'channel_color_bar_box.dart';
import 'cw_button.dart';
import 'emoji_sheet.dart';
import 'instance_ticker_widget.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'note_footer.dart';
import 'note_header.dart';
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
    this.withHardMute = true,
    this.focusPostForm,
    this.note,
    this.showAvatars,
    this.showReactionsViewer,
    this.showFooter,
    this.tapAction,
    this.doubleTapAction,
    this.longPressAction,
    this.backgroundColor,
  });

  final Account account;
  final String noteId;
  final bool showDate;
  final bool withHardMute;
  final void Function()? focusPostForm;
  final Note? note;
  final bool? showAvatars;
  final bool? showReactionsViewer;
  final bool? showFooter;
  final NoteActionType? tapAction;
  final NoteActionType? doubleTapAction;
  final NoteActionType? longPressAction;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final appearNote =
        this.note ?? ref.watch(appearNoteProvider(account, noteId));
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
    final (verticalPadding, horizontalPadding) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.noteVerticalPadding, settings.noteHorizontalPadding),
      ),
    );
    final muted =
        useState(ref.watch(checkWordMuteProvider(account, appearNote.id)));
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

    final bool showAvatars = this.showAvatars ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.showAvatarsInNote),
        );
    final bool showReactionsViewer = this.showReactionsViewer ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.showNoteReactionsViewer),
        );
    final bool showFooter = this.showFooter ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.showNoteFooter),
        );
    final NoteActionType tapAction = this.tapAction ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.noteTapAction),
        );
    final NoteActionType doubleTapAction = this.doubleTapAction ??
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.noteDoubleTapAction),
        );
    final NoteActionType longPressAction = this.longPressAction ??
        ref.watch(
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
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final isRenote = note.isRenote;
    final isMyRenote = i != null && note.user.id == i.id;
    final isMyNote = i != null && appearNote.user.id == i.id;
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
    final isLong = appearNote.cw == null &&
        !ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.alwaysExpandLongNote),
        ) &&
        ref.watch(noteIsLongProvider(account, appearNote.id));
    final isCollapsed = useState(appearNote.cw == null && isLong);
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
    final renoteCollapsed = useState(
      ref.watch(
            generalSettingsNotifierProvider
                .select((settings) => settings.collapseRenotes),
          ) &&
          isRenote &&
          (isMyRenote || isMyNote || appearNote.myReaction != null),
    );
    final backgroundColor = this.backgroundColor ??
        ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => switch (note.visibility) {
              NoteVisibility.public => settings.publicNoteBackgroundColor,
              NoteVisibility.home => settings.homeNoteBackgroundColor,
              NoteVisibility.followers => settings.followersNoteBackgroundColor,
              NoteVisibility.specified => settings.specifiedNoteBackgroundColor,
              null => null,
            },
          ),
        );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return Material(
      color: backgroundColor ?? colors.panel,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: getNoteAction(
          ref,
          account: account,
          type: tapAction,
          note: note,
          appearNote: appearNote,
        ),
        onDoubleTap: getNoteAction(
          ref,
          account: account,
          type: doubleTapAction,
          note: note,
          appearNote: appearNote,
        ),
        onLongPress: getNoteAction(
          ref,
          account: account,
          type: longPressAction,
          note: note,
          appearNote: appearNote,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 4.0,
            top: verticalPadding,
            right: horizontalPadding,
            bottom: verticalPadding,
          ),
          child: Column(
            children: [
              if (appearNote case Note(:final replyId?)
                  when !renoteCollapsed.value) ...[
                DefaultTextStyle.merge(
                  style: style.apply(
                    color: style.color?.withOpacity(0.7),
                    fontSizeFactor: 0.9,
                  ),
                  child: IconTheme.merge(
                    data: IconThemeData(color: style.color?.withOpacity(0.7)),
                    child: ChannelColorBarBox(
                      note: appearNote.reply,
                      child: Padding(
                        padding: EdgeInsets.only(left: horizontalPadding - 4.0),
                        child: NoteSubWidget(
                          account: account,
                          noteId: replyId,
                          focusPostForm: focusPostForm,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4.0),
              ],
              if (isRenote) ...[
                ChannelColorBarBox(
                  note: note,
                  child: Padding(
                    padding: EdgeInsets.only(left: horizontalPadding - 4.0),
                    child: RenoteHeader(
                      account: account,
                      noteId: noteId,
                      onTap: () => context.push('/$account/notes/$noteId'),
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
                          padding: const EdgeInsets.only(top: 4.0, right: 10.0),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NoteHeader(
                              account: account,
                              note: appearNote,
                              showDate: showDate,
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
                            if (appearNote case Note(:final cw?)) ...[
                              if (cw.isNotEmpty)
                                Mfm(
                                  account: account,
                                  text: cw,
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
                                              color: colors.accent,
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
                                            mfmSettings,
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
                                          focusPostForm: focusPostForm,
                                          note: this.note?.renote,
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
                            if (appearNote case Note(:final channel?)) ...[
                              const SizedBox(height: 4.0),
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
                            ],
                            const SizedBox(height: 4.0),
                            if (appearNote.reactionAcceptance !=
                                    ReactionAcceptance.likeOnly &&
                                showReactionsViewer)
                              ReactionsViewer(
                                account: account,
                                noteId: appearNote.id,
                                note: this.note,
                              ),
                            if (showFooter)
                              NoteFooter(
                                account: account,
                                noteId: noteId,
                                focusPostForm: focusPostForm,
                                note: this.note,
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
