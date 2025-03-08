// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

 TextStyle get style; bool get disableNyaize; double get scale; double get opacity; TextAlign? get align;
/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MfmConfigCopyWith<MfmConfig> get copyWith => _$MfmConfigCopyWithImpl<MfmConfig>(this as MfmConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MfmConfig&&(identical(other.style, style) || other.style == style)&&(identical(other.disableNyaize, disableNyaize) || other.disableNyaize == disableNyaize)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.align, align) || other.align == align));
}


@override
int get hashCode => Object.hash(runtimeType,style,disableNyaize,scale,opacity,align);

@override
String toString() {
  return 'MfmConfig(style: $style, disableNyaize: $disableNyaize, scale: $scale, opacity: $opacity, align: $align)';
}


}

/// @nodoc
abstract mixin class $MfmConfigCopyWith<$Res>  {
  factory $MfmConfigCopyWith(MfmConfig value, $Res Function(MfmConfig) _then) = _$MfmConfigCopyWithImpl;
@useResult
$Res call({
 TextStyle style, bool disableNyaize, double scale, double opacity, TextAlign? align
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
@pragma('vm:prefer-inline') @override $Res call({Object? style = null,Object? disableNyaize = null,Object? scale = null,Object? opacity = null,Object? align = freezed,}) {
  return _then(_self.copyWith(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle,disableNyaize: null == disableNyaize ? _self.disableNyaize : disableNyaize // ignore: cast_nullable_to_non_nullable
as bool,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,align: freezed == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as TextAlign?,
  ));
}

}


/// @nodoc


class _MfmConfig implements MfmConfig {
  const _MfmConfig({required this.style, this.disableNyaize = false, this.scale = 1.0, this.opacity = 1.0, this.align});
  

@override final  TextStyle style;
@override@JsonKey() final  bool disableNyaize;
@override@JsonKey() final  double scale;
@override@JsonKey() final  double opacity;
@override final  TextAlign? align;

/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MfmConfigCopyWith<_MfmConfig> get copyWith => __$MfmConfigCopyWithImpl<_MfmConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MfmConfig&&(identical(other.style, style) || other.style == style)&&(identical(other.disableNyaize, disableNyaize) || other.disableNyaize == disableNyaize)&&(identical(other.scale, scale) || other.scale == scale)&&(identical(other.opacity, opacity) || other.opacity == opacity)&&(identical(other.align, align) || other.align == align));
}


@override
int get hashCode => Object.hash(runtimeType,style,disableNyaize,scale,opacity,align);

@override
String toString() {
  return 'MfmConfig(style: $style, disableNyaize: $disableNyaize, scale: $scale, opacity: $opacity, align: $align)';
}


}

/// @nodoc
abstract mixin class _$MfmConfigCopyWith<$Res> implements $MfmConfigCopyWith<$Res> {
  factory _$MfmConfigCopyWith(_MfmConfig value, $Res Function(_MfmConfig) _then) = __$MfmConfigCopyWithImpl;
@override @useResult
$Res call({
 TextStyle style, bool disableNyaize, double scale, double opacity, TextAlign? align
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
@override @pragma('vm:prefer-inline') $Res call({Object? style = null,Object? disableNyaize = null,Object? scale = null,Object? opacity = null,Object? align = freezed,}) {
  return _then(_MfmConfig(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle,disableNyaize: null == disableNyaize ? _self.disableNyaize : disableNyaize // ignore: cast_nullable_to_non_nullable
as bool,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,align: freezed == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as TextAlign?,
  ));
}


}

// dart format on
