import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/max_content_width.dart';
import '../../extension/note_extension.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../dialog/clip_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/reaction_confirmation_dialog.dart';
import 'emoji_picker.dart';
import 'note_sheet.dart';
import 'reaction_users_sheet.dart';
import 'renote_sheet.dart';
import 'renote_users_sheet.dart';
import 'translated_note_sheet.dart';

class NoteFooter extends HookConsumerWidget {
  const NoteFooter({
    super.key,
    required this.account,
    required this.noteId,
    this.disableHeader = false,
    this.focusPostForm,
    this.note,
  });

  final Account account;
  final String noteId;
  final bool disableHeader;
  final void Function()? focusPostForm;
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
    final showQuoteButton = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showQuoteButtonInNoteFooter,
      ),
    );
    final showLikeButton = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showLikeButtonInNoteFooter,
      ),
    );
    final showClipButton = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showClipButtonInNoteFooter,
      ),
    );
    final showTranslateButton = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showTranslateButtonInNoteFooter,
      ),
    );
    final scale = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.noteFooterScale,
      ),
    );
    final isMyNote = i != null && appearNote.userId == i.id;
    final canRenote = switch (appearNote.visibility) {
      NoteVisibility.public || NoteVisibility.home => true,
      NoteVisibility.followers => isMyNote,
      _ => false,
    };
    final theme = Theme.of(context);
    final defaultTextStyle = DefaultTextStyle.of(context).style;
    final opacity = defaultTextStyle.color?.a ?? 1.0;

    return LayoutBuilder(
      builder: (context, constraints) {
        final style = defaultTextStyle.apply(
          color: theme.colorScheme.onSurface.withValues(alpha: 0.6 * opacity),
          fontSizeFactor: scale * maxContentWidth / constraints.maxWidth,
        );
        return IconButtonTheme(
          data: IconButtonThemeData(
            style: IconButton.styleFrom(
              foregroundColor: theme.colorScheme.onSurface.withValues(
                alpha: 0.8 * opacity,
              ),
              iconSize: style.lineHeight,
              minimumSize: Size.fromRadius(style.fontSize!),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
          child: FittedBox(
            child: SizedBox(
              width: maxContentWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ReplyButton(
                    account: account,
                    note: appearNote,
                    focusPostForm: focusPostForm,
                    style: style,
                  ),
                  if (canRenote) ...[
                    _RenoteButton(
                      account: account,
                      note: appearNote,
                      myRenotingNoteId:
                          note.isRenote && note.userId == i?.id
                              ? note.id
                              : null,
                      showQuoteButton: showQuoteButton,
                      focusPostForm: focusPostForm,
                      style: style,
                    ),
                    if (showQuoteButton)
                      _QuoteButton(
                        account: account,
                        note: appearNote,
                        focusPostForm: focusPostForm,
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
                    _LikeButton(account: account, note: appearNote),
                  if (appearNote.myReaction == null)
                    _AddReactionButton(
                      account: account,
                      note: appearNote,
                      style: style,
                    )
                  else
                    _RemoveReactionButton(
                      account: account,
                      note: appearNote,
                      style: style,
                    ),
                  if (showClipButton)
                    _ClipButton(account: account, note: appearNote),
                  if (showTranslateButton)
                    _TranslateButton(account: account, note: appearNote),
                  _MenuButton(
                    account: account,
                    note: note,
                    disableHeader: disableHeader,
                    focusPostForm: focusPostForm,
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

class _ReplyButton extends ConsumerWidget {
  const _ReplyButton({
    required this.account,
    required this.note,
    this.focusPostForm,
    this.style,
  });

  final Account account;
  final Note note;
  final void Function()? focusPostForm;
  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showRepliesCount = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showRepliesCount,
      ),
    );

    return IconButton(
      tooltip: t.misskey.reply,
      onPressed:
          !account.isGuest
              ? () {
                if (note.id.isEmpty) return;
                ref.read(postNotifierProvider(account).notifier).setReply(note);
                if (focusPostForm case final focusPostForm?) {
                  focusPostForm();
                } else {
                  context.push('/$account/post');
                }
              }
              : null,
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.reply),
          if (showRepliesCount && note.repliesCount > 0)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Text(
                NumberFormat().format(note.repliesCount),
                style: style,
              ),
            ),
        ],
      ),
    );
  }
}

class _RenoteButton extends HookConsumerWidget {
  const _RenoteButton({
    required this.account,
    required this.note,
    this.myRenotingNoteId,
    this.showQuoteButton = false,
    this.focusPostForm,
    this.style,
  });

  final Account account;
  final Note note;
  final String? myRenotingNoteId;
  final bool showQuoteButton;
  final void Function()? focusPostForm;
  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showRenotesCount = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showRenotesCount,
      ),
    );
    final myRenotingNoteId = useState(this.myRenotingNoteId);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return GestureDetector(
      onLongPress:
          note.renoteCount > 0
              ? () {
                if (note.id.isEmpty) return;
                HapticFeedback.lightImpact();
                showModalBottomSheet<void>(
                  context: context,
                  builder:
                      (context) =>
                          RenoteUsersSheet(account: account, noteId: note.id),
                  isScrollControlled: true,
                );
              }
              : null,
      child: IconButton(
        tooltip: note.renoteCount <= 0 ? t.misskey.renote : null,
        onPressed:
            !account.isGuest
                ? () async {
                  if (note.id.isEmpty) return;
                  if (myRenotingNoteId.value case final noteId?) {
                    final unrenote = await showModalBottomSheet<bool>(
                      context: context,
                      builder:
                          (context) => ListView(
                            shrinkWrap: true,
                            children: [
                              ListTile(
                                leading: const Icon(Icons.repeat_rounded),
                                title: Text(t.misskey.renote),
                                onTap: () => context.pop(false),
                              ),
                              ListTile(
                                leading: const Icon(Icons.delete),
                                title: Text(t.misskey.unrenote),
                                onTap: () => context.pop(true),
                                iconColor: colors.error,
                                textColor: colors.error,
                              ),
                            ],
                          ),
                    );
                    if (!context.mounted) return;
                    if (unrenote == null) return;
                    if (unrenote) {
                      final result = await futureWithDialog(
                        context,
                        ref
                            .read(misskeyProvider(account))
                            .notes
                            .delete(NotesDeleteRequest(noteId: noteId))
                            .then((_) => true),
                      );
                      if (!context.mounted) return;
                      if (result != null) {
                        ref
                            .read(notesNotifierProvider(account).notifier)
                            .remove(noteId);
                        myRenotingNoteId.value = null;
                      }
                      return;
                    }
                  }
                  if (showQuoteButton) {
                    final result = await showModalBottomSheet<Note>(
                      context: context,
                      builder:
                          (context) =>
                              RenoteSheet(account: account, note: note),
                      clipBehavior: Clip.hardEdge,
                    );
                    if (result != null) {
                      myRenotingNoteId.value = result.id;
                    }
                  } else {
                    ref
                        .read(postNotifierProvider(account).notifier)
                        .setRenote(note);
                    if (focusPostForm case final focusPostForm?) {
                      focusPostForm();
                    } else {
                      await context.push('/$account/post');
                    }
                  }
                }
                : null,
        icon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.repeat_rounded,
              color: myRenotingNoteId.value != null ? colors.renote : null,
            ),
            if (showRenotesCount && note.renoteCount > 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  NumberFormat().format(note.renoteCount),
                  style: style?.apply(
                    color:
                        myRenotingNoteId.value != null
                            ? colors.renote.withValues(alpha: 0.6)
                            : null,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _QuoteButton extends ConsumerWidget {
  const _QuoteButton({
    required this.account,
    required this.note,
    this.focusPostForm,
  });

  final Account account;
  final Note note;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      tooltip: t.misskey.quote,
      onPressed:
          !account.isGuest
              ? () {
                if (note.id.isEmpty) return;
                ref
                    .read(postNotifierProvider(account).notifier)
                    .setRenote(note);
                if (focusPostForm case final focusPostForm?) {
                  focusPostForm();
                } else {
                  context.push('/$account/post');
                }
              }
              : null,
      icon: const Icon(Icons.format_quote_outlined),
    );
  }
}

class _LikeButton extends ConsumerWidget {
  const _LikeButton({required this.account, required this.note});

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      tooltip: t.misskey.like,
      onPressed:
          !account.isGuest
              ? () async {
                if (note.id.isEmpty) return;
                final defaultReaction =
                    ref
                        .read(accountSettingsNotifierProvider(account))
                        .defaultReaction;
                final emoji = defaultReaction ?? '❤';
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
                  overlay: false,
                );
              }
              : null,
      icon: const Icon(Icons.favorite_border),
    );
  }
}

class _AddReactionButton extends ConsumerWidget {
  const _AddReactionButton({
    required this.account,
    required this.note,
    this.style,
  });

  final Account account;
  final Note note;
  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showReactionsCount = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showReactionsCount,
      ),
    );

    return GestureDetector(
      onLongPress:
          (note.reactionCount ?? 0) > 0
              ? () {
                if (note.id.isEmpty) return;
                HapticFeedback.lightImpact();
                showModalBottomSheet<void>(
                  context: context,
                  builder:
                      (context) => ReactionUsersSheet(
                        account: account,
                        noteId: note.id,
                        initialReaction:
                            note.reactions.entries.fold<(String?, int)>(
                              (null, 0),
                              (acc, e) =>
                                  acc.$2 < e.value ? (e.key, e.value) : acc,
                            ).$1,
                      ),
                  clipBehavior: Clip.antiAlias,
                  isScrollControlled: true,
                );
              }
              : null,
      child: IconButton(
        tooltip:
            (note.reactionCount ?? 0) <= 0
                ? note.reactionAcceptance == ReactionAcceptance.likeOnly
                    ? t.misskey.like
                    : t.misskey.reaction
                : null,
        onPressed:
            !account.isGuest
                ? () async {
                  if (note.id.isEmpty) return;
                  final emoji =
                      note.reactionAcceptance == ReactionAcceptance.likeOnly
                          ? '❤'
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
                      overlay: false,
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
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  NumberFormat().format(note.reactionCount),
                  style: style,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _RemoveReactionButton extends ConsumerWidget {
  const _RemoveReactionButton({
    required this.account,
    required this.note,
    this.style,
  });

  final Account account;
  final Note note;
  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showReactionsCount = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showReactionsCount,
      ),
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return GestureDetector(
      onLongPress: () {
        if (note.id.isEmpty) return;
        HapticFeedback.lightImpact();
        showModalBottomSheet<void>(
          context: context,
          builder:
              (context) => ReactionUsersSheet(
                account: account,
                noteId: note.id,
                initialReaction:
                    note.reactions.entries.fold<(String?, int)>(
                      (null, 0),
                      (acc, e) => acc.$2 < e.value ? (e.key, e.value) : acc,
                    ).$1,
              ),
          clipBehavior: Clip.antiAlias,
          isScrollControlled: true,
        );
      },
      child: IconButton(
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
            ref.read(notesNotifierProvider(account).notifier).unreact(note.id),
            overlay: false,
          );
        },
        icon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (note.reactionAcceptance == ReactionAcceptance.likeOnly)
              Icon(Icons.favorite, color: colors.love)
            else
              Icon(Icons.remove, color: colors.accent),
            if ((note.reactionAcceptance == ReactionAcceptance.likeOnly ||
                    showReactionsCount) &&
                (note.reactionCount ?? 0) > 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  NumberFormat().format(note.reactionCount),
                  style: style,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ClipButton extends ConsumerWidget {
  const _ClipButton({required this.account, required this.note});

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      tooltip: t.misskey.clip,
      onPressed:
          !account.isGuest
              ? () {
                if (note.id.isEmpty) return;
                showDialog<void>(
                  context: context,
                  builder:
                      (context) =>
                          ClipDialog(account: account, noteId: note.id),
                );
              }
              : null,
      icon: const Icon(Icons.attach_file),
    );
  }
}

class _TranslateButton extends ConsumerWidget {
  const _TranslateButton({required this.account, required this.note});

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;

    return IconButton(
      tooltip: t.misskey.translate,
      onPressed: () {
        if (note.id.isEmpty) return;
        if ((i?.policies?.canUseTranslator ?? false) &&
            (meta?.translatorAvailable ?? false)) {
          showModalBottomSheet<void>(
            context: context,
            builder:
                (context) => TranslatedNoteSheet(account: account, note: note),
            clipBehavior: Clip.antiAlias,
            scrollControlDisabledMaxHeightRatio: 0.8,
          );
        } else {
          launchUrl(
            ref,
            Uri.https('translate.google.com', '', {
              'text': [note.cw, note.text].nonNulls.join('\n'),
            }),
          );
        }
      },
      icon: const Icon(Icons.translate),
    );
  }
}

class _MenuButton extends ConsumerWidget {
  const _MenuButton({
    required this.account,
    required this.note,
    this.disableHeader = false,
    this.focusPostForm,
  });

  final Account account;
  final Note note;
  final bool disableHeader;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      tooltip: t.misskey.menu,
      onPressed: () {
        if (note.id.isEmpty) return;
        showNoteSheet(
          context: context,
          account: account,
          noteId: note.id,
          disableHeader: disableHeader,
          focusPostForm: focusPostForm,
        );
      },
      icon: const Icon(Icons.more_horiz),
    );
  }
}
