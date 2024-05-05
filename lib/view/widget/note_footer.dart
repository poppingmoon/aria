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
import '../../provider/appear_note_provider.dart';
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
import 'renote_sheet.dart';
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
    final appearNote =
        this.note ?? ref.watch(appearNoteProvider(account, noteId));
    if (appearNote == null) {
      return const SizedBox.shrink();
    }
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaProvider(account)).valueOrNull;
    final showQuoteButton = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showQuoteButtonInNoteFooter),
    );
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
    final isMyNote = i != null && appearNote.user.id == i.id;
    final canRenote = switch (appearNote.visibility) {
      NoteVisibility.public || NoteVisibility.home => true,
      NoteVisibility.followers => isMyNote,
      _ => false,
    };

    return LayoutBuilder(
      builder: (context, constraints) {
        final style = DefaultTextStyle.of(context).style.apply(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              fontSizeFactor: scale * 800.0 / constraints.maxWidth,
            );
        return IconButtonTheme(
          data: IconButtonThemeData(
            style: IconButton.styleFrom(
              foregroundColor:
                  Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
              iconSize: style.lineHeight,
              minimumSize: Size.fromRadius(style.fontSize!),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
          child: FittedBox(
            child: SizedBox(
              width: 800.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    tooltip: t.misskey.reply,
                    onPressed: !account.isGuest
                        ? () {
                            if (appearNote.id.isEmpty) return;
                            ref
                                .read(postNotifierProvider(account).notifier)
                                .setReply(appearNote);
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
                        if (appearNote.repliesCount > 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2.0,
                            ),
                            child: Text(
                              NumberFormat().format(appearNote.repliesCount),
                              style: style,
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (canRenote) ...[
                    GestureDetector(
                      onLongPress: appearNote.renoteCount > 0
                          ? () {
                              if (appearNote.id.isEmpty) return;
                              HapticFeedback.lightImpact();
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => RenoteUsersSheet(
                                  account: account,
                                  noteId: appearNote.id,
                                ),
                                isScrollControlled: true,
                              );
                            }
                          : null,
                      child: IconButton(
                        tooltip: appearNote.renoteCount <= 0
                            ? t.misskey.renote
                            : null,
                        onPressed: !account.isGuest
                            ? () {
                                if (appearNote.id.isEmpty) return;
                                if (showQuoteButton) {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (context) => RenoteSheet(
                                      account: account,
                                      note: appearNote,
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                  );
                                } else {
                                  ref
                                      .read(
                                        postNotifierProvider(account).notifier,
                                      )
                                      .setRenote(appearNote);
                                  if (postFormFocusNode != null) {
                                    postFormFocusNode?.requestFocus();
                                  } else {
                                    context.push('/$account/post');
                                  }
                                }
                              }
                            : null,
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.repeat_rounded),
                            if (appearNote.renoteCount > 0)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0,
                                ),
                                child: Text(
                                  NumberFormat().format(appearNote.renoteCount),
                                  style: style,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (showQuoteButton)
                      IconButton(
                        tooltip: t.misskey.quote,
                        onPressed: !account.isGuest
                            ? () {
                                if (appearNote.id.isEmpty) return;
                                ref
                                    .read(
                                      postNotifierProvider(account).notifier,
                                    )
                                    .setRenote(appearNote);
                                if (postFormFocusNode != null) {
                                  postFormFocusNode?.requestFocus();
                                } else {
                                  context.push('/$account/post');
                                }
                              }
                            : null,
                        icon: const Icon(Icons.format_quote_outlined),
                      ),
                  ] else
                    IconButton(
                      tooltip: t.misskey.cantRenote,
                      onPressed: null,
                      icon: const Icon(Icons.block),
                    ),
                  if (showLikeButton &&
                      appearNote.reactionAcceptance !=
                          ReactionAcceptance.likeOnly &&
                      appearNote.myReaction == null)
                    IconButton(
                      tooltip: t.misskey.like,
                      onPressed: !account.isGuest
                          ? () async {
                              if (appearNote.id.isEmpty) return;
                              if (ref
                                  .read(generalSettingsNotifierProvider)
                                  .confirmBeforeReact) {
                                final confirmed = await confirmReaction(
                                  context,
                                  account: account,
                                  emoji: '❤️',
                                  note: appearNote,
                                );
                                if (!confirmed) return;
                              }
                              if (!context.mounted) return;
                              await futureWithDialog(
                                context,
                                ref
                                    .read(
                                      notesNotifierProvider(account).notifier,
                                    )
                                    .react(appearNote.id, '❤️'),
                              );
                            }
                          : null,
                      icon: const Icon(Icons.favorite_border),
                    ),
                  if (appearNote.myReaction == null)
                    GestureDetector(
                      onLongPress: appearNote.reactionAcceptance ==
                                  ReactionAcceptance.likeOnly &&
                              (appearNote.reactionCount ?? 0) > 0
                          ? () => showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => ReactionUsersSheet(
                                  account: account,
                                  noteId: appearNote.id,
                                  reaction: '❤️',
                                ),
                                isScrollControlled: true,
                              )
                          : null,
                      child: IconButton(
                        tooltip: appearNote.reactionAcceptance !=
                                ReactionAcceptance.likeOnly
                            ? t.misskey.reaction
                            : (appearNote.reactionCount ?? 0) <= 0
                                ? t.misskey.like
                                : null,
                        onPressed: !account.isGuest
                            ? () async {
                                if (appearNote.id.isEmpty) return;
                                final emoji = appearNote.reactionAcceptance ==
                                        ReactionAcceptance.likeOnly
                                    ? '❤️'
                                    : await pickEmoji(
                                        ref,
                                        account,
                                        reaction: true,
                                        targetNote: appearNote,
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
                                      note: appearNote,
                                    );
                                    if (!confirmed) return;
                                  }
                                  if (!context.mounted) return;
                                  await futureWithDialog(
                                    context,
                                    ref
                                        .read(
                                          notesNotifierProvider(account)
                                              .notifier,
                                        )
                                        .react(appearNote.id, emoji),
                                  );
                                }
                              }
                            : null,
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (appearNote.reactionAcceptance ==
                                ReactionAcceptance.likeOnly)
                              const Icon(Icons.favorite_border)
                            else
                              const Icon(Icons.add),
                            if (showReactionsCount &&
                                (appearNote.reactionCount ?? 0) > 0)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0,
                                ),
                                child: Text(
                                  NumberFormat()
                                      .format(appearNote.reactionCount),
                                  style: style,
                                ),
                              ),
                          ],
                        ),
                      ),
                    )
                  else
                    GestureDetector(
                      onLongPress: appearNote.reactionAcceptance ==
                              ReactionAcceptance.likeOnly
                          ? () {
                              if (appearNote.id.isEmpty) return;
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => ReactionUsersSheet(
                                  account: account,
                                  noteId: appearNote.id,
                                  reaction: '❤️',
                                ),
                                isScrollControlled: true,
                              );
                            }
                          : null,
                      child: IconButton(
                        tooltip: appearNote.reactionAcceptance !=
                                ReactionAcceptance.likeOnly
                            ? t.misskey.reaction
                            : null,
                        onPressed: () async {
                          if (appearNote.id.isEmpty) return;
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
                                .unreact(appearNote.id),
                          );
                        },
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (appearNote.reactionAcceptance ==
                                ReactionAcceptance.likeOnly)
                              const Icon(
                                Icons.favorite,
                                color: eventReactionHeart,
                              )
                            else
                              Icon(
                                Icons.remove,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            if ((appearNote.reactionAcceptance ==
                                        ReactionAcceptance.likeOnly ||
                                    showReactionsCount) &&
                                (appearNote.reactionCount ?? 0) > 0)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0,
                                ),
                                child: Text(
                                  NumberFormat()
                                      .format(appearNote.reactionCount),
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
                              if (appearNote.id.isEmpty) return;
                              showDialog<void>(
                                context: context,
                                builder: (context) => ClipDialog(
                                  account: account,
                                  noteId: appearNote.id,
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
                              note: appearNote,
                            ),
                          );
                        } else {
                          launchUrl(
                            Uri.https(
                              'translate.google.com',
                              '',
                              {
                                'text': [appearNote.cw, appearNote.text]
                                    .nonNulls
                                    .join('\n'),
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
            ),
          ),
        );
      },
    );
  }
}
