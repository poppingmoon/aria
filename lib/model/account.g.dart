// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      host: json['host'] as String,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) {
  final val = <String, dynamic>{
    'host': instance.host,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  return val;
}
