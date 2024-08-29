// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TabSettingsImpl _$$TabSettingsImplFromJson(Map<String, dynamic> json) =>
    _$TabSettingsImpl(
      id: json['id'] as String?,
      tabType: $enumDecode(_$TabTypeEnumMap, json['tabType']),
      name: json['name'] as String?,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : TabIcon.fromJson(json['icon'] as Map<String, dynamic>),
      disableStreaming: json['disableStreaming'] as bool? ?? false,
      disableSubscribing: json['disableSubscribing'] as bool? ?? false,
      withReplies: json['withReplies'] as bool? ?? false,
      withRenotes: json['withRenotes'] as bool? ?? true,
      withSelfRenotes: json['withSelfRenotes'] as bool? ?? true,
      withFiles: json['withFiles'] as bool? ?? false,
      withSensitive: json['withSensitive'] as bool? ?? true,
      keepPosition: json['keepPosition'] as bool? ?? false,
      roleId: json['roleId'] as String?,
      channelId: json['channelId'] as String?,
      listId: json['listId'] as String?,
      antennaId: json['antennaId'] as String?,
      userId: json['userId'] as String?,
      endpoint: json['endpoint'] as String?,
      streamingChannel: json['streamingChannel'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TabSettingsImplToJson(_$TabSettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['tabType'] = _$TabTypeEnumMap[instance.tabType]!;
  writeNotNull('name', instance.name);
  val['account'] = instance.account.toJson();
  writeNotNull('icon', instance.icon?.toJson());
  val['disableStreaming'] = instance.disableStreaming;
  val['disableSubscribing'] = instance.disableSubscribing;
  val['withReplies'] = instance.withReplies;
  val['withRenotes'] = instance.withRenotes;
  val['withSelfRenotes'] = instance.withSelfRenotes;
  val['withFiles'] = instance.withFiles;
  val['withSensitive'] = instance.withSensitive;
  val['keepPosition'] = instance.keepPosition;
  writeNotNull('roleId', instance.roleId);
  writeNotNull('channelId', instance.channelId);
  writeNotNull('listId', instance.listId);
  writeNotNull('antennaId', instance.antennaId);
  writeNotNull('userId', instance.userId);
  writeNotNull('endpoint', instance.endpoint);
  writeNotNull('streamingChannel', instance.streamingChannel);
  writeNotNull('parameters', instance.parameters);
  return val;
}

const _$TabTypeEnumMap = {
  TabType.homeTimeline: 'homeTimeline',
  TabType.localTimeline: 'localTimeline',
  TabType.hybridTimeline: 'hybridTimeline',
  TabType.globalTimeline: 'globalTimeline',
  TabType.roleTimeline: 'roleTimeline',
  TabType.userList: 'userList',
  TabType.antenna: 'antenna',
  TabType.channel: 'channel',
  TabType.mention: 'mention',
  TabType.direct: 'direct',
  TabType.user: 'user',
  TabType.notifications: 'notifications',
  TabType.custom: 'custom',
};
