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
      excludeBots: json['excludeBots'] as bool?,
    );

Map<String, dynamic> _$$AntennaSettingsImplToJson(
        _$AntennaSettingsImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (_$AntennaSourceEnumMap[instance.src] case final value?) 'src': value,
      if (instance.userListId case final value?) 'userListId': value,
      if (instance.users case final value?) 'users': value,
      if (instance.withReplies case final value?) 'withReplies': value,
      if (instance.keywords case final value?) 'keywords': value,
      if (instance.excludeKeywords case final value?) 'excludeKeywords': value,
      if (instance.localOnly case final value?) 'localOnly': value,
      if (instance.caseSensitive case final value?) 'caseSensitive': value,
      if (instance.withFile case final value?) 'withFile': value,
      if (instance.excludeBots case final value?) 'excludeBots': value,
    };

const _$AntennaSourceEnumMap = {
  AntennaSource.home: 'home',
  AntennaSource.all: 'all',
  AntennaSource.users: 'users',
  AntennaSource.usersBlackList: 'users_blacklist',
  AntennaSource.list: 'list',
};
