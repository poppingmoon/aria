// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miauth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MiAuthState {
  String get host => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;

  /// Create a copy of MiAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiAuthStateCopyWith<MiAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiAuthStateCopyWith<$Res> {
  factory $MiAuthStateCopyWith(
          MiAuthState value, $Res Function(MiAuthState) then) =
      _$MiAuthStateCopyWithImpl<$Res, MiAuthState>;
  @useResult
  $Res call({String host, String sessionId, Uri url});
}

/// @nodoc
class _$MiAuthStateCopyWithImpl<$Res, $Val extends MiAuthState>
    implements $MiAuthStateCopyWith<$Res> {
  _$MiAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? sessionId = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiAuthStateImplCopyWith<$Res>
    implements $MiAuthStateCopyWith<$Res> {
  factory _$$MiAuthStateImplCopyWith(
          _$MiAuthStateImpl value, $Res Function(_$MiAuthStateImpl) then) =
      __$$MiAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String host, String sessionId, Uri url});
}

/// @nodoc
class __$$MiAuthStateImplCopyWithImpl<$Res>
    extends _$MiAuthStateCopyWithImpl<$Res, _$MiAuthStateImpl>
    implements _$$MiAuthStateImplCopyWith<$Res> {
  __$$MiAuthStateImplCopyWithImpl(
      _$MiAuthStateImpl _value, $Res Function(_$MiAuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? sessionId = null,
    Object? url = null,
  }) {
    return _then(_$MiAuthStateImpl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$MiAuthStateImpl implements _MiAuthState {
  const _$MiAuthStateImpl(
      {required this.host, required this.sessionId, required this.url});

  @override
  final String host;
  @override
  final String sessionId;
  @override
  final Uri url;

  @override
  String toString() {
    return 'MiAuthState(host: $host, sessionId: $sessionId, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiAuthStateImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, sessionId, url);

  /// Create a copy of MiAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiAuthStateImplCopyWith<_$MiAuthStateImpl> get copyWith =>
      __$$MiAuthStateImplCopyWithImpl<_$MiAuthStateImpl>(this, _$identity);
}

abstract class _MiAuthState implements MiAuthState {
  const factory _MiAuthState(
      {required final String host,
      required final String sessionId,
      required final Uri url}) = _$MiAuthStateImpl;

  @override
  String get host;
  @override
  String get sessionId;
  @override
  Uri get url;

  /// Create a copy of MiAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiAuthStateImplCopyWith<_$MiAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
