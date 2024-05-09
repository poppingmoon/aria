// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_saver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataSaver {
  bool get media => throw _privateConstructorUsedError;
  bool get avatar => throw _privateConstructorUsedError;
  bool get urlPreview => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataSaverCopyWith<DataSaver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSaverCopyWith<$Res> {
  factory $DataSaverCopyWith(DataSaver value, $Res Function(DataSaver) then) =
      _$DataSaverCopyWithImpl<$Res, DataSaver>;
  @useResult
  $Res call({bool media, bool avatar, bool urlPreview});
}

/// @nodoc
class _$DataSaverCopyWithImpl<$Res, $Val extends DataSaver>
    implements $DataSaverCopyWith<$Res> {
  _$DataSaverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? avatar = null,
    Object? urlPreview = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as bool,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as bool,
      urlPreview: null == urlPreview
          ? _value.urlPreview
          : urlPreview // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSaverImplCopyWith<$Res>
    implements $DataSaverCopyWith<$Res> {
  factory _$$DataSaverImplCopyWith(
          _$DataSaverImpl value, $Res Function(_$DataSaverImpl) then) =
      __$$DataSaverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool media, bool avatar, bool urlPreview});
}

/// @nodoc
class __$$DataSaverImplCopyWithImpl<$Res>
    extends _$DataSaverCopyWithImpl<$Res, _$DataSaverImpl>
    implements _$$DataSaverImplCopyWith<$Res> {
  __$$DataSaverImplCopyWithImpl(
      _$DataSaverImpl _value, $Res Function(_$DataSaverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? avatar = null,
    Object? urlPreview = null,
  }) {
    return _then(_$DataSaverImpl(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as bool,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as bool,
      urlPreview: null == urlPreview
          ? _value.urlPreview
          : urlPreview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataSaverImpl implements _DataSaver {
  const _$DataSaverImpl(
      {required this.media, required this.avatar, required this.urlPreview});

  @override
  final bool media;
  @override
  final bool avatar;
  @override
  final bool urlPreview;

  @override
  String toString() {
    return 'DataSaver(media: $media, avatar: $avatar, urlPreview: $urlPreview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSaverImpl &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.urlPreview, urlPreview) ||
                other.urlPreview == urlPreview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, media, avatar, urlPreview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSaverImplCopyWith<_$DataSaverImpl> get copyWith =>
      __$$DataSaverImplCopyWithImpl<_$DataSaverImpl>(this, _$identity);
}

abstract class _DataSaver implements DataSaver {
  const factory _DataSaver(
      {required final bool media,
      required final bool avatar,
      required final bool urlPreview}) = _$DataSaverImpl;

  @override
  bool get media;
  @override
  bool get avatar;
  @override
  bool get urlPreview;
  @override
  @JsonKey(ignore: true)
  _$$DataSaverImplCopyWith<_$DataSaverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
