// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfm_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MfmConfig {

 TextStyle get style; bool get disableNyaize; double get scale; double get opacity; TextAlign? get align; int get xNest;
/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MfmConfigCopyWith<MfmConfig> get copyWith => _$MfmConfigCopyWithImpl<MfmConfig>(this as MfmConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MfmConfig&&(identical(other.style, style) || other.style == style)&&(identical(other.disableNyaize, disableNyaize) || other.disableNyaize == disableNyaize)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.align, align) || other.align == align)&&(identical(other.xNest, xNest) || other.xNest == xNest));
}


@override
int get hashCode => Object.hash(runtimeType,style,disableNyaize,scale,opacity,align,xNest);

@override
String toString() {
  return 'MfmConfig(style: $style, disableNyaize: $disableNyaize, scale: $scale, opacity: $opacity, align: $align, xNest: $xNest)';
}


}

/// @nodoc
abstract mixin class $MfmConfigCopyWith<$Res>  {
  factory $MfmConfigCopyWith(MfmConfig value, $Res Function(MfmConfig) _then) = _$MfmConfigCopyWithImpl;
@useResult
$Res call({
 TextStyle style, bool disableNyaize, double scale, double opacity, TextAlign? align, int xNest
});




}
/// @nodoc
class _$MfmConfigCopyWithImpl<$Res>
    implements $MfmConfigCopyWith<$Res> {
  _$MfmConfigCopyWithImpl(this._self, this._then);

  final MfmConfig _self;
  final $Res Function(MfmConfig) _then;

/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? style = null,Object? disableNyaize = null,Object? scale = null,Object? opacity = null,Object? align = freezed,Object? xNest = null,}) {
  return _then(_self.copyWith(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle,disableNyaize: null == disableNyaize ? _self.disableNyaize : disableNyaize // ignore: cast_nullable_to_non_nullable
as bool,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,align: freezed == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as TextAlign?,xNest: null == xNest ? _self.xNest : xNest // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MfmConfig].
extension MfmConfigPatterns on MfmConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MfmConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MfmConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MfmConfig value)  $default,){
final _that = this;
switch (_that) {
case _MfmConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MfmConfig value)?  $default,){
final _that = this;
switch (_that) {
case _MfmConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextStyle style,  bool disableNyaize,  double scale,  double opacity,  TextAlign? align,  int xNest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MfmConfig() when $default != null:
return $default(_that.style,_that.disableNyaize,_that.scale,_that.opacity,_that.align,_that.xNest);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextStyle style,  bool disableNyaize,  double scale,  double opacity,  TextAlign? align,  int xNest)  $default,) {final _that = this;
switch (_that) {
case _MfmConfig():
return $default(_that.style,_that.disableNyaize,_that.scale,_that.opacity,_that.align,_that.xNest);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextStyle style,  bool disableNyaize,  double scale,  double opacity,  TextAlign? align,  int xNest)?  $default,) {final _that = this;
switch (_that) {
case _MfmConfig() when $default != null:
return $default(_that.style,_that.disableNyaize,_that.scale,_that.opacity,_that.align,_that.xNest);case _:
  return null;

}
}

}

/// @nodoc


class _MfmConfig implements MfmConfig {
  const _MfmConfig({required this.style, this.disableNyaize = false, this.scale = 1.0, this.opacity = 1.0, this.align, this.xNest = 0});
  

@override final  TextStyle style;
@override@JsonKey() final  bool disableNyaize;
@override@JsonKey() final  double scale;
@override@JsonKey() final  double opacity;
@override final  TextAlign? align;
@override@JsonKey() final  int xNest;

/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MfmConfigCopyWith<_MfmConfig> get copyWith => __$MfmConfigCopyWithImpl<_MfmConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MfmConfig&&(identical(other.style, style) || other.style == style)&&(identical(other.disableNyaize, disableNyaize) || other.disableNyaize == disableNyaize)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.align, align) || other.align == align)&&(identical(other.xNest, xNest) || other.xNest == xNest));
}


@override
int get hashCode => Object.hash(runtimeType,style,disableNyaize,scale,opacity,align,xNest);

@override
String toString() {
  return 'MfmConfig(style: $style, disableNyaize: $disableNyaize, scale: $scale, opacity: $opacity, align: $align, xNest: $xNest)';
}


}

/// @nodoc
abstract mixin class _$MfmConfigCopyWith<$Res> implements $MfmConfigCopyWith<$Res> {
  factory _$MfmConfigCopyWith(_MfmConfig value, $Res Function(_MfmConfig) _then) = __$MfmConfigCopyWithImpl;
@override @useResult
$Res call({
 TextStyle style, bool disableNyaize, double scale, double opacity, TextAlign? align, int xNest
});




}
/// @nodoc
class __$MfmConfigCopyWithImpl<$Res>
    implements _$MfmConfigCopyWith<$Res> {
  __$MfmConfigCopyWithImpl(this._self, this._then);

  final _MfmConfig _self;
  final $Res Function(_MfmConfig) _then;

/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? style = null,Object? disableNyaize = null,Object? scale = null,Object? opacity = null,Object? align = freezed,Object? xNest = null,}) {
  return _then(_MfmConfig(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle,disableNyaize: null == disableNyaize ? _self.disableNyaize : disableNyaize // ignore: cast_nullable_to_non_nullable
as bool,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,align: freezed == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as TextAlign?,xNest: null == xNest ? _self.xNest : xNest // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
