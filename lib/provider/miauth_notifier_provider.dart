import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/miauth_state.dart';
import 'accounts_notifier_provider.dart';
import 'miauth_repository_provider.dart';

part 'miauth_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class MiAuthNotifier extends _$MiAuthNotifier {
  @override
  MiAuthState? build() {
    return null;
  }

  Uri buildMiAuthUrl(String host) {
    final (sessionId, url) =
        ref.read(miAuthRepositoryProvider).buildMiAuthUrl(host);
    state = MiAuthState(
      host: host,
      sessionId: sessionId,
      url: url,
    );
    return url;
  }

  Future<bool> check() async {
    if (state == null) {
      return true;
    }
    final result = await ref.read(miAuthRepositoryProvider).check(
          state!.host,
          state!.sessionId,
        );
    if (result == null) {
      return false;
    }
    final (token, user) = result;
    await ref.read(accountsNotifierProvider.notifier).login(
          Account(
            host: state!.host.toLowerCase(),
            username: user.username,
          ),
          token,
        );
    state = null;
    return true;
  }
}
