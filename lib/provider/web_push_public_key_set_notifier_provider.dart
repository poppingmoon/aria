import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';

part 'web_push_public_key_set_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class WebPushPublicKeySetNotifier extends _$WebPushPublicKeySetNotifier {
  @override
  FutureOr<({String auth, String publicKey})?> build(Account account) async {
    final value = await _storage.read(key: _key);
    if (value != null) {
      try {
        final json = jsonDecode(value);
        if (json case {
          'auth': final String auth,
          'publicKey': final String publicKey,
        }) {
          return (auth: auth, publicKey: publicKey);
        }
      } catch (_) {}
    }
    return null;
  }

  String get _key => '$account/webPushPublicKeySet';

  static const _storage = FlutterSecureStorage();

  Future<void> save(({String auth, String publicKey}) keySet) async {
    await _storage.write(
      key: _key,
      value: jsonEncode({'auth': keySet.auth, 'publicKey': keySet.publicKey}),
    );
    state = AsyncValue.data(keySet);
  }

  Future<void> delete() async {
    await _storage.delete(key: _key);
    state = const AsyncValue.data(null);
  }
}
