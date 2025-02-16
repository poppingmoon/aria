import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';

import '../../constant/max_content_width.dart';
import '../../extension/list_mfm_node_extension.dart';
import '../../extension/notes_create_request_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/post_form_hashtags_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../provider/timeline_tab_settings_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/post_confirmation_dialog.dart';
import '../widget/mfm_keyboard.dart';
import '../widget/note_widget.dart';
import '../widget/post_form.dart';

class PostPage extends HookConsumerWidget {
  const PostPage({
    super.key,
    required this.account,
    this.noteId,
  });

  final Account account;
  final String? noteId;

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = useState(this.account);
    final i = ref.watch(iNotifierProvider(account.value)).valueOrNull;
    final request =
        ref.watch(postNotifierProvider(account.value, noteId: noteId));
    final attaches =
        ref.watch(attachesNotifierProvider(account.value, noteId: noteId));
    final channel = request.channelId != null
        ? ref
            .watch(channelNotifierProvider(account.value, request.channelId!))
            .valueOrNull
        : null;
    final hashtags = ref.watch(postFormHashtagsNotifierProvider(account.value));
    final useHashtags = ref.watch(
      accountSettingsNotifierProvider(account.value)
          .select((settings) => settings.postFormUseHashtags),
    );
    final note = request
        .addHashtags(useHashtags ? hashtags : null)
        .toNote(i: i, channel: channel);
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
    final cwController = useTextEditingController(text: request.cw);
    final controller = useTextEditingController(text: request.text);
    final hashtagsController =
        useTextEditingController(text: hashtags.join(' '));
    final cwFocusNode = useFocusNode();
    final focusNode = useFocusNode();
    final hashtagsFocusNode = useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
    final isHashtagsFocused = useState(false);
    useEffect(
      () {
        void cwFocusNodeCallback() {
          isCwFocused.value = cwFocusNode.hasFocus;
        }

        void focusNodeCallback() {
          isFocused.value = focusNode.hasFocus;
        }

        void hashtagsFocusNodeCallback() {
          isHashtagsFocused.value = hashtagsFocusNode.hasFocus;
        }

        cwFocusNode.addListener(cwFocusNodeCallback);
        focusNode.addListener(focusNodeCallback);
        hashtagsFocusNode.addListener(hashtagsFocusNodeCallback);

        return () {
          cwFocusNode.removeListener(cwFocusNodeCallback);
          focusNode.removeListener(focusNodeCallback);
          hashtagsFocusNode.removeListener(hashtagsFocusNodeCallback);
        };
      },
      [account.value],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return PopScope(
      onPopInvokedWithResult: (_, __) => ref
          .read(postNotifierProvider(account.value, noteId: noteId).notifier)
          .save(),
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
                              attachesNotifierProvider(
                                account.value,
                                noteId: noteId,
                              ).notifier,
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
                  children: [
                    const SizedBox(height: 8.0),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child: Card.filled(
                          color: colors.panel,
                          margin: EdgeInsets.zero,
                          child: PostForm(
                            account: this.account,
                            noteId: noteId,
                            controller: controller,
                            cwController: cwController,
                            hashtagsController: hashtagsController,
                            focusNode: focusNode,
                            cwFocusNode: cwFocusNode,
                            hashtagsFocusNode: hashtagsFocusNode,
                            onAccountChanged: (newAccount) =>
                                account.value = newAccount,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: request.isRenote
                          ? NoteWidget(
                              key: const ValueKey('renote'),
                              account: account.value,
                              noteId: request.renoteId!,
                              borderRadius: BorderRadius.circular(8.0),
                            )
                          : NoteWidget(
                              key: const ValueKey('note'),
                              account: account.value,
                              noteId: '',
                              note: note,
                              showFooter: false,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                    ),
                    const SizedBox(height: 120.0),
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
        ),
        floatingActionButton: !isCwFocused.value && !isFocused.value
            ? FloatingActionButton.extended(
                onPressed: canPost ? () => _post(ref, account.value) : null,
                backgroundColor: Colors.transparent,
                extendedPadding: EdgeInsets.zero,
                disabledElevation: 0.0,
                label: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colors.buttonGradateA
                            .withValues(alpha: canPost ? 1.0 : 0.5),
                        colors.buttonGradateB
                            .withValues(alpha: canPost ? 1.0 : 0.5),
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
                                .withValues(alpha: canPost ? 1.0 : 0.5),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        Icon(
                          buttonIcon,
                          color: colors.fgOnAccent
                              .withValues(alpha: canPost ? 1.0 : 0.5),
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
