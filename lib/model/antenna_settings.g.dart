// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antenna_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AntennaSettingsImpl _$$AntennaSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$AntennaSettingsImpl(
      name: json['name'] as String?,
      src: $enumDecodeNullable(_$AntennaSourceEnumMap, json['src']),
      userListId: json['userListId'] as String?,
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      withReplies: json['withReplies'] as bool?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      excludeKeywords: (json['excludeKeywords'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      localOnly: json['localOnly'] as bool?,
      caseSensitive: json['caseSensitive'] as bool?,
      withFile: json['withFile'] as bool?,
    );

Map<String, dynamic> _$$AntennaSettingsImplToJson(
    _$AntennaSettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('src', _$AntennaSourceEnumMap[instance.src]);
  writeNotNull('userListId', instance.userListId);
  writeNotNull('users', instance.users);
  writeNotNull('withReplies', instance.withReplies);
  writeNotNull('keywords', instance.keywords);
  writeNotNull('excludeKeywords', instance.excludeKeywords);
  writeNotNull('localOnly', instance.localOnly);
  writeNotNull('caseSensitive', instance.caseSensitive);
  writeNotNull('withFile', instance.withFile);
  return val;
}

const _$AntennaSourceEnumMap = {
  AntennaSource.home: 'home',
  AntennaSource.all: 'all',
  AntennaSource.users: 'users',
  AntennaSource.usersBlackList: 'users_blacklist',
  AntennaSource.list: 'list',
};
