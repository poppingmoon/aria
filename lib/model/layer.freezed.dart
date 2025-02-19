// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ImageLayer {
  Uint8List get data => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  bool get flipX => throw _privateConstructorUsedError;

  /// Create a copy of ImageLayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageLayerCopyWith<ImageLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLayerCopyWith<$Res> {
  factory $ImageLayerCopyWith(
    ImageLayer value,
    $Res Function(ImageLayer) then,
  ) = _$ImageLayerCopyWithImpl<$Res, ImageLayer>;
  @useResult
  $Res call({
    Uint8List data,
    Size size,
    double opacity,
    Offset offset,
    double scale,
    double angle,
    bool flipX,
  });
}

/// @nodoc
class _$ImageLayerCopyWithImpl<$Res, $Val extends ImageLayer>
    implements $ImageLayerCopyWith<$Res> {
  _$ImageLayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageLayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? size = null,
    Object? opacity = null,
    Object? offset = null,
    Object? scale = null,
    Object? angle = null,
    Object? flipX = null,
  }) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as Uint8List,
            size:
                null == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as Size,
            opacity:
                null == opacity
                    ? _value.opacity
                    : opacity // ignore: cast_nullable_to_non_nullable
                        as double,
            offset:
                null == offset
                    ? _value.offset
                    : offset // ignore: cast_nullable_to_non_nullable
                        as Offset,
            scale:
                null == scale
                    ? _value.scale
                    : scale // ignore: cast_nullable_to_non_nullable
                        as double,
            angle:
                null == angle
                    ? _value.angle
                    : angle // ignore: cast_nullable_to_non_nullable
                        as double,
            flipX:
                null == flipX
                    ? _value.flipX
                    : flipX // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageLayerImplCopyWith<$Res>
    implements $ImageLayerCopyWith<$Res> {
  factory _$$ImageLayerImplCopyWith(
    _$ImageLayerImpl value,
    $Res Function(_$ImageLayerImpl) then,
  ) = __$$ImageLayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Uint8List data,
    Size size,
    double opacity,
    Offset offset,
    double scale,
    double angle,
    bool flipX,
  });
}

/// @nodoc
class __$$ImageLayerImplCopyWithImpl<$Res>
    extends _$ImageLayerCopyWithImpl<$Res, _$ImageLayerImpl>
    implements _$$ImageLayerImplCopyWith<$Res> {
  __$$ImageLayerImplCopyWithImpl(
    _$ImageLayerImpl _value,
    $Res Function(_$ImageLayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageLayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? size = null,
    Object? opacity = null,
    Object? offset = null,
    Object? scale = null,
    Object? angle = null,
    Object? flipX = null,
  }) {
    return _then(
      _$ImageLayerImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as Uint8List,
        size:
            null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as Size,
        opacity:
            null == opacity
                ? _value.opacity
                : opacity // ignore: cast_nullable_to_non_nullable
                    as double,
        offset:
            null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                    as Offset,
        scale:
            null == scale
                ? _value.scale
                : scale // ignore: cast_nullable_to_non_nullable
                    as double,
        angle:
            null == angle
                ? _value.angle
                : angle // ignore: cast_nullable_to_non_nullable
                    as double,
        flipX:
            null == flipX
                ? _value.flipX
                : flipX // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$ImageLayerImpl implements _ImageLayer {
  const _$ImageLayerImpl({
    required this.data,
    required this.size,
    this.opacity = 1.0,
    this.offset = Offset.zero,
    this.scale = 1.0,
    this.angle = 0.0,
    this.flipX = false,
  });

  @override
  final Uint8List data;
  @override
  final Size size;
  @override
  @JsonKey()
  final double opacity;
  @override
  @JsonKey()
  final Offset offset;
  @override
  @JsonKey()
  final double scale;
  @override
  @JsonKey()
  final double angle;
  @override
  @JsonKey()
  final bool flipX;

  @override
  String toString() {
    return 'ImageLayer(data: $data, size: $size, opacity: $opacity, offset: $offset, scale: $scale, angle: $angle, flipX: $flipX)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLayerImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.flipX, flipX) || other.flipX == flipX));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(data),
    size,
    opacity,
    offset,
    scale,
    angle,
    flipX,
  );

  /// Create a copy of ImageLayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLayerImplCopyWith<_$ImageLayerImpl> get copyWith =>
      __$$ImageLayerImplCopyWithImpl<_$ImageLayerImpl>(this, _$identity);
}

abstract class _ImageLayer implements ImageLayer {
  const factory _ImageLayer({
    required final Uint8List data,
    required final Size size,
    final double opacity,
    final Offset offset,
    final double scale,
    final double angle,
    final bool flipX,
  }) = _$ImageLayerImpl;

  @override
  Uint8List get data;
  @override
  Size get size;
  @override
  double get opacity;
  @override
  Offset get offset;
  @override
  double get scale;
  @override
  double get angle;
  @override
  bool get flipX;

  /// Create a copy of ImageLayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageLayerImplCopyWith<_$ImageLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextLayer {
  String get text => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  Color? get backgroundColor => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  bool get flipX => throw _privateConstructorUsedError;

  /// Create a copy of TextLayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextLayerCopyWith<TextLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextLayerCopyWith<$Res> {
  factory $TextLayerCopyWith(TextLayer value, $Res Function(TextLayer) then) =
      _$TextLayerCopyWithImpl<$Res, TextLayer>;
  @useResult
  $Res call({
    String text,
    Color? color,
    Color? backgroundColor,
    Offset offset,
    double scale,
    double angle,
    bool flipX,
  });
}

/// @nodoc
class _$TextLayerCopyWithImpl<$Res, $Val extends TextLayer>
    implements $TextLayerCopyWith<$Res> {
  _$TextLayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextLayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? color = freezed,
    Object? backgroundColor = freezed,
    Object? offset = null,
    Object? scale = null,
    Object? angle = null,
    Object? flipX = null,
  }) {
    return _then(
      _value.copyWith(
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
            color:
                freezed == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as Color?,
            backgroundColor:
                freezed == backgroundColor
                    ? _value.backgroundColor
                    : backgroundColor // ignore: cast_nullable_to_non_nullable
                        as Color?,
            offset:
                null == offset
                    ? _value.offset
                    : offset // ignore: cast_nullable_to_non_nullable
                        as Offset,
            scale:
                null == scale
                    ? _value.scale
                    : scale // ignore: cast_nullable_to_non_nullable
                        as double,
            angle:
                null == angle
                    ? _value.angle
                    : angle // ignore: cast_nullable_to_non_nullable
                        as double,
            flipX:
                null == flipX
                    ? _value.flipX
                    : flipX // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TextLayerImplCopyWith<$Res>
    implements $TextLayerCopyWith<$Res> {
  factory _$$TextLayerImplCopyWith(
    _$TextLayerImpl value,
    $Res Function(_$TextLayerImpl) then,
  ) = __$$TextLayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String text,
    Color? color,
    Color? backgroundColor,
    Offset offset,
    double scale,
    double angle,
    bool flipX,
  });
}

/// @nodoc
class __$$TextLayerImplCopyWithImpl<$Res>
    extends _$TextLayerCopyWithImpl<$Res, _$TextLayerImpl>
    implements _$$TextLayerImplCopyWith<$Res> {
  __$$TextLayerImplCopyWithImpl(
    _$TextLayerImpl _value,
    $Res Function(_$TextLayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextLayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? color = freezed,
    Object? backgroundColor = freezed,
    Object? offset = null,
    Object? scale = null,
    Object? angle = null,
    Object? flipX = null,
  }) {
    return _then(
      _$TextLayerImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        color:
            freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as Color?,
        backgroundColor:
            freezed == backgroundColor
                ? _value.backgroundColor
                : backgroundColor // ignore: cast_nullable_to_non_nullable
                    as Color?,
        offset:
            null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                    as Offset,
        scale:
            null == scale
                ? _value.scale
                : scale // ignore: cast_nullable_to_non_nullable
                    as double,
        angle:
            null == angle
                ? _value.angle
                : angle // ignore: cast_nullable_to_non_nullable
                    as double,
        flipX:
            null == flipX
                ? _value.flipX
                : flipX // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$TextLayerImpl implements _TextLayer {
  const _$TextLayerImpl({
    required this.text,
    this.color,
    this.backgroundColor,
    this.offset = Offset.zero,
    this.scale = 1.0,
    this.angle = 0.0,
    this.flipX = false,
  });

  @override
  final String text;
  @override
  final Color? color;
  @override
  final Color? backgroundColor;
  @override
  @JsonKey()
  final Offset offset;
  @override
  @JsonKey()
  final double scale;
  @override
  @JsonKey()
  final double angle;
  @override
  @JsonKey()
  final bool flipX;

  @override
  String toString() {
    return 'TextLayer(text: $text, color: $color, backgroundColor: $backgroundColor, offset: $offset, scale: $scale, angle: $angle, flipX: $flipX)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextLayerImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.flipX, flipX) || other.flipX == flipX));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    text,
    color,
    backgroundColor,
    offset,
    scale,
    angle,
    flipX,
  );

  /// Create a copy of TextLayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextLayerImplCopyWith<_$TextLayerImpl> get copyWith =>
      __$$TextLayerImplCopyWithImpl<_$TextLayerImpl>(this, _$identity);
}

abstract class _TextLayer implements TextLayer {
  const factory _TextLayer({
    required final String text,
    final Color? color,
    final Color? backgroundColor,
    final Offset offset,
    final double scale,
    final double angle,
    final bool flipX,
  }) = _$TextLayerImpl;

  @override
  String get text;
  @override
  Color? get color;
  @override
  Color? get backgroundColor;
  @override
  Offset get offset;
  @override
  double get scale;
  @override
  double get angle;
  @override
  bool get flipX;

  /// Create a copy of TextLayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextLayerImplCopyWith<_$TextLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawLayer {
  List<Offset?> get offsets => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  double get strokeWidth => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  bool get flipX => throw _privateConstructorUsedError;

  /// Create a copy of DrawLayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrawLayerCopyWith<DrawLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawLayerCopyWith<$Res> {
  factory $DrawLayerCopyWith(DrawLayer value, $Res Function(DrawLayer) then) =
      _$DrawLayerCopyWithImpl<$Res, DrawLayer>;
  @useResult
  $Res call({
    List<Offset?> offsets,
    Color? color,
    double strokeWidth,
    Offset offset,
    double scale,
    double angle,
    bool flipX,
  });
}

/// @nodoc
class _$DrawLayerCopyWithImpl<$Res, $Val extends DrawLayer>
    implements $DrawLayerCopyWith<$Res> {
  _$DrawLayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawLayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsets = null,
    Object? color = freezed,
    Object? strokeWidth = null,
    Object? offset = null,
    Object? scale = null,
    Object? angle = null,
    Object? flipX = null,
  }) {
    return _then(
      _value.copyWith(
            offsets:
                null == offsets
                    ? _value.offsets
                    : offsets // ignore: cast_nullable_to_non_nullable
                        as List<Offset?>,
            color:
                freezed == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as Color?,
            strokeWidth:
                null == strokeWidth
                    ? _value.strokeWidth
                    : strokeWidth // ignore: cast_nullable_to_non_nullable
                        as double,
            offset:
                null == offset
                    ? _value.offset
                    : offset // ignore: cast_nullable_to_non_nullable
                        as Offset,
            scale:
                null == scale
                    ? _value.scale
                    : scale // ignore: cast_nullable_to_non_nullable
                        as double,
            angle:
                null == angle
                    ? _value.angle
                    : angle // ignore: cast_nullable_to_non_nullable
                        as double,
            flipX:
                null == flipX
                    ? _value.flipX
                    : flipX // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DrawLayerImplCopyWith<$Res>
    implements $DrawLayerCopyWith<$Res> {
  factory _$$DrawLayerImplCopyWith(
    _$DrawLayerImpl value,
    $Res Function(_$DrawLayerImpl) then,
  ) = __$$DrawLayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Offset?> offsets,
    Color? color,
    double strokeWidth,
    Offset offset,
    double scale,
    double angle,
    bool flipX,
  });
}

/// @nodoc
class __$$DrawLayerImplCopyWithImpl<$Res>
    extends _$DrawLayerCopyWithImpl<$Res, _$DrawLayerImpl>
    implements _$$DrawLayerImplCopyWith<$Res> {
  __$$DrawLayerImplCopyWithImpl(
    _$DrawLayerImpl _value,
    $Res Function(_$DrawLayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DrawLayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsets = null,
    Object? color = freezed,
    Object? strokeWidth = null,
    Object? offset = null,
    Object? scale = null,
    Object? angle = null,
    Object? flipX = null,
  }) {
    return _then(
      _$DrawLayerImpl(
        offsets:
            null == offsets
                ? _value._offsets
                : offsets // ignore: cast_nullable_to_non_nullable
                    as List<Offset?>,
        color:
            freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as Color?,
        strokeWidth:
            null == strokeWidth
                ? _value.strokeWidth
                : strokeWidth // ignore: cast_nullable_to_non_nullable
                    as double,
        offset:
            null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                    as Offset,
        scale:
            null == scale
                ? _value.scale
                : scale // ignore: cast_nullable_to_non_nullable
                    as double,
        angle:
            null == angle
                ? _value.angle
                : angle // ignore: cast_nullable_to_non_nullable
                    as double,
        flipX:
            null == flipX
                ? _value.flipX
                : flipX // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$DrawLayerImpl implements _DrawLayer {
  const _$DrawLayerImpl({
    final List<Offset?> offsets = const [],
    this.color,
    this.strokeWidth = 1.0,
    this.offset = Offset.zero,
    this.scale = 1.0,
    this.angle = 0.0,
    this.flipX = false,
  }) : _offsets = offsets;

  final List<Offset?> _offsets;
  @override
  @JsonKey()
  List<Offset?> get offsets {
    if (_offsets is EqualUnmodifiableListView) return _offsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offsets);
  }

  @override
  final Color? color;
  @override
  @JsonKey()
  final double strokeWidth;
  @override
  @JsonKey()
  final Offset offset;
  @override
  @JsonKey()
  final double scale;
  @override
  @JsonKey()
  final double angle;
  @override
  @JsonKey()
  final bool flipX;

  @override
  String toString() {
    return 'DrawLayer(offsets: $offsets, color: $color, strokeWidth: $strokeWidth, offset: $offset, scale: $scale, angle: $angle, flipX: $flipX)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawLayerImpl &&
            const DeepCollectionEquality().equals(other._offsets, _offsets) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.flipX, flipX) || other.flipX == flipX));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_offsets),
    color,
    strokeWidth,
    offset,
    scale,
    angle,
    flipX,
  );

  /// Create a copy of DrawLayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawLayerImplCopyWith<_$DrawLayerImpl> get copyWith =>
      __$$DrawLayerImplCopyWithImpl<_$DrawLayerImpl>(this, _$identity);
}

abstract class _DrawLayer implements DrawLayer {
  const factory _DrawLayer({
    final List<Offset?> offsets,
    final Color? color,
    final double strokeWidth,
    final Offset offset,
    final double scale,
    final double angle,
    final bool flipX,
  }) = _$DrawLayerImpl;

  @override
  List<Offset?> get offsets;
  @override
  Color? get color;
  @override
  double get strokeWidth;
  @override
  Offset get offset;
  @override
  double get scale;
  @override
  double get angle;
  @override
  bool get flipX;

  /// Create a copy of DrawLayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrawLayerImplCopyWith<_$DrawLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
