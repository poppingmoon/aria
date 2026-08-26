import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_settings.dart';
import 'general_settings.dart';
import 'tab_settings.dart';

part 'aria_backup.freezed.dart';
part 'aria_backup.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const AriaBackup({
  @override final Map<String, dynamic>? metadata,
  @override final List<TabSettings>? timelineTabs,
  @override final Map<String, AccountSettings>? accountSettings,
  @override final GeneralSettings? generalSettings,
  @override final List<String>? themes,
  @override final Map<String, Map<String, String>>? aiscriptStorage,
  @override final List<Map<String, dynamic>>? noteDrafts,
}) with _$AriaBackup {
  factory fromJson(Map<String, Object?> json) => _$AriaBackupFromJson(json);

  Map<String, Object?> toJson() => _$AriaBackupToJson(this);
}
