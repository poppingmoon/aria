// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListSettings _$ListSettingsFromJson(Map<String, dynamic> json) {
  return _ListSettings.fromJson(json);
}

/// @nodoc
mixin _$ListSettings {
  String? get name => throw _privateConstructorUsedError;
  bool? get isPublic => throw _privateConstructorUsedError;

  /// Serializes this ListSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListSettingsCopyWith<ListSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSettingsCopyWith<$Res> {
  factory $ListSettingsCopyWith(
          ListSettings value, $Res Function(ListSettings) then) =
      _$ListSettingsCopyWithImpl<$Res, ListSettings>;
  @useResult
  $Res call({String? name, bool? isPublic});
}

/// @nodoc
class _$ListSettingsCopyWithImpl<$Res, $Val extends ListSettings>
    implements $ListSettingsCopyWith<$Res> {
  _$ListSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListSettingsImplCopyWith<$Res>
    implements $ListSettingsCopyWith<$Res> {
  factory _$$ListSettingsImplCopyWith(
          _$ListSettingsImpl value, $Res Function(_$ListSettingsImpl) then) =
      __$$ListSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, bool? isPublic});
}

/// @nodoc
class __$$ListSettingsImplCopyWithImpl<$Res>
    extends _$ListSettingsCopyWithImpl<$Res, _$ListSettingsImpl>
    implements _$$ListSettingsImplCopyWith<$Res> {
  __$$ListSettingsImplCopyWithImpl(
      _$ListSettingsImpl _value, $Res Function(_$ListSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(_$ListSettingsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListSettingsImpl implements _ListSettings {
  const _$ListSettingsImpl({this.name, this.isPublic});

  factory _$ListSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListSettingsImplFromJson(json);

  @override
  final String? name;
  @override
  final bool? isPublic;

  @override
  String toString() {
    return 'ListSettings(name: $name, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSettingsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, isPublic);

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSettingsImplCopyWith<_$ListSettingsImpl> get copyWith =>
      __$$ListSettingsImplCopyWithImpl<_$ListSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListSettingsImplToJson(
      this,
    );
  }
}

abstract class _ListSettings implements ListSettings {
  const factory _ListSettings({final String? name, final bool? isPublic}) =
      _$ListSettingsImpl;

  factory _ListSettings.fromJson(Map<String, dynamic> json) =
      _$ListSettingsImpl.fromJson;

  @override
  String? get name;
  @override
  bool? get isPublic;

  /// Create a copy of ListSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListSettingsImplCopyWith<_$ListSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
