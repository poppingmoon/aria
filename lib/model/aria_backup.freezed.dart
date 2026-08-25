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

@override Map<String, dynamic>? get metadata;@override List<TabSettings>? get timelineTabs;@override Map<String, AccountSettings>? get accountSettings;@override GeneralSettings? get generalSettings;@override List<String>? get themes;@override Map<String, Map<String, String>>? get aiscriptStorage;@override List<Map<String, dynamic>>? get noteDrafts;
/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AriaBackupCopyWith<AriaBackup> get copyWith => _$AriaBackupCopyWithImpl<AriaBackup>(this as AriaBackup, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AriaBackup&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.timelineTabs, timelineTabs)&&const DeepCollectionEquality().equals(other.accountSettings, accountSettings)&&(identical(other.generalSettings, generalSettings) || other.generalSettings == generalSettings)&&const DeepCollectionEquality().equals(other.themes, themes)&&const DeepCollectionEquality().equals(other.aiscriptStorage, aiscriptStorage)&&const DeepCollectionEquality().equals(other.noteDrafts, noteDrafts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(timelineTabs),const DeepCollectionEquality().hash(accountSettings),generalSettings,const DeepCollectionEquality().hash(themes),const DeepCollectionEquality().hash(aiscriptStorage),const DeepCollectionEquality().hash(noteDrafts));

@override
String toString() {
  return 'AriaBackup(metadata: $metadata, timelineTabs: $timelineTabs, accountSettings: $accountSettings, generalSettings: $generalSettings, themes: $themes, aiscriptStorage: $aiscriptStorage, noteDrafts: $noteDrafts)';
}


}

/// @nodoc
abstract mixin class $AriaBackupCopyWith<$Res>  {
  factory $AriaBackupCopyWith(AriaBackup value, $Res Function(AriaBackup) _then) = _$AriaBackupCopyWithImpl;
@useResult
$Res call({
@override Map<String, dynamic>? metadata,@override List<TabSettings>? timelineTabs,@override Map<String, AccountSettings>? accountSettings,@override GeneralSettings? generalSettings,@override List<String>? themes,@override Map<String, Map<String, String>>? aiscriptStorage,@override List<Map<String, dynamic>>? noteDrafts
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@override  Map<String, dynamic>? metadata, @override  List<TabSettings>? timelineTabs, @override  Map<String, AccountSettings>? accountSettings, @override  GeneralSettings? generalSettings, @override  List<String>? themes, @override  Map<String, Map<String, String>>? aiscriptStorage, @override  List<Map<String, dynamic>>? noteDrafts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AriaBackup() when $default != null:
return $default(_that.metadata,_that.timelineTabs,_that.accountSettings,_that.generalSettings,_that.themes,_that.aiscriptStorage,_that.noteDrafts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@override  Map<String, dynamic>? metadata, @override  List<TabSettings>? timelineTabs, @override  Map<String, AccountSettings>? accountSettings, @override  GeneralSettings? generalSettings, @override  List<String>? themes, @override  Map<String, Map<String, String>>? aiscriptStorage, @override  List<Map<String, dynamic>>? noteDrafts)  $default,) {final _that = this;
switch (_that) {
case _AriaBackup():
return $default(_that.metadata,_that.timelineTabs,_that.accountSettings,_that.generalSettings,_that.themes,_that.aiscriptStorage,_that.noteDrafts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@override  Map<String, dynamic>? metadata, @override  List<TabSettings>? timelineTabs, @override  Map<String, AccountSettings>? accountSettings, @override  GeneralSettings? generalSettings, @override  List<String>? themes, @override  Map<String, Map<String, String>>? aiscriptStorage, @override  List<Map<String, dynamic>>? noteDrafts)?  $default,) {final _that = this;
switch (_that) {
case _AriaBackup() when $default != null:
return $default(_that.metadata,_that.timelineTabs,_that.accountSettings,_that.generalSettings,_that.themes,_that.aiscriptStorage,_that.noteDrafts);case _:
  return null;

}
}

}

/// @nodoc


class _AriaBackup extends AriaBackup {
  const _AriaBackup({@override  Map<String, dynamic>? metadata, @override  List<TabSettings>? timelineTabs, @override  Map<String, AccountSettings>? accountSettings, @override this.generalSettings, @override  List<String>? themes, @override  Map<String, Map<String, String>>? aiscriptStorage, @override  List<Map<String, dynamic>>? noteDrafts}): _metadata = metadata,_timelineTabs = timelineTabs,_accountSettings = accountSettings,_themes = themes,_aiscriptStorage = aiscriptStorage,_noteDrafts = noteDrafts,super(metadata: metadata, timelineTabs: timelineTabs, accountSettings: accountSettings, generalSettings: generalSettings, themes: themes, aiscriptStorage: aiscriptStorage, noteDrafts: noteDrafts);
  

 final  Map<String, dynamic>? _metadata;
@override@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<TabSettings>? _timelineTabs;
@override@override List<TabSettings>? get timelineTabs {
  final value = _timelineTabs;
  if (value == null) return null;
  if (_timelineTabs is EqualUnmodifiableListView) return _timelineTabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, AccountSettings>? _accountSettings;
@override@override Map<String, AccountSettings>? get accountSettings {
  final value = _accountSettings;
  if (value == null) return null;
  if (_accountSettings is EqualUnmodifiableMapView) return _accountSettings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@override final  GeneralSettings? generalSettings;
 final  List<String>? _themes;
@override@override List<String>? get themes {
  final value = _themes;
  if (value == null) return null;
  if (_themes is EqualUnmodifiableListView) return _themes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, Map<String, String>>? _aiscriptStorage;
@override@override Map<String, Map<String, String>>? get aiscriptStorage {
  final value = _aiscriptStorage;
  if (value == null) return null;
  if (_aiscriptStorage is EqualUnmodifiableMapView) return _aiscriptStorage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>>? _noteDrafts;
@override@override List<Map<String, dynamic>>? get noteDrafts {
  final value = _noteDrafts;
  if (value == null) return null;
  if (_noteDrafts is EqualUnmodifiableListView) return _noteDrafts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AriaBackup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AriaBackupCopyWith<_AriaBackup> get copyWith => __$AriaBackupCopyWithImpl<_AriaBackup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AriaBackup&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._timelineTabs, _timelineTabs)&&const DeepCollectionEquality().equals(other._accountSettings, _accountSettings)&&(identical(other.generalSettings, generalSettings) || other.generalSettings == generalSettings)&&const DeepCollectionEquality().equals(other._themes, _themes)&&const DeepCollectionEquality().equals(other._aiscriptStorage, _aiscriptStorage)&&const DeepCollectionEquality().equals(other._noteDrafts, _noteDrafts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_timelineTabs),const DeepCollectionEquality().hash(_accountSettings),generalSettings,const DeepCollectionEquality().hash(_themes),const DeepCollectionEquality().hash(_aiscriptStorage),const DeepCollectionEquality().hash(_noteDrafts));

@override
String toString() {
  return 'AriaBackup(metadata: $metadata, timelineTabs: $timelineTabs, accountSettings: $accountSettings, generalSettings: $generalSettings, themes: $themes, aiscriptStorage: $aiscriptStorage, noteDrafts: $noteDrafts)';
}


}

/// @nodoc
abstract mixin class _$AriaBackupCopyWith<$Res> implements $AriaBackupCopyWith<$Res> {
  factory _$AriaBackupCopyWith(_AriaBackup value, $Res Function(_AriaBackup) _then) = __$AriaBackupCopyWithImpl;
@override @useResult
$Res call({
@override Map<String, dynamic>? metadata,@override List<TabSettings>? timelineTabs,@override Map<String, AccountSettings>? accountSettings,@override GeneralSettings? generalSettings,@override List<String>? themes,@override Map<String, Map<String, String>>? aiscriptStorage,@override List<Map<String, dynamic>>? noteDrafts
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
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? timelineTabs = freezed,Object? accountSettings = freezed,Object? generalSettings = freezed,Object? themes = freezed,Object? aiscriptStorage = freezed,Object? noteDrafts = freezed,}) {
  return _then(_AriaBackup(
metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,timelineTabs: freezed == timelineTabs ? _self._timelineTabs : timelineTabs // ignore: cast_nullable_to_non_nullable
as List<TabSettings>?,accountSettings: freezed == accountSettings ? _self._accountSettings : accountSettings // ignore: cast_nullable_to_non_nullable
as Map<String, AccountSettings>?,generalSettings: freezed == generalSettings ? _self.generalSettings : generalSettings // ignore: cast_nullable_to_non_nullable
as GeneralSettings?,themes: freezed == themes ? _self._themes : themes // ignore: cast_nullable_to_non_nullable
as List<String>?,aiscriptStorage: freezed == aiscriptStorage ? _self._aiscriptStorage : aiscriptStorage // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, String>>?,noteDrafts: freezed == noteDrafts ? _self._noteDrafts : noteDrafts // ignore: cast_nullable_to_non_nullable
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
