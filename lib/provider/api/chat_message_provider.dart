import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'chat_message_provider.g.dart';

@riverpod
FutureOr<ChatMessage> chatMessage(Ref ref, Account account, String messageId) {
  return ref
      .read(misskeyProvider(account))
      .chat
      .messages
      .show(ChatMessagesShowRequest(messageId: messageId));
}
