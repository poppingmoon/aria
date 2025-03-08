// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClipSettings {

 String? get name; String? get description; bool? get isPublic;
/// Create a copy of ClipSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClipSettingsCopyWith<ClipSettings> get copyWith => _$ClipSettingsCopyWithImpl<ClipSettings>(this as ClipSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClipSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,isPublic);

@override
String toString() {
  return 'ClipSettings(name: $name, description: $description, isPublic: $isPublic)';
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
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc


class _ClipSettings implements ClipSettings {
  const _ClipSettings({this.name, this.description, this.isPublic});
  

@override final  String? name;
@override final  String? description;
@override final  bool? isPublic;

/// Create a copy of ClipSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClipSettingsCopyWith<_ClipSettings> get copyWith => __$ClipSettingsCopyWithImpl<_ClipSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClipSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,isPublic);

@override
String toString() {
  return 'ClipSettings(name: $name, description: $description, isPublic: $isPublic)';
}


}

/// @nodoc
abstract mixin class _$ClipSettingsCopyWith<$Res> implements $ClipSettingsCopyWith<$Res> {
  factory _$ClipSettingsCopyWith(_ClipSettings value, $Res Function(_ClipSettings) _then) = __$ClipSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, bool? isPublic
});




}
/// @nodoc
class __$ClipSettingsCopyWithImpl<$Res>
    implements _$ClipSettingsCopyWith<$Res> {
  __$ClipSettingsCopyWithImpl(this._self, this._then);

  final _ClipSettings _self;
  final $Res Function(_ClipSettings) _then;

/// Create a copy of ClipSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? isPublic = freezed,}) {
  return _then(_ClipSettings(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
