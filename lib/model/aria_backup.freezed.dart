// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aria_backup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AriaBackup _$AriaBackupFromJson(Map<String, dynamic> json) {
  return _AriaBackup.fromJson(json);
}

/// @nodoc
mixin _$AriaBackup {
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<TabSettings>? get timelineTabs => throw _privateConstructorUsedError;
  Map<String, AccountSettings>? get accountSettings =>
      throw _privateConstructorUsedError;
  GeneralSettings? get generalSettings => throw _privateConstructorUsedError;
  List<String>? get themes => throw _privateConstructorUsedError;
  Map<String, Map<String, String>>? get aiscriptStorage =>
      throw _privateConstructorUsedError;

  /// Serializes this AriaBackup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AriaBackup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AriaBackupCopyWith<AriaBackup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AriaBackupCopyWith<$Res> {
  factory $AriaBackupCopyWith(
          AriaBackup value, $Res Function(AriaBackup) then) =
      _$AriaBackupCopyWithImpl<$Res, AriaBackup>;
  @useResult
  $Res call(
      {Map<String, dynamic>? metadata,
      List<TabSettings>? timelineTabs,
      Map<String, AccountSettings>? accountSettings,
      GeneralSettings? generalSettings,
      List<String>? themes,
      Map<String, Map<String, String>>? aiscriptStorage});

  $GeneralSettingsCopyWith<$Res>? get generalSettings;
}

/// @nodoc
class _$AriaBackupCopyWithImpl<$Res, $Val extends AriaBackup>
    implements $AriaBackupCopyWith<$Res> {
  _$AriaBackupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AriaBackup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? timelineTabs = freezed,
    Object? accountSettings = freezed,
    Object? generalSettings = freezed,
    Object? themes = freezed,
    Object? aiscriptStorage = freezed,
  }) {
    return _then(_value.copyWith(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timelineTabs: freezed == timelineTabs
          ? _value.timelineTabs
          : timelineTabs // ignore: cast_nullable_to_non_nullable
              as List<TabSettings>?,
      accountSettings: freezed == accountSettings
          ? _value.accountSettings
          : accountSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, AccountSettings>?,
      generalSettings: freezed == generalSettings
          ? _value.generalSettings
          : generalSettings // ignore: cast_nullable_to_non_nullable
              as GeneralSettings?,
      themes: freezed == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aiscriptStorage: freezed == aiscriptStorage
          ? _value.aiscriptStorage
          : aiscriptStorage // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>?,
    ) as $Val);
  }

  /// Create a copy of AriaBackup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeneralSettingsCopyWith<$Res>? get generalSettings {
    if (_value.generalSettings == null) {
      return null;
    }

    return $GeneralSettingsCopyWith<$Res>(_value.generalSettings!, (value) {
      return _then(_value.copyWith(generalSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AriaBackupImplCopyWith<$Res>
    implements $AriaBackupCopyWith<$Res> {
  factory _$$AriaBackupImplCopyWith(
          _$AriaBackupImpl value, $Res Function(_$AriaBackupImpl) then) =
      __$$AriaBackupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? metadata,
      List<TabSettings>? timelineTabs,
      Map<String, AccountSettings>? accountSettings,
      GeneralSettings? generalSettings,
      List<String>? themes,
      Map<String, Map<String, String>>? aiscriptStorage});

  @override
  $GeneralSettingsCopyWith<$Res>? get generalSettings;
}

/// @nodoc
class __$$AriaBackupImplCopyWithImpl<$Res>
    extends _$AriaBackupCopyWithImpl<$Res, _$AriaBackupImpl>
    implements _$$AriaBackupImplCopyWith<$Res> {
  __$$AriaBackupImplCopyWithImpl(
      _$AriaBackupImpl _value, $Res Function(_$AriaBackupImpl) _then)
      : super(_value, _then);

  /// Create a copy of AriaBackup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? timelineTabs = freezed,
    Object? accountSettings = freezed,
    Object? generalSettings = freezed,
    Object? themes = freezed,
    Object? aiscriptStorage = freezed,
  }) {
    return _then(_$AriaBackupImpl(
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timelineTabs: freezed == timelineTabs
          ? _value._timelineTabs
          : timelineTabs // ignore: cast_nullable_to_non_nullable
              as List<TabSettings>?,
      accountSettings: freezed == accountSettings
          ? _value._accountSettings
          : accountSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, AccountSettings>?,
      generalSettings: freezed == generalSettings
          ? _value.generalSettings
          : generalSettings // ignore: cast_nullable_to_non_nullable
              as GeneralSettings?,
      themes: freezed == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aiscriptStorage: freezed == aiscriptStorage
          ? _value._aiscriptStorage
          : aiscriptStorage // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AriaBackupImpl implements _AriaBackup {
  const _$AriaBackupImpl(
      {final Map<String, dynamic>? metadata,
      final List<TabSettings>? timelineTabs,
      final Map<String, AccountSettings>? accountSettings,
      this.generalSettings,
      final List<String>? themes,
      final Map<String, Map<String, String>>? aiscriptStorage})
      : _metadata = metadata,
        _timelineTabs = timelineTabs,
        _accountSettings = accountSettings,
        _themes = themes,
        _aiscriptStorage = aiscriptStorage;

  factory _$AriaBackupImpl.fromJson(Map<String, dynamic> json) =>
      _$$AriaBackupImplFromJson(json);

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<TabSettings>? _timelineTabs;
  @override
  List<TabSettings>? get timelineTabs {
    final value = _timelineTabs;
    if (value == null) return null;
    if (_timelineTabs is EqualUnmodifiableListView) return _timelineTabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, AccountSettings>? _accountSettings;
  @override
  Map<String, AccountSettings>? get accountSettings {
    final value = _accountSettings;
    if (value == null) return null;
    if (_accountSettings is EqualUnmodifiableMapView) return _accountSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final GeneralSettings? generalSettings;
  final List<String>? _themes;
  @override
  List<String>? get themes {
    final value = _themes;
    if (value == null) return null;
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, Map<String, String>>? _aiscriptStorage;
  @override
  Map<String, Map<String, String>>? get aiscriptStorage {
    final value = _aiscriptStorage;
    if (value == null) return null;
    if (_aiscriptStorage is EqualUnmodifiableMapView) return _aiscriptStorage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AriaBackup(metadata: $metadata, timelineTabs: $timelineTabs, accountSettings: $accountSettings, generalSettings: $generalSettings, themes: $themes, aiscriptStorage: $aiscriptStorage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AriaBackupImpl &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._timelineTabs, _timelineTabs) &&
            const DeepCollectionEquality()
                .equals(other._accountSettings, _accountSettings) &&
            (identical(other.generalSettings, generalSettings) ||
                other.generalSettings == generalSettings) &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality()
                .equals(other._aiscriptStorage, _aiscriptStorage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_timelineTabs),
      const DeepCollectionEquality().hash(_accountSettings),
      generalSettings,
      const DeepCollectionEquality().hash(_themes),
      const DeepCollectionEquality().hash(_aiscriptStorage));

  /// Create a copy of AriaBackup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AriaBackupImplCopyWith<_$AriaBackupImpl> get copyWith =>
      __$$AriaBackupImplCopyWithImpl<_$AriaBackupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AriaBackupImplToJson(
      this,
    );
  }
}

abstract class _AriaBackup implements AriaBackup {
  const factory _AriaBackup(
          {final Map<String, dynamic>? metadata,
          final List<TabSettings>? timelineTabs,
          final Map<String, AccountSettings>? accountSettings,
          final GeneralSettings? generalSettings,
          final List<String>? themes,
          final Map<String, Map<String, String>>? aiscriptStorage}) =
      _$AriaBackupImpl;

  factory _AriaBackup.fromJson(Map<String, dynamic> json) =
      _$AriaBackupImpl.fromJson;

  @override
  Map<String, dynamic>? get metadata;
  @override
  List<TabSettings>? get timelineTabs;
  @override
  Map<String, AccountSettings>? get accountSettings;
  @override
  GeneralSettings? get generalSettings;
  @override
  List<String>? get themes;
  @override
  Map<String, Map<String, String>>? get aiscriptStorage;

  /// Create a copy of AriaBackup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AriaBackupImplCopyWith<_$AriaBackupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
