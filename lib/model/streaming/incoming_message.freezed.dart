// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncomingMessage {

// https://github.com/rrousselGit/freezed/issues/488
// ignore: invalid_annotation_target
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) IncomingMessageType? get type; Map<String, dynamic> get body;
/// Create a copy of IncomingMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomingMessageCopyWith<IncomingMessage> get copyWith => _$IncomingMessageCopyWithImpl<IncomingMessage>(this as IncomingMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomingMessage&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.body, body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(body));

@override
String toString() {
  return 'IncomingMessage(type: $type, body: $body)';
}


}

/// @nodoc
abstract mixin class $IncomingMessageCopyWith<$Res>  {
  factory $IncomingMessageCopyWith(IncomingMessage value, $Res Function(IncomingMessage) _then) = _$IncomingMessageCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) IncomingMessageType? type, Map<String, dynamic> body
});




}
/// @nodoc
class _$IncomingMessageCopyWithImpl<$Res>
    implements $IncomingMessageCopyWith<$Res> {
  _$IncomingMessageCopyWithImpl(this._self, this._then);

  final IncomingMessage _self;
  final $Res Function(IncomingMessage) _then;

/// Create a copy of IncomingMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? body = null,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IncomingMessageType?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _IncomingMessage implements IncomingMessage {
  const _IncomingMessage({@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.type, required final  Map<String, dynamic> body}): _body = body;
  factory _IncomingMessage.fromJson(Map<String, dynamic> json) => _$IncomingMessageFromJson(json);

// https://github.com/rrousselGit/freezed/issues/488
// ignore: invalid_annotation_target
@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  IncomingMessageType? type;
 final  Map<String, dynamic> _body;
@override Map<String, dynamic> get body {
  if (_body is EqualUnmodifiableMapView) return _body;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_body);
}


/// Create a copy of IncomingMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncomingMessageCopyWith<_IncomingMessage> get copyWith => __$IncomingMessageCopyWithImpl<_IncomingMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncomingMessage&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._body, _body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_body));

@override
String toString() {
  return 'IncomingMessage(type: $type, body: $body)';
}


}

/// @nodoc
abstract mixin class _$IncomingMessageCopyWith<$Res> implements $IncomingMessageCopyWith<$Res> {
  factory _$IncomingMessageCopyWith(_IncomingMessage value, $Res Function(_IncomingMessage) _then) = __$IncomingMessageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) IncomingMessageType? type, Map<String, dynamic> body
});




}
/// @nodoc
class __$IncomingMessageCopyWithImpl<$Res>
    implements _$IncomingMessageCopyWith<$Res> {
  __$IncomingMessageCopyWithImpl(this._self, this._then);

  final _IncomingMessage _self;
  final $Res Function(_IncomingMessage) _then;

/// Create a copy of IncomingMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? body = null,}) {
  return _then(_IncomingMessage(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IncomingMessageType?,body: null == body ? _self._body : body // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
