import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'account_settings_notifier_provider.dart';

part 'muted_emojis_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class MutedEmojisNotifier extends _$MutedEmojisNotifier {
  @override
  Set<String> build(Account account) {
    if (account.isGuest) {
      return {};
    }
    return ref
        .watch(accountSettingsNotifierProvider(account))
        .mutedEmojis
        .toSet();
  }

  Future<void> _save() async {
    await ref
        .read(accountSettingsNotifierProvider(account).notifier)
        .setMutedEmojis(state.toList());
  }

  Future<void> updateMutedEmojis(Iterable<String> mutedEmojis) async {
    state = mutedEmojis.map((emoji) => emoji.replaceFirst('@.', '')).toSet();
    await _save();
  }

  Future<void> add(String emoji) async {
    state = {...state, emoji.replaceFirst('@.', '')};
    await _save();
  }

  Future<void> remove(String emoji) async {
    final emojis = Set.of(state);
    emojis.remove(emoji.replaceFirst('@.', ''));
    state = emojis;
    await _save();
  }
}
