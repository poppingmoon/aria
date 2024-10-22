import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'emoji_response_provider.g.dart';

@riverpod
FutureOr<EmojiResponse> emojiResponse(
  Ref ref,
  Account account,
  String emojiName,
) {
  return ref
      .watch(misskeyProvider(account))
      .emoji(EmojiRequest(name: emojiName));
}
