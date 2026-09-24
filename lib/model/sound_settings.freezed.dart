// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sound_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SoundSettings {


/// Create a copy of SoundSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundSettingsCopyWith<SoundSettings> get copyWith => _$SoundSettingsCopyWithImpl<SoundSettings>(this as SoundSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SoundSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundSettings&&(identical(other.notUseSound, _this.notUseSound) || other.notUseSound == _this.notUseSound)&&(identical(other.masterVolume, _this.masterVolume) || other.masterVolume == _this.masterVolume)&&const DeepCollectionEquality().equals(other.sounds, _this.sounds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SoundSettings;
  return Object.hash(runtimeType,_this.notUseSound,_this.masterVolume,const DeepCollectionEquality().hash(_this.sounds));
}

@override
String toString() {
  final _this = this as SoundSettings;
  return 'SoundSettings(notUseSound: ${_this.notUseSound}, masterVolume: ${_this.masterVolume}, sounds: ${_this.sounds})';
}


}

/// @nodoc
abstract mixin class $SoundSettingsCopyWith<$Res>  {
  factory $SoundSettingsCopyWith(SoundSettings value, $Res Function(SoundSettings) _then) = _$SoundSettingsCopyWithImpl;
@useResult
$Res call({
 bool notUseSound, double masterVolume, Map<OperationType, SoundStore> sounds
});




}
/// @nodoc
class _$SoundSettingsCopyWithImpl<$Res>
    implements $SoundSettingsCopyWith<$Res> {
  _$SoundSettingsCopyWithImpl(this._self, this._then);

  final SoundSettings _self;
  final $Res Function(SoundSettings) _then;

/// Create a copy of SoundSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notUseSound = null,Object? masterVolume = null,Object? sounds = null,}) {
  return _then(SoundSettings(
notUseSound: null == notUseSound ? _self.notUseSound : notUseSound // ignore: cast_nullable_to_non_nullable
as bool,masterVolume: null == masterVolume ? _self.masterVolume : masterVolume // ignore: cast_nullable_to_non_nullable
as double,sounds: null == sounds ? _self.sounds : sounds // ignore: cast_nullable_to_non_nullable
as Map<OperationType, SoundStore>,
  ));
}

}




/// @nodoc
mixin _$SoundStore {


/// Create a copy of SoundStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundStoreCopyWith<SoundStore> get copyWith => _$SoundStoreCopyWithImpl<SoundStore>(this as SoundStore, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SoundStore;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundStore&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.volume, _this.volume) || other.volume == _this.volume)&&(identical(other.vibrate, _this.vibrate) || other.vibrate == _this.vibrate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SoundStore;
  return Object.hash(runtimeType,_this.type,_this.volume,_this.vibrate);
}

@override
String toString() {
  final _this = this as SoundStore;
  return 'SoundStore(type: ${_this.type}, volume: ${_this.volume}, vibrate: ${_this.vibrate})';
}


}

/// @nodoc
abstract mixin class $SoundStoreCopyWith<$Res>  {
  factory $SoundStoreCopyWith(SoundStore value, $Res Function(SoundStore) _then) = _$SoundStoreCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) SoundType? type, double volume, bool vibrate
});




}
/// @nodoc
class _$SoundStoreCopyWithImpl<$Res>
    implements $SoundStoreCopyWith<$Res> {
  _$SoundStoreCopyWithImpl(this._self, this._then);

  final SoundStore _self;
  final $Res Function(SoundStore) _then;

/// Create a copy of SoundStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? volume = null,Object? vibrate = null,}) {
  return _then(SoundStore(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoundType?,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,vibrate: null == vibrate ? _self.vibrate : vibrate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



// dart format on
