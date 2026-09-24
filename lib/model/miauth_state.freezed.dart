// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miauth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MiAuthState {


/// Create a copy of MiAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MiAuthStateCopyWith<MiAuthState> get copyWith => _$MiAuthStateCopyWithImpl<MiAuthState>(this as MiAuthState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MiAuthState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MiAuthState&&(identical(other.serverUrl, _this.serverUrl) || other.serverUrl == _this.serverUrl)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.url, _this.url) || other.url == _this.url));
}


@override
int get hashCode {
  final _this = this as MiAuthState;
  return Object.hash(runtimeType,_this.serverUrl,_this.sessionId,_this.url);
}

@override
String toString() {
  final _this = this as MiAuthState;
  return 'MiAuthState(serverUrl: ${_this.serverUrl}, sessionId: ${_this.sessionId}, url: ${_this.url})';
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
  return _then(MiAuthState(
serverUrl: null == serverUrl ? _self.serverUrl : serverUrl // ignore: cast_nullable_to_non_nullable
as Uri,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}

}



// dart format on
