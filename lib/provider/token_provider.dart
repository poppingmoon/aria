import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'tokens_notifier_provider.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
String? token(Ref ref, Account account) {
  if (!account.isGuest) {
    return ref.watch(tokensNotifierProvider)[account];
  } else {
    return null;
  }
}
