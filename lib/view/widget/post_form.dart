import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../../util/extract_mentions.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/post_confirmation_dialog.dart';
import '../dialog/user_select_dialog.dart';
import '../page/channel/channels_page.dart';
import 'account_preview.dart';
import 'emoji_picker.dart';
import 'file_picker_sheet.dart';
import 'mention_widget.dart';
import 'mfm_keyboard.dart';
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
    this.focusNode,
    this.cwFocusNode,
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
  final FocusNode? focusNode;
  final FocusNode? cwFocusNode;
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
    final text = ref.read(postNotifierProvider(account, noteId: noteId)).text;
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
      final request = ref.read(postNotifierProvider(account, noteId: noteId));
      final confirmed = await confirmPost(
        ref.context,
        account,
        request: request,
      );
      if (!confirmed) return;
      if (!ref.context.mounted) return;
    }
    final result = await futureWithDialog(
      ref.context,
      ref
          .read(postNotifierProvider(account, noteId: noteId).notifier)
          .post(fileIds: files?.map((file) => file.id).toList()),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      if (text != null) {
        final nodes = const MfmParser().parse(text);
        final hashtags = nodes
            .extract((node) => node is MfmHashTag)
            .whereType<MfmHashTag>()
            .map((node) => node.hashTag);
        final history =
            ref.read(accountSettingsNotifierProvider(account)).hashtags;
        unawaited(
          ref
              .read(accountSettingsNotifierProvider(account).notifier)
              .setHashtags({...hashtags, ...history}.toList()),
        );
      }
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
      () => extractMentions(const MfmParser().parse(request.text ?? '')),
      [request.text],
    );
    final hasMentionToRemote = mentions.any((node) => node.host != null);
    final visibleUsers = useState(<UserDetailed>[]);
    final notSpecifiedMentions = mentions.where(
      (mention) => !visibleUsers.value.any(
        (user) =>
            user.username == mention.username && user.host == mention.host,
      ),
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
    final useCw =
        useState(useMemoized(() => request.cw?.isNotEmpty ?? false, []));
    final cwController = this.cwController ??
        useTextEditingController(text: request.cw, keys: [account.value]);
    final controller = this.controller ??
        useTextEditingController(text: request.text, keys: [account.value]);
    final cwFocusNode = this.cwFocusNode ?? useFocusNode();
    final focusNode = this.focusNode ?? useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
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

        void cwFocusNodeCallback() {
          isCwFocused.value = cwFocusNode.hasFocus;
        }

        void focusNodeCallback() {
          isFocused.value = focusNode.hasFocus;
        }

        cwController.addListener(cwControllerCallback);
        controller.addListener(controllerCallback);
        cwFocusNode.addListener(cwFocusNodeCallback);
        focusNode.addListener(focusNodeCallback);

        return () {
          cwController.removeListener(cwControllerCallback);
          controller.removeListener(controllerCallback);
          cwFocusNode.removeListener(cwFocusNodeCallback);
          focusNode.removeListener(focusNodeCallback);
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
                        ? Theme.of(context).colorScheme.error.withOpacity(0.5)
                        : null,
                    icon: request.localOnly ?? false
                        ? const Icon(Icons.rocket_outlined)
                        : const Icon(Icons.rocket),
                  ),
                  IconButton(
                    onPressed: noteId == null
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
                                      onTap: () => context.pop((acceptance,)),
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
                    icon: ReactionAcceptanceIcon(
                      acceptance: request.reactionAcceptance,
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
                            colors.fgOnAccent.withOpacity(0.5),
                        backgroundColor: Colors.transparent,
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
                                  .withOpacity(canPost ? 1.0 : 0.5),
                              colors.buttonGradateB
                                  .withOpacity(canPost ? 1.0 : 0.5),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
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
            if (request case NotesCreateRequest(:final replyId?))
              InkWell(
                onTap: () => context.push('/${account.value}/notes/$replyId'),
                child: Row(
                  children: [
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
                    const Icon(Icons.reply),
                    const SizedBox(width: 4.0),
                    Text('${t.misskey.reply}: '),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      child: reply != null
                          ? UserAvatar(
                              account: account.value,
                              user: reply.user,
                              onTap: () => context.push(
                                '/$account/users/${reply.userId}',
                              ),
                            )
                          : null,
                    ),
                    Expanded(
                      child: NoteSummary(
                        account: account.value,
                        noteId: replyId,
                      ),
                    ),
                  ],
                ),
              ),
            if (request case NotesCreateRequest(:final renoteId?))
              InkWell(
                onTap: () => context.push('/${account.value}/notes/$renoteId'),
                child: Row(
                  children: [
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
                    const Icon(Icons.repeat_rounded),
                    const SizedBox(width: 4.0),
                    Text('${t.misskey.renote}: '),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: renote != null
                          ? UserAvatar(
                              account: account.value,
                              user: renote.user,
                              onTap: () => context.push(
                                '/$account/users/${renote.userId}',
                              ),
                            )
                          : null,
                    ),
                    Expanded(
                      child: NoteSummary(
                        account: account.value,
                        noteId: renoteId,
                      ),
                    ),
                  ],
                ),
              ),
            if (request case NotesCreateRequest(:final channelId?))
              InkWell(
                onTap: () =>
                    context.push('/${account.value}/channels/$channelId'),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: channel?.toColor() ?? Colors.transparent,
                        width: 4,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
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
                      const Icon(Icons.tv),
                      const SizedBox(width: 4.0),
                      Text('${t.misskey.channel}: '),
                      if (channel != null) Expanded(child: Text(channel.name)),
                    ],
                  ),
                ),
              ),
            if (request.visibility == NoteVisibility.specified) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
              if (notSpecifiedMentions.isNotEmpty)
                Card(
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
            ],
            if (hasMentionToRemote && (request.localOnly ?? false))
              Card(
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
            if (useCw.value)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: cwController,
                    focusNode: cwFocusNode,
                    decoration: InputDecoration(
                      hintText: t.misskey.annotation,
                    ),
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    maxLength: (request.cw?.length ?? 0) > 80 ? 100 : null,
                    maxLengthEnforcement: MaxLengthEnforcement.none,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                decoration: InputDecoration(hintText: placeholder),
                autofocus: true,
                minLines: 1,
                maxLines: maxLines,
                maxLength: (request.text?.length ?? 0) > 2900 ? 3000 : null,
                maxLengthEnforcement: MaxLengthEnforcement.none,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
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
                                  account: account.value,
                                  allowMultiple: true,
                                ),
                                clipBehavior: Clip.hardEdge,
                              );
                              if (files != null) {
                                ref
                                    .read(
                                      attachesNotifierProvider(
                                        account.value,
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
                                    account.value,
                                    noteId: noteId,
                                  ).notifier,
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
                                      postNotifierProvider(
                                        account.value,
                                        noteId: noteId,
                                      ).notifier,
                                    )
                                    .setCw(null);
                                useCw.value = false;
                              } else {
                                ref
                                    .read(
                                      postNotifierProvider(
                                        account.value,
                                        noteId: noteId,
                                      ).notifier,
                                    )
                                    .setCw(cwController.text);
                                useCw.value = true;
                              }
                            },
                            icon: Icon(
                              useCw.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          IconButton(
                            tooltip: t.misskey.mention,
                            onPressed: () async {
                              final user = await selectUser(
                                context,
                                account.value,
                                localOnly: request.localOnly ?? false,
                              );
                              if (user != null) {
                                controller.insert(user.acct);
                              }
                            },
                            icon: const Icon(Icons.alternate_email),
                          ),
                          // TODO: Preserve hashtags.
                          // IconButton(
                          //   tooltip: t.misskey.hashtags,
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.tag),
                          // ),
                          IconButton(
                            tooltip: t.misskey.emoji,
                            onPressed: () => pickEmoji(
                              ref,
                              account.value,
                              post: true,
                              onTapEmoji: (emoji) => controller.insert(
                                emoji.replaceFirst('@.', ''),
                              ),
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
                                        account: account.value,
                                        onChannelTap: (channel) =>
                                            context.pop(channel),
                                        initialIndex: 2,
                                      ),
                                    );
                                    if (!context.mounted) return;
                                    if (result != null) {
                                      ref
                                          .read(
                                            postNotifierProvider(account.value)
                                                .notifier,
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
                  if (onHide case final onHide?)
                    IconButton(
                      tooltip: t.misskey.hide,
                      onPressed: onHide,
                      icon: const Icon(Icons.keyboard_hide),
                    ),
                  if (onExpand case final onExpand?)
                    IconButton(
                      onPressed: () => onExpand(account.value),
                      icon: const Icon(Icons.open_in_full),
                    ),
                ],
              ),
            ),
            if (attaches.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
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
            ],
            if (request.poll != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PollEditor(account: account.value, noteId: noteId),
              ),
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
            ],
          ],
        ),
      ),
    );
  }
}
