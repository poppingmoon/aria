import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'shared_preferences_provider.dart';

part 'server_url_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class ServerUrlNotifier extends _$ServerUrlNotifier {
  @override
  Uri build(String host) {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      if (Uri.tryParse(value) case final url?) {
        return url;
      }
    }
    return Uri.https(host);
  }

  String get _key => '$host/_url';

  Future<void> updateUrl(Uri url) async {
    if (state != url) {
      state = url;
      await ref.read(sharedPreferencesProvider).setString(_key, url.toString());
    }
  }

  Future<Uri?> getSavedUrl() async {
    final value = ref.read(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      if (Uri.tryParse(value) case final url?) {
        return url;
      }
    }
    return null;
  }
}
