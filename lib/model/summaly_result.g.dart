// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summaly_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummalyResult _$SummalyResultFromJson(Map<String, dynamic> json) =>
    _SummalyResult(
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      thumbnailStyle: json['thumbnailStyle'] as String?,
      sitename: json['sitename'] as String?,
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      sensitive: json['sensitive'] as bool?,
      activityPub: json['activityPub'] as String?,
      fediverseCreater: json['fediverseCreater'] as String?,
      url: json['url'] as String?,
    );

_Player _$PlayerFromJson(Map<String, dynamic> json) => _Player(
  url: json['url'] as String?,
  width: (json['width'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  allow: (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
);
