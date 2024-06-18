// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_update_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reacted _$ReactedFromJson(Map<String, dynamic> json) {
  return _Reacted.fromJson(json);
}

/// @nodoc
mixin _$Reacted {
  String get reaction => throw _privateConstructorUsedError;
  ReactedEmoji? get emoji => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactedCopyWith<Reacted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactedCopyWith<$Res> {
  factory $ReactedCopyWith(Reacted value, $Res Function(Reacted) then) =
      _$ReactedCopyWithImpl<$Res, Reacted>;
  @useResult
  $Res call({String reaction, ReactedEmoji? emoji, String userId});

  $ReactedEmojiCopyWith<$Res>? get emoji;
}

/// @nodoc
class _$ReactedCopyWithImpl<$Res, $Val extends Reacted>
    implements $ReactedCopyWith<$Res> {
  _$ReactedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reaction = null,
    Object? emoji = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as ReactedEmoji?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReactedEmojiCopyWith<$Res>? get emoji {
    if (_value.emoji == null) {
      return null;
    }

    return $ReactedEmojiCopyWith<$Res>(_value.emoji!, (value) {
      return _then(_value.copyWith(emoji: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReactedImplCopyWith<$Res> implements $ReactedCopyWith<$Res> {
  factory _$$ReactedImplCopyWith(
          _$ReactedImpl value, $Res Function(_$ReactedImpl) then) =
      __$$ReactedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reaction, ReactedEmoji? emoji, String userId});

  @override
  $ReactedEmojiCopyWith<$Res>? get emoji;
}

/// @nodoc
class __$$ReactedImplCopyWithImpl<$Res>
    extends _$ReactedCopyWithImpl<$Res, _$ReactedImpl>
    implements _$$ReactedImplCopyWith<$Res> {
  __$$ReactedImplCopyWithImpl(
      _$ReactedImpl _value, $Res Function(_$ReactedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reaction = null,
    Object? emoji = freezed,
    Object? userId = null,
  }) {
    return _then(_$ReactedImpl(
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as ReactedEmoji?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactedImpl implements _Reacted {
  const _$ReactedImpl(
      {required this.reaction, this.emoji, required this.userId});

  factory _$ReactedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactedImplFromJson(json);

  @override
  final String reaction;
  @override
  final ReactedEmoji? emoji;
  @override
  final String userId;

  @override
  String toString() {
    return 'Reacted(reaction: $reaction, emoji: $emoji, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactedImpl &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reaction, emoji, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactedImplCopyWith<_$ReactedImpl> get copyWith =>
      __$$ReactedImplCopyWithImpl<_$ReactedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactedImplToJson(
      this,
    );
  }
}

abstract class _Reacted implements Reacted {
  const factory _Reacted(
      {required final String reaction,
      final ReactedEmoji? emoji,
      required final String userId}) = _$ReactedImpl;

  factory _Reacted.fromJson(Map<String, dynamic> json) = _$ReactedImpl.fromJson;

  @override
  String get reaction;
  @override
  ReactedEmoji? get emoji;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$ReactedImplCopyWith<_$ReactedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Unreacted _$UnreactedFromJson(Map<String, dynamic> json) {
  return _Unreacted.fromJson(json);
}

/// @nodoc
mixin _$Unreacted {
  String get reaction => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreactedCopyWith<Unreacted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreactedCopyWith<$Res> {
  factory $UnreactedCopyWith(Unreacted value, $Res Function(Unreacted) then) =
      _$UnreactedCopyWithImpl<$Res, Unreacted>;
  @useResult
  $Res call({String reaction, String userId});
}

/// @nodoc
class _$UnreactedCopyWithImpl<$Res, $Val extends Unreacted>
    implements $UnreactedCopyWith<$Res> {
  _$UnreactedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reaction = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnreactedImplCopyWith<$Res>
    implements $UnreactedCopyWith<$Res> {
  factory _$$UnreactedImplCopyWith(
          _$UnreactedImpl value, $Res Function(_$UnreactedImpl) then) =
      __$$UnreactedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reaction, String userId});
}

/// @nodoc
class __$$UnreactedImplCopyWithImpl<$Res>
    extends _$UnreactedCopyWithImpl<$Res, _$UnreactedImpl>
    implements _$$UnreactedImplCopyWith<$Res> {
  __$$UnreactedImplCopyWithImpl(
      _$UnreactedImpl _value, $Res Function(_$UnreactedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reaction = null,
    Object? userId = null,
  }) {
    return _then(_$UnreactedImpl(
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnreactedImpl implements _Unreacted {
  const _$UnreactedImpl({required this.reaction, required this.userId});

  factory _$UnreactedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnreactedImplFromJson(json);

  @override
  final String reaction;
  @override
  final String userId;

  @override
  String toString() {
    return 'Unreacted(reaction: $reaction, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnreactedImpl &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reaction, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnreactedImplCopyWith<_$UnreactedImpl> get copyWith =>
      __$$UnreactedImplCopyWithImpl<_$UnreactedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnreactedImplToJson(
      this,
    );
  }
}

abstract class _Unreacted implements Unreacted {
  const factory _Unreacted(
      {required final String reaction,
      required final String userId}) = _$UnreactedImpl;

  factory _Unreacted.fromJson(Map<String, dynamic> json) =
      _$UnreactedImpl.fromJson;

  @override
  String get reaction;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$UnreactedImplCopyWith<_$UnreactedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Deleted _$DeletedFromJson(Map<String, dynamic> json) {
  return _Deleted.fromJson(json);
}

/// @nodoc
mixin _$Deleted {
  DateTime get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletedCopyWith<Deleted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedCopyWith<$Res> {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) then) =
      _$DeletedCopyWithImpl<$Res, Deleted>;
  @useResult
  $Res call({DateTime deletedAt});
}

/// @nodoc
class _$DeletedCopyWithImpl<$Res, $Val extends Deleted>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedAt = null,
  }) {
    return _then(_value.copyWith(
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> implements $DeletedCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime deletedAt});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$DeletedCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedAt = null,
  }) {
    return _then(_$DeletedImpl(
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl({required this.deletedAt});

  factory _$DeletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletedImplFromJson(json);

  @override
  final DateTime deletedAt;

  @override
  String toString() {
    return 'Deleted(deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletedImplToJson(
      this,
    );
  }
}

abstract class _Deleted implements Deleted {
  const factory _Deleted({required final DateTime deletedAt}) = _$DeletedImpl;

  factory _Deleted.fromJson(Map<String, dynamic> json) = _$DeletedImpl.fromJson;

  @override
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PollVoted _$PollVotedFromJson(Map<String, dynamic> json) {
  return _PollVoted.fromJson(json);
}

/// @nodoc
mixin _$PollVoted {
  int get choice => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollVotedCopyWith<PollVoted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollVotedCopyWith<$Res> {
  factory $PollVotedCopyWith(PollVoted value, $Res Function(PollVoted) then) =
      _$PollVotedCopyWithImpl<$Res, PollVoted>;
  @useResult
  $Res call({int choice, String userId});
}

/// @nodoc
class _$PollVotedCopyWithImpl<$Res, $Val extends PollVoted>
    implements $PollVotedCopyWith<$Res> {
  _$PollVotedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choice = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollVotedImplCopyWith<$Res>
    implements $PollVotedCopyWith<$Res> {
  factory _$$PollVotedImplCopyWith(
          _$PollVotedImpl value, $Res Function(_$PollVotedImpl) then) =
      __$$PollVotedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int choice, String userId});
}

/// @nodoc
class __$$PollVotedImplCopyWithImpl<$Res>
    extends _$PollVotedCopyWithImpl<$Res, _$PollVotedImpl>
    implements _$$PollVotedImplCopyWith<$Res> {
  __$$PollVotedImplCopyWithImpl(
      _$PollVotedImpl _value, $Res Function(_$PollVotedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choice = null,
    Object? userId = null,
  }) {
    return _then(_$PollVotedImpl(
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollVotedImpl implements _PollVoted {
  const _$PollVotedImpl({required this.choice, required this.userId});

  factory _$PollVotedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollVotedImplFromJson(json);

  @override
  final int choice;
  @override
  final String userId;

  @override
  String toString() {
    return 'PollVoted(choice: $choice, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollVotedImpl &&
            (identical(other.choice, choice) || other.choice == choice) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, choice, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollVotedImplCopyWith<_$PollVotedImpl> get copyWith =>
      __$$PollVotedImplCopyWithImpl<_$PollVotedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollVotedImplToJson(
      this,
    );
  }
}

abstract class _PollVoted implements PollVoted {
  const factory _PollVoted(
      {required final int choice,
      required final String userId}) = _$PollVotedImpl;

  factory _PollVoted.fromJson(Map<String, dynamic> json) =
      _$PollVotedImpl.fromJson;

  @override
  int get choice;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$PollVotedImplCopyWith<_$PollVotedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Updated _$UpdatedFromJson(Map<String, dynamic> json) {
  return _Updated.fromJson(json);
}

/// @nodoc
mixin _$Updated {
  String? get cw => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  Note? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedCopyWith<Updated> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedCopyWith<$Res> {
  factory $UpdatedCopyWith(Updated value, $Res Function(Updated) then) =
      _$UpdatedCopyWithImpl<$Res, Updated>;
  @useResult
  $Res call({String? cw, String? text, Note? note});

  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class _$UpdatedCopyWithImpl<$Res, $Val extends Updated>
    implements $UpdatedCopyWith<$Res> {
  _$UpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cw = freezed,
    Object? text = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      cw: freezed == cw
          ? _value.cw
          : cw // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> implements $UpdatedCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cw, String? text, Note? note});

  @override
  $NoteCopyWith<$Res>? get note;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$UpdatedCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cw = freezed,
    Object? text = freezed,
    Object? note = freezed,
  }) {
    return _then(_$UpdatedImpl(
      cw: freezed == cw
          ? _value.cw
          : cw // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl({this.cw, this.text, this.note});

  factory _$UpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedImplFromJson(json);

  @override
  final String? cw;
  @override
  final String? text;
  @override
  final Note? note;

  @override
  String toString() {
    return 'Updated(cw: $cw, text: $text, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.cw, cw) || other.cw == cw) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cw, text, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedImplToJson(
      this,
    );
  }
}

abstract class _Updated implements Updated {
  const factory _Updated(
      {final String? cw, final String? text, final Note? note}) = _$UpdatedImpl;

  factory _Updated.fromJson(Map<String, dynamic> json) = _$UpdatedImpl.fromJson;

  @override
  String? get cw;
  @override
  String? get text;
  @override
  Note? get note;
  @override
  @JsonKey(ignore: true)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReactedEmoji _$ReactedEmojiFromJson(Map<String, dynamic> json) {
  return _ReactedEmoji.fromJson(json);
}

/// @nodoc
mixin _$ReactedEmoji {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactedEmojiCopyWith<ReactedEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactedEmojiCopyWith<$Res> {
  factory $ReactedEmojiCopyWith(
          ReactedEmoji value, $Res Function(ReactedEmoji) then) =
      _$ReactedEmojiCopyWithImpl<$Res, ReactedEmoji>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$ReactedEmojiCopyWithImpl<$Res, $Val extends ReactedEmoji>
    implements $ReactedEmojiCopyWith<$Res> {
  _$ReactedEmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactedEmojiImplCopyWith<$Res>
    implements $ReactedEmojiCopyWith<$Res> {
  factory _$$ReactedEmojiImplCopyWith(
          _$ReactedEmojiImpl value, $Res Function(_$ReactedEmojiImpl) then) =
      __$$ReactedEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$ReactedEmojiImplCopyWithImpl<$Res>
    extends _$ReactedEmojiCopyWithImpl<$Res, _$ReactedEmojiImpl>
    implements _$$ReactedEmojiImplCopyWith<$Res> {
  __$$ReactedEmojiImplCopyWithImpl(
      _$ReactedEmojiImpl _value, $Res Function(_$ReactedEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$ReactedEmojiImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactedEmojiImpl implements _ReactedEmoji {
  const _$ReactedEmojiImpl({required this.name, required this.url});

  factory _$ReactedEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactedEmojiImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ReactedEmoji(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactedEmojiImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactedEmojiImplCopyWith<_$ReactedEmojiImpl> get copyWith =>
      __$$ReactedEmojiImplCopyWithImpl<_$ReactedEmojiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactedEmojiImplToJson(
      this,
    );
  }
}

abstract class _ReactedEmoji implements ReactedEmoji {
  const factory _ReactedEmoji(
      {required final String name,
      required final String url}) = _$ReactedEmojiImpl;

  factory _ReactedEmoji.fromJson(Map<String, dynamic> json) =
      _$ReactedEmojiImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ReactedEmojiImplCopyWith<_$ReactedEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
