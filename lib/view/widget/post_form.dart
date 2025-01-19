import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
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
import '../../extension/notes_create_request_extension.dart';
import '../../extension/text_editing_controller_extension.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/post_form_hashtags_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../provider/timeline_tab_settings_provider.dart';
import '../../util/extract_mentions.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/post_confirmation_dialog.dart';
import '../dialog/user_select_dialog.dart';
import '../page/channel/channels_page.dart';
import 'account_preview.dart';
import 'emoji_picker.dart';
import 'file_picker_sheet.dart';
import 'mention_widget.dart';
import 'mfm_keyboard.dart';
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
    this.hashtagsController,
    this.focusNode,
    this.cwFocusNode,
    this.hashtagsFocusNode,
    this.onHide,
    this.onExpand,
    this.onAccountChanged,
    this.showPostButton = false,
    this.showKeyboard = false,
    this.maxLines,
    this.thumbnailSize = 200.0,
  });

  final Account account;
  final String? noteId;
  final TextEditingController? controller;
  final TextEditingController? cwController;
  final TextEditingController? hashtagsController;
  final FocusNode? focusNode;
  final FocusNode? cwFocusNode;
  final FocusNode? hashtagsFocusNode;
  final void Function()? onHide;
  final void Function(Account account)? onExpand;
  final void Function(Account account)? onAccountChanged;
  final bool showPostButton;
  final bool showKeyboard;
  final int? maxLines;
  final double thumbnailSize;

  Future<void> _post(
    WidgetRef ref,
    Account account,
  ) async {
    final request = ref.read(postNotifierProvider(account, noteId: noteId));
    final hashtags =
        ref.read(accountSettingsNotifierProvider(account)).postFormUseHashtags
            ? ref.read(postFormHashtagsNotifierProvider(account))
            : null;
    final attaches =
        ref.read(attachesNotifierProvider(account, noteId: noteId));
    final hasFiles = attaches.isNotEmpty;
    final needsUpload = attaches.any((file) => file is LocalPostFile);
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
    if (hasFiles && files == null) return;
    if (!ref.context.mounted) return;
    if (needsUpload ||
        (ref.read(generalSettingsNotifierProvider).confirmBeforePost)) {
      final confirmed = await confirmPost(
        ref,
        account,
        request.addHashtags(hashtags),
        files: files,
      );
      if (!confirmed) return;
      if (!ref.context.mounted) return;
    }
    final result = await futureWithDialog(
      ref.context,
      ref.read(postNotifierProvider(account, noteId: noteId).notifier).post(
            fileIds: files?.map((file) => file.id).toList(),
            hashtags: hashtags,
          ),
    );
    if (!ref.context.mounted) return;
    if (result case final note?) {
      if (note.text case final text?) {
        final nodes = parse(text);
        final hashtags = nodes
            .extract((node) => node is MfmHashtag)
            .whereType<MfmHashtag>()
            .map((node) => node.hashtag);
        final history =
            ref.read(accountSettingsNotifierProvider(account)).hashtags;
        unawaited(
          ref
              .read(accountSettingsNotifierProvider(account).notifier)
              .setHashtags({...hashtags, ...history}.toList()),
        );
      }
      if (ref.read(timelineTabSettingsProvider)?.channelId
          case final channelId?) {
        ref
            .read(postNotifierProvider(account, noteId: noteId).notifier)
            .setChannel(channelId);
      }
      unawaited(
        ref.read(postFormHashtagsNotifierProvider(account).notifier).save(),
      );
      ref.invalidate(attachesNotifierProvider(account, noteId: noteId));
      ref.context.pop();
    }
  }

  Future<Account?> _switchAccount(WidgetRef ref, Account origin) async {
    final accounts = ref.read(accountsNotifierProvider);
    final destination = await showModalBottomSheet<Account>(
      context: ref.context,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) {
          final account = accounts[index];
          return AccountPreview(
            account: account,
            trailing: const Icon(Icons.navigate_next),
            avatarSize: 40.0,
            onTap: () => context.pop(accounts[index]),
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 0.0),
        itemCount: accounts.length,
      ),
      clipBehavior: Clip.hardEdge,
    );
    if (destination == null || destination == origin) {
      return null;
    }
    final request = ref.read(postNotifierProvider(origin));
    try {
      await ref
          .read(postNotifierProvider(destination).notifier)
          .fromRequest(request, origin);
      ref.read(postNotifierProvider(origin).notifier).reset();
    } catch (_) {}
    return destination;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = useState(this.account);
    useEffect(
      () {
        account.value = this.account;
        return;
      },
      [this.account],
    );
    final i = ref.watch(iNotifierProvider(account.value)).valueOrNull;
    final request =
        ref.watch(postNotifierProvider(account.value, noteId: noteId));
    final attaches =
        ref.watch(attachesNotifierProvider(account.value, noteId: noteId));
    final reply = request.replyId != null
        ? ref.watch(noteProvider(account.value, request.replyId!))
        : null;
    final renote = request.renoteId != null
        ? ref.watch(noteProvider(account.value, request.renoteId!))
        : null;
    final channel = request.channelId != null
        ? ref
            .watch(channelNotifierProvider(account.value, request.channelId!))
            .valueOrNull
        : null;
    final mentions = useMemoized(
      () => extractMentions(parse(request.text ?? '')),
      [request.text],
    );
    final replyMentions = useMemoized(
      () => extractMentions(parse(reply?.text ?? '')),
      [reply],
    );
    final hasMentionToRemote = useMemoized(
      () => mentions.any((mention) => mention.host != null),
      [mentions],
    );
    final extraMentions = useMemoized(
      () => reply != null
          ? mentions.where(
              (mention) =>
                  reply.user.acct != mention.acct &&
                  replyMentions.every(
                    (replyMention) => replyMention.acct != mention.acct,
                  ),
            )
          : <MfmMention>[],
      [mentions, reply, replyMentions],
    );
    final visibleUsers = useState(<UserDetailed>[]);
    final notSpecifiedMentions = useMemoized(
      () => mentions.where(
        (mention) => !visibleUsers.value.any(
          (user) =>
              user.username == mention.username && user.host == mention.host,
        ),
      ),
      [mentions, visibleUsers],
    );
    final canChangeLocalOnly = noteId == null &&
        request.channelId == null &&
        request.visibility != NoteVisibility.specified &&
        !(reply?.localOnly ?? false) &&
        !(renote?.localOnly ?? false);
    final canChangeVisibility = noteId == null &&
        request.channelId == null &&
        reply?.visibility != NoteVisibility.specified;
    final canChangeChannel = noteId == null &&
        (renote?.channel?.allowRenoteToExternal ?? true) &&
        reply?.channel == null;
    final canPost = request.canPost || attaches.isNotEmpty;
    final needsUpload = attaches.any((file) => file is LocalPostFile);
    final (buttonText, buttonIcon) = switch (request) {
      _ when needsUpload => (t.misskey.upload, Icons.upload),
      _ when noteId != null => (t.misskey.edit, Icons.edit),
      _ when request.isRenote => (t.misskey.renote, Icons.repeat_rounded),
      _ when request.replyId != null => (t.misskey.reply, Icons.reply),
      _ when request.renoteId != null => (t.misskey.quote, Icons.send),
      _ => (t.misskey.note, Icons.send),
    };
    final enableSpellCheck = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.enableSpellCheck),
    );
    final useCw =
        useState(useMemoized(() => request.cw?.isNotEmpty ?? false, []));
    final useHashtags = ref.watch(
      accountSettingsNotifierProvider(account.value)
          .select((settings) => settings.postFormUseHashtags),
    );
    final cwController =
        this.cwController ?? useTextEditingController(text: request.cw);
    final controller =
        this.controller ?? useTextEditingController(text: request.text);
    final hashtagsController = this.hashtagsController ??
        useTextEditingController(
          text: ref
              .watch(
                accountSettingsNotifierProvider(account.value)
                    .select((settings) => settings.postFormHashtags),
              )
              .join(' '),
        );
    final cwFocusNode = this.cwFocusNode ?? useFocusNode();
    final focusNode = this.focusNode ?? useFocusNode();
    final hashtagsFocusNode = this.hashtagsFocusNode ?? useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
    final isHashtagsFocused = useState(false);
    ref.listen(
      postNotifierProvider(account.value, noteId: noteId)
          .select((request) => request.cw),
      (_, cw) {
        final s = cw ?? '';
        if (s != cwController.text) {
          cwController.text = s;
        }
      },
    );
    ref.listen(
      postNotifierProvider(account.value, noteId: noteId)
          .select((request) => request.text),
      (_, text) {
        final s = text ?? '';
        if (s != controller.text) {
          controller.text = s;
        }
      },
    );
    ref.listen(postFormHashtagsNotifierProvider(account.value), (_, hashtags) {
      if (!hashtags.equals(
        hashtagsController.text
            .split(RegExp(r'\s'))
            .map((tag) => tag.trim())
            .map((tag) => tag.startsWith('#') ? tag.substring(1) : tag)
            .where((tag) => tag.isNotEmpty)
            .toList(),
      )) {
        hashtagsController.text = hashtags.join(' ');
      }
    });
    useEffect(
      () {
        final visibleUserIds = request.visibleUserIds;
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
              .read(
                postNotifierProvider(account.value, noteId: noteId).notifier,
              )
              .setCw(cwController.text);
        }

        void controllerCallback() {
          ref
              .read(
                postNotifierProvider(account.value, noteId: noteId).notifier,
              )
              .setText(controller.text);
        }

        void hashtagsControllerCallback() {
          ref
              .read(postFormHashtagsNotifierProvider(account.value).notifier)
              .updateFromString(hashtagsController.text);
        }

        void cwFocusNodeCallback() {
          isCwFocused.value = cwFocusNode.hasFocus;
        }

        void focusNodeCallback() {
          isFocused.value = focusNode.hasFocus;
        }

        void hashtagsFocusNodeCallback() {
          isHashtagsFocused.value = hashtagsFocusNode.hasFocus;
        }

        cwController.addListener(cwControllerCallback);
        controller.addListener(controllerCallback);
        hashtagsController.addListener(hashtagsControllerCallback);
        cwFocusNode.addListener(cwFocusNodeCallback);
        focusNode.addListener(focusNodeCallback);
        hashtagsFocusNode.addListener(hashtagsFocusNodeCallback);

        return () {
          cwController.removeListener(cwControllerCallback);
          controller.removeListener(controllerCallback);
          hashtagsController.removeListener(hashtagsControllerCallback);
          cwFocusNode.removeListener(cwFocusNodeCallback);
          focusNode.removeListener(focusNodeCallback);
          hashtagsFocusNode.removeListener(hashtagsFocusNodeCallback);
        };
      },
      [account.value],
    );
    final placeholderPrefix = [
      switch (request.visibility) {
        NoteVisibility.public => t.misskey.visibility_.public,
        NoteVisibility.home => t.misskey.visibility_.home,
        NoteVisibility.followers => t.misskey.visibility_.followers,
        NoteVisibility.specified => t.misskey.visibility_.specified,
        _ => '',
      },
      if (request.localOnly ?? false) t.misskey.visibility_.disableFederation,
    ].join(', ');
    final placeholder = '[$placeholderPrefix] ${switch (request) {
      NotesCreateRequest(replyId: _?) => t.misskey.postForm_.replyPlaceholder,
      NotesCreateRequest(renoteId: _?) => t.misskey.postForm_.quotePlaceholder,
      NotesCreateRequest(channelId: _?) =>
        t.misskey.postForm_.channelPlaceholder,
      _ => useMemoized(
          () => [
            t.misskey.postForm_.placeholders_.a,
            t.misskey.postForm_.placeholders_.b,
            t.misskey.postForm_.placeholders_.c,
            t.misskey.postForm_.placeholders_.d,
            t.misskey.postForm_.placeholders_.e,
            t.misskey.postForm_.placeholders_.f,
          ][Random().nextInt(6)],
          [],
        )
    }}';
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Shortcuts(
      shortcuts: {
        ...disablingTextShortcuts,
        submitActivator: VoidCallbackIntent(() {
          if (canPost) {
            _post(ref, account.value);
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
              child: Row(
                children: [
                  IconButton(
                    tooltip: t.misskey.switchAccount,
                    onPressed: noteId == null
                        ? () async {
                            final destination =
                                await _switchAccount(ref, account.value);
                            if (destination != null) {
                              account.value = destination;
                              onAccountChanged?.call(destination);
                            }
                          }
                        : null,
                    icon: i != null
                        ? UserAvatar(
                            account: account.value,
                            user: i,
                            size: 32.0,
                          )
                        : const Icon(Icons.person),
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
                                  (visibility.priority >=
                                      NoteVisibility.min(
                                        reply?.visibility ??
                                            NoteVisibility.public,
                                        renote?.visibility ??
                                            NoteVisibility.public,
                                      ).priority),
                            );
                            final result =
                                await showModalBottomSheet<NoteVisibility>(
                              context: context,
                              builder: (context) => NoteVisibilitySheet(
                                visibilities: candidates,
                              ),
                            );
                            if (result != null) {
                              ref
                                  .read(
                                    postNotifierProvider(account.value)
                                        .notifier,
                                  )
                                  .setVisibility(result);
                            }
                          }
                        : null,
                    icon: NoteVisibilityIcon(visibility: request.visibility),
                  ),
                  IconButton(
                    tooltip: request.localOnly ?? false
                        ? t.misskey.visibility_.disableFederation
                        : null,
                    onPressed: canChangeLocalOnly
                        ? () => ref
                            .read(postNotifierProvider(account.value).notifier)
                            .setLocalOnly(!(request.localOnly ?? false))
                        : null,
                    color: request.localOnly ?? false
                        ? Theme.of(context).colorScheme.error
                        : null,
                    disabledColor: request.localOnly ?? false
                        ? Theme.of(context)
                            .colorScheme
                            .error
                            .withValues(alpha: 0.5)
                        : null,
                    icon: request.localOnly ?? false
                        ? const Icon(OffIcons.rocket_outlined)
                        : const Icon(Icons.rocket),
                  ),
                  PopupMenuButton<void>(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: noteId == null
                            ? () async {
                                final result = await showModalBottomSheet<
                                    (ReactionAcceptance?,)>(
                                  context: context,
                                  builder: (context) => ListView(
                                    shrinkWrap: true,
                                    children: [
                                      ListTile(
                                        title: Text(
                                          t.misskey.reactionAcceptance,
                                        ),
                                      ),
                                      const Divider(height: 0.0),
                                      ...[
                                        null,
                                        ...ReactionAcceptance.values,
                                      ].map(
                                        (acceptance) => ListTile(
                                          leading: ReactionAcceptanceIcon(
                                            acceptance: acceptance,
                                          ),
                                          title: ReactionAcceptanceWidget(
                                            acceptance: acceptance,
                                          ),
                                          onTap: () =>
                                              context.pop((acceptance,)),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                                if (result != null) {
                                  ref
                                      .read(
                                        postNotifierProvider(account.value)
                                            .notifier,
                                      )
                                      .setReactionAcceptance(result.$1);
                                }
                              }
                            : null,
                        child: ListTile(
                          leading: ReactionAcceptanceIcon(
                            acceptance: request.reactionAcceptance,
                          ),
                          title: Text(t.misskey.reactionAcceptance),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          final text = request.text;
                          ref
                              .read(
                                postNotifierProvider(account.value).notifier,
                              )
                              .setText(request.cw);
                          ref
                              .read(
                                postNotifierProvider(account.value).notifier,
                              )
                              .setCw(text?.replaceAll('\n', ' '));
                          useCw.value = true;
                        },
                        enabled: request.text != null || request.cw != null,
                        child: ListTile(
                          leading: const Icon(Icons.swap_vert),
                          title: Text(t.aria.swapCw),
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
                            ref
                                .read(
                                  postNotifierProvider(account.value).notifier,
                                )
                                .reset();
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
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.more_horiz),
                    ),
                  ),
                  if (showPostButton) ...[
                    const SizedBox(width: 4.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: colors.fgOnAccent,
                        disabledForegroundColor:
                            colors.fgOnAccent.withValues(alpha: 0.5),
                        backgroundColor: Colors.transparent,
                        iconColor: colors.fgOnAccent,
                        disabledIconColor:
                            colors.fgOnAccent.withValues(alpha: 0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed:
                          canPost ? () => _post(ref, account.value) : null,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colors.buttonGradateA
                                  .withValues(alpha: canPost ? 1.0 : 0.5),
                              colors.buttonGradateB
                                  .withValues(alpha: canPost ? 1.0 : 0.5),
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
              ),
            ),
            if (request.replyId case final replyId?)
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
                    if (reply?.user case final user?) ...[
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
                              .setReply(null)
                          : null,
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            if (request.renoteId case final renoteId?)
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
                    if (renote?.user case final user?) ...[
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
                              .setRenote(null)
                          : null,
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            if (request.channelId case final channelId?)
              InkWell(
                onTap: () =>
                    context.push('/${account.value}/channels/$channelId'),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      start: BorderSide(
                        color: channel?.toColor() ?? Colors.transparent,
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
                      if (channel != null)
                        Expanded(child: Text(channel.name))
                      else
                        const Spacer(),
                      IconButton(
                        onPressed: canChangeChannel
                            ? () => ref
                                .read(
                                  postNotifierProvider(account.value).notifier,
                                )
                                .setChannel(null)
                            : null,
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ),
            if (request.visibility == NoteVisibility.specified) ...[
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
                                      postNotifierProvider(account.value)
                                          .notifier,
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
                              !(request.visibleUserIds?.contains(user.id) ??
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
                              final users = await futureWithDialog(
                                context,
                                Future.wait(
                                  notSpecifiedMentions.map(
                                    (node) => ref.read(
                                      userNotifierProvider(
                                        account.value,
                                        username: node.username,
                                        host: node.host,
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
                                      postNotifierProvider(account.value)
                                          .notifier,
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
            if (hasMentionToRemote && (request.localOnly ?? false)) ...[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(t.aria.mentionToRemoteWarning),
                      ),
                      if (request.channelId == null &&
                          !(reply?.localOnly ?? false) &&
                          !(renote?.localOnly ?? false))
                        TextButton(
                          onPressed: noteId == null
                              ? () => ref
                                  .read(
                                    postNotifierProvider(account.value)
                                        .notifier,
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
                      Expanded(
                        child: Text(t.aria.extraMentionsWarning),
                      ),
                      TextButton(
                        onPressed: () {
                          String text = request.text ?? '';
                          for (final mention in extraMentions) {
                            text = text.replaceAllMapped(
                              RegExp('${mention.acct}(\$|[^\\w.-])'),
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
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                    textInputAction: TextInputAction.next,
                    maxLength: (request.cw?.length ?? 0) > 80 ? 100 : null,
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
                maxLength: (request.text?.length ?? 0) > 2900 ? 3000 : null,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                contextMenuBuilder: (context, editableTextState) =>
                    AdaptiveTextSelectionToolbar.editable(
                  clipboardStatus: ClipboardStatus.pasteable,
                  onCopy: editableTextState.copyEnabled
                      ? () => editableTextState
                          .copySelection(SelectionChangedCause.toolbar)
                      : null,
                  onCut: editableTextState.cutEnabled
                      ? () => editableTextState
                          .cutSelection(SelectionChangedCause.toolbar)
                      : null,
                  onPaste: editableTextState.pasteEnabled
                      ? () async {
                          final data =
                              await Clipboard.getData(Clipboard.kTextPlain);
                          if (data case ClipboardData(:final text?)) {
                            if (Uri.tryParse(text) case final url?
                                when RegExp(r'^https?$').hasMatch(url.scheme)) {
                              if (!controller.selection.isCollapsed) {
                                controller.insert('[', ']()');
                                controller.selection = TextSelection.collapsed(
                                  offset: controller.selection.end + 2,
                                );
                              }
                            }
                            await editableTextState
                                .pasteText(SelectionChangedCause.toolbar);
                          }
                        }
                      : null,
                  onSelectAll: editableTextState.selectAllEnabled
                      ? () => editableTextState
                          .selectAll(SelectionChangedCause.toolbar)
                      : null,
                  onLookUp: editableTextState.lookUpEnabled
                      ? () => editableTextState
                          .lookUpSelection(SelectionChangedCause.toolbar)
                      : null,
                  onSearchWeb: editableTextState.searchWebEnabled
                      ? () => editableTextState
                          .searchWebForSelection(SelectionChangedCause.toolbar)
                      : null,
                  onShare: editableTextState.shareEnabled
                      ? () => editableTextState
                          .shareSelection(SelectionChangedCause.toolbar)
                      : null,
                  onLiveTextInput: null,
                  anchors: editableTextState.contextMenuAnchors,
                ),
                spellCheckConfiguration:
                    enableSpellCheck ? const SpellCheckConfiguration() : null,
              ),
            ),
            if (useHashtags) ...[
              const Divider(height: 0.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: hashtagsController,
                    focusNode: hashtagsFocusNode,
                    decoration: InputDecoration(
                      hintText: t.misskey.hashtags,
                      filled: false,
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
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
                cwFocusNode: cwFocusNode,
                hashtagsFocusNode: hashtagsFocusNode,
                onHide: onHide,
                onExpand: onExpand,
                useCw: useCw,
                canChangeChannel: canChangeChannel,
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
            if (request.poll != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PollEditor(account: account.value, noteId: noteId),
              ),
              const SizedBox(height: 8.0),
            ],
            if (showKeyboard) ...[
              Visibility(
                visible: isCwFocused.value,
                maintainState: true,
                child: TextFieldTapRegion(
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                  child: MfmKeyboard(
                    account: account.value,
                    controller: cwController,
                  ),
                ),
              ),
              Visibility(
                visible: isFocused.value,
                maintainState: true,
                child: TextFieldTapRegion(
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                  child: MfmKeyboard(
                    account: account.value,
                    controller: controller,
                  ),
                ),
              ),
              Visibility(
                visible: isHashtagsFocused.value,
                maintainState: true,
                child: TextFieldTapRegion(
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                  child: MfmHashtagKeyboard(
                    account: account.value,
                    controller: hashtagsController,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _PostFormFooter extends HookConsumerWidget {
  const _PostFormFooter({
    required this.account,
    this.noteId,
    required this.cwController,
    required this.controller,
    required this.cwFocusNode,
    required this.hashtagsFocusNode,
    this.onHide,
    this.onExpand,
    required this.useCw,
    required this.canChangeChannel,
  });

  final Account account;
  final String? noteId;
  final TextEditingController cwController;
  final TextEditingController controller;
  final FocusNode cwFocusNode;
  final FocusNode hashtagsFocusNode;
  final void Function()? onHide;
  final void Function(Account account)? onExpand;
  final ValueNotifier<bool> useCw;
  final bool canChangeChannel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final request = ref.watch(postNotifierProvider(account, noteId: noteId));
    final useHashtags = ref.watch(
      accountSettingsNotifierProvider(account)
          .select((settings) => settings.postFormUseHashtags),
    );
    final hasExtentBefore = useState(false);
    final hasExtentAfter = useState(false);
    final scrollController = useScrollController();
    useEffect(
      () {
        scrollController.addListener(() {
          hasExtentBefore.value = scrollController.position.extentBefore > 8.0;
          hasExtentAfter.value = scrollController.position.extentAfter > 8.0;
        });
        return;
      },
      [],
    );

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
                              postNotifierProvider(account, noteId: noteId)
                                  .notifier,
                            )
                            .togglePoll(),
                        icon: Icon(
                          Icons.bar_chart,
                          color: request.poll != null
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
                                  postNotifierProvider(account, noteId: noteId)
                                      .notifier,
                                )
                                .setCw(null);
                            useCw.value = false;
                          } else {
                            ref
                                .read(
                                  postNotifierProvider(account, noteId: noteId)
                                      .notifier,
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
                            localOnly: request.localOnly ?? false,
                          );
                          if (user != null) {
                            controller.insert(user.acct);
                          }
                        },
                        icon: const Icon(Icons.alternate_email),
                      ),
                      IconButton(
                        tooltip: t.misskey.hashtags,
                        onPressed: () async {
                          final value = useHashtags;
                          await ref
                              .read(
                                accountSettingsNotifierProvider(account)
                                    .notifier,
                              )
                              .setPostFormUseHashtags(!value);
                          if (!value) {
                            hashtagsFocusNode.requestFocus();
                          }
                        },
                        icon: Icon(
                          Icons.tag,
                          color: useHashtags
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
                                  ref
                                      .read(
                                        postNotifierProvider(account).notifier,
                                      )
                                      .setChannel(result.id);
                                }
                              }
                            : null,
                        icon: const Icon(Icons.tv),
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
