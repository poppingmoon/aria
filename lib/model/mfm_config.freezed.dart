// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfm_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MfmConfig {
  TextStyle get style => throw _privateConstructorUsedError;
  bool get disableNyaize => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;
  TextAlign? get align => throw _privateConstructorUsedError;

  /// Create a copy of MfmConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MfmConfigCopyWith<MfmConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MfmConfigCopyWith<$Res> {
  factory $MfmConfigCopyWith(MfmConfig value, $Res Function(MfmConfig) then) =
      _$MfmConfigCopyWithImpl<$Res, MfmConfig>;
  @useResult
  $Res call({
    TextStyle style,
    bool disableNyaize,
    double scale,
    double opacity,
    TextAlign? align,
  });
}

/// @nodoc
class _$MfmConfigCopyWithImpl<$Res, $Val extends MfmConfig>
    implements $MfmConfigCopyWith<$Res> {
  _$MfmConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MfmConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? disableNyaize = null,
    Object? scale = null,
    Object? opacity = null,
    Object? align = freezed,
  }) {
    return _then(
      _value.copyWith(
            style:
                null == style
                    ? _value.style
                    : style // ignore: cast_nullable_to_non_nullable
                        as TextStyle,
            disableNyaize:
                null == disableNyaize
                    ? _value.disableNyaize
                    : disableNyaize // ignore: cast_nullable_to_non_nullable
                        as bool,
            scale:
                null == scale
                    ? _value.scale
                    : scale // ignore: cast_nullable_to_non_nullable
                        as double,
            opacity:
                null == opacity
                    ? _value.opacity
                    : opacity // ignore: cast_nullable_to_non_nullable
                        as double,
            align:
                freezed == align
                    ? _value.align
                    : align // ignore: cast_nullable_to_non_nullable
                        as TextAlign?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MfmConfigImplCopyWith<$Res>
    implements $MfmConfigCopyWith<$Res> {
  factory _$$MfmConfigImplCopyWith(
    _$MfmConfigImpl value,
    $Res Function(_$MfmConfigImpl) then,
  ) = __$$MfmConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TextStyle style,
    bool disableNyaize,
    double scale,
    double opacity,
    TextAlign? align,
  });
}

/// @nodoc
class __$$MfmConfigImplCopyWithImpl<$Res>
    extends _$MfmConfigCopyWithImpl<$Res, _$MfmConfigImpl>
    implements _$$MfmConfigImplCopyWith<$Res> {
  __$$MfmConfigImplCopyWithImpl(
    _$MfmConfigImpl _value,
    $Res Function(_$MfmConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MfmConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? disableNyaize = null,
    Object? scale = null,
    Object? opacity = null,
    Object? align = freezed,
  }) {
    return _then(
      _$MfmConfigImpl(
        style:
            null == style
                ? _value.style
                : style // ignore: cast_nullable_to_non_nullable
                    as TextStyle,
        disableNyaize:
            null == disableNyaize
                ? _value.disableNyaize
                : disableNyaize // ignore: cast_nullable_to_non_nullable
                    as bool,
        scale:
            null == scale
                ? _value.scale
                : scale // ignore: cast_nullable_to_non_nullable
                    as double,
        opacity:
            null == opacity
                ? _value.opacity
                : opacity // ignore: cast_nullable_to_non_nullable
                    as double,
        align:
            freezed == align
                ? _value.align
                : align // ignore: cast_nullable_to_non_nullable
                    as TextAlign?,
      ),
    );
  }
}

/// @nodoc

class _$MfmConfigImpl implements _MfmConfig {
  const _$MfmConfigImpl({
    required this.style,
    this.disableNyaize = false,
    this.scale = 1.0,
    this.opacity = 1.0,
    this.align,
  });

  @override
  final TextStyle style;
  @override
  @JsonKey()
  final bool disableNyaize;
  @override
  @JsonKey()
  final double scale;
  @override
  @JsonKey()
  final double opacity;
  @override
  final TextAlign? align;

  @override
  String toString() {
    return 'MfmConfig(style: $style, disableNyaize: $disableNyaize, scale: $scale, opacity: $opacity, align: $align)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MfmConfigImpl &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.disableNyaize, disableNyaize) ||
                other.disableNyaize == disableNyaize) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.align, align) || other.align == align));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, style, disableNyaize, scale, opacity, align);

  /// Create a copy of MfmConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MfmConfigImplCopyWith<_$MfmConfigImpl> get copyWith =>
      __$$MfmConfigImplCopyWithImpl<_$MfmConfigImpl>(this, _$identity);
}

abstract class _MfmConfig implements MfmConfig {
  const factory _MfmConfig({
    required final TextStyle style,
    final bool disableNyaize,
    final double scale,
    final double opacity,
    final TextAlign? align,
  }) = _$MfmConfigImpl;

  @override
  TextStyle get style;
  @override
  bool get disableNyaize;
  @override
  double get scale;
  @override
  double get opacity;
  @override
  TextAlign? get align;

  /// Create a copy of MfmConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MfmConfigImplCopyWith<_$MfmConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
