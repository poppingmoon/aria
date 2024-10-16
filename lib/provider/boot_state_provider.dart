import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'accounts_notifier_provider.dart';
import 'tokens_notifier_provider.dart';

part 'boot_state_provider.g.dart';

@riverpod
class BootState extends _$BootState {
  @override
  FutureOr<bool?> build() {
    return null;
  }

  Future<void> boot() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        await Future.wait(
          ref.read(accountsNotifierProvider).map(
                (account) =>
                    ref.read(tokensNotifierProvider.notifier).load(account),
              ),
        );
        return true;
      },
    );
  }
}
