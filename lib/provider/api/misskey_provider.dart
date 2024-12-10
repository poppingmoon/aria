import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../server_url_notifier_provider.dart';
import '../token_provider.dart';

part 'misskey_provider.g.dart';

@Riverpod(keepAlive: true)
Misskey misskey(Ref ref, Account account) {
  final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
  final token = ref.watch(tokenProvider(account));

  return Misskey(serverUrl: serverUrl, token: token);
}
