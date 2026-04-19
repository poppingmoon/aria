// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sound_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SoundSettings {

 bool get notUseSound; double get masterVolume; Map<OperationType, SoundStore> get sounds;
/// Create a copy of SoundSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundSettingsCopyWith<SoundSettings> get copyWith => _$SoundSettingsCopyWithImpl<SoundSettings>(this as SoundSettings, _$identity);

  /// Serializes this SoundSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundSettings&&(identical(other.notUseSound, notUseSound) || other.notUseSound == notUseSound)&&(identical(other.masterVolume, masterVolume) || other.masterVolume == masterVolume)&&const DeepCollectionEquality().equals(other.sounds, sounds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notUseSound,masterVolume,const DeepCollectionEquality().hash(sounds));

@override
String toString() {
  return 'SoundSettings(notUseSound: $notUseSound, masterVolume: $masterVolume, sounds: $sounds)';
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
  return _then(_self.copyWith(
notUseSound: null == notUseSound ? _self.notUseSound : notUseSound // ignore: cast_nullable_to_non_nullable
as bool,masterVolume: null == masterVolume ? _self.masterVolume : masterVolume // ignore: cast_nullable_to_non_nullable
as double,sounds: null == sounds ? _self.sounds : sounds // ignore: cast_nullable_to_non_nullable
as Map<OperationType, SoundStore>,
  ));
}

}


/// Adds pattern-matching-related methods to [SoundSettings].
extension SoundSettingsPatterns on SoundSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SoundSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SoundSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SoundSettings value)  $default,){
final _that = this;
switch (_that) {
case _SoundSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SoundSettings value)?  $default,){
final _that = this;
switch (_that) {
case _SoundSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool notUseSound,  double masterVolume,  Map<OperationType, SoundStore> sounds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SoundSettings() when $default != null:
return $default(_that.notUseSound,_that.masterVolume,_that.sounds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool notUseSound,  double masterVolume,  Map<OperationType, SoundStore> sounds)  $default,) {final _that = this;
switch (_that) {
case _SoundSettings():
return $default(_that.notUseSound,_that.masterVolume,_that.sounds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool notUseSound,  double masterVolume,  Map<OperationType, SoundStore> sounds)?  $default,) {final _that = this;
switch (_that) {
case _SoundSettings() when $default != null:
return $default(_that.notUseSound,_that.masterVolume,_that.sounds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SoundSettings implements SoundSettings {
  const _SoundSettings({this.notUseSound = true, this.masterVolume = defaultMasterVolume, final  Map<OperationType, SoundStore> sounds = defaultSounds}): _sounds = sounds;
  factory _SoundSettings.fromJson(Map<String, dynamic> json) => _$SoundSettingsFromJson(json);

@override@JsonKey() final  bool notUseSound;
@override@JsonKey() final  double masterVolume;
 final  Map<OperationType, SoundStore> _sounds;
@override@JsonKey() Map<OperationType, SoundStore> get sounds {
  if (_sounds is EqualUnmodifiableMapView) return _sounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sounds);
}


/// Create a copy of SoundSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoundSettingsCopyWith<_SoundSettings> get copyWith => __$SoundSettingsCopyWithImpl<_SoundSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SoundSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoundSettings&&(identical(other.notUseSound, notUseSound) || other.notUseSound == notUseSound)&&(identical(other.masterVolume, masterVolume) || other.masterVolume == masterVolume)&&const DeepCollectionEquality().equals(other._sounds, _sounds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notUseSound,masterVolume,const DeepCollectionEquality().hash(_sounds));

@override
String toString() {
  return 'SoundSettings(notUseSound: $notUseSound, masterVolume: $masterVolume, sounds: $sounds)';
}


}

/// @nodoc
abstract mixin class _$SoundSettingsCopyWith<$Res> implements $SoundSettingsCopyWith<$Res> {
  factory _$SoundSettingsCopyWith(_SoundSettings value, $Res Function(_SoundSettings) _then) = __$SoundSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool notUseSound, double masterVolume, Map<OperationType, SoundStore> sounds
});




}
/// @nodoc
class __$SoundSettingsCopyWithImpl<$Res>
    implements _$SoundSettingsCopyWith<$Res> {
  __$SoundSettingsCopyWithImpl(this._self, this._then);

  final _SoundSettings _self;
  final $Res Function(_SoundSettings) _then;

/// Create a copy of SoundSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notUseSound = null,Object? masterVolume = null,Object? sounds = null,}) {
  return _then(_SoundSettings(
notUseSound: null == notUseSound ? _self.notUseSound : notUseSound // ignore: cast_nullable_to_non_nullable
as bool,masterVolume: null == masterVolume ? _self.masterVolume : masterVolume // ignore: cast_nullable_to_non_nullable
as double,sounds: null == sounds ? _self._sounds : sounds // ignore: cast_nullable_to_non_nullable
as Map<OperationType, SoundStore>,
  ));
}


}


/// @nodoc
mixin _$SoundStore {

@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) SoundType? get type; double get volume; bool get vibrate;
/// Create a copy of SoundStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundStoreCopyWith<SoundStore> get copyWith => _$SoundStoreCopyWithImpl<SoundStore>(this as SoundStore, _$identity);

  /// Serializes this SoundStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundStore&&(identical(other.type, type) || other.type == type)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.vibrate, vibrate) || other.vibrate == vibrate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,volume,vibrate);

@override
String toString() {
  return 'SoundStore(type: $type, volume: $volume, vibrate: $vibrate)';
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
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoundType?,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,vibrate: null == vibrate ? _self.vibrate : vibrate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SoundStore].
extension SoundStorePatterns on SoundStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SoundStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SoundStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SoundStore value)  $default,){
final _that = this;
switch (_that) {
case _SoundStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SoundStore value)?  $default,){
final _that = this;
switch (_that) {
case _SoundStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  SoundType? type,  double volume,  bool vibrate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SoundStore() when $default != null:
return $default(_that.type,_that.volume,_that.vibrate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  SoundType? type,  double volume,  bool vibrate)  $default,) {final _that = this;
switch (_that) {
case _SoundStore():
return $default(_that.type,_that.volume,_that.vibrate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  SoundType? type,  double volume,  bool vibrate)?  $default,) {final _that = this;
switch (_that) {
case _SoundStore() when $default != null:
return $default(_that.type,_that.volume,_that.vibrate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SoundStore implements SoundStore {
  const _SoundStore({@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.type, this.volume = 1.0, this.vibrate = false});
  factory _SoundStore.fromJson(Map<String, dynamic> json) => _$SoundStoreFromJson(json);

@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  SoundType? type;
@override@JsonKey() final  double volume;
@override@JsonKey() final  bool vibrate;

/// Create a copy of SoundStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoundStoreCopyWith<_SoundStore> get copyWith => __$SoundStoreCopyWithImpl<_SoundStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SoundStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoundStore&&(identical(other.type, type) || other.type == type)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.vibrate, vibrate) || other.vibrate == vibrate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,volume,vibrate);

@override
String toString() {
  return 'SoundStore(type: $type, volume: $volume, vibrate: $vibrate)';
}


}

/// @nodoc
abstract mixin class _$SoundStoreCopyWith<$Res> implements $SoundStoreCopyWith<$Res> {
  factory _$SoundStoreCopyWith(_SoundStore value, $Res Function(_SoundStore) _then) = __$SoundStoreCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) SoundType? type, double volume, bool vibrate
});




}
/// @nodoc
class __$SoundStoreCopyWithImpl<$Res>
    implements _$SoundStoreCopyWith<$Res> {
  __$SoundStoreCopyWithImpl(this._self, this._then);

  final _SoundStore _self;
  final $Res Function(_SoundStore) _then;

/// Create a copy of SoundStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? volume = null,Object? vibrate = null,}) {
  return _then(_SoundStore(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoundType?,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,vibrate: null == vibrate ? _self.vibrate : vibrate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
