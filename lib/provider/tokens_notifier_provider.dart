import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'accounts_notifier_provider.dart';
import 'token_repository_provider.dart';

part 'tokens_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class TokensNotifier extends _$TokensNotifier {
  @override
  Map<Account, String> build() {
    return {};
  }

  Future<void> load(Account account) async {
    try {
      final token = await ref.read(tokenRepositoryProvider).readToken(account);
      if (token != null) {
        state = {...state, account: token};
      } else {
        await ref.read(accountsNotifierProvider.notifier).remove(account);
      }
    } catch (_) {}
  }

  Future<void> add(Account account, String token) async {
    state = {...state, account: token};
    await ref.read(tokenRepositoryProvider).writeToken(account, token);
  }

  Future<void> remove(Account account) async {
    final tokens = Map.of(state);
    tokens.remove(account);
    state = tokens;
    await ref.read(tokenRepositoryProvider).deleteToken(account);
  }
}
