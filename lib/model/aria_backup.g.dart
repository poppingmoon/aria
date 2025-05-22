// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aria_backup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AriaBackup _$AriaBackupFromJson(Map<String, dynamic> json) => _AriaBackup(
  metadata: json['metadata'] as Map<String, dynamic>?,
  timelineTabs: (json['timelineTabs'] as List<dynamic>?)
      ?.map((e) => TabSettings.fromJson(e as Map<String, dynamic>))
      .toList(),
  accountSettings: (json['accountSettings'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, AccountSettings.fromJson(e as Map<String, dynamic>)),
  ),
  generalSettings: json['generalSettings'] == null
      ? null
      : GeneralSettings.fromJson(
          json['generalSettings'] as Map<String, dynamic>,
        ),
  themes: (json['themes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  aiscriptStorage: (json['aiscriptStorage'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
  ),
);

Map<String, dynamic> _$AriaBackupToJson(
  _AriaBackup instance,
) => <String, dynamic>{
  if (instance.metadata case final value?) 'metadata': value,
  if (instance.timelineTabs?.map((e) => e.toJson()).toList() case final value?)
    'timelineTabs': value,
  if (instance.accountSettings?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'accountSettings': value,
  if (instance.generalSettings?.toJson() case final value?)
    'generalSettings': value,
  if (instance.themes case final value?) 'themes': value,
  if (instance.aiscriptStorage case final value?) 'aiscriptStorage': value,
};
