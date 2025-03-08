// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListSettings _$ListSettingsFromJson(Map<String, dynamic> json) =>
    _ListSettings(
      name: json['name'] as String?,
      isPublic: json['isPublic'] as bool?,
    );

Map<String, dynamic> _$ListSettingsToJson(_ListSettings instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.isPublic case final value?) 'isPublic': value,
    };
