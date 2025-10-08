import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constant/default_pinned_emojis.dart';
import '../model/account.dart';
import 'account_settings_notifier_provider.dart';

part 'pinned_emojis_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class PinnedEmojisNotifier extends _$PinnedEmojisNotifier {
  @override
  List<String> build(Account account, {bool reaction = false}) {
    if (account.isGuest) {
      return [];
    }
    return ref.watch(
      accountSettingsNotifierProvider(account).select(
        (settings) =>
            reaction ? settings.pinnedEmojisForReaction : settings.pinnedEmojis,
      ),
    );
  }

  Future<void> _save(List<String> emojis) async {
    if (reaction) {
      await ref
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPinnedEmojisForReaction(emojis);
    } else {
      await ref
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPinnedEmojis(emojis);
    }
  }

  Future<void> add(String emoji) async {
    await _save([...state, emoji]);
  }

  Future<void> addAll(List<String> emojis) async {
    await _save([...state, ...emojis]);
  }

  Future<void> reorder(int oldIndex, int newIndex) async {
    final items = state.toList();
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
    await _save(items);
  }

  Future<void> remove(int index) async {
    await _save([...state.take(index), ...state.skip(index + 1)]);
  }

  Future<void> reset() async {
    await _save(defaultPinnedEmojis);
  }
}
