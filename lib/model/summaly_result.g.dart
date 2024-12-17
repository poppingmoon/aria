// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summaly_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummalyResultImpl _$$SummalyResultImplFromJson(Map<String, dynamic> json) =>
    _$SummalyResultImpl(
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      sitename: json['sitename'] as String?,
      sensitive: json['sensitive'] as bool?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SummalyResultImplToJson(_$SummalyResultImpl instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.icon case final value?) 'icon': value,
      if (instance.description case final value?) 'description': value,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      'player': instance.player.toJson(),
      if (instance.sitename case final value?) 'sitename': value,
      if (instance.sensitive case final value?) 'sensitive': value,
      if (instance.url case final value?) 'url': value,
    };

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      allow:
          (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      if (instance.url case final value?) 'url': value,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
      if (instance.allow case final value?) 'allow': value,
    };
