// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TabSettings {


/// Create a copy of TabSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabSettingsCopyWith<TabSettings> get copyWith => _$TabSettingsCopyWithImpl<TabSettings>(this as TabSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TabSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabSettings&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.tabType, _this.tabType) || other.tabType == _this.tabType)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.disableStreaming, _this.disableStreaming) || other.disableStreaming == _this.disableStreaming)&&(identical(other.disableSubscribing, _this.disableSubscribing) || other.disableSubscribing == _this.disableSubscribing)&&(identical(other.withReplies, _this.withReplies) || other.withReplies == _this.withReplies)&&(identical(other.withRenotes, _this.withRenotes) || other.withRenotes == _this.withRenotes)&&(identical(other.withSelfRenotes, _this.withSelfRenotes) || other.withSelfRenotes == _this.withSelfRenotes)&&(identical(other.withFiles, _this.withFiles) || other.withFiles == _this.withFiles)&&(identical(other.withSensitive, _this.withSensitive) || other.withSensitive == _this.withSensitive)&&(identical(other.keepPosition, _this.keepPosition) || other.keepPosition == _this.keepPosition)&&(identical(other.roleId, _this.roleId) || other.roleId == _this.roleId)&&(identical(other.channelId, _this.channelId) || other.channelId == _this.channelId)&&(identical(other.listId, _this.listId) || other.listId == _this.listId)&&(identical(other.antennaId, _this.antennaId) || other.antennaId == _this.antennaId)&&(identical(other.hashtag, _this.hashtag) || other.hashtag == _this.hashtag)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.endpoint, _this.endpoint) || other.endpoint == _this.endpoint)&&(identical(other.streamingChannel, _this.streamingChannel) || other.streamingChannel == _this.streamingChannel)&&const DeepCollectionEquality().equals(other.parameters, _this.parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TabSettings;
  return Object.hashAll([runtimeType,_this.id,_this.tabType,_this.name,_this.account,_this.icon,_this.disableStreaming,_this.disableSubscribing,_this.withReplies,_this.withRenotes,_this.withSelfRenotes,_this.withFiles,_this.withSensitive,_this.keepPosition,_this.roleId,_this.channelId,_this.listId,_this.antennaId,_this.hashtag,_this.userId,_this.endpoint,_this.streamingChannel,const DeepCollectionEquality().hash(_this.parameters)]);
}

@override
String toString() {
  final _this = this as TabSettings;
  return 'TabSettings(id: ${_this.id}, tabType: ${_this.tabType}, name: ${_this.name}, account: ${_this.account}, icon: ${_this.icon}, disableStreaming: ${_this.disableStreaming}, disableSubscribing: ${_this.disableSubscribing}, withReplies: ${_this.withReplies}, withRenotes: ${_this.withRenotes}, withSelfRenotes: ${_this.withSelfRenotes}, withFiles: ${_this.withFiles}, withSensitive: ${_this.withSensitive}, keepPosition: ${_this.keepPosition}, roleId: ${_this.roleId}, channelId: ${_this.channelId}, listId: ${_this.listId}, antennaId: ${_this.antennaId}, hashtag: ${_this.hashtag}, userId: ${_this.userId}, endpoint: ${_this.endpoint}, streamingChannel: ${_this.streamingChannel}, parameters: ${_this.parameters})';
}


}

/// @nodoc
abstract mixin class $TabSettingsCopyWith<$Res>  {
  factory $TabSettingsCopyWith(TabSettings value, $Res Function(TabSettings) _then) = _$TabSettingsCopyWithImpl;
@useResult
$Res call({
 String? id, TabType tabType, String? name, Account account, TabIcon? icon, bool disableStreaming, bool disableSubscribing, bool withReplies, bool withRenotes, bool withSelfRenotes, bool withFiles, bool withSensitive, bool keepPosition, String? roleId, String? channelId, String? listId, String? antennaId, String? hashtag, String? userId, String? endpoint, String? streamingChannel, Map<String, dynamic>? parameters
});


$AccountCopyWith<$Res> get account;

}
/// @nodoc
class _$TabSettingsCopyWithImpl<$Res>
    implements $TabSettingsCopyWith<$Res> {
  _$TabSettingsCopyWithImpl(this._self, this._then);

  final TabSettings _self;
  final $Res Function(TabSettings) _then;

/// Create a copy of TabSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? tabType = null,Object? name = freezed,Object? account = null,Object? icon = freezed,Object? disableStreaming = null,Object? disableSubscribing = null,Object? withReplies = null,Object? withRenotes = null,Object? withSelfRenotes = null,Object? withFiles = null,Object? withSensitive = null,Object? keepPosition = null,Object? roleId = freezed,Object? channelId = freezed,Object? listId = freezed,Object? antennaId = freezed,Object? hashtag = freezed,Object? userId = freezed,Object? endpoint = freezed,Object? streamingChannel = freezed,Object? parameters = freezed,}) {
  return _then(TabSettings(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,tabType: null == tabType ? _self.tabType : tabType // ignore: cast_nullable_to_non_nullable
as TabType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as TabIcon?,disableStreaming: null == disableStreaming ? _self.disableStreaming : disableStreaming // ignore: cast_nullable_to_non_nullable
as bool,disableSubscribing: null == disableSubscribing ? _self.disableSubscribing : disableSubscribing // ignore: cast_nullable_to_non_nullable
as bool,withReplies: null == withReplies ? _self.withReplies : withReplies // ignore: cast_nullable_to_non_nullable
as bool,withRenotes: null == withRenotes ? _self.withRenotes : withRenotes // ignore: cast_nullable_to_non_nullable
as bool,withSelfRenotes: null == withSelfRenotes ? _self.withSelfRenotes : withSelfRenotes // ignore: cast_nullable_to_non_nullable
as bool,withFiles: null == withFiles ? _self.withFiles : withFiles // ignore: cast_nullable_to_non_nullable
as bool,withSensitive: null == withSensitive ? _self.withSensitive : withSensitive // ignore: cast_nullable_to_non_nullable
as bool,keepPosition: null == keepPosition ? _self.keepPosition : keepPosition // ignore: cast_nullable_to_non_nullable
as bool,roleId: freezed == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,listId: freezed == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as String?,antennaId: freezed == antennaId ? _self.antennaId : antennaId // ignore: cast_nullable_to_non_nullable
as String?,hashtag: freezed == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,endpoint: freezed == endpoint ? _self.endpoint : endpoint // ignore: cast_nullable_to_non_nullable
as String?,streamingChannel: freezed == streamingChannel ? _self.streamingChannel : streamingChannel // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of TabSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res> get account {
  
  return $AccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}



// dart format on
