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

@override String? get id;@override TabType get tabType;@override String? get name;@override Account get account;@override TabIcon? get icon;@override bool get disableStreaming;@override bool get disableSubscribing;@override bool get withReplies;@override bool get withRenotes;@override bool get withSelfRenotes;@override bool get withFiles;@override bool get withSensitive;@override bool get keepPosition;@override String? get roleId;@override String? get channelId;@override String? get listId;@override String? get antennaId;@override String? get hashtag;@override String? get userId;@override String? get endpoint;@override String? get streamingChannel;@override Map<String, dynamic>? get parameters;
/// Create a copy of TabSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabSettingsCopyWith<TabSettings> get copyWith => _$TabSettingsCopyWithImpl<TabSettings>(this as TabSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabSettings&&(identical(other.id, id) || other.id == id)&&(identical(other.tabType, tabType) || other.tabType == tabType)&&(identical(other.name, name) || other.name == name)&&(identical(other.account, account) || other.account == account)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.disableStreaming, disableStreaming) || other.disableStreaming == disableStreaming)&&(identical(other.disableSubscribing, disableSubscribing) || other.disableSubscribing == disableSubscribing)&&(identical(other.withReplies, withReplies) || other.withReplies == withReplies)&&(identical(other.withRenotes, withRenotes) || other.withRenotes == withRenotes)&&(identical(other.withSelfRenotes, withSelfRenotes) || other.withSelfRenotes == withSelfRenotes)&&(identical(other.withFiles, withFiles) || other.withFiles == withFiles)&&(identical(other.withSensitive, withSensitive) || other.withSensitive == withSensitive)&&(identical(other.keepPosition, keepPosition) || other.keepPosition == keepPosition)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.antennaId, antennaId) || other.antennaId == antennaId)&&(identical(other.hashtag, hashtag) || other.hashtag == hashtag)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.streamingChannel, streamingChannel) || other.streamingChannel == streamingChannel)&&const DeepCollectionEquality().equals(other.parameters, parameters));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,tabType,name,account,icon,disableStreaming,disableSubscribing,withReplies,withRenotes,withSelfRenotes,withFiles,withSensitive,keepPosition,roleId,channelId,listId,antennaId,hashtag,userId,endpoint,streamingChannel,const DeepCollectionEquality().hash(parameters)]);

@override
String toString() {
  return 'TabSettings(id: $id, tabType: $tabType, name: $name, account: $account, icon: $icon, disableStreaming: $disableStreaming, disableSubscribing: $disableSubscribing, withReplies: $withReplies, withRenotes: $withRenotes, withSelfRenotes: $withSelfRenotes, withFiles: $withFiles, withSensitive: $withSensitive, keepPosition: $keepPosition, roleId: $roleId, channelId: $channelId, listId: $listId, antennaId: $antennaId, hashtag: $hashtag, userId: $userId, endpoint: $endpoint, streamingChannel: $streamingChannel, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class $TabSettingsCopyWith<$Res>  {
  factory $TabSettingsCopyWith(TabSettings value, $Res Function(TabSettings) _then) = _$TabSettingsCopyWithImpl;
@useResult
$Res call({
@override String? id,@override TabType tabType,@override String? name,@override Account account,@override TabIcon? icon,@override bool disableStreaming,@override bool disableSubscribing,@override bool withReplies,@override bool withRenotes,@override bool withSelfRenotes,@override bool withFiles,@override bool withSensitive,@override bool keepPosition,@override String? roleId,@override String? channelId,@override String? listId,@override String? antennaId,@override String? hashtag,@override String? userId,@override String? endpoint,@override String? streamingChannel,@override Map<String, dynamic>? parameters
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


/// Adds pattern-matching-related methods to [TabSettings].
extension TabSettingsPatterns on TabSettings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TabSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TabSettings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TabSettings value)  $default,){
final _that = this;
switch (_that) {
case _TabSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TabSettings value)?  $default,){
final _that = this;
switch (_that) {
case _TabSettings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@override  String? id, @override  TabType tabType, @override  String? name, @override  Account account, @override  TabIcon? icon, @override  bool disableStreaming, @override  bool disableSubscribing, @override  bool withReplies, @override  bool withRenotes, @override  bool withSelfRenotes, @override  bool withFiles, @override  bool withSensitive, @override  bool keepPosition, @override  String? roleId, @override  String? channelId, @override  String? listId, @override  String? antennaId, @override  String? hashtag, @override  String? userId, @override  String? endpoint, @override  String? streamingChannel, @override  Map<String, dynamic>? parameters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TabSettings() when $default != null:
return $default(_that.id,_that.tabType,_that.name,_that.account,_that.icon,_that.disableStreaming,_that.disableSubscribing,_that.withReplies,_that.withRenotes,_that.withSelfRenotes,_that.withFiles,_that.withSensitive,_that.keepPosition,_that.roleId,_that.channelId,_that.listId,_that.antennaId,_that.hashtag,_that.userId,_that.endpoint,_that.streamingChannel,_that.parameters);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@override  String? id, @override  TabType tabType, @override  String? name, @override  Account account, @override  TabIcon? icon, @override  bool disableStreaming, @override  bool disableSubscribing, @override  bool withReplies, @override  bool withRenotes, @override  bool withSelfRenotes, @override  bool withFiles, @override  bool withSensitive, @override  bool keepPosition, @override  String? roleId, @override  String? channelId, @override  String? listId, @override  String? antennaId, @override  String? hashtag, @override  String? userId, @override  String? endpoint, @override  String? streamingChannel, @override  Map<String, dynamic>? parameters)  $default,) {final _that = this;
switch (_that) {
case _TabSettings():
return $default(_that.id,_that.tabType,_that.name,_that.account,_that.icon,_that.disableStreaming,_that.disableSubscribing,_that.withReplies,_that.withRenotes,_that.withSelfRenotes,_that.withFiles,_that.withSensitive,_that.keepPosition,_that.roleId,_that.channelId,_that.listId,_that.antennaId,_that.hashtag,_that.userId,_that.endpoint,_that.streamingChannel,_that.parameters);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@override  String? id, @override  TabType tabType, @override  String? name, @override  Account account, @override  TabIcon? icon, @override  bool disableStreaming, @override  bool disableSubscribing, @override  bool withReplies, @override  bool withRenotes, @override  bool withSelfRenotes, @override  bool withFiles, @override  bool withSensitive, @override  bool keepPosition, @override  String? roleId, @override  String? channelId, @override  String? listId, @override  String? antennaId, @override  String? hashtag, @override  String? userId, @override  String? endpoint, @override  String? streamingChannel, @override  Map<String, dynamic>? parameters)?  $default,) {final _that = this;
switch (_that) {
case _TabSettings() when $default != null:
return $default(_that.id,_that.tabType,_that.name,_that.account,_that.icon,_that.disableStreaming,_that.disableSubscribing,_that.withReplies,_that.withRenotes,_that.withSelfRenotes,_that.withFiles,_that.withSensitive,_that.keepPosition,_that.roleId,_that.channelId,_that.listId,_that.antennaId,_that.hashtag,_that.userId,_that.endpoint,_that.streamingChannel,_that.parameters);case _:
  return null;

}
}

}

/// @nodoc


class _TabSettings extends TabSettings {
  const _TabSettings({@override this.id, @override required this.tabType, @override this.name, @override required this.account, @override this.icon, @override this.disableStreaming = false, @override this.disableSubscribing = false, @override this.withReplies = false, @override this.withRenotes = true, @override this.withSelfRenotes = true, @override this.withFiles = false, @override this.withSensitive = true, @override this.keepPosition = false, @override this.roleId, @override this.channelId, @override this.listId, @override this.antennaId, @override this.hashtag, @override this.userId, @override this.endpoint, @override this.streamingChannel, @override  Map<String, dynamic>? parameters}): _parameters = parameters,super(id: id, tabType: tabType, name: name, account: account, icon: icon, disableStreaming: disableStreaming, disableSubscribing: disableSubscribing, withReplies: withReplies, withRenotes: withRenotes, withSelfRenotes: withSelfRenotes, withFiles: withFiles, withSensitive: withSensitive, keepPosition: keepPosition, roleId: roleId, channelId: channelId, listId: listId, antennaId: antennaId, hashtag: hashtag, userId: userId, endpoint: endpoint, streamingChannel: streamingChannel, parameters: parameters);
  

@override@override final  String? id;
@override@override final  TabType tabType;
@override@override final  String? name;
@override@override final  Account account;
@override@override final  TabIcon? icon;
@override@override final  bool disableStreaming;
@override@override final  bool disableSubscribing;
@override@override final  bool withReplies;
@override@override final  bool withRenotes;
@override@override final  bool withSelfRenotes;
@override@override final  bool withFiles;
@override@override final  bool withSensitive;
@override@override final  bool keepPosition;
@override@override final  String? roleId;
@override@override final  String? channelId;
@override@override final  String? listId;
@override@override final  String? antennaId;
@override@override final  String? hashtag;
@override@override final  String? userId;
@override@override final  String? endpoint;
@override@override final  String? streamingChannel;
 final  Map<String, dynamic>? _parameters;
@override@override Map<String, dynamic>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableMapView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TabSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabSettingsCopyWith<_TabSettings> get copyWith => __$TabSettingsCopyWithImpl<_TabSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabSettings&&(identical(other.id, id) || other.id == id)&&(identical(other.tabType, tabType) || other.tabType == tabType)&&(identical(other.name, name) || other.name == name)&&(identical(other.account, account) || other.account == account)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.disableStreaming, disableStreaming) || other.disableStreaming == disableStreaming)&&(identical(other.disableSubscribing, disableSubscribing) || other.disableSubscribing == disableSubscribing)&&(identical(other.withReplies, withReplies) || other.withReplies == withReplies)&&(identical(other.withRenotes, withRenotes) || other.withRenotes == withRenotes)&&(identical(other.withSelfRenotes, withSelfRenotes) || other.withSelfRenotes == withSelfRenotes)&&(identical(other.withFiles, withFiles) || other.withFiles == withFiles)&&(identical(other.withSensitive, withSensitive) || other.withSensitive == withSensitive)&&(identical(other.keepPosition, keepPosition) || other.keepPosition == keepPosition)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.listId, listId) || other.listId == listId)&&(identical(other.antennaId, antennaId) || other.antennaId == antennaId)&&(identical(other.hashtag, hashtag) || other.hashtag == hashtag)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.endpoint, endpoint) || other.endpoint == endpoint)&&(identical(other.streamingChannel, streamingChannel) || other.streamingChannel == streamingChannel)&&const DeepCollectionEquality().equals(other._parameters, _parameters));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,tabType,name,account,icon,disableStreaming,disableSubscribing,withReplies,withRenotes,withSelfRenotes,withFiles,withSensitive,keepPosition,roleId,channelId,listId,antennaId,hashtag,userId,endpoint,streamingChannel,const DeepCollectionEquality().hash(_parameters)]);

@override
String toString() {
  return 'TabSettings(id: $id, tabType: $tabType, name: $name, account: $account, icon: $icon, disableStreaming: $disableStreaming, disableSubscribing: $disableSubscribing, withReplies: $withReplies, withRenotes: $withRenotes, withSelfRenotes: $withSelfRenotes, withFiles: $withFiles, withSensitive: $withSensitive, keepPosition: $keepPosition, roleId: $roleId, channelId: $channelId, listId: $listId, antennaId: $antennaId, hashtag: $hashtag, userId: $userId, endpoint: $endpoint, streamingChannel: $streamingChannel, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$TabSettingsCopyWith<$Res> implements $TabSettingsCopyWith<$Res> {
  factory _$TabSettingsCopyWith(_TabSettings value, $Res Function(_TabSettings) _then) = __$TabSettingsCopyWithImpl;
@override @useResult
$Res call({
@override String? id,@override TabType tabType,@override String? name,@override Account account,@override TabIcon? icon,@override bool disableStreaming,@override bool disableSubscribing,@override bool withReplies,@override bool withRenotes,@override bool withSelfRenotes,@override bool withFiles,@override bool withSensitive,@override bool keepPosition,@override String? roleId,@override String? channelId,@override String? listId,@override String? antennaId,@override String? hashtag,@override String? userId,@override String? endpoint,@override String? streamingChannel,@override Map<String, dynamic>? parameters
});


@override $AccountCopyWith<$Res> get account;

}
/// @nodoc
class __$TabSettingsCopyWithImpl<$Res>
    implements _$TabSettingsCopyWith<$Res> {
  __$TabSettingsCopyWithImpl(this._self, this._then);

  final _TabSettings _self;
  final $Res Function(_TabSettings) _then;

/// Create a copy of TabSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? tabType = null,Object? name = freezed,Object? account = null,Object? icon = freezed,Object? disableStreaming = null,Object? disableSubscribing = null,Object? withReplies = null,Object? withRenotes = null,Object? withSelfRenotes = null,Object? withFiles = null,Object? withSensitive = null,Object? keepPosition = null,Object? roleId = freezed,Object? channelId = freezed,Object? listId = freezed,Object? antennaId = freezed,Object? hashtag = freezed,Object? userId = freezed,Object? endpoint = freezed,Object? streamingChannel = freezed,Object? parameters = freezed,}) {
  return _then(_TabSettings(
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
as String?,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
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
