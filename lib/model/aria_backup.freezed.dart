// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aria_backup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AriaBackup {


/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AriaBackupCopyWith<AriaBackup> get copyWith => _$AriaBackupCopyWithImpl<AriaBackup>(this as AriaBackup, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AriaBackup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AriaBackup&&const DeepCollectionEquality().equals(other.metadata, _this.metadata)&&const DeepCollectionEquality().equals(other.timelineTabs, _this.timelineTabs)&&const DeepCollectionEquality().equals(other.accountSettings, _this.accountSettings)&&(identical(other.generalSettings, _this.generalSettings) || other.generalSettings == _this.generalSettings)&&const DeepCollectionEquality().equals(other.themes, _this.themes)&&const DeepCollectionEquality().equals(other.aiscriptStorage, _this.aiscriptStorage)&&const DeepCollectionEquality().equals(other.noteDrafts, _this.noteDrafts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AriaBackup;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.metadata),const DeepCollectionEquality().hash(_this.timelineTabs),const DeepCollectionEquality().hash(_this.accountSettings),_this.generalSettings,const DeepCollectionEquality().hash(_this.themes),const DeepCollectionEquality().hash(_this.aiscriptStorage),const DeepCollectionEquality().hash(_this.noteDrafts));
}

@override
String toString() {
  final _this = this as AriaBackup;
  return 'AriaBackup(metadata: ${_this.metadata}, timelineTabs: ${_this.timelineTabs}, accountSettings: ${_this.accountSettings}, generalSettings: ${_this.generalSettings}, themes: ${_this.themes}, aiscriptStorage: ${_this.aiscriptStorage}, noteDrafts: ${_this.noteDrafts})';
}


}

/// @nodoc
abstract mixin class $AriaBackupCopyWith<$Res>  {
  factory $AriaBackupCopyWith(AriaBackup value, $Res Function(AriaBackup) _then) = _$AriaBackupCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? metadata, List<TabSettings>? timelineTabs, Map<String, AccountSettings>? accountSettings, GeneralSettings? generalSettings, List<String>? themes, Map<String, Map<String, String>>? aiscriptStorage, List<Map<String, dynamic>>? noteDrafts
});


$GeneralSettingsCopyWith<$Res>? get generalSettings;

}
/// @nodoc
class _$AriaBackupCopyWithImpl<$Res>
    implements $AriaBackupCopyWith<$Res> {
  _$AriaBackupCopyWithImpl(this._self, this._then);

  final AriaBackup _self;
  final $Res Function(AriaBackup) _then;

/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? timelineTabs = freezed,Object? accountSettings = freezed,Object? generalSettings = freezed,Object? themes = freezed,Object? aiscriptStorage = freezed,Object? noteDrafts = freezed,}) {
  return _then(AriaBackup(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,timelineTabs: freezed == timelineTabs ? _self.timelineTabs : timelineTabs // ignore: cast_nullable_to_non_nullable
as List<TabSettings>?,accountSettings: freezed == accountSettings ? _self.accountSettings : accountSettings // ignore: cast_nullable_to_non_nullable
as Map<String, AccountSettings>?,generalSettings: freezed == generalSettings ? _self.generalSettings : generalSettings // ignore: cast_nullable_to_non_nullable
as GeneralSettings?,themes: freezed == themes ? _self.themes : themes // ignore: cast_nullable_to_non_nullable
as List<String>?,aiscriptStorage: freezed == aiscriptStorage ? _self.aiscriptStorage : aiscriptStorage // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, String>>?,noteDrafts: freezed == noteDrafts ? _self.noteDrafts : noteDrafts // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}
/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralSettingsCopyWith<$Res>? get generalSettings {
    if (_self.generalSettings == null) {
    return null;
  }

  return $GeneralSettingsCopyWith<$Res>(_self.generalSettings!, (value) {
    return _then(_self.copyWith(generalSettings: value));
  });
}
}



// dart format on
