// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

React _$ReactFromJson(Map<String, dynamic> json) => React(
  reaction: json['reaction'] as String,
  user:
      json['user'] == null
          ? null
          : UserLite.fromJson(json['user'] as Map<String, dynamic>),
  messageId: json['messageId'] as String,
);

Unreact _$UnreactFromJson(Map<String, dynamic> json) => Unreact(
  reaction: json['reaction'] as String,
  user:
      json['user'] == null
          ? null
          : UserLite.fromJson(json['user'] as Map<String, dynamic>),
  messageId: json['messageId'] as String,
);
