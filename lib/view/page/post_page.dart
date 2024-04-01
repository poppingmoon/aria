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
import '../widget/emoji_picker.dart';
import '../widget/file_picker_sheet.dart';
import '../widget/mention_widget.dart';
import '../widget/mfm_keyboard.dart';
import '../widget/note_preview.dart';
import '../widget/note_summary.dart';
import '../widget/note_visibility_icon.dart';
import '../widget/note_visibility_widget.dart';
import '../widget/note_widget.dart';
import '../widget/poll_editor.dart';
import '../widget/post_form_attaches.dart';
import '../widget/reaction_acceptance_icon.dart';
import '../widget/reaction_acceptance_widget.dart';
import '../widget/user_avatar.dart';
import '../widget/username_widget.dart';
import 'channel/channels_page.dart';

class PostPage extends HookConsumerWidget {
  const PostPage({
    super.key,
    required this.initialAccount,
  });

  final Account initialAccount;

  Future<void> _post(WidgetRef ref, Account account) async {
    final text = ref.read(postNotifierProvider(account)).text;
    final hasFiles = ref.read(attachesNotifierProvider(account)).isNotEmpty;
    final files = hasFiles
        ? await futureWithDialog(
            ref.context,
            ref.read(attachesNotifierProvider(account).notifier).uploadAll(),
          )
        : null;
    if (hasFiles && files == null) return;
    if (!ref.context.mounted) return;
    if (ref.read(generalSettingsNotifierProvider).confirmBeforePost) {
      final confirmed = await confirmPost(ref.context, account);
      if (!confirmed) return;
      if (!ref.context.mounted) return;
    }
    final result = await futureWithDialog(
      ref.context,
      ref
          .read(postNotifierProvider(account).notifier)
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
      ref.invalidate(attachesNotifierProvider(account));
      ref.context.pop();
    }
  }

  Future<Account?> _switchAccount(WidgetRef ref, Account origin) async {
    final accounts = ref.read(accountsNotifierProvider);
    final destination = await showModalBottomSheet<Account>(
      context: ref.context,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) {
          final user =
              ref.watch(iNotifierProvider(accounts[index])).valueOrNull;
          return ListTile(
            leading: user != null ? UserAvatar(user: user, size: 50.0) : null,
            title: user != null
                ? UsernameWidget(account: accounts[index], user: user)
                : null,
            subtitle: Text(accounts[index].toString()),
            trailing: const Icon(Icons.navigate_next),
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
    final account = useState(initialAccount);
    final i = ref.watch(iNotifierProvider(account.value)).valueOrNull;
    final request = ref.watch(postNotifierProvider(account.value));
    final attaches = ref.watch(attachesNotifierProvider(account.value));
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
    final note = request.toNote(i: i, channel: channel);
    final visibleUsers = useState(<UserDetailed>[]);
    final notSpecifiedMentions = mentions.where(
      (mention) => !visibleUsers.value.any(
        (user) =>
            user.username == mention.username && user.host == mention.host,
      ),
    );
    final canChangeLocalOnly = request.channelId == null &&
        request.visibility != NoteVisibility.specified &&
        !(reply?.localOnly ?? false) &&
        !(renote?.localOnly ?? false);
    final canChangeVisibility = request.channelId == null &&
        reply?.visibility != NoteVisibility.specified;
    final canChangeChannel = (renote?.channel?.allowRenoteToExternal ?? true) &&
        reply?.channel == null;
    final canPost = request.isRenote || request.canPost || attaches.isNotEmpty;
    final needsUpload = attaches.any((file) => file is LocalPostFile);
    final (buttonText, buttonIcon) = needsUpload
        ? (t.misskey.upload, Icons.upload)
        : request.isRenote
            ? (t.misskey.renote, Icons.repeat_rounded)
            : request.replyId != null
                ? (t.misskey.reply, Icons.reply)
                : (
                    request.renoteId != null ? t.misskey.quote : t.misskey.note,
                    Icons.send
                  );
    final useCw =
        useState(useMemoized(() => request.cw?.isNotEmpty ?? false, []));
    final cwController =
        useTextEditingController(text: request.cw, keys: [account.value]);
    final controller =
        useTextEditingController(text: request.text, keys: [account.value]);
    final cwFocusNode = useFocusNode();
    final focusNode = useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
    ref.listen(
      postNotifierProvider(account.value).select((request) => request.text),
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
        cwController.addListener(
          () => ref
              .read(postNotifierProvider(account.value).notifier)
              .setCw(cwController.text),
        );
        controller.addListener(
          () => ref
              .read(postNotifierProvider(account.value).notifier)
              .setText(controller.text),
        );
        cwFocusNode.addListener(() => isCwFocused.value = cwFocusNode.hasFocus);
        focusNode.addListener(() => isFocused.value = focusNode.hasFocus);
        return;
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

    return PopScope(
      onPopInvoked: (_) =>
          ref.read(postNotifierProvider(account.value).notifier).save(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.note),
          actions: [
            IconButton(
              tooltip: buttonText,
              onPressed: needsUpload
                  ? () => futureWithDialog(
                        context,
                        ref
                            .read(
                              attachesNotifierProvider(account.value).notifier,
                            )
                            .uploadAll(),
                      )
                  : canPost
                      ? () => _post(ref, account.value)
                      : null,
              icon: Icon(buttonIcon),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            tooltip: t.misskey.switchAccount,
                            onPressed: () async {
                              final destination =
                                  await _switchAccount(ref, account.value);
                              if (destination != null) {
                                account.value = destination;
                              }
                            },
                            icon: i != null
                                ? UserAvatar(user: i)
                                : const Icon(Icons.person),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: canChangeVisibility
                                ? () async {
                                    final candidates =
                                        NoteVisibility.values.where(
                                      (visibility) =>
                                          (visibility !=
                                                  NoteVisibility.public ||
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
                                    final result = await showModalBottomSheet<
                                        NoteVisibility>(
                                      context: context,
                                      builder: (context) => ListView(
                                        shrinkWrap: true,
                                        children: [
                                          ListTile(
                                            title: Text(t.misskey.visibility),
                                          ),
                                          const Divider(height: 0.0),
                                          ...candidates.map(
                                            (visibility) => ListTile(
                                              leading: NoteVisibilityIcon(
                                                visibility: visibility,
                                                showPublic: true,
                                              ),
                                              title: NoteVisibilityWidget(
                                                visibility: visibility,
                                              ),
                                              subtitle: Text(
                                                switch (visibility) {
                                                  NoteVisibility.public => t
                                                      .misskey
                                                      .visibility_
                                                      .publicDescription,
                                                  NoteVisibility.home => t
                                                      .misskey
                                                      .visibility_
                                                      .homeDescription,
                                                  NoteVisibility.followers => t
                                                      .misskey
                                                      .visibility_
                                                      .followersDescription,
                                                  NoteVisibility.specified => t
                                                      .misskey
                                                      .visibility_
                                                      .specifiedDescription,
                                                },
                                              ),
                                              onTap: () =>
                                                  context.pop(visibility),
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
                                          .setVisibility(result);
                                    }
                                  }
                                : null,
                            icon: NoteVisibilityIcon(
                              visibility: request.visibility,
                              showPublic: true,
                            ),
                          ),
                          IconButton(
                            tooltip: request.localOnly ?? false
                                ? t.misskey.visibility_.disableFederation
                                : null,
                            onPressed: canChangeLocalOnly
                                ? () => ref
                                    .read(
                                      postNotifierProvider(account.value)
                                          .notifier,
                                    )
                                    .setLocalOnly(!(request.localOnly ?? false))
                                : null,
                            color: request.localOnly ?? false
                                ? Theme.of(context).colorScheme.error
                                : null,
                            disabledColor: request.localOnly ?? false
                                ? Theme.of(context)
                                    .colorScheme
                                    .error
                                    .withOpacity(0.5)
                                : null,
                            icon: request.localOnly ?? false
                                ? const Icon(Icons.rocket_outlined)
                                : const Icon(Icons.rocket),
                          ),
                          IconButton(
                            onPressed: () async {
                              final result = await showModalBottomSheet<
                                  (ReactionAcceptance?,)>(
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
                                    .read(
                                      postNotifierProvider(account.value)
                                          .notifier,
                                    )
                                    .setReactionAcceptance(result.$1);
                              }
                            },
                            icon: ReactionAcceptanceIcon(
                              acceptance: request.reactionAcceptance,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (request case NotesCreateRequest(:final replyId?))
                      InkWell(
                        onTap: () => context.push('/$account/notes/$replyId'),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => ref
                                  .read(
                                    postNotifierProvider(account.value)
                                        .notifier,
                                  )
                                  .setReply(null),
                              icon: const Icon(Icons.close),
                            ),
                            const Icon(Icons.reply),
                            const SizedBox(width: 4.0),
                            Text('${t.misskey.reply}: '),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: reply != null
                                  ? UserAvatar(
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
                        onTap: () => context.push('/$account/notes/$renoteId'),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => ref
                                  .read(
                                    postNotifierProvider(account.value)
                                        .notifier,
                                  )
                                  .setRenote(null),
                              icon: const Icon(Icons.close),
                            ),
                            const Icon(Icons.repeat_rounded),
                            const SizedBox(width: 4.0),
                            Text('${t.misskey.renote}: '),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: renote != null
                                  ? UserAvatar(
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
                            context.push('/$account/channels/$channelId'),
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
                                          postNotifierProvider(account.value)
                                              .notifier,
                                        )
                                        .setChannel(null)
                                    : null,
                                icon: const Icon(Icons.close),
                              ),
                              const Icon(Icons.tv),
                              const SizedBox(width: 4.0),
                              Text('${t.misskey.channel}: '),
                              if (channel != null)
                                Expanded(child: Text(channel.name)),
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
                                onDeleted: () {
                                  ref
                                      .read(
                                        postNotifierProvider(account.value)
                                            .notifier,
                                      )
                                      .removeVisibleUser(user.id);
                                  visibleUsers.value = visibleUsers.value
                                      .where((e) => e.id != user.id)
                                      .toList();
                                },
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                final user =
                                    await selectUser(context, account.value);
                                if (user != null &&
                                    !(request.visibleUserIds
                                            ?.contains(user.id) ??
                                        false)) {
                                  visibleUsers.value = [
                                    ...visibleUsers.value,
                                    user,
                                  ];
                                  ref
                                      .read(
                                        postNotifierProvider(account.value)
                                            .notifier,
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
                                  child: Text(
                                    t.misskey.notSpecifiedMentionWarning,
                                  ),
                                ),
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
                                  onPressed: () => ref
                                      .read(
                                        postNotifierProvider(account.value)
                                            .notifier,
                                      )
                                      .setLocalOnly(false),
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
                            decoration:
                                InputDecoration(hintText: t.misskey.annotation),
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            maxLength:
                                (request.cw?.length ?? 0) > 80 ? 100 : null,
                            maxLengthEnforcement: MaxLengthEnforcement.none,
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Shortcuts(
                        shortcuts: {
                          ...disablingTextShortcuts,
                          submitActivator: VoidCallbackIntent(() async {
                            if (canPost) {
                              await _post(ref, account.value);
                            }
                          }),
                        },
                        child: TextField(
                          controller: controller,
                          focusNode: focusNode,
                          decoration: InputDecoration(hintText: placeholder),
                          autofocus: true,
                          maxLines: null,
                          maxLength:
                              (request.text?.length ?? 0) > 2900 ? 3000 : null,
                          maxLengthEnforcement: MaxLengthEnforcement.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                      attachesNotifierProvider(account.value)
                                          .notifier,
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
                                  postNotifierProvider(account.value).notifier,
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
                                      postNotifierProvider(account.value)
                                          .notifier,
                                    )
                                    .setCw(null);
                                useCw.value = false;
                              } else {
                                ref
                                    .read(
                                      postNotifierProvider(account.value)
                                          .notifier,
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
                            onPressed: () async {
                              final emoji = await pickEmoji(ref, account.value);
                              if (!context.mounted) return;
                              if (emoji != null) {
                                controller.insert(emoji.replaceFirst('@.', ''));
                              }
                            },
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
                        child: PostFormAttaches(account: account.value),
                      ),
                    ],
                    if (request.poll != null)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PollEditor(account: account.value),
                      ),
                    if (request.isRenote)
                      NoteWidget(
                        account: account.value,
                        noteId: request.renoteId!,
                      )
                    else
                      NotePreview(account: account.value, note: note),
                  ],
                ),
              ),
            ),
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
        ),
        floatingActionButton: !isCwFocused.value && !isFocused.value
            ? FloatingActionButton.extended(
                onPressed: needsUpload
                    ? () => futureWithDialog(
                          context,
                          ref
                              .read(
                                attachesNotifierProvider(account.value)
                                    .notifier,
                              )
                              .uploadAll(),
                        )
                    : canPost
                        ? () => _post(ref, account.value)
                        : null,
                backgroundColor: Colors.transparent,
                extendedPadding: EdgeInsets.zero,
                disabledElevation: 0.0,
                label: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colors.buttonGradateA.withOpacity(canPost ? 1.0 : 0.5),
                        colors.buttonGradateB.withOpacity(canPost ? 1.0 : 0.5),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          buttonText,
                          style: TextStyle(
                            color: colors.fgOnAccent
                                .withOpacity(canPost ? 1.0 : 0.5),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        Icon(
                          buttonIcon,
                          color: colors.fgOnAccent
                              .withOpacity(canPost ? 1.0 : 0.5),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
