// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClipSettingsImpl _$$ClipSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ClipSettingsImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      isPublic: json['isPublic'] as bool?,
    );

Map<String, dynamic> _$$ClipSettingsImplToJson(_$ClipSettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('isPublic', instance.isPublic);
  return val;
}
