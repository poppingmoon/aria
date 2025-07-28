// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 Uri get serverUrl; String get sessionId; Uri get url;
/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MiAuthStateCopyWith<MiAuthState> get copyWith => _$MiAuthStateCopyWithImpl<MiAuthState>(this as MiAuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MiAuthState&&(identical(other.serverUrl, serverUrl) || other.serverUrl == serverUrl)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,serverUrl,sessionId,url);

@override
String toString() {
  return 'MiAuthState(serverUrl: $serverUrl, sessionId: $sessionId, url: $url)';
}


}

/// @nodoc
abstract mixin class $MiAuthStateCopyWith<$Res>  {
  factory $MiAuthStateCopyWith(MiAuthState value, $Res Function(MiAuthState) _then) = _$MiAuthStateCopyWithImpl;
@useResult
$Res call({
 Uri serverUrl, String sessionId, Uri url
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
@pragma('vm:prefer-inline') @override $Res call({Object? serverUrl = null,Object? sessionId = null,Object? url = null,}) {
  return _then(_self.copyWith(
serverUrl: null == serverUrl ? _self.serverUrl : serverUrl // ignore: cast_nullable_to_non_nullable
as Uri,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}

}


/// Adds pattern-matching-related methods to [MiAuthState].
extension MiAuthStatePatterns on MiAuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MiAuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MiAuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MiAuthState value)  $default,){
final _that = this;
switch (_that) {
case _MiAuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MiAuthState value)?  $default,){
final _that = this;
switch (_that) {
case _MiAuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uri serverUrl,  String sessionId,  Uri url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MiAuthState() when $default != null:
return $default(_that.serverUrl,_that.sessionId,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uri serverUrl,  String sessionId,  Uri url)  $default,) {final _that = this;
switch (_that) {
case _MiAuthState():
return $default(_that.serverUrl,_that.sessionId,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uri serverUrl,  String sessionId,  Uri url)?  $default,) {final _that = this;
switch (_that) {
case _MiAuthState() when $default != null:
return $default(_that.serverUrl,_that.sessionId,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class _MiAuthState implements MiAuthState {
  const _MiAuthState({required this.serverUrl, required this.sessionId, required this.url});
  

@override final  Uri serverUrl;
@override final  String sessionId;
@override final  Uri url;

/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MiAuthStateCopyWith<_MiAuthState> get copyWith => __$MiAuthStateCopyWithImpl<_MiAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MiAuthState&&(identical(other.serverUrl, serverUrl) || other.serverUrl == serverUrl)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,serverUrl,sessionId,url);

@override
String toString() {
  return 'MiAuthState(serverUrl: $serverUrl, sessionId: $sessionId, url: $url)';
}


}

/// @nodoc
abstract mixin class _$MiAuthStateCopyWith<$Res> implements $MiAuthStateCopyWith<$Res> {
  factory _$MiAuthStateCopyWith(_MiAuthState value, $Res Function(_MiAuthState) _then) = __$MiAuthStateCopyWithImpl;
@override @useResult
$Res call({
 Uri serverUrl, String sessionId, Uri url
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
@override @pragma('vm:prefer-inline') $Res call({Object? serverUrl = null,Object? sessionId = null,Object? url = null,}) {
  return _then(_MiAuthState(
serverUrl: null == serverUrl ? _self.serverUrl : serverUrl // ignore: cast_nullable_to_non_nullable
as Uri,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
