// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miauth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MiAuthState {

 String get host; String get sessionId; Uri get url;
/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MiAuthStateCopyWith<MiAuthState> get copyWith => _$MiAuthStateCopyWithImpl<MiAuthState>(this as MiAuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MiAuthState&&(identical(other.host, host) || other.host == host)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,host,sessionId,url);

@override
String toString() {
  return 'MiAuthState(host: $host, sessionId: $sessionId, url: $url)';
}


}

/// @nodoc
abstract mixin class $MiAuthStateCopyWith<$Res>  {
  factory $MiAuthStateCopyWith(MiAuthState value, $Res Function(MiAuthState) _then) = _$MiAuthStateCopyWithImpl;
@useResult
$Res call({
 String host, String sessionId, Uri url
});




}
/// @nodoc
class _$MiAuthStateCopyWithImpl<$Res>
    implements $MiAuthStateCopyWith<$Res> {
  _$MiAuthStateCopyWithImpl(this._self, this._then);

  final MiAuthState _self;
  final $Res Function(MiAuthState) _then;

/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? host = null,Object? sessionId = null,Object? url = null,}) {
  return _then(_self.copyWith(
host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}

}


/// @nodoc


class _MiAuthState implements MiAuthState {
  const _MiAuthState({required this.host, required this.sessionId, required this.url});
  

@override final  String host;
@override final  String sessionId;
@override final  Uri url;

/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MiAuthStateCopyWith<_MiAuthState> get copyWith => __$MiAuthStateCopyWithImpl<_MiAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MiAuthState&&(identical(other.host, host) || other.host == host)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,host,sessionId,url);

@override
String toString() {
  return 'MiAuthState(host: $host, sessionId: $sessionId, url: $url)';
}


}

/// @nodoc
abstract mixin class _$MiAuthStateCopyWith<$Res> implements $MiAuthStateCopyWith<$Res> {
  factory _$MiAuthStateCopyWith(_MiAuthState value, $Res Function(_MiAuthState) _then) = __$MiAuthStateCopyWithImpl;
@override @useResult
$Res call({
 String host, String sessionId, Uri url
});




}
/// @nodoc
class __$MiAuthStateCopyWithImpl<$Res>
    implements _$MiAuthStateCopyWith<$Res> {
  __$MiAuthStateCopyWithImpl(this._self, this._then);

  final _MiAuthState _self;
  final $Res Function(_MiAuthState) _then;

/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? host = null,Object? sessionId = null,Object? url = null,}) {
  return _then(_MiAuthState(
host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
