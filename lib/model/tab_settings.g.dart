// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TabSettings _$TabSettingsFromJson(Map<String, dynamic> json) => _TabSettings(
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
  hashtag: json['hashtag'] as String?,
  userId: json['userId'] as String?,
  endpoint: json['endpoint'] as String?,
  streamingChannel: json['streamingChannel'] as String?,
  parameters: json['parameters'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$TabSettingsToJson(
  _TabSettings instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  'tabType': _$TabTypeEnumMap[instance.tabType]!,
  if (instance.name case final value?) 'name': value,
  'account': instance.account.toJson(),
  if (instance.icon?.toJson() case final value?) 'icon': value,
  'disableStreaming': instance.disableStreaming,
  'disableSubscribing': instance.disableSubscribing,
  'withReplies': instance.withReplies,
  'withRenotes': instance.withRenotes,
  'withSelfRenotes': instance.withSelfRenotes,
  'withFiles': instance.withFiles,
  'withSensitive': instance.withSensitive,
  'keepPosition': instance.keepPosition,
  if (instance.roleId case final value?) 'roleId': value,
  if (instance.channelId case final value?) 'channelId': value,
  if (instance.listId case final value?) 'listId': value,
  if (instance.antennaId case final value?) 'antennaId': value,
  if (instance.hashtag case final value?) 'hashtag': value,
  if (instance.userId case final value?) 'userId': value,
  if (instance.endpoint case final value?) 'endpoint': value,
  if (instance.streamingChannel case final value?) 'streamingChannel': value,
  if (instance.parameters case final value?) 'parameters': value,
};

const _$TabTypeEnumMap = {
  TabType.homeTimeline: 'homeTimeline',
  TabType.localTimeline: 'localTimeline',
  TabType.hybridTimeline: 'hybridTimeline',
  TabType.globalTimeline: 'globalTimeline',
  TabType.roleTimeline: 'roleTimeline',
  TabType.userList: 'userList',
  TabType.antenna: 'antenna',
  TabType.channel: 'channel',
  TabType.hashtag: 'hashtag',
  TabType.mention: 'mention',
  TabType.direct: 'direct',
  TabType.user: 'user',
  TabType.notifications: 'notifications',
  TabType.custom: 'custom',
};
