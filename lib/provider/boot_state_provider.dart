import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../i18n/strings.g.dart';
import 'accounts_notifier_provider.dart';
import 'general_settings_notifier_provider.dart';
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
    final generalSettings = ref.read(generalSettingsNotifierProvider);
    final locale = generalSettings.locale;
    if (locale == null) {
      LocaleSettings.useDeviceLocale();
    } else {
      LocaleSettings.setLocale(locale);
    }
    state = await AsyncValue.guard(
      () async {
        await Future.wait<dynamic>([
          ...ref.read(accountsNotifierProvider).map(
                (account) =>
                    ref.read(tokensNotifierProvider.notifier).load(account),
              ),
        ]);
        if (generalSettings.keepScreenOn) {
          try {
            await WakelockPlus.enable();
          } catch (_) {}
        }
        return true;
      },
    );
  }
}
