// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClipSettings {


/// Create a copy of ClipSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClipSettingsCopyWith<ClipSettings> get copyWith => _$ClipSettingsCopyWithImpl<ClipSettings>(this as ClipSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClipSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClipSettings&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.isPublic, _this.isPublic) || other.isPublic == _this.isPublic));
}


@override
int get hashCode {
  final _this = this as ClipSettings;
  return Object.hash(runtimeType,_this.name,_this.description,_this.isPublic);
}

@override
String toString() {
  final _this = this as ClipSettings;
  return 'ClipSettings(name: ${_this.name}, description: ${_this.description}, isPublic: ${_this.isPublic})';
}


}

/// @nodoc
abstract mixin class $ClipSettingsCopyWith<$Res>  {
  factory $ClipSettingsCopyWith(ClipSettings value, $Res Function(ClipSettings) _then) = _$ClipSettingsCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, bool? isPublic
});




}
/// @nodoc
class _$ClipSettingsCopyWithImpl<$Res>
    implements $ClipSettingsCopyWith<$Res> {
  _$ClipSettingsCopyWithImpl(this._self, this._then);

  final ClipSettings _self;
  final $Res Function(ClipSettings) _then;

/// Create a copy of ClipSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? isPublic = freezed,}) {
  return _then(ClipSettings(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}



// dart format on
