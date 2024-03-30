// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListSettingsImpl _$$ListSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ListSettingsImpl(
      name: json['name'] as String?,
      isPublic: json['isPublic'] as bool?,
    );

Map<String, dynamic> _$$ListSettingsImplToJson(_$ListSettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('isPublic', instance.isPublic);
  return val;
}
