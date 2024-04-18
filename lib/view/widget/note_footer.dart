import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:url_launcher/url_launcher.dart';

import '../../constant/colors.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/clip_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/reaction_confirmation_dialog.dart';
import 'emoji_picker.dart';
import 'note_sheet.dart';
import 'reaction_users_sheet.dart';
import 'renote_users_sheet.dart';
import 'translated_note_sheet.dart';

class NoteFooter extends ConsumerWidget {
  const NoteFooter({
    super.key,
    required this.account,
    required this.noteId,
    this.hideDetails = false,
    this.postFormFocusNode,
    this.note,
  });

  final Account account;
  final String noteId;
  final bool hideDetails;
  final FocusNode? postFormFocusNode;
  final Note? note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaProvider(account)).valueOrNull;
    final showLikeButton = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showLikeButtonInNoteFooter),
    );
    final showClipButton = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showClipButtonInNoteFooter),
    );
    final showTranslateButton = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showTranslateButtonInNoteFooter),
    );
    final scale = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.noteFooterScale),
    );
    final showReactionsCount = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showReactionsCount),
    );
    final isMyNote = i != null && note.user.id == i.id;
    final canRenote = switch (note.visibility) {
      NoteVisibility.public || NoteVisibility.home => true,
      NoteVisibility.followers => isMyNote,
      _ => false,
    };
    final style = DefaultTextStyle.of(context).style.apply(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
          fontSizeFactor: scale,
        );

    return IconButtonTheme(
      data: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor:
              Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
          iconSize: style.lineHeight,
          minimumSize: Size.fromRadius(style.fontSize!),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            tooltip: t.misskey.reply,
            onPressed: !account.isGuest
                ? () {
                    if (note.id.isEmpty) return;
                    ref
                        .read(postNotifierProvider(account).notifier)
                        .setReply(note);
                    if (postFormFocusNode != null) {
                      postFormFocusNode?.requestFocus();
                    } else {
                      context.push('/$account/post');
                    }
                  }
                : null,
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.reply),
                if (note.repliesCount > 0)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 2.0,
                    ),
                    child: Text(
                      NumberFormat().format(note.repliesCount),
                      style: style,
                    ),
                  ),
              ],
            ),
          ),
          if (canRenote)
            GestureDetector(
              onLongPress: note.renoteCount > 0
                  ? () {
                      if (note.id.isEmpty) return;
                      HapticFeedback.lightImpact();
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (context) => RenoteUsersSheet(
                          account: account,
                          noteId: note.id,
                        ),
                        isScrollControlled: true,
                      );
                    }
                  : null,
              child: IconButton(
                tooltip: note.renoteCount <= 0 ? t.misskey.renote : null,
                onPressed: !account.isGuest
                    ? () {
                        if (note.id.isEmpty) return;
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setRenote(note);
                        if (postFormFocusNode != null) {
                          postFormFocusNode?.requestFocus();
                        } else {
                          context.push('/$account/post');
                        }
                      }
                    : null,
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.repeat_rounded),
                    if (note.renoteCount > 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Text(
                          NumberFormat().format(note.renoteCount),
                          style: style,
                        ),
                      ),
                  ],
                ),
              ),
            )
          else
            IconButton(
              tooltip: t.misskey.cantRenote,
              onPressed: null,
              icon: const Icon(Icons.block),
            ),
          if (showLikeButton &&
              note.reactionAcceptance != ReactionAcceptance.likeOnly &&
              note.myReaction == null)
            IconButton(
              tooltip: t.misskey.like,
              onPressed: !account.isGuest
                  ? () async {
                      if (note.id.isEmpty) return;
                      if (ref
                          .read(generalSettingsNotifierProvider)
                          .confirmBeforeReact) {
                        final confirmed = await confirmReaction(
                          context,
                          account: account,
                          emoji: '❤️',
                          note: note,
                        );
                        if (!confirmed) return;
                      }
                      if (!context.mounted) return;
                      await futureWithDialog(
                        context,
                        ref
                            .read(notesNotifierProvider(account).notifier)
                            .react(note.id, '❤️'),
                      );
                    }
                  : null,
              icon: const Icon(Icons.favorite_border),
            ),
          if (note.myReaction == null)
            GestureDetector(
              onLongPress:
                  note.reactionAcceptance == ReactionAcceptance.likeOnly &&
                          (note.reactionCount ?? 0) > 0
                      ? () => showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => ReactionUsersSheet(
                              account: account,
                              noteId: noteId,
                              reaction: '❤️',
                            ),
                            isScrollControlled: true,
                          )
                      : null,
              child: IconButton(
                tooltip: note.reactionAcceptance != ReactionAcceptance.likeOnly
                    ? t.misskey.reaction
                    : (note.reactionCount ?? 0) <= 0
                        ? t.misskey.like
                        : null,
                onPressed: !account.isGuest
                    ? () async {
                        if (note.id.isEmpty) return;
                        final emoji = note.reactionAcceptance ==
                                ReactionAcceptance.likeOnly
                            ? '❤️'
                            : await pickEmoji(
                                ref,
                                account,
                                reaction: true,
                                targetNote: note,
                              );
                        if (!context.mounted) return;
                        if (emoji != null) {
                          if (ref
                              .read(generalSettingsNotifierProvider)
                              .confirmBeforeReact) {
                            final confirmed = await confirmReaction(
                              context,
                              account: account,
                              emoji: emoji,
                              note: note,
                            );
                            if (!confirmed) return;
                          }
                          if (!context.mounted) return;
                          await futureWithDialog(
                            context,
                            ref
                                .read(notesNotifierProvider(account).notifier)
                                .react(note.id, emoji),
                          );
                        }
                      }
                    : null,
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (note.reactionAcceptance == ReactionAcceptance.likeOnly)
                      const Icon(Icons.favorite_border)
                    else
                      const Icon(Icons.add),
                    if (showReactionsCount && (note.reactionCount ?? 0) > 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Text(
                          NumberFormat().format(note.reactionCount),
                          style: style,
                        ),
                      ),
                  ],
                ),
              ),
            )
          else
            GestureDetector(
              onLongPress:
                  note.reactionAcceptance == ReactionAcceptance.likeOnly
                      ? () {
                          if (note.id.isEmpty) return;
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => ReactionUsersSheet(
                              account: account,
                              noteId: noteId,
                              reaction: '❤️',
                            ),
                            isScrollControlled: true,
                          );
                        }
                      : null,
              child: IconButton(
                tooltip: note.reactionAcceptance != ReactionAcceptance.likeOnly
                    ? t.misskey.reaction
                    : null,
                onPressed: () async {
                  if (note.id.isEmpty) return;
                  final confirmed = await confirm(
                    context,
                    message: t.misskey.cancelReactionConfirm,
                  );
                  if (!confirmed) return;
                  if (!context.mounted) return;
                  await futureWithDialog(
                    context,
                    ref
                        .read(notesNotifierProvider(account).notifier)
                        .unreact(note.id),
                  );
                },
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (note.reactionAcceptance == ReactionAcceptance.likeOnly)
                      const Icon(
                        Icons.favorite,
                        color: eventReactionHeart,
                      )
                    else
                      Icon(
                        Icons.remove,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    if ((note.reactionAcceptance ==
                                ReactionAcceptance.likeOnly ||
                            showReactionsCount) &&
                        (note.reactionCount ?? 0) > 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Text(
                          NumberFormat().format(note.reactionCount),
                          style: style,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          if (showClipButton)
            IconButton(
              tooltip: t.misskey.clip,
              onPressed: !account.isGuest
                  ? () {
                      if (note.id.isEmpty) return;
                      showDialog<void>(
                        context: context,
                        builder: (context) => ClipDialog(
                          account: account,
                          noteId: noteId,
                        ),
                      );
                    }
                  : null,
              icon: const Icon(Icons.attach_file),
            ),
          if (showTranslateButton)
            IconButton(
              tooltip: t.misskey.translate,
              onPressed: () {
                if ((i?.policies?.canUseTranslator ?? false) &&
                    (meta?.translatorAvailable ?? false)) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => TranslatedNoteSheet(
                      account: account,
                      note: note,
                    ),
                  );
                } else {
                  launchUrl(
                    Uri.https(
                      'translate.google.com',
                      '',
                      {
                        'text': [note.cw, note.text].nonNulls.join('\n'),
                      },
                    ),
                  );
                }
              },
              icon: const Icon(Icons.translate),
            ),
          IconButton(
            tooltip: t.misskey.menu,
            onPressed: () {
              if (note.id.isEmpty) return;
              showModalBottomSheet<void>(
                context: context,
                builder: (context) => NoteSheet(
                  account: account,
                  noteId: noteId,
                  hideDetails: hideDetails,
                  postFormFocusNode: postFormFocusNode,
                ),
                clipBehavior: Clip.hardEdge,
                isScrollControlled: true,
              );
            },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
