import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_off_icons/material_off_icons.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/shortcuts.dart';
import '../../extension/community_channel_extension.dart';
import '../../extension/list_mfm_node_extension.dart';
import '../../extension/me_detailed_extension.dart';
import '../../extension/mfm_mention_extension.dart';
import '../../extension/note_channel_info_extension.dart';
import '../../extension/note_draft_extension.dart';
import '../../extension/text_editing_controller_extension.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/children_notes_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/extract_mentions.dart';
import '../../util/format_datetime.dart';
import '../../util/future_with_dialog.dart';
import '../../util/pick_date_time.dart';
import '../../util/punycode.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/missing_file_comment_dialog.dart';
import '../dialog/note_drafts_dialog.dart';
import '../dialog/post_confirmation_dialog.dart';
import '../dialog/scheduled_notes_dialog.dart';
import '../dialog/user_select_dialog.dart';
import '../page/channel/channels_page.dart';
import 'account_preview.dart';
import 'emoji_picker.dart';
import 'file_picker_sheet.dart';
import 'mention_widget.dart';
import 'note_sheet.dart';
import 'note_summary.dart';
import 'note_visibility_icon.dart';
import 'note_visibility_sheet.dart';
import 'poll_editor.dart';
import 'post_form_attaches.dart';
import 'reaction_acceptance_icon.dart';
import 'reaction_acceptance_widget.dart';
import 'user_avatar.dart';

class PostForm extends HookConsumerWidget {
  const PostForm({
    super.key,
    required this.account,
    this.noteId,
    this.controller,
    this.cwController,
    this.hashtagController,
    this.focusNode,
    this.cwFocusNode,
    this.hashtagFocusNode,
    this.onHide,
    this.onExpand,
    this.onAccountChanged,
    this.showPostButton = false,
    this.shouldPop = false,
    this.maxLines,
    this.thumbnailSize = 200.0,
  });

  final Account account;
  final String? noteId;
  final TextEditingController? controller;
  final TextEditingController? cwController;
  final TextEditingController? hashtagController;
  final FocusNode? focusNode;
  final FocusNode? cwFocusNode;
  final FocusNode? hashtagFocusNode;
  final void Function()? onHide;
  final void Function(Account account)? onExpand;
  final void Function(Account account)? onAccountChanged;
  final bool showPostButton;
  final bool shouldPop;
  final int? maxLines;
  final double thumbnailSize;

  static Future<Note?> post(
    WidgetRef ref,
    Account account,
    String? noteId,
  ) async {
    final attaches = ref.read(
      attachesNotifierProvider(account, noteId: noteId),
    );
    final hasFiles = attaches.isNotEmpty;
    final needsUpload = attaches.any((file) => file is LocalPostFile);
    final settings = ref.read(generalSettingsNotifierProvider);
    if (settings.confirmBeforePostingMediaWithoutComment) {
      final filesWithoutComment = attaches.indexed.where(
        (file) =>
            (file.$2.type?.startsWith(RegExp('(image|video|audio)/')) ??
                false) &&
            file.$2.comment == null,
      );
      if (filesWithoutComment.isNotEmpty) {
        for (final (index, file) in filesWithoutComment) {
          final result = await showDialog<(PostFile?,)>(
            context: ref.context,
            builder: (context) =>
                MissingFileCommentDialog(account: account, file: file),
          );
          if (!ref.context.mounted || result == null) {
            return null;
          }
          if (result.$1 case final file?) {
            ref
                .read(
                  attachesNotifierProvider(account, noteId: noteId).notifier,
                )
                .replace(index, file);
          }
        }
      }
    }
    final files = hasFiles
        ? await futureWithDialog(
            ref.context,
            ref
                .read(
                  attachesNotifierProvider(account, noteId: noteId).notifier,
                )
                .uploadAll(),
          )
        : null;
    if (hasFiles && files == null) {
      return null;
    }
    ref
        .read(postNotifierProvider(account, noteId: noteId).notifier)
        .setFiles(files);
    final draft = ref.read(postNotifierProvider(account, noteId: noteId));
    if (!ref.context.mounted) {
      return null;
    }
    if (needsUpload ||
        (ref.read(generalSettingsNotifierProvider).confirmBeforePost)) {
      final confirmed = await confirmPost(ref, account, draft);
      if (!confirmed || !ref.context.mounted) {
        return null;
      }
    }
    final result = await futureWithDialog(
      ref.context,
      ref.read(postNotifierProvider(account, noteId: noteId).notifier).post(),
    );
    if (result == null || !ref.context.mounted) {
      return null;
    }
    if (result.text case final text?) {
      final nodes = parse(text);
      final hashtags = nodes
          .extract((node) => node is MfmHashtag)
          .whereType<MfmHashtag>()
          .map((node) => node.hashtag);
      final history = ref
          .read(accountSettingsNotifierProvider(account))
          .hashtags;
      unawaited(
        ref
            .read(accountSettingsNotifierProvider(account).notifier)
            .setHashtags({...hashtags, ...history}.toList()),
      );
    }
    if (result.replyId case final replyId?) {
      ref.invalidate(childrenNotesNotifierProvider(account, replyId));
    }
    if (result.renoteId case final renoteId?) {
      ref.invalidate(childrenNotesNotifierProvider(account, renoteId));
    }
    ref.invalidate(attachesNotifierProvider(account, noteId: noteId));
    return result;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = useState(this.account);
    useEffect(() {
      account.value = this.account;
      return;
    }, [this.account]);
    final i = ref.watch(iNotifierProvider(account.value)).value;
    final draft = ref.watch(
      postNotifierProvider(account.value, noteId: noteId),
    );
    final attaches = ref.watch(
      attachesNotifierProvider(account.value, noteId: noteId),
    );
    final mentions = switch (draft.text) {
      final text? when text.isNotEmpty => ref.watch(
        parsedMfmProvider(text).select(extractMentions),
      ),
      _ => <MfmMention>[],
    };
    final normalizedMentions = useMemoized(() {
      final localHost = toUnicode(account.value.host.toLowerCase());
      return mentions.map((mention) => mention.normalize(localHost)).toSet();
    }, [mentions]);
    final replyMentions = switch (draft.reply?.text) {
      final text? when text.isNotEmpty => ref.watch(
        parsedMfmProvider(text).select(extractMentions),
      ),
      _ => <MfmMention>[],
    };
    final normalizedReplyMentions = useMemoized(() {
      final localHost = toUnicode(account.value.host.toLowerCase());
      return replyMentions
          .map((mention) => mention.normalize(localHost))
          .toSet();
    }, [replyMentions]);
    final hasMentionToRemote = useMemoized(
      () => normalizedMentions.any((mention) => mention.host != null),
      [normalizedMentions],
    );
    final extraMentions = useMemoized(() {
      final reply = draft.reply;
      if (reply == null) {
        return <MfmMention>[];
      }
      return normalizedMentions.where(
        (mention) =>
            (reply.user.username.toLowerCase() != mention.username ||
                switch (reply.user.host) {
                  final host? => toUnicode(host.toLowerCase()) != mention.host,
                  _ => mention.host != null,
                }) &&
            normalizedReplyMentions.every(
              (replyMention) =>
                  replyMention.username != mention.username ||
                  replyMention.host != mention.host,
            ),
      );
    }, [normalizedMentions, normalizedReplyMentions]);
    final visibleUsers = useState(<UserDetailed>[]);
    final notSpecifiedMentions = useMemoized(
      () => normalizedMentions.where(
        (mention) => visibleUsers.value.every(
          (user) =>
              user.username.toLowerCase() != mention.username ||
              switch (user.host) {
                final host? => toUnicode(host.toLowerCase()) != mention.host,
                _ => mention.host != null,
              },
        ),
      ),
      [normalizedMentions, visibleUsers],
    );
    final canChangeLocalOnly = noteId == null && draft.canChangeLocalOnly;
    final canChangeChannel = noteId == null && draft.canChangeChannel;
    final canPost = draft.canPost || attaches.isNotEmpty;
    final canScheduleNote = noteId == null && (i?.canScheduleNote ?? false);
    final enableSpellCheck = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableSpellCheck,
      ),
    );
    final useCw = useState(useMemoized(() => draft.cw?.isNotEmpty ?? false));
    final useHashtag = useState(
      useMemoized(() => draft.hashtag?.isNotEmpty ?? false),
    );
    final postFormHashtags = ref.watch(
      accountSettingsNotifierProvider(
        account.value,
      ).select((settings) => settings.postFormHashtags),
    );
    final cwController =
        this.cwController ?? useTextEditingController(text: draft.cw);
    final controller =
        this.controller ?? useTextEditingController(text: draft.text);
    final hashtagController =
        this.hashtagController ??
        useTextEditingController(
          text: draft.hashtag ?? postFormHashtags.join(' '),
        );
    final cwFocusNode = this.cwFocusNode ?? useFocusNode();
    final focusNode = this.focusNode ?? useFocusNode();
    final hashtagFocusNode = this.hashtagFocusNode ?? useFocusNode();
    ref.listen(
      postNotifierProvider(
        account.value,
        noteId: noteId,
      ).select((draft) => draft.cw),
      (_, cw) {
        final s = cw ?? '';
        if (s != cwController.text) {
          cwController.text = s;
        }
      },
    );
    ref.listen(
      postNotifierProvider(
        account.value,
        noteId: noteId,
      ).select((draft) => draft.text),
      (_, text) {
        final s = text ?? '';
        if (s != controller.text) {
          controller.text = s;
        }
      },
    );
    ref.listen(
      postNotifierProvider(
        account.value,
        noteId: noteId,
      ).select((draft) => draft.hashtag),
      (_, hashtag) {
        final s = hashtag ?? '';
        if (s != hashtagController.text) {
          hashtagController.text = s;
        }
      },
    );
    ref.listen(attachesNotifierProvider(account.value, noteId: noteId), (
      _,
      attaches,
    ) {
      ref
          .read(postNotifierProvider(account.value, noteId: noteId).notifier)
          .setFiles(
            attaches
                .map((file) => file is DrivePostFile ? file.file : null)
                .nonNulls,
          );
    });
    useEffect(() {
      final visibleUserIds = draft.visibleUserIds;
      if (visibleUserIds != null && visibleUserIds.isNotEmpty) {
        Future(() async {
          final users = await ref
              .read(misskeyProvider(account.value))
              .users
              .showByIds(UsersShowByIdsRequest(userIds: visibleUserIds));
          visibleUsers.value = users.toList();
        });
      } else {
        visibleUsers.value = [];
      }

      void cwControllerCallback() {
        ref
            .read(postNotifierProvider(account.value, noteId: noteId).notifier)
            .setCw(cwController.text);
      }

      void controllerCallback() {
        ref
            .read(postNotifierProvider(account.value, noteId: noteId).notifier)
            .setText(controller.text);
      }

      void hashtagControllerCallback() {
        ref
            .read(postNotifierProvider(account.value, noteId: noteId).notifier)
            .setHashtag(hashtagController.text);
      }

      cwController.text = draft.cw ?? '';
      controller.text = draft.text ?? '';
      hashtagController.text = draft.hashtag ?? '';

      cwController.addListener(cwControllerCallback);
      controller.addListener(controllerCallback);
      hashtagController.addListener(hashtagControllerCallback);

      return () {
        cwController.removeListener(cwControllerCallback);
        controller.removeListener(controllerCallback);
        hashtagController.removeListener(hashtagControllerCallback);
      };
    }, [account.value]);
    final placeholderPrefix = [
      switch (draft.visibility) {
        NoteVisibility.public => t.misskey.visibility_.public,
        NoteVisibility.home => t.misskey.visibility_.home,
        NoteVisibility.followers => t.misskey.visibility_.followers,
        NoteVisibility.specified => t.misskey.visibility_.specified,
        _ => '',
      },
      if (draft.localOnly ?? false) t.misskey.visibility_.disableFederation,
    ].join(', ');
    final placeholder =
        '[$placeholderPrefix] ${switch (draft) {
          NoteDraft(replyId: _?) => t.misskey.postForm_.replyPlaceholder,
          NoteDraft(renoteId: _?) => t.misskey.postForm_.quotePlaceholder,
          NoteDraft(channelId: _?) => t.misskey.postForm_.channelPlaceholder,
          _ => useMemoized(() => [t.misskey.postForm_.placeholders_.a, t.misskey.postForm_.placeholders_.b, t.misskey.postForm_.placeholders_.c, t.misskey.postForm_.placeholders_.d, t.misskey.postForm_.placeholders_.e, t.misskey.postForm_.placeholders_.f][Random().nextInt(6)], []),
        }}';

    return Shortcuts(
      shortcuts: {
        ...disablingTextShortcuts,
        submitActivator: VoidCallbackIntent(() async {
          if (canPost) {
            final result = await post(ref, account.value, noteId);
            if (!context.mounted) return;
            if (shouldPop && result != null) {
              context.pop();
            }
          }
        }),
      },
      child: IconButtonTheme(
        data: IconButtonThemeData(
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _PostFormHeader(
                account: account.value,
                noteId: noteId,
                post: (ref, account, noteId) async {
                  final result = await post(ref, account, noteId);
                  if (!ref.context.mounted) return;
                  if (shouldPop && result != null) {
                    context.pop();
                  }
                },
                onAccountChanged: (newAccount) {
                  final previousAttaches = attaches;
                  account.value = newAccount;
                  ref
                      .read(attachesNotifierProvider(newAccount).notifier)
                      .addAll(previousAttaches.whereType<LocalPostFile>());
                  onAccountChanged?.call(newAccount);
                },
                showPostButton: showPostButton,
                useCw: useCw,
              ),
            ),
            if (draft.replyId case final replyId?)
              InkWell(
                onTap: () => context.push('/${account.value}/notes/$replyId'),
                onLongPress: () => showNoteSheet(
                  context: context,
                  account: account.value,
                  noteId: replyId,
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.reply),
                    ),
                    if (draft.reply?.user case final user?) ...[
                      UserAvatar(
                        account: account.value,
                        user: user,
                        onTap: () =>
                            context.push('/${account.value}/users/${user.id}'),
                      ),
                      const SizedBox(width: 4.0),
                    ],
                    Expanded(
                      child: NoteSummary(
                        account: account.value,
                        noteId: replyId,
                      ),
                    ),
                    IconButton(
                      onPressed: noteId == null
                          ? () => ref
                                .read(
                                  postNotifierProvider(account.value).notifier,
                                )
                                .clearReply()
                          : null,
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            if (draft.renoteId case final renoteId?)
              InkWell(
                onTap: () => context.push('/${account.value}/notes/$renoteId'),
                onLongPress: () => showNoteSheet(
                  context: context,
                  account: account.value,
                  noteId: renoteId,
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.repeat_rounded),
                    ),
                    if (draft.renote?.user case final user?) ...[
                      UserAvatar(
                        account: account.value,
                        user: user,
                        onTap: () =>
                            context.push('/${account.value}/users/${user.id}'),
                      ),
                      const SizedBox(width: 4.0),
                    ],
                    Expanded(
                      child: NoteSummary(
                        account: account.value,
                        noteId: renoteId,
                      ),
                    ),
                    IconButton(
                      onPressed: noteId == null
                          ? () => ref
                                .read(
                                  postNotifierProvider(account.value).notifier,
                                )
                                .clearRenote()
                          : null,
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            if (draft.channelId case final channelId?)
              InkWell(
                onTap: () =>
                    context.push('/${account.value}/channels/$channelId'),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      start: BorderSide(
                        color: draft.channel?.toColor() ?? Colors.transparent,
                        width: 4,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.tv),
                      ),
                      if (draft.channel case final channel?)
                        Expanded(child: Text(channel.name))
                      else
                        const Spacer(),
                      IconButton(
                        onPressed: canChangeChannel
                            ? () => ref
                                  .read(
                                    postNotifierProvider(
                                      account.value,
                                    ).notifier,
                                  )
                                  .clearChannel()
                            : null,
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ),
            if (draft.scheduledAt case final scheduledAt?)
              InkWell(
                onTap: canScheduleNote
                    ? () async {
                        final now = DateTime.now();
                        final DateTime initialDate;
                        if (draft.scheduledAt case final scheduledAt?
                            when scheduledAt.isAfter(now)) {
                          initialDate = scheduledAt;
                        } else {
                          initialDate = DateTime(
                            now.year,
                            now.month,
                            now.day + 1,
                          );
                        }
                        final DateTime? lastDate;
                        if (i?.policies?.scheduleNoteMaxDays case final days?
                            when days >= 0) {
                          lastDate = now.add(Duration(days: days));
                        } else {
                          lastDate = null;
                        }
                        final date = await pickDateTime(
                          context,
                          initialDate: initialDate,
                          firstDate: now,
                          lastDate: lastDate,
                        );
                        if (!context.mounted) return;
                        if (date != null) {
                          ref
                              .read(
                                postNotifierProvider(
                                  account.value,
                                  noteId: noteId,
                                ).notifier,
                              )
                              .setScheduledAt(date);
                        }
                      }
                    : null,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.schedule),
                    ),
                    Expanded(
                      child: Text(
                        t.misskey.scheduleToPostOnX(
                          x:
                              '${absoluteTime(scheduledAt)} '
                              '(${relativeTime(scheduledAt)})',
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    IconButton(
                      onPressed: () => ref
                          .read(
                            postNotifierProvider(
                              account.value,
                              noteId: noteId,
                            ).notifier,
                          )
                          .clearScheduledAt(),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            if (draft.visibility == NoteVisibility.specified) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Wrap(
                  spacing: 4.0,
                  runSpacing: 4.0,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(t.misskey.recipient),
                    ...visibleUsers.value.map(
                      (user) => MentionWidget(
                        account: account.value,
                        username: user.username,
                        host: user.host ?? account.value.host,
                        onDeleted: noteId == null
                            ? () {
                                ref
                                    .read(
                                      postNotifierProvider(
                                        account.value,
                                      ).notifier,
                                    )
                                    .removeVisibleUser(user.id);
                                visibleUsers.value = visibleUsers.value
                                    .where((e) => e.id != user.id)
                                    .toList();
                              }
                            : null,
                      ),
                    ),
                    if (noteId == null)
                      IconButton(
                        onPressed: () async {
                          final user = await selectUser(context, account.value);
                          if (user != null &&
                              !(draft.visibleUserIds?.contains(user.id) ??
                                  false)) {
                            visibleUsers.value = [...visibleUsers.value, user];
                            ref
                                .read(
                                  postNotifierProvider(account.value).notifier,
                                )
                                .addVisibleUser(user);
                          }
                        },
                        icon: const Icon(Icons.add),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              if (notSpecifiedMentions.isNotEmpty) ...[
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(t.misskey.notSpecifiedMentionWarning),
                        ),
                        if (noteId == null)
                          TextButton(
                            onPressed: () async {
                              final mentions = notSpecifiedMentions
                                  .map(
                                    (mention) => (
                                      username: mention.username,
                                      host: mention.host,
                                    ),
                                  )
                                  .toSet();
                              final users = await futureWithDialog(
                                context,
                                Future.wait(
                                  mentions.map(
                                    (mention) => ref.read(
                                      userNotifierProvider(
                                        account.value,
                                        username: mention.username,
                                        host: mention.host,
                                      ).future,
                                    ),
                                  ),
                                ),
                              );
                              if (users != null) {
                                visibleUsers.value = [
                                  ...visibleUsers.value,
                                  ...users,
                                ];
                                ref
                                    .read(
                                      postNotifierProvider(
                                        account.value,
                                      ).notifier,
                                    )
                                    .addVisibleUsers(users);
                              }
                            },
                            child: Text(t.misskey.add),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
              ],
            ],
            if (hasMentionToRemote && (draft.localOnly ?? false)) ...[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text(t.aria.mentionToRemoteWarning)),
                      if (canChangeLocalOnly)
                        TextButton(
                          onPressed: noteId == null
                              ? () => ref
                                    .read(
                                      postNotifierProvider(
                                        account.value,
                                      ).notifier,
                                    )
                                    .setLocalOnly(false)
                              : null,
                          child: Text(t.aria.enableFederation),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
            ],
            if (extraMentions.isNotEmpty) ...[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text(t.aria.extraMentionsWarning)),
                      TextButton(
                        onPressed: () {
                          String text = draft.text ?? '';
                          for (final mention in extraMentions) {
                            text = text.replaceAllMapped(
                              RegExp('${mention.acct}(\$|[^\\w.-@])'),
                              (match) => match[1] ?? '',
                            );
                          }
                          controller.text = text;
                        },
                        child: Text(t.misskey.remove),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
            ],
            if (useCw.value) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: cwController,
                    focusNode: cwFocusNode,
                    decoration: InputDecoration(
                      hintText: t.misskey.annotation,
                      filled: false,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    maxLength: (draft.cw?.length ?? 0) > 80 ? 100 : null,
                    maxLengthEnforcement: MaxLengthEnforcement.none,
                    spellCheckConfiguration: enableSpellCheck
                        ? const SpellCheckConfiguration()
                        : null,
                  ),
                ),
              ),
              const Divider(height: 0.0),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: placeholder,
                  filled: false,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
                autofocus: true,
                minLines: 1,
                maxLines: maxLines,
                maxLength: (draft.text?.length ?? 0) > 2900 ? 3000 : null,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                contextMenuBuilder: (context, editableTextState) =>
                    AdaptiveTextSelectionToolbar.editable(
                      clipboardStatus: ClipboardStatus.pasteable,
                      onCopy: editableTextState.copyEnabled
                          ? () => editableTextState.copySelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onCut: editableTextState.cutEnabled
                          ? () => editableTextState.cutSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onPaste: editableTextState.pasteEnabled
                          ? () async {
                              final data = await Clipboard.getData(
                                Clipboard.kTextPlain,
                              );
                              if (data case ClipboardData(:final text?)) {
                                if (Uri.tryParse(text) case final url?
                                    when RegExp(
                                      r'^https?$',
                                    ).hasMatch(url.scheme)) {
                                  if (!controller.selection.isCollapsed) {
                                    controller.insert('[', ']()');
                                    controller.selection =
                                        TextSelection.collapsed(
                                          offset: controller.selection.end + 2,
                                        );
                                  }
                                }
                                await editableTextState.pasteText(
                                  SelectionChangedCause.toolbar,
                                );
                              }
                            }
                          : null,
                      onSelectAll: editableTextState.selectAllEnabled
                          ? () => editableTextState.selectAll(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onLookUp: editableTextState.lookUpEnabled
                          ? () => editableTextState.lookUpSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onSearchWeb: editableTextState.searchWebEnabled
                          ? () => editableTextState.searchWebForSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onShare: editableTextState.shareEnabled
                          ? () => editableTextState.shareSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onLiveTextInput: null,
                      anchors: editableTextState.contextMenuAnchors,
                    ),
                spellCheckConfiguration: enableSpellCheck
                    ? const SpellCheckConfiguration()
                    : null,
              ),
            ),
            if (useHashtag.value) ...[
              const Divider(height: 0.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: hashtagController,
                    focusNode: hashtagFocusNode,
                    decoration: InputDecoration(
                      hintText: t.misskey.hashtags,
                      filled: false,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _PostFormFooter(
                account: account.value,
                noteId: noteId,
                cwController: cwController,
                controller: controller,
                hashtagController: hashtagController,
                cwFocusNode: cwFocusNode,
                hashtagFocusNode: hashtagFocusNode,
                onHide: onHide,
                onExpand: onExpand,
                useCw: useCw,
                useHashtag: useHashtag,
              ),
            ),
            if (attaches.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    '${attaches.length}/16',
                    style: TextStyle(
                      color: attaches.length > 16
                          ? Theme.of(context).colorScheme.error
                          : null,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PostFormAttaches(
                  account: account.value,
                  noteId: noteId,
                  maxCrossAxisExtent: thumbnailSize,
                ),
              ),
              const SizedBox(height: 8.0),
            ],
            if (draft.poll != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PollEditor(account: account.value, noteId: noteId),
              ),
              const SizedBox(height: 8.0),
            ],
          ],
        ),
      ),
    );
  }
}

class _PostFormHeader extends HookConsumerWidget {
  const _PostFormHeader({
    required this.account,
    required this.noteId,
    required this.post,
    required this.onAccountChanged,
    required this.showPostButton,
    required this.useCw,
  });

  final Account account;
  final String? noteId;
  final void Function(WidgetRef ref, Account account, String? noteId) post;
  final void Function(Account account) onAccountChanged;
  final bool showPostButton;
  final ValueNotifier<bool> useCw;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(postNotifierProvider(account, noteId: noteId));
    final attaches = ref.watch(
      attachesNotifierProvider(account, noteId: noteId),
    );
    final i = ref.watch(iNotifierProvider(account)).value;
    final accounts = ref.watch(accountsNotifierProvider);
    final canChangeLocalOnly = noteId == null && draft.canChangeLocalOnly;
    final canChangeVisibility = noteId == null && draft.canChangeVisibility;
    final canPost = draft.canPost || attaches.isNotEmpty;
    final canScheduleNote = noteId == null && (i?.canScheduleNote ?? false);
    final needsUpload = attaches.any((file) => file is LocalPostFile);
    final (buttonText, buttonIcon) = switch (draft) {
      _ when needsUpload => (t.misskey.upload, Icons.upload),
      _ when noteId != null => (t.misskey.edit, Icons.edit),
      NoteDraft(scheduledAt: _?) when canScheduleNote => (
        t.misskey.schedule,
        Icons.send,
      ),
      NoteDraft(isRenote: true) when attaches.isEmpty => (
        t.misskey.renote,
        Icons.repeat_rounded,
      ),
      NoteDraft(replyId: _?) => (t.misskey.reply, Icons.reply),
      NoteDraft(renoteId: _?) => (t.misskey.quote, Icons.send),
      _ => (t.misskey.note, Icons.send),
    };
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Row(
      children: [
        if (noteId != null || accounts.length <= 1)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: i != null
                ? UserAvatar(account: account, user: i, size: 32.0)
                : const Icon(Icons.person, size: 32.0),
          )
        else
          _AccountSwitchButton(
            account: account,
            onAccountChanged: onAccountChanged,
          ),
        const Spacer(),
        IconButton(
          onPressed: canChangeVisibility
              ? () async {
                  final candidates = NoteVisibility.values.where(
                    (visibility) =>
                        (visibility != NoteVisibility.public ||
                            i == null ||
                            !i.isSilenced) &&
                        visibility.priority >=
                            NoteVisibility.min(
                              draft.reply?.visibility ?? NoteVisibility.public,
                              draft.renote?.visibility ?? NoteVisibility.public,
                            ).priority,
                  );
                  final result = await showModalBottomSheet<NoteVisibility>(
                    context: context,
                    builder: (context) =>
                        NoteVisibilitySheet(visibilities: candidates),
                  );
                  if (result != null) {
                    ref
                        .read(postNotifierProvider(account).notifier)
                        .setVisibility(result);
                  }
                }
              : null,
          icon: NoteVisibilityIcon(visibility: draft.visibility),
        ),
        IconButton(
          tooltip: draft.localOnly ?? false
              ? t.misskey.visibility_.disableFederation
              : null,
          onPressed: canChangeLocalOnly
              ? () => ref
                    .read(postNotifierProvider(account).notifier)
                    .setLocalOnly(!(draft.localOnly ?? false))
              : null,
          color: draft.localOnly ?? false
              ? Theme.of(context).colorScheme.error
              : null,
          disabledColor: draft.localOnly ?? false
              ? Theme.of(context).colorScheme.error.withValues(alpha: 0.5)
              : null,
          icon: draft.localOnly ?? false
              ? const Icon(OffIcons.rocket_outlined)
              : const Icon(Icons.rocket),
        ),
        PopupMenuButton<void>(
          itemBuilder: (context) => [
            PopupMenuItem(
              onTap: noteId == null
                  ? () async {
                      final result =
                          await showModalBottomSheet<(ReactionAcceptance?,)>(
                            context: context,
                            builder: (context) => ListView(
                              shrinkWrap: true,
                              children: [
                                ListTile(
                                  title: Text(t.misskey.reactionAcceptance),
                                ),
                                const Divider(height: 0.0),
                                ...[null, ...ReactionAcceptance.values].map(
                                  (acceptance) => ListTile(
                                    leading: ReactionAcceptanceIcon(
                                      acceptance: acceptance,
                                    ),
                                    title: ReactionAcceptanceWidget(
                                      acceptance: acceptance,
                                    ),
                                    onTap: () => context.pop((acceptance,)),
                                  ),
                                ),
                              ],
                            ),
                          );
                      if (result != null) {
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setReactionAcceptance(result.$1);
                      }
                    }
                  : null,
              child: ListTile(
                leading: ReactionAcceptanceIcon(
                  acceptance: draft.reactionAcceptance,
                ),
                title: Text(t.misskey.reactionAcceptance),
              ),
            ),
            PopupMenuItem(
              onTap: () {
                final text = draft.text;
                ref
                    .read(
                      postNotifierProvider(account, noteId: noteId).notifier,
                    )
                    .setText(draft.cw);
                ref
                    .read(
                      postNotifierProvider(account, noteId: noteId).notifier,
                    )
                    .setCw(text?.replaceAll('\n', ' '));
                useCw.value = true;
              },
              enabled: draft.text != null || draft.cw != null,
              child: ListTile(
                leading: const Icon(Icons.swap_vert),
                title: Text(t.aria.swapCw),
              ),
            ),
            PopupMenuItem(
              onTap: () => showDialog<void>(
                context: context,
                builder: (context) => NoteDraftsDialog(account: account),
              ),
              child: ListTile(
                leading: const Icon(Icons.notes),
                title: Text(t.misskey.drafts_.listDrafts),
              ),
            ),
            if (canScheduleNote)
              PopupMenuItem(
                onTap: () => showDialog<void>(
                  context: context,
                  builder: (context) => ScheduledNotesDialog(account: account),
                ),
                child: ListTile(
                  leading: const Icon(Icons.schedule),
                  title: Text(t.misskey.drafts_.listScheduledNotes),
                ),
              ),
            PopupMenuItem(
              onTap: () async {
                final confirmed = await confirm(
                  context,
                  message: t.misskey.resetAreYouSure,
                );
                if (!context.mounted) return;
                if (confirmed) {
                  await ref
                      .read(
                        postNotifierProvider(account, noteId: noteId).notifier,
                      )
                      .reset();
                  ref
                      .read(
                        attachesNotifierProvider(
                          account,
                          noteId: noteId,
                        ).notifier,
                      )
                      .removeAll();
                }
              },
              child: ListTile(
                leading: const Icon(Icons.delete),
                title: Text(t.aria.reset),
                iconColor: colors.error,
                textColor: colors.error,
              ),
            ),
          ],
          icon: const Icon(Icons.more_horiz),
        ),
        if (showPostButton) ...[
          const SizedBox(width: 4.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              foregroundColor: colors.fgOnAccent,
              disabledForegroundColor: colors.fgOnAccent.withValues(alpha: 0.5),
              backgroundColor: Colors.transparent,
              iconColor: colors.fgOnAccent,
              disabledIconColor: colors.fgOnAccent.withValues(alpha: 0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: canPost ? () => post(ref, account, noteId) : null,
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colors.buttonGradateA.withValues(
                      alpha: canPost ? 1.0 : 0.5,
                    ),
                    colors.buttonGradateB.withValues(
                      alpha: canPost ? 1.0 : 0.5,
                    ),
                  ],
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Row(
                  children: [
                    Text(buttonText),
                    const SizedBox(width: 4.0),
                    Icon(buttonIcon),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _AccountSwitchButton extends HookConsumerWidget {
  const _AccountSwitchButton({
    required this.account,
    required this.onAccountChanged,
  });

  final Account account;
  final void Function(Account account) onAccountChanged;

  Future<Account?> _switchAccount(WidgetRef ref, Account? origin) async {
    final accounts = ref.read(accountsNotifierProvider);
    final destination = await showModalBottomSheet<Account>(
      context: ref.context,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) => AccountPreview(
          account: accounts[index],
          trailing: const Icon(Icons.navigate_next),
          avatarSize: 40.0,
          onTap: () => context.pop(accounts[index]),
        ),
        separatorBuilder: (_, _) => const Divider(height: 0.0),
        itemCount: accounts.length,
      ),
      clipBehavior: Clip.hardEdge,
    );
    if (destination == null || destination == origin) {
      return null;
    }
    return destination;
  }

  Future<void> _transferDraft(
    WidgetRef ref,
    Account origin,
    Account destination,
  ) async {
    final draft = ref.read(postNotifierProvider(origin));
    await ref
        .read(postNotifierProvider(destination).notifier)
        .fromDraft(draft, origin);
    unawaited(ref.read(postNotifierProvider(origin).notifier).reset());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);
    final enableHapticFeedback = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableHapticFeedback,
      ),
    );
    final accountIndex = useState(max(0, accounts.indexOf(this.account)));
    final account = accounts.elementAtOrNull(accountIndex.value);
    final i = account != null
        ? ref.watch(iNotifierProvider(account)).value
        : null;
    final dragAmount = useState(0.0);
    final armed = useState(false);
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 100),
      initialValue: 1.0,
    );
    const threshold = 20.0;

    return ClipRect(
      child: GestureDetector(
        onVerticalDragStart: (_) {
          armed.value = false;
          dragAmount.value = 0.0;
        },
        onVerticalDragUpdate: (details) {
          dragAmount.value += details.delta.dy;
          final previouslyArmed = armed.value;
          armed.value = dragAmount.value.abs() > threshold;
          if (!previouslyArmed && armed.value && enableHapticFeedback) {
            HapticFeedback.lightImpact();
          }
        },
        onVerticalDragCancel: () {
          if (!animationController.isAnimating) {
            armed.value = false;
            dragAmount.value = 0.0;
          }
        },
        onVerticalDragEnd: (_) async {
          final originIndex = accountIndex.value;
          if (dragAmount.value > threshold) {
            accountIndex.value = (originIndex + 1) % accounts.length;
          } else if (dragAmount.value < -threshold) {
            accountIndex.value = (originIndex - 1) % accounts.length;
          } else {
            dragAmount.value = 0.0;
            return;
          }
          dragAmount.value = 0.0;
          await animationController.forward(from: 0.0);
          final origin = accounts.elementAtOrNull(originIndex);
          final destination = accounts.elementAtOrNull(accountIndex.value);
          if (destination != null) {
            if (origin != null) {
              await _transferDraft(ref, origin, destination);
            }
            onAccountChanged(destination);
          }
        },
        child: Transform.translate(
          offset: Offset(0.0, dragAmount.value),
          child: ScaleTransition(
            scale: CurveTween(curve: Curves.ease).animate(animationController),
            child: Opacity(
              opacity: Curves.ease.transform(
                1.0 - clampDouble(dragAmount.value.abs() / threshold, 0.0, 1.0),
              ),
              child: IconButton(
                tooltip: t.misskey.switchAccount,
                onPressed: () async {
                  final destination = await _switchAccount(ref, account);
                  if (destination != null) {
                    accountIndex.value = accounts.indexOf(destination);
                    if (account != null) {
                      await _transferDraft(ref, account, destination);
                    }
                    onAccountChanged(destination);
                  }
                },
                icon: account != null && i != null
                    ? UserAvatar(account: account, user: i, size: 32.0)
                    : const Icon(Icons.person, size: 32.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PostFormFooter extends HookConsumerWidget {
  const _PostFormFooter({
    required this.account,
    required this.noteId,
    required this.cwController,
    required this.controller,
    required this.hashtagController,
    required this.cwFocusNode,
    required this.hashtagFocusNode,
    required this.onHide,
    required this.onExpand,
    required this.useCw,
    required this.useHashtag,
  });

  final Account account;
  final String? noteId;
  final TextEditingController cwController;
  final TextEditingController controller;
  final TextEditingController hashtagController;
  final FocusNode cwFocusNode;
  final FocusNode hashtagFocusNode;
  final void Function()? onHide;
  final void Function(Account account)? onExpand;
  final ValueNotifier<bool> useCw;
  final ValueNotifier<bool> useHashtag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(postNotifierProvider(account, noteId: noteId));
    final i = ref.watch(iNotifierProvider(account)).value;
    final canChangeChannel = noteId == null && draft.canChangeChannel;
    final canScheduleNote = noteId == null && (i?.canScheduleNote ?? false);
    final hasExtentBefore = useState(false);
    final hasExtentAfter = useState(false);
    final scrollController = useScrollController();
    useEffect(() {
      scrollController.addListener(() {
        hasExtentBefore.value = scrollController.position.extentBefore > 8.0;
        hasExtentAfter.value = scrollController.position.extentAfter > 8.0;
      });
      return;
    }, []);

    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              NotificationListener<ScrollMetricsNotification>(
                onNotification: (notification) {
                  hasExtentBefore.value =
                      notification.metrics.extentBefore > 8.0;
                  hasExtentAfter.value = notification.metrics.extentAfter > 8.0;
                  return false;
                },
                child: SingleChildScrollView(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton(
                        tooltip: t.misskey.attachFile,
                        onPressed: () async {
                          final files =
                              await showModalBottomSheet<List<PostFile>>(
                                context: context,
                                builder: (context) => FilePickerSheet(
                                  account: account,
                                  allowMultiple: true,
                                ),
                                clipBehavior: Clip.hardEdge,
                              );
                          if (files != null) {
                            ref
                                .read(
                                  attachesNotifierProvider(
                                    account,
                                    noteId: noteId,
                                  ).notifier,
                                )
                                .addAll(files);
                          }
                        },
                        icon: const Icon(Icons.add_photo_alternate),
                      ),
                      IconButton(
                        tooltip: t.misskey.poll,
                        onPressed: () => ref
                            .read(
                              postNotifierProvider(
                                account,
                                noteId: noteId,
                              ).notifier,
                            )
                            .togglePoll(),
                        icon: Icon(
                          Icons.bar_chart,
                          color: draft.poll != null
                              ? Theme.of(context).colorScheme.primary
                              : null,
                        ),
                      ),
                      IconButton(
                        tooltip: t.misskey.useCw,
                        onPressed: () {
                          if (useCw.value) {
                            ref
                                .read(
                                  postNotifierProvider(
                                    account,
                                    noteId: noteId,
                                  ).notifier,
                                )
                                .setCw(null);
                            useCw.value = false;
                          } else {
                            ref
                                .read(
                                  postNotifierProvider(
                                    account,
                                    noteId: noteId,
                                  ).notifier,
                                )
                                .setCw(cwController.text);
                            useCw.value = true;
                            cwFocusNode.requestFocus();
                          }
                        },
                        icon: Icon(
                          Icons.visibility_off,
                          color: useCw.value
                              ? Theme.of(context).colorScheme.primary
                              : null,
                        ),
                      ),
                      IconButton(
                        tooltip: t.misskey.mention,
                        onPressed: () async {
                          final user = await selectUser(
                            context,
                            account,
                            localOnly: draft.localOnly ?? false,
                          );
                          if (user != null) {
                            controller.insert(user.acct);
                          }
                        },
                        icon: const Icon(Icons.alternate_email),
                      ),
                      IconButton(
                        tooltip: t.misskey.hashtags,
                        onPressed: () {
                          if (useHashtag.value) {
                            ref
                                .read(
                                  accountSettingsNotifierProvider(
                                    account,
                                  ).notifier,
                                )
                                .setPostFormHashtags(
                                  hashtagController.text
                                      .split(RegExp(r'\s'))
                                      .map((tag) => tag.trim())
                                      .map(
                                        (tag) => tag.startsWith('#')
                                            ? tag.substring(1)
                                            : tag,
                                      )
                                      .where((tag) => tag.isNotEmpty)
                                      .toList(),
                                );
                            ref
                                .read(
                                  postNotifierProvider(
                                    account,
                                    noteId: noteId,
                                  ).notifier,
                                )
                                .setHashtag(null);
                            useHashtag.value = false;
                          } else {
                            ref
                                .read(
                                  postNotifierProvider(
                                    account,
                                    noteId: noteId,
                                  ).notifier,
                                )
                                .setHashtag(
                                  ref
                                      .read(
                                        accountSettingsNotifierProvider(
                                          account,
                                        ),
                                      )
                                      .postFormHashtags
                                      .join(' '),
                                );
                            useHashtag.value = true;
                            hashtagFocusNode.requestFocus();
                          }
                        },
                        icon: Icon(
                          Icons.tag,
                          color: useHashtag.value
                              ? Theme.of(context).colorScheme.primary
                              : null,
                        ),
                      ),
                      IconButton(
                        tooltip: t.misskey.emoji,
                        onPressed: () => pickEmoji(
                          ref,
                          account,
                          post: true,
                          onTapEmoji: (emoji) =>
                              controller.insert(emoji.replaceFirst('@.', '')),
                        ),
                        icon: const Icon(Icons.mood),
                      ),
                      IconButton(
                        tooltip: t.misskey.channel,
                        onPressed: canChangeChannel
                            ? () async {
                                final result =
                                    await showDialog<CommunityChannel>(
                                      context: context,
                                      builder: (context) => ChannelsPage(
                                        account: account,
                                        onChannelTap: (channel) =>
                                            context.pop(channel),
                                        initialIndex: 2,
                                      ),
                                    );
                                if (!context.mounted) return;
                                if (result != null) {
                                  await ref
                                      .read(
                                        postNotifierProvider(account).notifier,
                                      )
                                      .setChannel(result.toNoteChannelInfo());
                                }
                              }
                            : null,
                        icon: const Icon(Icons.tv),
                      ),
                      if (canScheduleNote)
                        IconButton(
                          tooltip: t.misskey.schedulePost,
                          onPressed: () async {
                            final now = DateTime.now();
                            final DateTime initialDate;
                            if (draft.scheduledAt case final scheduledAt?
                                when scheduledAt.isAfter(now)) {
                              initialDate = scheduledAt;
                            } else {
                              initialDate = DateTime(
                                now.year,
                                now.month,
                                now.day + 1,
                              );
                            }
                            final DateTime? lastDate;
                            if (i?.policies?.scheduleNoteMaxDays
                                case final days? when days >= 0) {
                              lastDate = now.add(Duration(days: days));
                            } else {
                              lastDate = null;
                            }
                            final date = await pickDateTime(
                              context,
                              initialDate: initialDate,
                              firstDate: now,
                              lastDate: lastDate,
                            );
                            if (!context.mounted) return;
                            if (date != null) {
                              ref
                                  .read(
                                    postNotifierProvider(
                                      account,
                                      noteId: noteId,
                                    ).notifier,
                                  )
                                  .setScheduledAt(date);
                            }
                          },
                          icon: const Icon(Icons.schedule),
                        ),
                    ],
                  ),
                ),
              ),
              if (hasExtentBefore.value)
                Positioned.fill(
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.surface,
                            blurRadius: 16.0,
                            spreadRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (hasExtentAfter.value)
                Positioned.fill(
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.surface,
                            blurRadius: 16.0,
                            spreadRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (onHide case final onHide?)
          IconButton(
            tooltip: t.misskey.hide,
            onPressed: onHide,
            icon: const Icon(Icons.keyboard_hide),
          ),
        if (onExpand case final onExpand?)
          IconButton(
            onPressed: () => onExpand(account),
            icon: const Icon(Icons.open_in_full),
          ),
      ],
    );
  }
}
