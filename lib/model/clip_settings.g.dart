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

Map<String, dynamic> _$$ClipSettingsImplToJson(_$ClipSettingsImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.isPublic case final value?) 'isPublic': value,
    };
