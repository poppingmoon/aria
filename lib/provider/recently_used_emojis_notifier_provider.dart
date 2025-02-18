import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'account_settings_notifier_provider.dart';

part 'recently_used_emojis_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class RecentlyUsedEmojisNotifier extends _$RecentlyUsedEmojisNotifier {
  @override
  List<String> build(Account account) {
    return ref.watch(
      accountSettingsNotifierProvider(
        account,
      ).select((settings) => settings.recentlyUsedEmojis),
    );
  }

  Future<void> _save(List<String> emojis) async {
    await ref
        .read(accountSettingsNotifierProvider(account).notifier)
        .setRecentlyUsedEmojis(emojis);
  }

  Future<void> add(String emoji) async {
    await _save({emoji, ...state}.take(32).toList());
  }

  Future<void> reset() async {
    await _save([]);
  }
}
