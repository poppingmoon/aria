import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/max_content_width.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../widget/chat_message_widget.dart';

Future<bool> confirmSend(
  BuildContext context,
  Account account, {
  String? text,
  DriveFile? file,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => ChatMessageSendConfirmationDialog(
      account: account,
      text: text,
      file: file,
    ),
  );
  return result ?? false;
}

class ChatMessageSendConfirmationDialog extends ConsumerWidget {
  const ChatMessageSendConfirmationDialog({
    super.key,
    required this.account,
    this.text,
    this.file,
  });

  final Account account;
  final String? text;
  final DriveFile? file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final theme = Theme.of(context);

    return Dialog(
      child: Container(
        width: maxContentWidth,
        margin: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    t.aria.sendMessageConfirm,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChatMessageWidget(
                  account: account,
                  message: ChatMessage(
                    id: '',
                    createdAt: DateTime.now(),
                    fromUserId: i?.id ?? '',
                    fromUser: i != null ? UserLite.fromJson(i.toJson()) : null,
                    text: text,
                    file: file,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8.0,
                    children: [
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () => context.pop(true),
                        child: Text(t.misskey.ok),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: theme.colorScheme.primary,
                          backgroundColor:
                              theme.colorScheme.surfaceContainerLowest,
                        ),
                        onPressed: () => context.pop(false),
                        child: Text(t.misskey.cancel),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
