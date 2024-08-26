import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../provider/general_settings_notifier_provider.dart';

Future<bool> launchUrl(
  WidgetRef ref,
  Uri url, {
  url_launcher.LaunchMode? mode,
}) {
  return url_launcher.launchUrl(
    url,
    mode: mode ?? ref.read(generalSettingsNotifierProvider).launchMode,
  );
}
