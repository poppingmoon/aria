// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmojiAdded _$EmojiAddedFromJson(Map<String, dynamic> json) {
  return _EmojiAdded.fromJson(json);
}

/// @nodoc
mixin _$EmojiAdded {
  Emoji get emoji => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiAddedCopyWith<EmojiAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiAddedCopyWith<$Res> {
  factory $EmojiAddedCopyWith(
          EmojiAdded value, $Res Function(EmojiAdded) then) =
      _$EmojiAddedCopyWithImpl<$Res, EmojiAdded>;
  @useResult
  $Res call({Emoji emoji});

  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class _$EmojiAddedCopyWithImpl<$Res, $Val extends EmojiAdded>
    implements $EmojiAddedCopyWith<$Res> {
  _$EmojiAddedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmojiCopyWith<$Res> get emoji {
    return $EmojiCopyWith<$Res>(_value.emoji, (value) {
      return _then(_value.copyWith(emoji: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmojiAddedImplCopyWith<$Res>
    implements $EmojiAddedCopyWith<$Res> {
  factory _$$EmojiAddedImplCopyWith(
          _$EmojiAddedImpl value, $Res Function(_$EmojiAddedImpl) then) =
      __$$EmojiAddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Emoji emoji});

  @override
  $EmojiCopyWith<$Res> get emoji;
}

/// @nodoc
class __$$EmojiAddedImplCopyWithImpl<$Res>
    extends _$EmojiAddedCopyWithImpl<$Res, _$EmojiAddedImpl>
    implements _$$EmojiAddedImplCopyWith<$Res> {
  __$$EmojiAddedImplCopyWithImpl(
      _$EmojiAddedImpl _value, $Res Function(_$EmojiAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_$EmojiAddedImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmojiAddedImpl implements _EmojiAdded {
  const _$EmojiAddedImpl({required this.emoji});

  factory _$EmojiAddedImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmojiAddedImplFromJson(json);

  @override
  final Emoji emoji;

  @override
  String toString() {
    return 'EmojiAdded(emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiAddedImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiAddedImplCopyWith<_$EmojiAddedImpl> get copyWith =>
      __$$EmojiAddedImplCopyWithImpl<_$EmojiAddedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmojiAddedImplToJson(
      this,
    );
  }
}

abstract class _EmojiAdded implements EmojiAdded {
  const factory _EmojiAdded({required final Emoji emoji}) = _$EmojiAddedImpl;

  factory _EmojiAdded.fromJson(Map<String, dynamic> json) =
      _$EmojiAddedImpl.fromJson;

  @override
  Emoji get emoji;
  @override
  @JsonKey(ignore: true)
  _$$EmojiAddedImplCopyWith<_$EmojiAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmojiUpdated _$EmojiUpdatedFromJson(Map<String, dynamic> json) {
  return _EmojiUpdated.fromJson(json);
}

/// @nodoc
mixin _$EmojiUpdated {
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiUpdatedCopyWith<EmojiUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiUpdatedCopyWith<$Res> {
  factory $EmojiUpdatedCopyWith(
          EmojiUpdated value, $Res Function(EmojiUpdated) then) =
      _$EmojiUpdatedCopyWithImpl<$Res, EmojiUpdated>;
  @useResult
  $Res call({List<Emoji> emojis});
}

/// @nodoc
class _$EmojiUpdatedCopyWithImpl<$Res, $Val extends EmojiUpdated>
    implements $EmojiUpdatedCopyWith<$Res> {
  _$EmojiUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = null,
  }) {
    return _then(_value.copyWith(
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmojiUpdatedImplCopyWith<$Res>
    implements $EmojiUpdatedCopyWith<$Res> {
  factory _$$EmojiUpdatedImplCopyWith(
          _$EmojiUpdatedImpl value, $Res Function(_$EmojiUpdatedImpl) then) =
      __$$EmojiUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Emoji> emojis});
}

/// @nodoc
class __$$EmojiUpdatedImplCopyWithImpl<$Res>
    extends _$EmojiUpdatedCopyWithImpl<$Res, _$EmojiUpdatedImpl>
    implements _$$EmojiUpdatedImplCopyWith<$Res> {
  __$$EmojiUpdatedImplCopyWithImpl(
      _$EmojiUpdatedImpl _value, $Res Function(_$EmojiUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = null,
  }) {
    return _then(_$EmojiUpdatedImpl(
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmojiUpdatedImpl implements _EmojiUpdated {
  const _$EmojiUpdatedImpl({required final List<Emoji> emojis})
      : _emojis = emojis;

  factory _$EmojiUpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmojiUpdatedImplFromJson(json);

  final List<Emoji> _emojis;
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  @override
  String toString() {
    return 'EmojiUpdated(emojis: $emojis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiUpdatedImpl &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_emojis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiUpdatedImplCopyWith<_$EmojiUpdatedImpl> get copyWith =>
      __$$EmojiUpdatedImplCopyWithImpl<_$EmojiUpdatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmojiUpdatedImplToJson(
      this,
    );
  }
}

abstract class _EmojiUpdated implements EmojiUpdated {
  const factory _EmojiUpdated({required final List<Emoji> emojis}) =
      _$EmojiUpdatedImpl;

  factory _EmojiUpdated.fromJson(Map<String, dynamic> json) =
      _$EmojiUpdatedImpl.fromJson;

  @override
  List<Emoji> get emojis;
  @override
  @JsonKey(ignore: true)
  _$$EmojiUpdatedImplCopyWith<_$EmojiUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmojiDeleted _$EmojiDeletedFromJson(Map<String, dynamic> json) {
  return _EmojiDeleted.fromJson(json);
}

/// @nodoc
mixin _$EmojiDeleted {
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiDeletedCopyWith<EmojiDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiDeletedCopyWith<$Res> {
  factory $EmojiDeletedCopyWith(
          EmojiDeleted value, $Res Function(EmojiDeleted) then) =
      _$EmojiDeletedCopyWithImpl<$Res, EmojiDeleted>;
  @useResult
  $Res call({List<Emoji> emojis});
}

/// @nodoc
class _$EmojiDeletedCopyWithImpl<$Res, $Val extends EmojiDeleted>
    implements $EmojiDeletedCopyWith<$Res> {
  _$EmojiDeletedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = null,
  }) {
    return _then(_value.copyWith(
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmojiDeletedImplCopyWith<$Res>
    implements $EmojiDeletedCopyWith<$Res> {
  factory _$$EmojiDeletedImplCopyWith(
          _$EmojiDeletedImpl value, $Res Function(_$EmojiDeletedImpl) then) =
      __$$EmojiDeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Emoji> emojis});
}

/// @nodoc
class __$$EmojiDeletedImplCopyWithImpl<$Res>
    extends _$EmojiDeletedCopyWithImpl<$Res, _$EmojiDeletedImpl>
    implements _$$EmojiDeletedImplCopyWith<$Res> {
  __$$EmojiDeletedImplCopyWithImpl(
      _$EmojiDeletedImpl _value, $Res Function(_$EmojiDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = null,
  }) {
    return _then(_$EmojiDeletedImpl(
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmojiDeletedImpl implements _EmojiDeleted {
  const _$EmojiDeletedImpl({required final List<Emoji> emojis})
      : _emojis = emojis;

  factory _$EmojiDeletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmojiDeletedImplFromJson(json);

  final List<Emoji> _emojis;
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  @override
  String toString() {
    return 'EmojiDeleted(emojis: $emojis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiDeletedImpl &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_emojis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiDeletedImplCopyWith<_$EmojiDeletedImpl> get copyWith =>
      __$$EmojiDeletedImplCopyWithImpl<_$EmojiDeletedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmojiDeletedImplToJson(
      this,
    );
  }
}

abstract class _EmojiDeleted implements EmojiDeleted {
  const factory _EmojiDeleted({required final List<Emoji> emojis}) =
      _$EmojiDeletedImpl;

  factory _EmojiDeleted.fromJson(Map<String, dynamic> json) =
      _$EmojiDeletedImpl.fromJson;

  @override
  List<Emoji> get emojis;
  @override
  @JsonKey(ignore: true)
  _$$EmojiDeletedImplCopyWith<_$EmojiDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnnouncementCreated _$AnnouncementCreatedFromJson(Map<String, dynamic> json) {
  return _AnnouncementCreated.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementCreated {
  AnnouncementsResponse get announcement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementCreatedCopyWith<AnnouncementCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCreatedCopyWith<$Res> {
  factory $AnnouncementCreatedCopyWith(
          AnnouncementCreated value, $Res Function(AnnouncementCreated) then) =
      _$AnnouncementCreatedCopyWithImpl<$Res, AnnouncementCreated>;
  @useResult
  $Res call({AnnouncementsResponse announcement});

  $AnnouncementsResponseCopyWith<$Res> get announcement;
}

/// @nodoc
class _$AnnouncementCreatedCopyWithImpl<$Res, $Val extends AnnouncementCreated>
    implements $AnnouncementCreatedCopyWith<$Res> {
  _$AnnouncementCreatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcement = null,
  }) {
    return _then(_value.copyWith(
      announcement: null == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as AnnouncementsResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnouncementsResponseCopyWith<$Res> get announcement {
    return $AnnouncementsResponseCopyWith<$Res>(_value.announcement, (value) {
      return _then(_value.copyWith(announcement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnouncementCreatedImplCopyWith<$Res>
    implements $AnnouncementCreatedCopyWith<$Res> {
  factory _$$AnnouncementCreatedImplCopyWith(_$AnnouncementCreatedImpl value,
          $Res Function(_$AnnouncementCreatedImpl) then) =
      __$$AnnouncementCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnnouncementsResponse announcement});

  @override
  $AnnouncementsResponseCopyWith<$Res> get announcement;
}

/// @nodoc
class __$$AnnouncementCreatedImplCopyWithImpl<$Res>
    extends _$AnnouncementCreatedCopyWithImpl<$Res, _$AnnouncementCreatedImpl>
    implements _$$AnnouncementCreatedImplCopyWith<$Res> {
  __$$AnnouncementCreatedImplCopyWithImpl(_$AnnouncementCreatedImpl _value,
      $Res Function(_$AnnouncementCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcement = null,
  }) {
    return _then(_$AnnouncementCreatedImpl(
      announcement: null == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as AnnouncementsResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$AnnouncementCreatedImpl implements _AnnouncementCreated {
  const _$AnnouncementCreatedImpl({required this.announcement});

  factory _$AnnouncementCreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementCreatedImplFromJson(json);

  @override
  final AnnouncementsResponse announcement;

  @override
  String toString() {
    return 'AnnouncementCreated(announcement: $announcement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementCreatedImpl &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, announcement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementCreatedImplCopyWith<_$AnnouncementCreatedImpl> get copyWith =>
      __$$AnnouncementCreatedImplCopyWithImpl<_$AnnouncementCreatedImpl>(
          this, _$identity);
}

abstract class _AnnouncementCreated implements AnnouncementCreated {
  const factory _AnnouncementCreated(
          {required final AnnouncementsResponse announcement}) =
      _$AnnouncementCreatedImpl;

  factory _AnnouncementCreated.fromJson(Map<String, dynamic> json) =
      _$AnnouncementCreatedImpl.fromJson;

  @override
  AnnouncementsResponse get announcement;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementCreatedImplCopyWith<_$AnnouncementCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
