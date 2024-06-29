import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

import '../provider/general_settings_notifier_provider.dart';

Future<bool> launchUrl(WidgetRef ref, Uri url) {
  return launcher.launchUrl(
    url,
    mode: ref.read(generalSettingsNotifierProvider).launchMode,
  );
}
