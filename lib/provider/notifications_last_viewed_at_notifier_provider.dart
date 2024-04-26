import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'shared_preferences_provider.dart';

part 'notifications_last_viewed_at_notifier_provider.g.dart';

@riverpod
class NotificationsLastViewedAtNotifier
    extends _$NotificationsLastViewedAtNotifier {
  @override
  DateTime? build(Account account) {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    ref.onDispose(() => _timer?.cancel());
    if (value != null) {
      return DateTime.tryParse(value);
    }
    return null;
  }

  String get _key => '$account/notifications/lastViewed';

  Timer? _timer;

  bool _recentlySaved = false;

  void save(DateTime date) {
    if (!_recentlySaved) {
      ref
          .read(sharedPreferencesProvider)
          .setString(_key, date.toIso8601String());
      _recentlySaved = true;
      _timer = Timer(const Duration(seconds: 3), () => _recentlySaved = false);
    }
  }
}
