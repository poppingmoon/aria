// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MisskeyThemeImpl _$$MisskeyThemeImplFromJson(Map<String, dynamic> json) =>
    _$MisskeyThemeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      author: json['author'] as String?,
      desc: json['desc'] as String?,
      base: json['base'] as String?,
      props: Map<String, String>.from(json['props'] as Map),
    );

Map<String, dynamic> _$$MisskeyThemeImplToJson(_$MisskeyThemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.author case final value?) 'author': value,
      if (instance.desc case final value?) 'desc': value,
      if (instance.base case final value?) 'base': value,
      'props': instance.props,
    };
