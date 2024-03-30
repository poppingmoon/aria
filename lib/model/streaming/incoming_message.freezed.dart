// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IncomingMessage _$IncomingMessageFromJson(Map<String, dynamic> json) {
  return _IncomingMessage.fromJson(json);
}

/// @nodoc
mixin _$IncomingMessage {
// ignore: invalid_annotation_target
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  IncomingMessageType? get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomingMessageCopyWith<IncomingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingMessageCopyWith<$Res> {
  factory $IncomingMessageCopyWith(
          IncomingMessage value, $Res Function(IncomingMessage) then) =
      _$IncomingMessageCopyWithImpl<$Res, IncomingMessage>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      IncomingMessageType? type,
      Map<String, dynamic> body});
}

/// @nodoc
class _$IncomingMessageCopyWithImpl<$Res, $Val extends IncomingMessage>
    implements $IncomingMessageCopyWith<$Res> {
  _$IncomingMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IncomingMessageType?,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncomingMessageImplCopyWith<$Res>
    implements $IncomingMessageCopyWith<$Res> {
  factory _$$IncomingMessageImplCopyWith(_$IncomingMessageImpl value,
          $Res Function(_$IncomingMessageImpl) then) =
      __$$IncomingMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      IncomingMessageType? type,
      Map<String, dynamic> body});
}

/// @nodoc
class __$$IncomingMessageImplCopyWithImpl<$Res>
    extends _$IncomingMessageCopyWithImpl<$Res, _$IncomingMessageImpl>
    implements _$$IncomingMessageImplCopyWith<$Res> {
  __$$IncomingMessageImplCopyWithImpl(
      _$IncomingMessageImpl _value, $Res Function(_$IncomingMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? body = null,
  }) {
    return _then(_$IncomingMessageImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IncomingMessageType?,
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomingMessageImpl implements _IncomingMessage {
  const _$IncomingMessageImpl(
      {@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.type,
      required final Map<String, dynamic> body})
      : _body = body;

  factory _$IncomingMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomingMessageImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final IncomingMessageType? type;
  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  @override
  String toString() {
    return 'IncomingMessage(type: $type, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomingMessageImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomingMessageImplCopyWith<_$IncomingMessageImpl> get copyWith =>
      __$$IncomingMessageImplCopyWithImpl<_$IncomingMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomingMessageImplToJson(
      this,
    );
  }
}

abstract class _IncomingMessage implements IncomingMessage {
  const factory _IncomingMessage(
      {@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      final IncomingMessageType? type,
      required final Map<String, dynamic> body}) = _$IncomingMessageImpl;

  factory _IncomingMessage.fromJson(Map<String, dynamic> json) =
      _$IncomingMessageImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  IncomingMessageType? get type;
  @override
  Map<String, dynamic> get body;
  @override
  @JsonKey(ignore: true)
  _$$IncomingMessageImplCopyWith<_$IncomingMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
