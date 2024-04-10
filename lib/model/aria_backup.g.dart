// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aria_backup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AriaBackupImpl _$$AriaBackupImplFromJson(Map<String, dynamic> json) =>
    _$AriaBackupImpl(
      metadata: json['metadata'] as Map<String, dynamic>?,
      timelineTabs: (json['timelineTabs'] as List<dynamic>?)
          ?.map((e) => TabSettings.fromJson(e as Map<String, dynamic>))
          .toList(),
      accountSettings: (json['accountSettings'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AccountSettings.fromJson(e as Map<String, dynamic>)),
      ),
      generalSettings: json['generalSettings'] == null
          ? null
          : GeneralSettings.fromJson(
              json['generalSettings'] as Map<String, dynamic>),
      themes:
          (json['themes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AriaBackupImplToJson(_$AriaBackupImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull(
      'timelineTabs', instance.timelineTabs?.map((e) => e.toJson()).toList());
  writeNotNull('accountSettings',
      instance.accountSettings?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('generalSettings', instance.generalSettings?.toJson());
  writeNotNull('themes', instance.themes);
  return val;
}
