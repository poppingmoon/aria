// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrlUploadFinishedImpl _$$UrlUploadFinishedImplFromJson(
        Map<String, dynamic> json) =>
    _$UrlUploadFinishedImpl(
      marker: json['marker'] as String?,
      file: DriveFile.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UrlUploadFinishedImplToJson(
        _$UrlUploadFinishedImpl instance) =>
    <String, dynamic>{
      if (instance.marker case final value?) 'marker': value,
      'file': instance.file.toJson(),
    };
