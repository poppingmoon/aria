// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aria_backup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AriaBackup {

 Map<String, dynamic>? get metadata; List<TabSettings>? get timelineTabs; Map<String, AccountSettings>? get accountSettings; GeneralSettings? get generalSettings; List<String>? get themes; Map<String, Map<String, String>>? get aiscriptStorage;
/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AriaBackupCopyWith<AriaBackup> get copyWith => _$AriaBackupCopyWithImpl<AriaBackup>(this as AriaBackup, _$identity);

  /// Serializes this AriaBackup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AriaBackup&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.timelineTabs, timelineTabs)&&const DeepCollectionEquality().equals(other.accountSettings, accountSettings)&&(identical(other.generalSettings, generalSettings) || other.generalSettings == generalSettings)&&const DeepCollectionEquality().equals(other.themes, themes)&&const DeepCollectionEquality().equals(other.aiscriptStorage, aiscriptStorage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(timelineTabs),const DeepCollectionEquality().hash(accountSettings),generalSettings,const DeepCollectionEquality().hash(themes),const DeepCollectionEquality().hash(aiscriptStorage));

@override
String toString() {
  return 'AriaBackup(metadata: $metadata, timelineTabs: $timelineTabs, accountSettings: $accountSettings, generalSettings: $generalSettings, themes: $themes, aiscriptStorage: $aiscriptStorage)';
}


}

/// @nodoc
abstract mixin class $AriaBackupCopyWith<$Res>  {
  factory $AriaBackupCopyWith(AriaBackup value, $Res Function(AriaBackup) _then) = _$AriaBackupCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? metadata, List<TabSettings>? timelineTabs, Map<String, AccountSettings>? accountSettings, GeneralSettings? generalSettings, List<String>? themes, Map<String, Map<String, String>>? aiscriptStorage
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
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? timelineTabs = freezed,Object? accountSettings = freezed,Object? generalSettings = freezed,Object? themes = freezed,Object? aiscriptStorage = freezed,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,timelineTabs: freezed == timelineTabs ? _self.timelineTabs : timelineTabs // ignore: cast_nullable_to_non_nullable
as List<TabSettings>?,accountSettings: freezed == accountSettings ? _self.accountSettings : accountSettings // ignore: cast_nullable_to_non_nullable
as Map<String, AccountSettings>?,generalSettings: freezed == generalSettings ? _self.generalSettings : generalSettings // ignore: cast_nullable_to_non_nullable
as GeneralSettings?,themes: freezed == themes ? _self.themes : themes // ignore: cast_nullable_to_non_nullable
as List<String>?,aiscriptStorage: freezed == aiscriptStorage ? _self.aiscriptStorage : aiscriptStorage // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, String>>?,
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


/// Adds pattern-matching-related methods to [AriaBackup].
extension AriaBackupPatterns on AriaBackup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AriaBackup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AriaBackup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AriaBackup value)  $default,){
final _that = this;
switch (_that) {
case _AriaBackup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AriaBackup value)?  $default,){
final _that = this;
switch (_that) {
case _AriaBackup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  List<TabSettings>? timelineTabs,  Map<String, AccountSettings>? accountSettings,  GeneralSettings? generalSettings,  List<String>? themes,  Map<String, Map<String, String>>? aiscriptStorage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AriaBackup() when $default != null:
return $default(_that.metadata,_that.timelineTabs,_that.accountSettings,_that.generalSettings,_that.themes,_that.aiscriptStorage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? metadata,  List<TabSettings>? timelineTabs,  Map<String, AccountSettings>? accountSettings,  GeneralSettings? generalSettings,  List<String>? themes,  Map<String, Map<String, String>>? aiscriptStorage)  $default,) {final _that = this;
switch (_that) {
case _AriaBackup():
return $default(_that.metadata,_that.timelineTabs,_that.accountSettings,_that.generalSettings,_that.themes,_that.aiscriptStorage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? metadata,  List<TabSettings>? timelineTabs,  Map<String, AccountSettings>? accountSettings,  GeneralSettings? generalSettings,  List<String>? themes,  Map<String, Map<String, String>>? aiscriptStorage)?  $default,) {final _that = this;
switch (_that) {
case _AriaBackup() when $default != null:
return $default(_that.metadata,_that.timelineTabs,_that.accountSettings,_that.generalSettings,_that.themes,_that.aiscriptStorage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AriaBackup implements AriaBackup {
  const _AriaBackup({final  Map<String, dynamic>? metadata, final  List<TabSettings>? timelineTabs, final  Map<String, AccountSettings>? accountSettings, this.generalSettings, final  List<String>? themes, final  Map<String, Map<String, String>>? aiscriptStorage}): _metadata = metadata,_timelineTabs = timelineTabs,_accountSettings = accountSettings,_themes = themes,_aiscriptStorage = aiscriptStorage;
  factory _AriaBackup.fromJson(Map<String, dynamic> json) => _$AriaBackupFromJson(json);

 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<TabSettings>? _timelineTabs;
@override List<TabSettings>? get timelineTabs {
  final value = _timelineTabs;
  if (value == null) return null;
  if (_timelineTabs is EqualUnmodifiableListView) return _timelineTabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, AccountSettings>? _accountSettings;
@override Map<String, AccountSettings>? get accountSettings {
  final value = _accountSettings;
  if (value == null) return null;
  if (_accountSettings is EqualUnmodifiableMapView) return _accountSettings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  GeneralSettings? generalSettings;
 final  List<String>? _themes;
@override List<String>? get themes {
  final value = _themes;
  if (value == null) return null;
  if (_themes is EqualUnmodifiableListView) return _themes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, Map<String, String>>? _aiscriptStorage;
@override Map<String, Map<String, String>>? get aiscriptStorage {
  final value = _aiscriptStorage;
  if (value == null) return null;
  if (_aiscriptStorage is EqualUnmodifiableMapView) return _aiscriptStorage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AriaBackupCopyWith<_AriaBackup> get copyWith => __$AriaBackupCopyWithImpl<_AriaBackup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AriaBackupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AriaBackup&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._timelineTabs, _timelineTabs)&&const DeepCollectionEquality().equals(other._accountSettings, _accountSettings)&&(identical(other.generalSettings, generalSettings) || other.generalSettings == generalSettings)&&const DeepCollectionEquality().equals(other._themes, _themes)&&const DeepCollectionEquality().equals(other._aiscriptStorage, _aiscriptStorage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_timelineTabs),const DeepCollectionEquality().hash(_accountSettings),generalSettings,const DeepCollectionEquality().hash(_themes),const DeepCollectionEquality().hash(_aiscriptStorage));

@override
String toString() {
  return 'AriaBackup(metadata: $metadata, timelineTabs: $timelineTabs, accountSettings: $accountSettings, generalSettings: $generalSettings, themes: $themes, aiscriptStorage: $aiscriptStorage)';
}


}

/// @nodoc
abstract mixin class _$AriaBackupCopyWith<$Res> implements $AriaBackupCopyWith<$Res> {
  factory _$AriaBackupCopyWith(_AriaBackup value, $Res Function(_AriaBackup) _then) = __$AriaBackupCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? metadata, List<TabSettings>? timelineTabs, Map<String, AccountSettings>? accountSettings, GeneralSettings? generalSettings, List<String>? themes, Map<String, Map<String, String>>? aiscriptStorage
});


@override $GeneralSettingsCopyWith<$Res>? get generalSettings;

}
/// @nodoc
class __$AriaBackupCopyWithImpl<$Res>
    implements _$AriaBackupCopyWith<$Res> {
  __$AriaBackupCopyWithImpl(this._self, this._then);

  final _AriaBackup _self;
  final $Res Function(_AriaBackup) _then;

/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? timelineTabs = freezed,Object? accountSettings = freezed,Object? generalSettings = freezed,Object? themes = freezed,Object? aiscriptStorage = freezed,}) {
  return _then(_AriaBackup(
metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,timelineTabs: freezed == timelineTabs ? _self._timelineTabs : timelineTabs // ignore: cast_nullable_to_non_nullable
as List<TabSettings>?,accountSettings: freezed == accountSettings ? _self._accountSettings : accountSettings // ignore: cast_nullable_to_non_nullable
as Map<String, AccountSettings>?,generalSettings: freezed == generalSettings ? _self.generalSettings : generalSettings // ignore: cast_nullable_to_non_nullable
as GeneralSettings?,themes: freezed == themes ? _self._themes : themes // ignore: cast_nullable_to_non_nullable
as List<String>?,aiscriptStorage: freezed == aiscriptStorage ? _self._aiscriptStorage : aiscriptStorage // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, String>>?,
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
