import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'account_settings_notifier_provider.dart';

part 'post_form_hashtags_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class PostFormHashtagsNotifier extends _$PostFormHashtagsNotifier {
  @override
  List<String> build(Account account) {
    return ref.watch(
      accountSettingsNotifierProvider(
        account,
      ).select((settings) => settings.postFormHashtags),
    );
  }

  // https://pub.dev/packages/riverpod_lint#avoid_public_notifier_properties
  // ignore: use_setters_to_change_properties
  void updateHashtags(List<String> hashtags) {
    state = hashtags;
  }

  void updateFromString(String text) {
    updateHashtags(
      text
          .split(RegExp(r'\s'))
          .map((tag) => tag.trim())
          .map((tag) => tag.startsWith('#') ? tag.substring(1) : tag)
          .where((tag) => tag.isNotEmpty)
          .toList(),
    );
  }

  Future<void> save() async {
    if (!state.equals(
      ref.read(accountSettingsNotifierProvider(account)).postFormHashtags,
    )) {
      await ref
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPostFormHashtags(state);
    }
  }
}
