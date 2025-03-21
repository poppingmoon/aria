import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'dio_provider.dart';
import 'shared_preferences_provider.dart';
import 'tokens_notifier_provider.dart';
import 'user_ids_notifier_provider.dart';

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

  Future<({bool added})> login(
    Account account,
    String token,
    String userId,
  ) async {
    await ref.read(tokensNotifierProvider.notifier).add(account, token);
    await ref.read(userIdsNotifierProvider.notifier).add(account, userId);
    if (state.contains(account)) {
      return (added: false);
    }
    state = {...state, account}.toList();
    await _save();
    return (added: true);
  }

  Future<({bool added})> loginWithToken(String host, String token) async {
    if (kDebugMode) {
      if (host.startsWith('localhost')) {
        final i = await ref
            .read(dioProvider)
            .postUri<Map<String, dynamic>>(
              Uri.http(host, 'api/i'),
              data: {'i': token},
            );
        return login(
          Account(
            host: host.toLowerCase(),
            username: i.data!['username'] as String,
          ),
          token,
          i.data!['id'] as String,
        );
      }
    }
    final i = await ref
        .read(dioProvider)
        .postUri<Map<String, dynamic>>(
          Uri.https(host, 'api/i'),
          data: {'i': token},
        );
    return login(
      Account(
        host: host.toLowerCase(),
        username: i.data!['username'] as String,
      ),
      token,
      i.data!['id'] as String,
    );
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
