import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/shortcuts.dart';
import '../../extension/community_channel_extension.dart';
import '../../extension/notes_create_request_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/post_confirmation_dialog.dart';
import 'mfm_keyboard.dart';
import 'note_summary.dart';
import 'user_avatar.dart';

class PostForm extends HookConsumerWidget {
  const PostForm({
    super.key,
    required this.account,
    this.focusNode,
  });

  final Account account;
  final FocusNode? focusNode;

  Future<void> _post(
    WidgetRef ref,
    FocusNode focusNode,
  ) async {
    final hasFiles = ref.read(attachesNotifierProvider(account)).isNotEmpty;
    final fileIds = hasFiles
        ? await futureWithDialog(
            ref.context,
            ref.read(attachesNotifierProvider(account).notifier).uploadAll(),
          )
        : null;
    if (hasFiles && fileIds == null) return;
    if (!ref.context.mounted) return;
    if (ref.read(generalSettingsNotifierProvider).confirmBeforePost) {
      final confirmed = await confirmPost(ref.context, account);
      if (!confirmed) return;
      if (!ref.context.mounted) return;
    }
    final result = await futureWithDialog(
      ref.context,
      ref
          .read(
            postNotifierProvider(account).notifier,
          )
          .post(),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      focusNode.unfocus();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final request = ref.watch(postNotifierProvider(account));
    final attaches = ref.watch(attachesNotifierProvider(account));
    final reply = request.replyId != null
        ? ref.watch(noteProvider(account, request.replyId!))
        : null;
    final renote = request.renoteId != null
        ? ref.watch(noteProvider(account, request.renoteId!))
        : null;
    final channel = request.channelId != null
        ? ref
            .watch(channelNotifierProvider(account, request.channelId!))
            .valueOrNull
        : null;
    final focusNode = this.focusNode ?? useFocusNode();
    final controller = useTextEditingController(text: request.text);
    final isFocused = useState(false);
    ref.listen(
      postNotifierProvider(account).select((request) => request.text),
      (_, text) {
        final s = text ?? '';
        if (s != controller.text) {
          controller.text = s;
        }
      },
    );
    useEffect(
      () {
        controller.addListener(
          () => ref
              .read(postNotifierProvider(account).notifier)
              .setText(controller.text),
        );
        focusNode.addListener(() => isFocused.value = focusNode.hasFocus);
        return;
      },
      [],
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
        submitActivator: VoidCallbackIntent(() => _post(ref, focusNode)),
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colors.panel,
          boxShadow: [
            BoxShadow(
              color: switch (Theme.of(context).brightness) {
                Brightness.light => Colors.black26,
                Brightness.dark => Colors.white24,
              },
              blurRadius: isFocused.value ? 8.0 : 2.0,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (request case NotesCreateRequest(:final replyId?))
              InkWell(
                onTap: () => context.push('/$account/notes/$replyId'),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => ref
                          .read(postNotifierProvider(account).notifier)
                          .clearReply(),
                      icon: const Icon(Icons.close),
                    ),
                    const Icon(Icons.reply),
                    const SizedBox(width: 4.0),
                    Text('${t.misskey.reply}: '),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: reply != null
                          ? UserAvatar(
                              user: reply.user,
                              onTap: () => context
                                  .push('/$account/users/${reply.userId}'),
                            )
                          : null,
                    ),
                    Expanded(
                      child: NoteSummary(account: account, noteId: replyId),
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
                          .read(postNotifierProvider(account).notifier)
                          .clearRenote(),
                      icon: const Icon(Icons.close),
                    ),
                    const Icon(Icons.repeat_rounded),
                    const SizedBox(width: 4.0),
                    Text('${t.misskey.renote}: '),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: renote != null
                          ? UserAvatar(
                              user: renote.user,
                              onTap: () => context
                                  .push('/$account/users/${renote.userId}'),
                            )
                          : null,
                    ),
                    Expanded(
                      child: NoteSummary(account: account, noteId: renoteId),
                    ),
                  ],
                ),
              ),
            if (request case NotesCreateRequest(:final channelId?))
              InkWell(
                onTap: () => context.push('/$account/channels/$channelId'),
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
                        onPressed: renote?.channel?.allowRenoteToExternal ??
                                true
                            ? () => ref
                                .read(postNotifierProvider(account).notifier)
                                .clearChannel()
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
            if (request case NotesCreateRequest(:final cw?))
              InkWell(
                onTap: () => context.push('/$account/post'),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => ref
                          .read(postNotifierProvider(account).notifier)
                          .setCw(null),
                      icon: const Icon(Icons.close),
                    ),
                    const Icon(Icons.visibility),
                    const SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        'CW: $cw',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            if (attaches.isNotEmpty)
              InkWell(
                onTap: () => context.push('/$account/post'),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => ref
                          .read(attachesNotifierProvider(account).notifier)
                          .removeAll(),
                      icon: const Icon(Icons.close),
                    ),
                    const Icon(Icons.photo),
                    const SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        t.misskey.withNFiles(n: attaches.length),
                      ),
                    ),
                  ],
                ),
              ),
            if (request case NotesCreateRequest(:final poll?))
              InkWell(
                onTap: () => context.push('/$account/post'),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => ref
                          .read(postNotifierProvider(account).notifier)
                          .togglePoll(),
                      icon: const Icon(Icons.close),
                    ),
                    const Icon(Icons.bar_chart),
                    const SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        '${t.misskey.poll}: ${poll.choices.join(' / ')}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            TextField(
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecoration(
                prefixIcon: isFocused.value && i != null
                    ? Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: UserAvatar(user: i, size: 28),
                      )
                    : null,
                prefix: isFocused.value && i != null
                    ? null
                    : const SizedBox(width: 4.0),
                suffixIcon: isFocused.value
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            tooltip: t.misskey.details,
                            onPressed: () => context.push('/$account/post'),
                            icon: const Icon(Icons.open_in_full),
                          ),
                          IconButton(
                            tooltip: request.isRenote
                                ? t.misskey.renote
                                : t.misskey.send,
                            onPressed: request.isRenote || request.canPost
                                ? () => _post(ref, focusNode)
                                : null,
                            icon: Icon(
                              request.isRenote
                                  ? Icons.repeat_rounded
                                  : Icons.send,
                            ),
                          ),
                        ],
                      )
                    : null,
                hintText: placeholder,
                hintMaxLines: 3,
              ),
              minLines: isFocused.value ? 3 : 1,
              maxLines: isFocused.value ? 10 : 1,
              keyboardType: TextInputType.multiline,
            ),
            Visibility(
              visible: isFocused.value,
              maintainState: true,
              child: TextFieldTapRegion(
                onTapOutside: (_) => focusNode.unfocus(),
                child: MfmKeyboard(account: account, controller: controller),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
