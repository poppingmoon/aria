import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/max_content_width.dart';
import '../../extension/notes_create_request_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/post_form_hashtags_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/mfm_keyboard.dart';
import '../widget/note_widget.dart';
import '../widget/post_form.dart';

class PostPage extends HookConsumerWidget {
  const PostPage({super.key, required this.account, this.noteId});

  final Account account;
  final String? noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = useState(this.account);
    final i = ref.watch(iNotifierProvider(account.value)).valueOrNull;
    final request = ref.watch(
      postNotifierProvider(account.value, noteId: noteId),
    );
    final attaches = ref.watch(
      attachesNotifierProvider(account.value, noteId: noteId),
    );
    final channel = request.channelId != null
        ? ref
              .watch(channelNotifierProvider(account.value, request.channelId!))
              .valueOrNull
        : null;
    final hashtags = ref.watch(postFormHashtagsNotifierProvider(account.value));
    final useHashtags = ref.watch(
      accountSettingsNotifierProvider(
        account.value,
      ).select((settings) => settings.postFormUseHashtags),
    );
    final note = request
        .addHashtags(useHashtags ? hashtags : null)
        .toNote(i: i, channel: channel);
    final canPost = request.canPost || attaches.isNotEmpty;
    final canScheduleNote =
        noteId == null &&
        (i?.policies?.canScheduleNote ??
            ((i?.policies?.scheduleNoteMax ?? 0) > 0));
    final needsUpload = attaches.any((file) => file is LocalPostFile);
    final (buttonText, buttonIcon) = switch (request) {
      _ when needsUpload => (t.misskey.upload, Icons.upload),
      _ when noteId != null => (t.misskey.edit, Icons.edit),
      NotesCreateRequest(scheduledAt: _?) when canScheduleNote => (
        t.aria.schedule,
        Icons.send,
      ),
      NotesCreateRequest(isRenote: true) => (
        t.misskey.renote,
        Icons.repeat_rounded,
      ),
      NotesCreateRequest(replyId: _?) => (t.misskey.reply, Icons.reply),
      NotesCreateRequest(renoteId: _?) => (t.misskey.quote, Icons.send),
      _ => (t.misskey.note, Icons.send),
    };
    final cwController = useTextEditingController(text: request.cw);
    final controller = useTextEditingController(text: request.text);
    final hashtagsController = useTextEditingController(
      text: hashtags.join(' '),
    );
    final cwFocusNode = useFocusNode();
    final focusNode = useFocusNode();
    final hashtagsFocusNode = useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
    final isHashtagsFocused = useState(false);
    useEffect(() {
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
    }, [account.value]);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return PopScope(
      onPopInvokedWithResult: (_, _) => ref
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
                  ? () => PostForm.post(ref, account.value, noteId)
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
                onPressed: canPost
                    ? () => PostForm.post(ref, account.value, noteId)
                    : null,
                backgroundColor: Colors.transparent,
                extendedPadding: EdgeInsets.zero,
                disabledElevation: 0.0,
                label: Ink(
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
                            color: colors.fgOnAccent.withValues(
                              alpha: canPost ? 1.0 : 0.5,
                            ),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        Icon(
                          buttonIcon,
                          color: colors.fgOnAccent.withValues(
                            alpha: canPost ? 1.0 : 0.5,
                          ),
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
