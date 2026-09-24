// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncomingMessage {


/// Create a copy of IncomingMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomingMessageCopyWith<IncomingMessage> get copyWith => _$IncomingMessageCopyWithImpl<IncomingMessage>(this as IncomingMessage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as IncomingMessage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomingMessage&&(identical(other.type, _this.type) || other.type == _this.type)&&const DeepCollectionEquality().equals(other.body, _this.body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as IncomingMessage;
  return Object.hash(runtimeType,_this.type,const DeepCollectionEquality().hash(_this.body));
}

@override
String toString() {
  final _this = this as IncomingMessage;
  return 'IncomingMessage(type: ${_this.type}, body: ${_this.body})';
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
  return _then(IncomingMessage(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IncomingMessageType?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}



// dart format on
