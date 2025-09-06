import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/shortcuts.dart';
import '../../extension/text_editing_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/send_chat_message_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/chat_message_send_confirmation_dialog.dart';
import 'emoji_picker.dart';
import 'file_picker_sheet.dart';
import 'mfm_keyboard.dart';
import 'post_form_attaches.dart';

class ChatPostForm extends HookConsumerWidget {
  const ChatPostForm({
    super.key,
    required this.account,
    this.userId,
    this.roomId,
  });

  final Account account;
  final String? userId;
  final String? roomId;

  Future<void> _send(WidgetRef ref, TextEditingController controller) async {
    final text = controller.text.isNotEmpty ? controller.text : null;
    final attaches = ref.read(attachesNotifierProvider(account, chat: true));
    final hasFile = attaches.isNotEmpty;
    final file = hasFile
        ? await futureWithDialog(
            ref.context,
            ref
                .read(attachesNotifierProvider(account, chat: true).notifier)
                .upload(0),
          )
        : null;
    if (hasFile && file == null) return;
    if (!ref.context.mounted) return;
    if (ref.read(generalSettingsNotifierProvider).confirmBeforePost) {
      final confirmed = await confirmSend(
        ref.context,
        account,
        text: text,
        file: file,
      );
      if (!confirmed) return;
      if (!ref.context.mounted) return;
    }
    final misskey = ref.read(misskeyProvider(account));
    ChatMessage? message;
    if (userId case final userId?) {
      message = await futureWithDialog(
        ref.context,
        misskey.chat.messages.createToUser(
          ChatMessagesCreateToUserRequest(
            toUserId: userId,
            text: text,
            fileId: file?.id,
          ),
        ),
      );
    } else if (roomId case final roomId?) {
      message = await futureWithDialog(
        ref.context,
        misskey.chat.messages.createToRoom(
          ChatMessagesCreateToRoomRequest(
            toRoomId: roomId,
            text: text,
            fileId: file?.id,
          ),
        ),
      );
    }
    if (message != null) {
      controller.text = '';
      ref.invalidate(attachesNotifierProvider(account, chat: true));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enableSpellCheck = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableSpellCheck,
      ),
    );
    final text = ref.watch(
      sendChatMessageNotifierProvider(account, userId: userId, roomId: roomId),
    );
    final attaches = ref.watch(attachesNotifierProvider(account, chat: true));
    final controller = useTextEditingController(text: text);
    final focusNode = useFocusNode();
    final isFocused = useState(false);
    ref.listen(
      sendChatMessageNotifierProvider(account, userId: userId, roomId: roomId),
      (_, text) {
        final s = text ?? '';
        if (s != controller.text) {
          controller.text = s;
        }
      },
    );
    useEffect(() {
      void controllerCallback() {
        ref
            .read(
              sendChatMessageNotifierProvider(
                account,
                userId: userId,
                roomId: roomId,
              ).notifier,
            )
            .setText(controller.text);
      }

      void focusNodeCallback() {
        isFocused.value = focusNode.hasFocus;
      }

      controller.addListener(controllerCallback);
      focusNode.addListener(focusNodeCallback);

      return () {
        controller.removeListener(controllerCallback);
        focusNode.removeListener(focusNodeCallback);
      };
    }, [account]);
    final showTextField = isFocused.value || (text?.isNotEmpty ?? false);
    final canPost = (text?.isNotEmpty ?? false) || attaches.isNotEmpty;
    final theme = Theme.of(context);

    return Shortcuts(
      shortcuts: {
        ...disablingTextShortcuts,
        submitActivator: VoidCallbackIntent(() {
          if (canPost) {
            _send(ref, controller);
          }
        }),
      },
      child: TextFieldTapRegion(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.0,
          children: [
            Visibility(
              visible: showTextField,
              maintainState: true,
              maintainFocusability: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    hintText: t.misskey.inputMessageHere,
                    filled: false,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  minLines: 1,
                  maxLines: 3,
                  spellCheckConfiguration: enableSpellCheck
                      ? const SpellCheckConfiguration()
                      : null,
                ),
              ),
            ),
            if (attaches.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PostFormAttaches(
                  account: account,
                  chat: true,
                  maxCrossAxisExtent: 100.0,
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  IconButton(
                    tooltip: t.misskey.attachFile,
                    onPressed: () async {
                      if (attaches.isNotEmpty) {
                        ref
                            .read(
                              attachesNotifierProvider(
                                account,
                                chat: true,
                              ).notifier,
                            )
                            .removeAll();
                      } else {
                        final file = await showModalBottomSheet<PostFile>(
                          context: context,
                          builder: (context) =>
                              FilePickerSheet(account: account),
                          clipBehavior: Clip.hardEdge,
                        );
                        if (file != null) {
                          ref
                              .read(
                                attachesNotifierProvider(
                                  account,
                                  chat: true,
                                ).notifier,
                              )
                              .add(file);
                        }
                      }
                    },
                    icon: Icon(
                      Icons.add_photo_alternate,
                      color: attaches.isNotEmpty
                          ? theme.colorScheme.primary
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () => isFocused.value
                          ? focusNode.unfocus()
                          : focusNode.requestFocus(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Visibility.maintain(
                          visible: !showTextField,
                          child: Text(
                            t.misskey.inputMessageHere,
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: theme.colorScheme.onSurface.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      foregroundColor: theme.colorScheme.primary,
                      disabledForegroundColor: theme.colorScheme.primary
                          .withValues(alpha: 0.5),
                    ),
                    tooltip: t.misskey.chat_.send,
                    onPressed: canPost ? () => _send(ref, controller) : null,
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isFocused.value,
              maintainState: true,
              child: TextFieldTapRegion(
                onTapOutside: (_) => primaryFocus?.unfocus(),
                child: MfmKeyboard(account: account, controller: controller),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
