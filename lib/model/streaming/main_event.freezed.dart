// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UrlUploadFinished _$UrlUploadFinishedFromJson(Map<String, dynamic> json) {
  return _UrlUploadFinished.fromJson(json);
}

/// @nodoc
mixin _$UrlUploadFinished {
  String? get marker => throw _privateConstructorUsedError;
  DriveFile get file => throw _privateConstructorUsedError;

  /// Serializes this UrlUploadFinished to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlUploadFinished
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlUploadFinishedCopyWith<UrlUploadFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlUploadFinishedCopyWith<$Res> {
  factory $UrlUploadFinishedCopyWith(
          UrlUploadFinished value, $Res Function(UrlUploadFinished) then) =
      _$UrlUploadFinishedCopyWithImpl<$Res, UrlUploadFinished>;
  @useResult
  $Res call({String? marker, DriveFile file});

  $DriveFileCopyWith<$Res> get file;
}

/// @nodoc
class _$UrlUploadFinishedCopyWithImpl<$Res, $Val extends UrlUploadFinished>
    implements $UrlUploadFinishedCopyWith<$Res> {
  _$UrlUploadFinishedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlUploadFinished
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marker = freezed,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      marker: freezed == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as String?,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as DriveFile,
    ) as $Val);
  }

  /// Create a copy of UrlUploadFinished
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriveFileCopyWith<$Res> get file {
    return $DriveFileCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UrlUploadFinishedImplCopyWith<$Res>
    implements $UrlUploadFinishedCopyWith<$Res> {
  factory _$$UrlUploadFinishedImplCopyWith(_$UrlUploadFinishedImpl value,
          $Res Function(_$UrlUploadFinishedImpl) then) =
      __$$UrlUploadFinishedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? marker, DriveFile file});

  @override
  $DriveFileCopyWith<$Res> get file;
}

/// @nodoc
class __$$UrlUploadFinishedImplCopyWithImpl<$Res>
    extends _$UrlUploadFinishedCopyWithImpl<$Res, _$UrlUploadFinishedImpl>
    implements _$$UrlUploadFinishedImplCopyWith<$Res> {
  __$$UrlUploadFinishedImplCopyWithImpl(_$UrlUploadFinishedImpl _value,
      $Res Function(_$UrlUploadFinishedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UrlUploadFinished
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marker = freezed,
    Object? file = null,
  }) {
    return _then(_$UrlUploadFinishedImpl(
      marker: freezed == marker
          ? _value.marker
          : marker // ignore: cast_nullable_to_non_nullable
              as String?,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as DriveFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlUploadFinishedImpl implements _UrlUploadFinished {
  const _$UrlUploadFinishedImpl({this.marker, required this.file});

  factory _$UrlUploadFinishedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlUploadFinishedImplFromJson(json);

  @override
  final String? marker;
  @override
  final DriveFile file;

  @override
  String toString() {
    return 'UrlUploadFinished(marker: $marker, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlUploadFinishedImpl &&
            (identical(other.marker, marker) || other.marker == marker) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, marker, file);

  /// Create a copy of UrlUploadFinished
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlUploadFinishedImplCopyWith<_$UrlUploadFinishedImpl> get copyWith =>
      __$$UrlUploadFinishedImplCopyWithImpl<_$UrlUploadFinishedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlUploadFinishedImplToJson(
      this,
    );
  }
}

abstract class _UrlUploadFinished implements UrlUploadFinished {
  const factory _UrlUploadFinished(
      {final String? marker,
      required final DriveFile file}) = _$UrlUploadFinishedImpl;

  factory _UrlUploadFinished.fromJson(Map<String, dynamic> json) =
      _$UrlUploadFinishedImpl.fromJson;

  @override
  String? get marker;
  @override
  DriveFile get file;

  /// Create a copy of UrlUploadFinished
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlUploadFinishedImplCopyWith<_$UrlUploadFinishedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
