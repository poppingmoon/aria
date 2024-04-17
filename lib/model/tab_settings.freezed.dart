// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TabSettings _$TabSettingsFromJson(Map<String, dynamic> json) {
  return _TabSettings.fromJson(json);
}

/// @nodoc
mixin _$TabSettings {
  String? get id => throw _privateConstructorUsedError;
  TabType get tabType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  TabIcon? get icon => throw _privateConstructorUsedError;
  bool get disableStreaming => throw _privateConstructorUsedError;
  bool get disableSubscribing => throw _privateConstructorUsedError;
  bool get withReplies => throw _privateConstructorUsedError;
  bool get withRenotes => throw _privateConstructorUsedError;
  bool get withSelfRenotes => throw _privateConstructorUsedError;
  bool get withFiles => throw _privateConstructorUsedError;
  bool get withSensitive => throw _privateConstructorUsedError;
  String? get roleId => throw _privateConstructorUsedError;
  String? get channelId => throw _privateConstructorUsedError;
  String? get listId => throw _privateConstructorUsedError;
  String? get antennaId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabSettingsCopyWith<TabSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabSettingsCopyWith<$Res> {
  factory $TabSettingsCopyWith(
          TabSettings value, $Res Function(TabSettings) then) =
      _$TabSettingsCopyWithImpl<$Res, TabSettings>;
  @useResult
  $Res call(
      {String? id,
      TabType tabType,
      String? name,
      Account account,
      TabIcon? icon,
      bool disableStreaming,
      bool disableSubscribing,
      bool withReplies,
      bool withRenotes,
      bool withSelfRenotes,
      bool withFiles,
      bool withSensitive,
      String? roleId,
      String? channelId,
      String? listId,
      String? antennaId,
      String? userId});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$TabSettingsCopyWithImpl<$Res, $Val extends TabSettings>
    implements $TabSettingsCopyWith<$Res> {
  _$TabSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tabType = null,
    Object? name = freezed,
    Object? account = null,
    Object? icon = freezed,
    Object? disableStreaming = null,
    Object? disableSubscribing = null,
    Object? withReplies = null,
    Object? withRenotes = null,
    Object? withSelfRenotes = null,
    Object? withFiles = null,
    Object? withSensitive = null,
    Object? roleId = freezed,
    Object? channelId = freezed,
    Object? listId = freezed,
    Object? antennaId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tabType: null == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as TabType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TabIcon?,
      disableStreaming: null == disableStreaming
          ? _value.disableStreaming
          : disableStreaming // ignore: cast_nullable_to_non_nullable
              as bool,
      disableSubscribing: null == disableSubscribing
          ? _value.disableSubscribing
          : disableSubscribing // ignore: cast_nullable_to_non_nullable
              as bool,
      withReplies: null == withReplies
          ? _value.withReplies
          : withReplies // ignore: cast_nullable_to_non_nullable
              as bool,
      withRenotes: null == withRenotes
          ? _value.withRenotes
          : withRenotes // ignore: cast_nullable_to_non_nullable
              as bool,
      withSelfRenotes: null == withSelfRenotes
          ? _value.withSelfRenotes
          : withSelfRenotes // ignore: cast_nullable_to_non_nullable
              as bool,
      withFiles: null == withFiles
          ? _value.withFiles
          : withFiles // ignore: cast_nullable_to_non_nullable
              as bool,
      withSensitive: null == withSensitive
          ? _value.withSensitive
          : withSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      listId: freezed == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String?,
      antennaId: freezed == antennaId
          ? _value.antennaId
          : antennaId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TabSettingsImplCopyWith<$Res>
    implements $TabSettingsCopyWith<$Res> {
  factory _$$TabSettingsImplCopyWith(
          _$TabSettingsImpl value, $Res Function(_$TabSettingsImpl) then) =
      __$$TabSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      TabType tabType,
      String? name,
      Account account,
      TabIcon? icon,
      bool disableStreaming,
      bool disableSubscribing,
      bool withReplies,
      bool withRenotes,
      bool withSelfRenotes,
      bool withFiles,
      bool withSensitive,
      String? roleId,
      String? channelId,
      String? listId,
      String? antennaId,
      String? userId});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$TabSettingsImplCopyWithImpl<$Res>
    extends _$TabSettingsCopyWithImpl<$Res, _$TabSettingsImpl>
    implements _$$TabSettingsImplCopyWith<$Res> {
  __$$TabSettingsImplCopyWithImpl(
      _$TabSettingsImpl _value, $Res Function(_$TabSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tabType = null,
    Object? name = freezed,
    Object? account = null,
    Object? icon = freezed,
    Object? disableStreaming = null,
    Object? disableSubscribing = null,
    Object? withReplies = null,
    Object? withRenotes = null,
    Object? withSelfRenotes = null,
    Object? withFiles = null,
    Object? withSensitive = null,
    Object? roleId = freezed,
    Object? channelId = freezed,
    Object? listId = freezed,
    Object? antennaId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$TabSettingsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tabType: null == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as TabType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TabIcon?,
      disableStreaming: null == disableStreaming
          ? _value.disableStreaming
          : disableStreaming // ignore: cast_nullable_to_non_nullable
              as bool,
      disableSubscribing: null == disableSubscribing
          ? _value.disableSubscribing
          : disableSubscribing // ignore: cast_nullable_to_non_nullable
              as bool,
      withReplies: null == withReplies
          ? _value.withReplies
          : withReplies // ignore: cast_nullable_to_non_nullable
              as bool,
      withRenotes: null == withRenotes
          ? _value.withRenotes
          : withRenotes // ignore: cast_nullable_to_non_nullable
              as bool,
      withSelfRenotes: null == withSelfRenotes
          ? _value.withSelfRenotes
          : withSelfRenotes // ignore: cast_nullable_to_non_nullable
              as bool,
      withFiles: null == withFiles
          ? _value.withFiles
          : withFiles // ignore: cast_nullable_to_non_nullable
              as bool,
      withSensitive: null == withSensitive
          ? _value.withSensitive
          : withSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      listId: freezed == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String?,
      antennaId: freezed == antennaId
          ? _value.antennaId
          : antennaId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TabSettingsImpl extends _TabSettings {
  const _$TabSettingsImpl(
      {this.id,
      required this.tabType,
      this.name,
      required this.account,
      this.icon,
      this.disableStreaming = false,
      this.disableSubscribing = false,
      this.withReplies = false,
      this.withRenotes = true,
      this.withSelfRenotes = true,
      this.withFiles = false,
      this.withSensitive = true,
      this.roleId,
      this.channelId,
      this.listId,
      this.antennaId,
      this.userId})
      : super._();

  factory _$TabSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabSettingsImplFromJson(json);

  @override
  final String? id;
  @override
  final TabType tabType;
  @override
  final String? name;
  @override
  final Account account;
  @override
  final TabIcon? icon;
  @override
  @JsonKey()
  final bool disableStreaming;
  @override
  @JsonKey()
  final bool disableSubscribing;
  @override
  @JsonKey()
  final bool withReplies;
  @override
  @JsonKey()
  final bool withRenotes;
  @override
  @JsonKey()
  final bool withSelfRenotes;
  @override
  @JsonKey()
  final bool withFiles;
  @override
  @JsonKey()
  final bool withSensitive;
  @override
  final String? roleId;
  @override
  final String? channelId;
  @override
  final String? listId;
  @override
  final String? antennaId;
  @override
  final String? userId;

  @override
  String toString() {
    return 'TabSettings(id: $id, tabType: $tabType, name: $name, account: $account, icon: $icon, disableStreaming: $disableStreaming, disableSubscribing: $disableSubscribing, withReplies: $withReplies, withRenotes: $withRenotes, withSelfRenotes: $withSelfRenotes, withFiles: $withFiles, withSensitive: $withSensitive, roleId: $roleId, channelId: $channelId, listId: $listId, antennaId: $antennaId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabSettingsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tabType, tabType) || other.tabType == tabType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.disableStreaming, disableStreaming) ||
                other.disableStreaming == disableStreaming) &&
            (identical(other.disableSubscribing, disableSubscribing) ||
                other.disableSubscribing == disableSubscribing) &&
            (identical(other.withReplies, withReplies) ||
                other.withReplies == withReplies) &&
            (identical(other.withRenotes, withRenotes) ||
                other.withRenotes == withRenotes) &&
            (identical(other.withSelfRenotes, withSelfRenotes) ||
                other.withSelfRenotes == withSelfRenotes) &&
            (identical(other.withFiles, withFiles) ||
                other.withFiles == withFiles) &&
            (identical(other.withSensitive, withSensitive) ||
                other.withSensitive == withSensitive) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.antennaId, antennaId) ||
                other.antennaId == antennaId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tabType,
      name,
      account,
      icon,
      disableStreaming,
      disableSubscribing,
      withReplies,
      withRenotes,
      withSelfRenotes,
      withFiles,
      withSensitive,
      roleId,
      channelId,
      listId,
      antennaId,
      userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabSettingsImplCopyWith<_$TabSettingsImpl> get copyWith =>
      __$$TabSettingsImplCopyWithImpl<_$TabSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TabSettingsImplToJson(
      this,
    );
  }
}

abstract class _TabSettings extends TabSettings {
  const factory _TabSettings(
      {final String? id,
      required final TabType tabType,
      final String? name,
      required final Account account,
      final TabIcon? icon,
      final bool disableStreaming,
      final bool disableSubscribing,
      final bool withReplies,
      final bool withRenotes,
      final bool withSelfRenotes,
      final bool withFiles,
      final bool withSensitive,
      final String? roleId,
      final String? channelId,
      final String? listId,
      final String? antennaId,
      final String? userId}) = _$TabSettingsImpl;
  const _TabSettings._() : super._();

  factory _TabSettings.fromJson(Map<String, dynamic> json) =
      _$TabSettingsImpl.fromJson;

  @override
  String? get id;
  @override
  TabType get tabType;
  @override
  String? get name;
  @override
  Account get account;
  @override
  TabIcon? get icon;
  @override
  bool get disableStreaming;
  @override
  bool get disableSubscribing;
  @override
  bool get withReplies;
  @override
  bool get withRenotes;
  @override
  bool get withSelfRenotes;
  @override
  bool get withFiles;
  @override
  bool get withSensitive;
  @override
  String? get roleId;
  @override
  String? get channelId;
  @override
  String? get listId;
  @override
  String? get antennaId;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$TabSettingsImplCopyWith<_$TabSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
