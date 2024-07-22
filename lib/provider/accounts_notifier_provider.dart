import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'dio_provider.dart';
import 'shared_preferences_provider.dart';
import 'tokens_notifier_provider.dart';

part 'accounts_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class AccountsNotifier extends _$AccountsNotifier {
  @override
  List<Account> build() {
    final value = ref.watch(sharedPreferencesProvider).getStringList(_key);
    if (value != null) {
      return value
          .map((e) => Account.fromJson(jsonDecode(e) as Map<String, dynamic>))
          .toList();
    } else {
      return [];
    }
  }

  static const _key = 'accounts';

  Future<void> _save() async {
    await ref
        .read(sharedPreferencesProvider)
        .setStringList(_key, state.map((e) => jsonEncode(e)).toList());
  }

  Future<void> login(Account account, String token) async {
    if (state.contains(account)) {
      return;
    }
    await ref.read(tokensNotifierProvider.notifier).add(account, token);
    state = [...state, account];
    await _save();
  }

  Future<bool> loginWithToken(String host, String token) async {
    if (kDebugMode) {
      if (host.startsWith('localhost')) {
        final i = await ref.read(dioProvider).postUri<Map<String, dynamic>>(
          Uri.http(host, 'api/i'),
          data: {'i': token},
        );
        await login(
          Account(
            host: host.toLowerCase(),
            username: i.data!['username'] as String,
          ),
          token,
        );
        return true;
      }
    }
    final i = await ref.read(dioProvider).postUri<Map<String, dynamic>>(
      Uri.https(host, 'api/i'),
      data: {'i': token},
    );
    await login(
      Account(
        host: host.toLowerCase(),
        username: i.data!['username'] as String,
      ),
      token,
    );
    return true;
  }

  Future<void> remove(Account account) async {
    state = state.where((acct) => acct != account).toList();
    await ref.read(tokensNotifierProvider.notifier).remove(account);
  }

  Future<void> reorder(int oldIndex, int newIndex) async {
    final items = state.toList();
    final item = items.removeAt(oldIndex);
    items.insert(oldIndex < newIndex ? newIndex - 1 : newIndex, item);
    state = items;
    await _save();
  }
}
