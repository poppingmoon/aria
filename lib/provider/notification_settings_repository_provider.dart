import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/notification_settings_repository.dart';

part 'notification_settings_repository_provider.g.dart';

@Riverpod(keepAlive: true)
NotificationSettingsRepository notificationSettingsRepository(Ref ref) {
  return const NotificationSettingsRepository();
}
