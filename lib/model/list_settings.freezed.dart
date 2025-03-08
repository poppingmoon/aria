// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListSettings {

 String? get name; bool? get isPublic;
/// Create a copy of ListSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListSettingsCopyWith<ListSettings> get copyWith => _$ListSettingsCopyWithImpl<ListSettings>(this as ListSettings, _$identity);

  /// Serializes this ListSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,isPublic);

@override
String toString() {
  return 'ListSettings(name: $name, isPublic: $isPublic)';
}


}

/// @nodoc
abstract mixin class $ListSettingsCopyWith<$Res>  {
  factory $ListSettingsCopyWith(ListSettings value, $Res Function(ListSettings) _then) = _$ListSettingsCopyWithImpl;
@useResult
$Res call({
 String? name, bool? isPublic
});




}
/// @nodoc
class _$ListSettingsCopyWithImpl<$Res>
    implements $ListSettingsCopyWith<$Res> {
  _$ListSettingsCopyWithImpl(this._self, this._then);

  final ListSettings _self;
  final $Res Function(ListSettings) _then;

/// Create a copy of ListSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? isPublic = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ListSettings implements ListSettings {
  const _ListSettings({this.name, this.isPublic});
  factory _ListSettings.fromJson(Map<String, dynamic> json) => _$ListSettingsFromJson(json);

@override final  String? name;
@override final  bool? isPublic;

/// Create a copy of ListSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListSettingsCopyWith<_ListSettings> get copyWith => __$ListSettingsCopyWithImpl<_ListSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,isPublic);

@override
String toString() {
  return 'ListSettings(name: $name, isPublic: $isPublic)';
}


}

/// @nodoc
abstract mixin class _$ListSettingsCopyWith<$Res> implements $ListSettingsCopyWith<$Res> {
  factory _$ListSettingsCopyWith(_ListSettings value, $Res Function(_ListSettings) _then) = __$ListSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? name, bool? isPublic
});




}
/// @nodoc
class __$ListSettingsCopyWithImpl<$Res>
    implements _$ListSettingsCopyWith<$Res> {
  __$ListSettingsCopyWithImpl(this._self, this._then);

  final _ListSettings _self;
  final $Res Function(_ListSettings) _then;

/// Create a copy of ListSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? isPublic = freezed,}) {
  return _then(_ListSettings(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isPublic: freezed == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
