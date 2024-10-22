import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../token_provider.dart';

part 'misskey_provider.g.dart';

@Riverpod(keepAlive: true)
Misskey misskey(Ref ref, Account account) {
  final token = ref.watch(tokenProvider(account));
  if (kDebugMode) {
    if (account.host.startsWith('localhost')) {
      return Misskey(
        host: account.host,
        token: token,
        apiUrl: 'http://${account.host}/api/',
      );
    }
  }
  return Misskey(host: account.host, token: token);
}
