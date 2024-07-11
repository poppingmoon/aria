import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';

import '../../extension/list_mfm_node_extension.dart';
import '../../extension/notes_create_request_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
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
        request,
        files: files,
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
      if (request.text case final text?) {
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
    final note = request.toNote(i: i, channel: channel);
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
    final cwController =
        useTextEditingController(text: request.cw, keys: [account.value]);
    final controller =
        useTextEditingController(text: request.text, keys: [account.value]);
    final cwFocusNode = useFocusNode();
    final focusNode = useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
    useEffect(
      () {
        cwFocusNode.addListener(() => isCwFocused.value = cwFocusNode.hasFocus);
        focusNode.addListener(() => isFocused.value = focusNode.hasFocus);
        return;
      },
      [account.value],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return PopScope(
      onPopInvoked: (_) => ref
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
              child: Center(
                child: SizedBox(
                  width: 800.0,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          color: colors.panel,
                          elevation: 0.0,
                          margin: const EdgeInsets.all(8.0),
                          child: PostForm(
                            account: this.account,
                            noteId: noteId,
                            controller: controller,
                            cwController: cwController,
                            focusNode: focusNode,
                            cwFocusNode: cwFocusNode,
                            onAccountChanged: (newAccount) =>
                                account.value = newAccount,
                          ),
                        ),
                        Card(
                          color: colors.panel,
                          elevation: 0.0,
                          margin: const EdgeInsets.all(8.0),
                          clipBehavior: Clip.antiAlias,
                          child: request.isRenote
                              ? NoteWidget(
                                  account: account.value,
                                  noteId: request.renoteId!,
                                )
                              : NoteWidget(
                                  account: account.value,
                                  noteId: '',
                                  note: note,
                                  showFooter: false,
                                ),
                        ),
                        const SizedBox(height: 80.0),
                      ],
                    ),
                  ),
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
                onPressed: canPost ? () => _post(ref, account.value) : null,
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
