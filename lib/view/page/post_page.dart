import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/max_content_width.dart';
import '../../extension/note_draft_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
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
    final i = ref.watch(iNotifierProvider(account.value)).value;
    final draft = ref.watch(
      postNotifierProvider(account.value, noteId: noteId),
    );
    final attaches = ref.watch(
      attachesNotifierProvider(account.value, noteId: noteId),
    );
    final canPost = draft.canPost || attaches.isNotEmpty;
    final canScheduleNote =
        noteId == null &&
        (i?.policies?.canScheduleNote ??
            ((i?.policies?.scheduleNoteMax ?? 0) > 0));
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
    final cwController = useTextEditingController(text: draft.cw);
    final controller = useTextEditingController(text: draft.text);
    final hashtagController = useTextEditingController(text: draft.hashtag);
    final cwFocusNode = useFocusNode();
    final focusNode = useFocusNode();
    final hashtagFocusNode = useFocusNode();
    final isCwFocused = useState(false);
    final isFocused = useState(false);
    final isHashtagFocused = useState(false);
    useEffect(() {
      void cwFocusNodeCallback() {
        isCwFocused.value = cwFocusNode.hasFocus;
      }

      void focusNodeCallback() {
        isFocused.value = focusNode.hasFocus;
      }

      void hashtagFocusNodeCallback() {
        isHashtagFocused.value = hashtagFocusNode.hasFocus;
      }

      cwFocusNode.addListener(cwFocusNodeCallback);
      focusNode.addListener(focusNodeCallback);
      hashtagFocusNode.addListener(hashtagFocusNodeCallback);

      return () {
        cwFocusNode.removeListener(cwFocusNodeCallback);
        focusNode.removeListener(focusNodeCallback);
        hashtagFocusNode.removeListener(hashtagFocusNodeCallback);
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
                            hashtagController: hashtagController,
                            focusNode: focusNode,
                            cwFocusNode: cwFocusNode,
                            hashtagFocusNode: hashtagFocusNode,
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
                      child: draft.isRenote
                          ? NoteWidget(
                              key: const ValueKey('renote'),
                              account: account.value,
                              noteId: draft.renoteId!,
                              borderRadius: BorderRadius.circular(8.0),
                            )
                          : NoteWidget(
                              key: const ValueKey('note'),
                              account: account.value,
                              noteId: '',
                              note: draft.toNote(),
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
                child: SafeArea(
                  child: MfmKeyboard(
                    account: account.value,
                    controller: cwController,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isFocused.value,
              maintainState: true,
              child: TextFieldTapRegion(
                onTapOutside: (_) => primaryFocus?.unfocus(),
                child: SafeArea(
                  child: MfmKeyboard(
                    account: account.value,
                    controller: controller,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isHashtagFocused.value,
              maintainState: true,
              child: TextFieldTapRegion(
                onTapOutside: (_) => primaryFocus?.unfocus(),
                child: SafeArea(
                  child: MfmHashtagKeyboard(
                    account: account.value,
                    controller: hashtagController,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton:
            !isCwFocused.value && !isFocused.value && !isHashtagFocused.value
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
