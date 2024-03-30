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

Map<String, dynamic> _$$MisskeyThemeImplToJson(_$MisskeyThemeImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('author', instance.author);
  writeNotNull('desc', instance.desc);
  writeNotNull('base', instance.base);
  val['props'] = instance.props;
  return val;
}
