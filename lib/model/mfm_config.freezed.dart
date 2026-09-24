// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfm_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MfmConfig {


/// Create a copy of MfmConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MfmConfigCopyWith<MfmConfig> get copyWith => _$MfmConfigCopyWithImpl<MfmConfig>(this as MfmConfig, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MfmConfig;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MfmConfig&&(identical(other.style, _this.style) || other.style == _this.style)&&(identical(other.disableNyaize, _this.disableNyaize) || other.disableNyaize == _this.disableNyaize)&&(identical(other.scale, _this.scale) || other.scale == _this.scale)&&(identical(other.opacity, _this.opacity) || other.opacity == _this.opacity)&&(identical(other.align, _this.align) || other.align == _this.align)&&(identical(other.xNest, _this.xNest) || other.xNest == _this.xNest)&&(identical(other.linkId, _this.linkId) || other.linkId == _this.linkId));
}


@override
int get hashCode {
  final _this = this as MfmConfig;
  return Object.hash(runtimeType,_this.style,_this.disableNyaize,_this.scale,_this.opacity,_this.align,_this.xNest,_this.linkId);
}

@override
String toString() {
  final _this = this as MfmConfig;
  return 'MfmConfig(style: ${_this.style}, disableNyaize: ${_this.disableNyaize}, scale: ${_this.scale}, opacity: ${_this.opacity}, align: ${_this.align}, xNest: ${_this.xNest}, linkId: ${_this.linkId})';
}


}

/// @nodoc
abstract mixin class $MfmConfigCopyWith<$Res>  {
  factory $MfmConfigCopyWith(MfmConfig value, $Res Function(MfmConfig) _then) = _$MfmConfigCopyWithImpl;
@useResult
$Res call({
 TextStyle style, bool disableNyaize, double scale, double opacity, TextAlign? align, int xNest, int? linkId
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
@pragma('vm:prefer-inline') @override $Res call({Object? style = null,Object? disableNyaize = null,Object? scale = null,Object? opacity = null,Object? align = freezed,Object? xNest = null,Object? linkId = freezed,}) {
  return _then(MfmConfig(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as TextStyle,disableNyaize: null == disableNyaize ? _self.disableNyaize : disableNyaize // ignore: cast_nullable_to_non_nullable
as bool,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,align: freezed == align ? _self.align : align // ignore: cast_nullable_to_non_nullable
as TextAlign?,xNest: null == xNest ? _self.xNest : xNest // ignore: cast_nullable_to_non_nullable
as int,linkId: freezed == linkId ? _self.linkId : linkId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}



// dart format on
