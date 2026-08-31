import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_settings.dart';
import 'general_settings.dart';
import 'tab_settings.dart';

part 'aria_backup.freezed.dart';
part 'aria_backup.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const AriaBackup({
  final Map<String, dynamic>? metadata,
  final List<TabSettings>? timelineTabs,
  final Map<String, AccountSettings>? accountSettings,
  final GeneralSettings? generalSettings,
  final List<String>? themes,
  final Map<String, Map<String, String>>? aiscriptStorage,
  final List<Map<String, dynamic>>? noteDrafts,
}) with _$AriaBackup {
  factory fromJson(Map<String, Object?> json) => _$AriaBackupFromJson(json);

  Map<String, Object?> toJson() => _$AriaBackupToJson(this);
}
