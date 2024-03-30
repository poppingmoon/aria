import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'shared_preferences_provider.dart';

part 'muted_ads_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class MutedAdsNotifier extends _$MutedAdsNotifier {
  @override
  List<String> build(Account account) {
    return ref.watch(sharedPreferencesProvider).getStringList(_key) ?? [];
  }

  String get _key => '$account/mutedAds';

  Future<void> _save() async {
    await ref.read(sharedPreferencesProvider).setStringList(_key, state);
  }

  Future<void> add(String adId) async {
    state = [...state, adId];
    await _save();
  }
}
