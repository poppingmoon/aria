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

Map<String, dynamic> _$$SummalyResultImplToJson(_$SummalyResultImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('icon', instance.icon);
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  val['player'] = instance.player.toJson();
  writeNotNull('sitename', instance.sitename);
  writeNotNull('sensitive', instance.sensitive);
  writeNotNull('url', instance.url);
  return val;
}

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      allow:
          (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('allow', instance.allow);
  return val;
}
