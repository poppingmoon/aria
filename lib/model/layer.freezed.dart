// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageLayer {


/// Create a copy of ImageLayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageLayerCopyWith<ImageLayer> get copyWith => _$ImageLayerCopyWithImpl<ImageLayer>(this as ImageLayer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ImageLayer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLayer&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.opacity, _this.opacity) || other.opacity == _this.opacity)&&(identical(other.offset, _this.offset) || other.offset == _this.offset)&&(identical(other.scale, _this.scale) || other.scale == _this.scale)&&(identical(other.angle, _this.angle) || other.angle == _this.angle)&&(identical(other.flipX, _this.flipX) || other.flipX == _this.flipX));
}


@override
int get hashCode {
  final _this = this as ImageLayer;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.opacity,_this.offset,_this.scale,_this.angle,_this.flipX);
}

@override
String toString() {
  final _this = this as ImageLayer;
  return 'ImageLayer(data: ${_this.data}, opacity: ${_this.opacity}, offset: ${_this.offset}, scale: ${_this.scale}, angle: ${_this.angle}, flipX: ${_this.flipX})';
}


}

/// @nodoc
abstract mixin class $ImageLayerCopyWith<$Res>  {
  factory $ImageLayerCopyWith(ImageLayer value, $Res Function(ImageLayer) _then) = _$ImageLayerCopyWithImpl;
@useResult
$Res call({
 Uint8List data, double opacity,@override Offset offset,@override double scale,@override double angle,@override bool flipX
});




}
/// @nodoc
class _$ImageLayerCopyWithImpl<$Res>
    implements $ImageLayerCopyWith<$Res> {
  _$ImageLayerCopyWithImpl(this._self, this._then);

  final ImageLayer _self;
  final $Res Function(ImageLayer) _then;

/// Create a copy of ImageLayer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? opacity = null,Object? offset = null,Object? scale = null,Object? angle = null,Object? flipX = null,}) {
  return _then(ImageLayer(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as Offset,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,angle: null == angle ? _self.angle : angle // ignore: cast_nullable_to_non_nullable
as double,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _ImageLayer extends ImageLayer {
  const _ImageLayer({required this.data, this.opacity = 1.0, @override this.offset = Offset.zero, @override this.scale = 1.0, @override this.angle = 0.0, @override this.flipX = false}): super(data: data, opacity: opacity, offset: offset, scale: scale, angle: angle, flipX: flipX);
  

@override final  Uint8List data;
@override final  double opacity;
@override@override final  Offset offset;
@override@override final  double scale;
@override@override final  double angle;
@override@override final  bool flipX;

/// Create a copy of ImageLayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageLayerCopyWith<_ImageLayer> get copyWith => __$ImageLayerCopyWithImpl<_ImageLayer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageLayer&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.angle, angle) || other.angle == angle)&&(identical(other.flipX, flipX) || other.flipX == flipX));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(data),opacity,offset,scale,angle,flipX);
}

@override
String toString() {
    return 'ImageLayer(data: $data, opacity: $opacity, offset: $offset, scale: $scale, angle: $angle, flipX: $flipX)';
}


}

/// @nodoc
abstract mixin class _$ImageLayerCopyWith<$Res> implements $ImageLayerCopyWith<$Res> {
  factory _$ImageLayerCopyWith(_ImageLayer value, $Res Function(_ImageLayer) _then) = __$ImageLayerCopyWithImpl;
@override @useResult
$Res call({
 Uint8List data, double opacity,@override Offset offset,@override double scale,@override double angle,@override bool flipX
});




}
/// @nodoc
class __$ImageLayerCopyWithImpl<$Res>
    implements _$ImageLayerCopyWith<$Res> {
  __$ImageLayerCopyWithImpl(this._self, this._then);

  final _ImageLayer _self;
  final $Res Function(_ImageLayer) _then;

/// Create a copy of ImageLayer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? opacity = null,Object? offset = null,Object? scale = null,Object? angle = null,Object? flipX = null,}) {
  return _then(_ImageLayer(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as Offset,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,angle: null == angle ? _self.angle : angle // ignore: cast_nullable_to_non_nullable
as double,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TextLayer {


/// Create a copy of TextLayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextLayerCopyWith<TextLayer> get copyWith => _$TextLayerCopyWithImpl<TextLayer>(this as TextLayer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TextLayer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextLayer&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.backgroundColor, _this.backgroundColor) || other.backgroundColor == _this.backgroundColor)&&(identical(other.offset, _this.offset) || other.offset == _this.offset)&&(identical(other.scale, _this.scale) || other.scale == _this.scale)&&(identical(other.angle, _this.angle) || other.angle == _this.angle)&&(identical(other.flipX, _this.flipX) || other.flipX == _this.flipX));
}


@override
int get hashCode {
  final _this = this as TextLayer;
  return Object.hash(runtimeType,_this.text,_this.color,_this.backgroundColor,_this.offset,_this.scale,_this.angle,_this.flipX);
}

@override
String toString() {
  final _this = this as TextLayer;
  return 'TextLayer(text: ${_this.text}, color: ${_this.color}, backgroundColor: ${_this.backgroundColor}, offset: ${_this.offset}, scale: ${_this.scale}, angle: ${_this.angle}, flipX: ${_this.flipX})';
}


}

/// @nodoc
abstract mixin class $TextLayerCopyWith<$Res>  {
  factory $TextLayerCopyWith(TextLayer value, $Res Function(TextLayer) _then) = _$TextLayerCopyWithImpl;
@useResult
$Res call({
 String text, Color? color, Color? backgroundColor,@override Offset offset,@override double scale,@override double angle,@override bool flipX
});




}
/// @nodoc
class _$TextLayerCopyWithImpl<$Res>
    implements $TextLayerCopyWith<$Res> {
  _$TextLayerCopyWithImpl(this._self, this._then);

  final TextLayer _self;
  final $Res Function(TextLayer) _then;

/// Create a copy of TextLayer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? color = freezed,Object? backgroundColor = freezed,Object? offset = null,Object? scale = null,Object? angle = null,Object? flipX = null,}) {
  return _then(TextLayer(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as Offset,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,angle: null == angle ? _self.angle : angle // ignore: cast_nullable_to_non_nullable
as double,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _TextLayer extends TextLayer {
  const _TextLayer({required this.text, this.color, this.backgroundColor, @override this.offset = Offset.zero, @override this.scale = 1.0, @override this.angle = 0.0, @override this.flipX = false}): super(text: text, color: color, backgroundColor: backgroundColor, offset: offset, scale: scale, angle: angle, flipX: flipX);
  

@override final  String text;
@override final  Color? color;
@override final  Color? backgroundColor;
@override@override final  Offset offset;
@override@override final  double scale;
@override@override final  double angle;
@override@override final  bool flipX;

/// Create a copy of TextLayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextLayerCopyWith<_TextLayer> get copyWith => __$TextLayerCopyWithImpl<_TextLayer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextLayer&&(identical(other.text, text) || other.text == text)&&(identical(other.color, color) || other.color == color)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.angle, angle) || other.angle == angle)&&(identical(other.flipX, flipX) || other.flipX == flipX));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text,color,backgroundColor,offset,scale,angle,flipX);
}

@override
String toString() {
    return 'TextLayer(text: $text, color: $color, backgroundColor: $backgroundColor, offset: $offset, scale: $scale, angle: $angle, flipX: $flipX)';
}


}

/// @nodoc
abstract mixin class _$TextLayerCopyWith<$Res> implements $TextLayerCopyWith<$Res> {
  factory _$TextLayerCopyWith(_TextLayer value, $Res Function(_TextLayer) _then) = __$TextLayerCopyWithImpl;
@override @useResult
$Res call({
 String text, Color? color, Color? backgroundColor,@override Offset offset,@override double scale,@override double angle,@override bool flipX
});




}
/// @nodoc
class __$TextLayerCopyWithImpl<$Res>
    implements _$TextLayerCopyWith<$Res> {
  __$TextLayerCopyWithImpl(this._self, this._then);

  final _TextLayer _self;
  final $Res Function(_TextLayer) _then;

/// Create a copy of TextLayer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? color = freezed,Object? backgroundColor = freezed,Object? offset = null,Object? scale = null,Object? angle = null,Object? flipX = null,}) {
  return _then(_TextLayer(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,backgroundColor: freezed == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as Offset,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,angle: null == angle ? _self.angle : angle // ignore: cast_nullable_to_non_nullable
as double,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$DrawLayer {


/// Create a copy of DrawLayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawLayerCopyWith<DrawLayer> get copyWith => _$DrawLayerCopyWithImpl<DrawLayer>(this as DrawLayer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DrawLayer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawLayer&&const DeepCollectionEquality().equals(other.offsets, _this.offsets)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.strokeWidth, _this.strokeWidth) || other.strokeWidth == _this.strokeWidth)&&(identical(other.offset, _this.offset) || other.offset == _this.offset)&&(identical(other.scale, _this.scale) || other.scale == _this.scale)&&(identical(other.angle, _this.angle) || other.angle == _this.angle)&&(identical(other.flipX, _this.flipX) || other.flipX == _this.flipX));
}


@override
int get hashCode {
  final _this = this as DrawLayer;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.offsets),_this.color,_this.strokeWidth,_this.offset,_this.scale,_this.angle,_this.flipX);
}

@override
String toString() {
  final _this = this as DrawLayer;
  return 'DrawLayer(offsets: ${_this.offsets}, color: ${_this.color}, strokeWidth: ${_this.strokeWidth}, offset: ${_this.offset}, scale: ${_this.scale}, angle: ${_this.angle}, flipX: ${_this.flipX})';
}


}

/// @nodoc
abstract mixin class $DrawLayerCopyWith<$Res>  {
  factory $DrawLayerCopyWith(DrawLayer value, $Res Function(DrawLayer) _then) = _$DrawLayerCopyWithImpl;
@useResult
$Res call({
 List<Offset?> offsets, Color? color, double strokeWidth,@override Offset offset,@override double scale,@override double angle,@override bool flipX
});




}
/// @nodoc
class _$DrawLayerCopyWithImpl<$Res>
    implements $DrawLayerCopyWith<$Res> {
  _$DrawLayerCopyWithImpl(this._self, this._then);

  final DrawLayer _self;
  final $Res Function(DrawLayer) _then;

/// Create a copy of DrawLayer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offsets = null,Object? color = freezed,Object? strokeWidth = null,Object? offset = null,Object? scale = null,Object? angle = null,Object? flipX = null,}) {
  return _then(DrawLayer(
offsets: null == offsets ? _self.offsets : offsets // ignore: cast_nullable_to_non_nullable
as List<Offset?>,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,strokeWidth: null == strokeWidth ? _self.strokeWidth : strokeWidth // ignore: cast_nullable_to_non_nullable
as double,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as Offset,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,angle: null == angle ? _self.angle : angle // ignore: cast_nullable_to_non_nullable
as double,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _DrawLayer extends DrawLayer {
  const _DrawLayer({ List<Offset?> offsets = const [], this.color, this.strokeWidth = 1.0, @override this.offset = Offset.zero, @override this.scale = 1.0, @override this.angle = 0.0, @override this.flipX = false}): _offsets = offsets,super(offsets: offsets, color: color, strokeWidth: strokeWidth, offset: offset, scale: scale, angle: angle, flipX: flipX);
  

 final  List<Offset?> _offsets;
@override List<Offset?> get offsets {
  if (_offsets is EqualUnmodifiableListView) return _offsets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offsets);
}

@override final  Color? color;
@override final  double strokeWidth;
@override@override final  Offset offset;
@override@override final  double scale;
@override@override final  double angle;
@override@override final  bool flipX;

/// Create a copy of DrawLayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawLayerCopyWith<_DrawLayer> get copyWith => __$DrawLayerCopyWithImpl<_DrawLayer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawLayer&&const DeepCollectionEquality().equals(other.offsets, _offsets)&&(identical(other.color, color) || other.color == color)&&(identical(other.strokeWidth, strokeWidth) || other.strokeWidth == strokeWidth)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.angle, angle) || other.angle == angle)&&(identical(other.flipX, flipX) || other.flipX == flipX));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_offsets),color,strokeWidth,offset,scale,angle,flipX);
}

@override
String toString() {
    return 'DrawLayer(offsets: $offsets, color: $color, strokeWidth: $strokeWidth, offset: $offset, scale: $scale, angle: $angle, flipX: $flipX)';
}


}

/// @nodoc
abstract mixin class _$DrawLayerCopyWith<$Res> implements $DrawLayerCopyWith<$Res> {
  factory _$DrawLayerCopyWith(_DrawLayer value, $Res Function(_DrawLayer) _then) = __$DrawLayerCopyWithImpl;
@override @useResult
$Res call({
 List<Offset?> offsets, Color? color, double strokeWidth,@override Offset offset,@override double scale,@override double angle,@override bool flipX
});




}
/// @nodoc
class __$DrawLayerCopyWithImpl<$Res>
    implements _$DrawLayerCopyWith<$Res> {
  __$DrawLayerCopyWithImpl(this._self, this._then);

  final _DrawLayer _self;
  final $Res Function(_DrawLayer) _then;

/// Create a copy of DrawLayer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offsets = null,Object? color = freezed,Object? strokeWidth = null,Object? offset = null,Object? scale = null,Object? angle = null,Object? flipX = null,}) {
  return _then(_DrawLayer(
offsets: null == offsets ? _self._offsets : offsets // ignore: cast_nullable_to_non_nullable
as List<Offset?>,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,strokeWidth: null == strokeWidth ? _self.strokeWidth : strokeWidth // ignore: cast_nullable_to_non_nullable
as double,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as Offset,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,angle: null == angle ? _self.angle : angle // ignore: cast_nullable_to_non_nullable
as double,flipX: null == flipX ? _self.flipX : flipX // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
