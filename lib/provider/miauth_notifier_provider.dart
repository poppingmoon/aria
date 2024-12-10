import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  Uri buildMiAuthUrl(Uri serverUrl) {
    final (:sessionId, :url) = ref
        .read(miAuthRepositoryProvider)
        .buildMiAuthUrl(serverUrl);
    state = MiAuthState(serverUrl: serverUrl, sessionId: sessionId, url: url);
    return url;
  }

  Future<({bool success, bool? added})> check() async {
    if (state case MiAuthState(:final serverUrl, :final sessionId)) {
      final result = await ref
          .read(miAuthRepositoryProvider)
          .check(serverUrl, sessionId);
      if (result case (:final token, :final user)) {
        final result = await ref
            .read(accountsNotifierProvider.notifier)
            .login(
              serverUrl: serverUrl,
              username: user.username,
              token: token,
              userId: user.id,
            );
        state = null;
        return (success: true, added: result.added);
      } else {
        return (success: false, added: null);
      }
    } else {
      return (success: true, added: null);
    }
  }
}
