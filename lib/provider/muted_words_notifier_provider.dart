import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'account_settings_notifier_provider.dart';
import 'api/i_notifier_provider.dart';

part 'muted_words_notifier_provider.g.dart';

@riverpod
class MutedWordsNotifier extends _$MutedWordsNotifier {
  @override
  List<MuteWord> build(Account account, {bool hardMute = false}) {
    final mutedWords = ref.watch(
      iNotifierProvider(
        account,
      ).select((i) => hardMute ? i.value?.hardMutedWords : i.value?.mutedWords),
    );
    if (mutedWords != null) {
      _save(mutedWords);
      return mutedWords;
    }
    return ref.watch(
      accountSettingsNotifierProvider(account).select(
        (settings) => hardMute ? settings.hardMutedWords : settings.mutedWords,
      ),
    );
  }

  void _save(List<MuteWord> mutedWords) {
    Future(() {
      try {
        if (hardMute) {
          ref
              .read(accountSettingsNotifierProvider(account).notifier)
              .setHardMutedWords(mutedWords);
        } else {
          ref
              .read(accountSettingsNotifierProvider(account).notifier)
              .setMutedWords(mutedWords);
        }
      } catch (_) {}
    });
  }

  Future<void> updateMutedWords(List<MuteWord> mutedWords) async {
    if (hardMute) {
      await ref
          .read(iNotifierProvider(account).notifier)
          .setHardMutedWords(mutedWords);
    } else {
      await ref
          .read(iNotifierProvider(account).notifier)
          .setMutedWords(mutedWords);
    }
    state = mutedWords;
    _save(mutedWords);
  }
}
