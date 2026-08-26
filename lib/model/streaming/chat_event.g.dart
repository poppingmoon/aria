// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_React _$ReactFromJson(Map<String, dynamic> json) => _React(
  reaction: json['reaction'] as String,
  user: json['user'] == null
      ? null
      : UserLite.fromJson(json['user'] as Map<String, dynamic>),
  messageId: json['messageId'] as String,
);

_Unreact _$UnreactFromJson(Map<String, dynamic> json) => _Unreact(
  reaction: json['reaction'] as String,
  user: json['user'] == null
      ? null
      : UserLite.fromJson(json['user'] as Map<String, dynamic>),
  messageId: json['messageId'] as String,
);
