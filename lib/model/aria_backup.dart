import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_settings.dart';
import 'general_settings.dart';
import 'tab_settings.dart';

part 'aria_backup.freezed.dart';
part 'aria_backup.g.dart';

@freezed
class AriaBackup with _$AriaBackup {
  const factory AriaBackup({
    Map<String, dynamic>? metadata,
    List<TabSettings>? timelineTabs,
    Map<String, AccountSettings>? accountSettings,
    GeneralSettings? generalSettings,
    List<String>? themes,
    Map<String, Map<String, String>>? aiscriptStorage,
  }) = _AriaBackup;

  factory AriaBackup.fromJson(Map<String, dynamic> json) =>
      _$AriaBackupFromJson(json);
}
