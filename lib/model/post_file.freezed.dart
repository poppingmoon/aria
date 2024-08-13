// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalPostFile {
  File get file => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSensitive => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool get uploading => throw _privateConstructorUsedError;

  /// Create a copy of LocalPostFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalPostFileCopyWith<LocalPostFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalPostFileCopyWith<$Res> {
  factory $LocalPostFileCopyWith(
          LocalPostFile value, $Res Function(LocalPostFile) then) =
      _$LocalPostFileCopyWithImpl<$Res, LocalPostFile>;
  @useResult
  $Res call(
      {File file,
      String name,
      bool isSensitive,
      String? comment,
      String? type,
      bool uploading});
}

/// @nodoc
class _$LocalPostFileCopyWithImpl<$Res, $Val extends LocalPostFile>
    implements $LocalPostFileCopyWith<$Res> {
  _$LocalPostFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalPostFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? name = null,
    Object? isSensitive = null,
    Object? comment = freezed,
    Object? type = freezed,
    Object? uploading = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uploading: null == uploading
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalPostFileImplCopyWith<$Res>
    implements $LocalPostFileCopyWith<$Res> {
  factory _$$LocalPostFileImplCopyWith(
          _$LocalPostFileImpl value, $Res Function(_$LocalPostFileImpl) then) =
      __$$LocalPostFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File file,
      String name,
      bool isSensitive,
      String? comment,
      String? type,
      bool uploading});
}

/// @nodoc
class __$$LocalPostFileImplCopyWithImpl<$Res>
    extends _$LocalPostFileCopyWithImpl<$Res, _$LocalPostFileImpl>
    implements _$$LocalPostFileImplCopyWith<$Res> {
  __$$LocalPostFileImplCopyWithImpl(
      _$LocalPostFileImpl _value, $Res Function(_$LocalPostFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalPostFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? name = null,
    Object? isSensitive = null,
    Object? comment = freezed,
    Object? type = freezed,
    Object? uploading = null,
  }) {
    return _then(_$LocalPostFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uploading: null == uploading
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocalPostFileImpl implements _LocalPostFile {
  const _$LocalPostFileImpl(
      {required this.file,
      required this.name,
      this.isSensitive = false,
      this.comment,
      this.type,
      this.uploading = false});

  @override
  final File file;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isSensitive;
  @override
  final String? comment;
  @override
  final String? type;
  @override
  @JsonKey()
  final bool uploading;

  @override
  String toString() {
    return 'LocalPostFile(file: $file, name: $name, isSensitive: $isSensitive, comment: $comment, type: $type, uploading: $uploading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalPostFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uploading, uploading) ||
                other.uploading == uploading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, file, name, isSensitive, comment, type, uploading);

  /// Create a copy of LocalPostFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalPostFileImplCopyWith<_$LocalPostFileImpl> get copyWith =>
      __$$LocalPostFileImplCopyWithImpl<_$LocalPostFileImpl>(this, _$identity);
}

abstract class _LocalPostFile implements LocalPostFile {
  const factory _LocalPostFile(
      {required final File file,
      required final String name,
      final bool isSensitive,
      final String? comment,
      final String? type,
      final bool uploading}) = _$LocalPostFileImpl;

  @override
  File get file;
  @override
  String get name;
  @override
  bool get isSensitive;
  @override
  String? get comment;
  @override
  String? get type;
  @override
  bool get uploading;

  /// Create a copy of LocalPostFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalPostFileImplCopyWith<_$LocalPostFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrivePostFile {
  DriveFile get file => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSensitive => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Create a copy of DrivePostFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrivePostFileCopyWith<DrivePostFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrivePostFileCopyWith<$Res> {
  factory $DrivePostFileCopyWith(
          DrivePostFile value, $Res Function(DrivePostFile) then) =
      _$DrivePostFileCopyWithImpl<$Res, DrivePostFile>;
  @useResult
  $Res call(
      {DriveFile file,
      String name,
      bool isSensitive,
      String? comment,
      String? type});

  $DriveFileCopyWith<$Res> get file;
}

/// @nodoc
class _$DrivePostFileCopyWithImpl<$Res, $Val extends DrivePostFile>
    implements $DrivePostFileCopyWith<$Res> {
  _$DrivePostFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrivePostFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? name = null,
    Object? isSensitive = null,
    Object? comment = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as DriveFile,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DrivePostFile
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
abstract class _$$DrivePostFileImplCopyWith<$Res>
    implements $DrivePostFileCopyWith<$Res> {
  factory _$$DrivePostFileImplCopyWith(
          _$DrivePostFileImpl value, $Res Function(_$DrivePostFileImpl) then) =
      __$$DrivePostFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DriveFile file,
      String name,
      bool isSensitive,
      String? comment,
      String? type});

  @override
  $DriveFileCopyWith<$Res> get file;
}

/// @nodoc
class __$$DrivePostFileImplCopyWithImpl<$Res>
    extends _$DrivePostFileCopyWithImpl<$Res, _$DrivePostFileImpl>
    implements _$$DrivePostFileImplCopyWith<$Res> {
  __$$DrivePostFileImplCopyWithImpl(
      _$DrivePostFileImpl _value, $Res Function(_$DrivePostFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrivePostFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? name = null,
    Object? isSensitive = null,
    Object? comment = freezed,
    Object? type = freezed,
  }) {
    return _then(_$DrivePostFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as DriveFile,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DrivePostFileImpl implements _DrivePostFile {
  const _$DrivePostFileImpl(
      {required this.file,
      required this.name,
      this.isSensitive = false,
      this.comment,
      this.type});

  @override
  final DriveFile file;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isSensitive;
  @override
  final String? comment;
  @override
  final String? type;

  @override
  String toString() {
    return 'DrivePostFile(file: $file, name: $name, isSensitive: $isSensitive, comment: $comment, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrivePostFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, file, name, isSensitive, comment, type);

  /// Create a copy of DrivePostFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrivePostFileImplCopyWith<_$DrivePostFileImpl> get copyWith =>
      __$$DrivePostFileImplCopyWithImpl<_$DrivePostFileImpl>(this, _$identity);
}

abstract class _DrivePostFile implements DrivePostFile {
  const factory _DrivePostFile(
      {required final DriveFile file,
      required final String name,
      final bool isSensitive,
      final String? comment,
      final String? type}) = _$DrivePostFileImpl;

  @override
  DriveFile get file;
  @override
  String get name;
  @override
  bool get isSensitive;
  @override
  String? get comment;
  @override
  String? get type;

  /// Create a copy of DrivePostFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrivePostFileImplCopyWith<_$DrivePostFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
