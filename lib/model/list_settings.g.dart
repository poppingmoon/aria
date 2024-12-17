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

Map<String, dynamic> _$$ListSettingsImplToJson(_$ListSettingsImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.isPublic case final value?) 'isPublic': value,
    };
