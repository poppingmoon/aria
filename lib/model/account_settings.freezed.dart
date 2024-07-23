// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountSettings _$AccountSettingsFromJson(Map<String, dynamic> json) {
  return _AccountSettings.fromJson(json);
}

/// @nodoc
mixin _$AccountSettings {
// Privacy
  bool get keepCw => throw _privateConstructorUsedError;
  bool get rememberNoteVisibility => throw _privateConstructorUsedError;
  NoteVisibility get defaultNoteVisibility =>
      throw _privateConstructorUsedError;
  bool get defaultNoteLocalOnly => throw _privateConstructorUsedError;
  ReactionAcceptance? get reactionAcceptance =>
      throw _privateConstructorUsedError;
  NoteVisibility get visibility => throw _privateConstructorUsedError;
  bool get localOnly => throw _privateConstructorUsedError; // EmojiPicker
  List<String> get pinnedEmojisForReaction =>
      throw _privateConstructorUsedError;
  List<String> get pinnedEmojis => throw _privateConstructorUsedError;
  List<String> get recentlyUsedEmojis =>
      throw _privateConstructorUsedError; // Drive
  String? get uploadFolder => throw _privateConstructorUsedError;
  bool get keepOriginalUploading => throw _privateConstructorUsedError;
  bool get keepOriginalFilename => throw _privateConstructorUsedError; // Mute
  List<MuteWord> get mutedWords => throw _privateConstructorUsedError;
  List<MuteWord> get hardMutedWords =>
      throw _privateConstructorUsedError; // UserSelectDialog
  List<String> get recentlyUsedUsers =>
      throw _privateConstructorUsedError; // PostForm
  List<String> get hashtags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountSettingsCopyWith<AccountSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsCopyWith<$Res> {
  factory $AccountSettingsCopyWith(
          AccountSettings value, $Res Function(AccountSettings) then) =
      _$AccountSettingsCopyWithImpl<$Res, AccountSettings>;
  @useResult
  $Res call(
      {bool keepCw,
      bool rememberNoteVisibility,
      NoteVisibility defaultNoteVisibility,
      bool defaultNoteLocalOnly,
      ReactionAcceptance? reactionAcceptance,
      NoteVisibility visibility,
      bool localOnly,
      List<String> pinnedEmojisForReaction,
      List<String> pinnedEmojis,
      List<String> recentlyUsedEmojis,
      String? uploadFolder,
      bool keepOriginalUploading,
      bool keepOriginalFilename,
      List<MuteWord> mutedWords,
      List<MuteWord> hardMutedWords,
      List<String> recentlyUsedUsers,
      List<String> hashtags});
}

/// @nodoc
class _$AccountSettingsCopyWithImpl<$Res, $Val extends AccountSettings>
    implements $AccountSettingsCopyWith<$Res> {
  _$AccountSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keepCw = null,
    Object? rememberNoteVisibility = null,
    Object? defaultNoteVisibility = null,
    Object? defaultNoteLocalOnly = null,
    Object? reactionAcceptance = freezed,
    Object? visibility = null,
    Object? localOnly = null,
    Object? pinnedEmojisForReaction = null,
    Object? pinnedEmojis = null,
    Object? recentlyUsedEmojis = null,
    Object? uploadFolder = freezed,
    Object? keepOriginalUploading = null,
    Object? keepOriginalFilename = null,
    Object? mutedWords = null,
    Object? hardMutedWords = null,
    Object? recentlyUsedUsers = null,
    Object? hashtags = null,
  }) {
    return _then(_value.copyWith(
      keepCw: null == keepCw
          ? _value.keepCw
          : keepCw // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberNoteVisibility: null == rememberNoteVisibility
          ? _value.rememberNoteVisibility
          : rememberNoteVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultNoteVisibility: null == defaultNoteVisibility
          ? _value.defaultNoteVisibility
          : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
              as NoteVisibility,
      defaultNoteLocalOnly: null == defaultNoteLocalOnly
          ? _value.defaultNoteLocalOnly
          : defaultNoteLocalOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      reactionAcceptance: freezed == reactionAcceptance
          ? _value.reactionAcceptance
          : reactionAcceptance // ignore: cast_nullable_to_non_nullable
              as ReactionAcceptance?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as NoteVisibility,
      localOnly: null == localOnly
          ? _value.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      pinnedEmojisForReaction: null == pinnedEmojisForReaction
          ? _value.pinnedEmojisForReaction
          : pinnedEmojisForReaction // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pinnedEmojis: null == pinnedEmojis
          ? _value.pinnedEmojis
          : pinnedEmojis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recentlyUsedEmojis: null == recentlyUsedEmojis
          ? _value.recentlyUsedEmojis
          : recentlyUsedEmojis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uploadFolder: freezed == uploadFolder
          ? _value.uploadFolder
          : uploadFolder // ignore: cast_nullable_to_non_nullable
              as String?,
      keepOriginalUploading: null == keepOriginalUploading
          ? _value.keepOriginalUploading
          : keepOriginalUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      keepOriginalFilename: null == keepOriginalFilename
          ? _value.keepOriginalFilename
          : keepOriginalFilename // ignore: cast_nullable_to_non_nullable
              as bool,
      mutedWords: null == mutedWords
          ? _value.mutedWords
          : mutedWords // ignore: cast_nullable_to_non_nullable
              as List<MuteWord>,
      hardMutedWords: null == hardMutedWords
          ? _value.hardMutedWords
          : hardMutedWords // ignore: cast_nullable_to_non_nullable
              as List<MuteWord>,
      recentlyUsedUsers: null == recentlyUsedUsers
          ? _value.recentlyUsedUsers
          : recentlyUsedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hashtags: null == hashtags
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountSettingsImplCopyWith<$Res>
    implements $AccountSettingsCopyWith<$Res> {
  factory _$$AccountSettingsImplCopyWith(_$AccountSettingsImpl value,
          $Res Function(_$AccountSettingsImpl) then) =
      __$$AccountSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool keepCw,
      bool rememberNoteVisibility,
      NoteVisibility defaultNoteVisibility,
      bool defaultNoteLocalOnly,
      ReactionAcceptance? reactionAcceptance,
      NoteVisibility visibility,
      bool localOnly,
      List<String> pinnedEmojisForReaction,
      List<String> pinnedEmojis,
      List<String> recentlyUsedEmojis,
      String? uploadFolder,
      bool keepOriginalUploading,
      bool keepOriginalFilename,
      List<MuteWord> mutedWords,
      List<MuteWord> hardMutedWords,
      List<String> recentlyUsedUsers,
      List<String> hashtags});
}

/// @nodoc
class __$$AccountSettingsImplCopyWithImpl<$Res>
    extends _$AccountSettingsCopyWithImpl<$Res, _$AccountSettingsImpl>
    implements _$$AccountSettingsImplCopyWith<$Res> {
  __$$AccountSettingsImplCopyWithImpl(
      _$AccountSettingsImpl _value, $Res Function(_$AccountSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keepCw = null,
    Object? rememberNoteVisibility = null,
    Object? defaultNoteVisibility = null,
    Object? defaultNoteLocalOnly = null,
    Object? reactionAcceptance = freezed,
    Object? visibility = null,
    Object? localOnly = null,
    Object? pinnedEmojisForReaction = null,
    Object? pinnedEmojis = null,
    Object? recentlyUsedEmojis = null,
    Object? uploadFolder = freezed,
    Object? keepOriginalUploading = null,
    Object? keepOriginalFilename = null,
    Object? mutedWords = null,
    Object? hardMutedWords = null,
    Object? recentlyUsedUsers = null,
    Object? hashtags = null,
  }) {
    return _then(_$AccountSettingsImpl(
      keepCw: null == keepCw
          ? _value.keepCw
          : keepCw // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberNoteVisibility: null == rememberNoteVisibility
          ? _value.rememberNoteVisibility
          : rememberNoteVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultNoteVisibility: null == defaultNoteVisibility
          ? _value.defaultNoteVisibility
          : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
              as NoteVisibility,
      defaultNoteLocalOnly: null == defaultNoteLocalOnly
          ? _value.defaultNoteLocalOnly
          : defaultNoteLocalOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      reactionAcceptance: freezed == reactionAcceptance
          ? _value.reactionAcceptance
          : reactionAcceptance // ignore: cast_nullable_to_non_nullable
              as ReactionAcceptance?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as NoteVisibility,
      localOnly: null == localOnly
          ? _value.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      pinnedEmojisForReaction: null == pinnedEmojisForReaction
          ? _value._pinnedEmojisForReaction
          : pinnedEmojisForReaction // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pinnedEmojis: null == pinnedEmojis
          ? _value._pinnedEmojis
          : pinnedEmojis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recentlyUsedEmojis: null == recentlyUsedEmojis
          ? _value._recentlyUsedEmojis
          : recentlyUsedEmojis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uploadFolder: freezed == uploadFolder
          ? _value.uploadFolder
          : uploadFolder // ignore: cast_nullable_to_non_nullable
              as String?,
      keepOriginalUploading: null == keepOriginalUploading
          ? _value.keepOriginalUploading
          : keepOriginalUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      keepOriginalFilename: null == keepOriginalFilename
          ? _value.keepOriginalFilename
          : keepOriginalFilename // ignore: cast_nullable_to_non_nullable
              as bool,
      mutedWords: null == mutedWords
          ? _value._mutedWords
          : mutedWords // ignore: cast_nullable_to_non_nullable
              as List<MuteWord>,
      hardMutedWords: null == hardMutedWords
          ? _value._hardMutedWords
          : hardMutedWords // ignore: cast_nullable_to_non_nullable
              as List<MuteWord>,
      recentlyUsedUsers: null == recentlyUsedUsers
          ? _value._recentlyUsedUsers
          : recentlyUsedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hashtags: null == hashtags
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSettingsImpl implements _AccountSettings {
  const _$AccountSettingsImpl(
      {this.keepCw = true,
      this.rememberNoteVisibility = false,
      this.defaultNoteVisibility = NoteVisibility.public,
      this.defaultNoteLocalOnly = false,
      this.reactionAcceptance,
      this.visibility = NoteVisibility.public,
      this.localOnly = false,
      final List<String> pinnedEmojisForReaction = defaultPinnedEmojis,
      final List<String> pinnedEmojis = defaultPinnedEmojis,
      final List<String> recentlyUsedEmojis = const [],
      this.uploadFolder,
      this.keepOriginalUploading = false,
      this.keepOriginalFilename = true,
      final List<MuteWord> mutedWords = const [],
      final List<MuteWord> hardMutedWords = const [],
      final List<String> recentlyUsedUsers = const [],
      final List<String> hashtags = const []})
      : _pinnedEmojisForReaction = pinnedEmojisForReaction,
        _pinnedEmojis = pinnedEmojis,
        _recentlyUsedEmojis = recentlyUsedEmojis,
        _mutedWords = mutedWords,
        _hardMutedWords = hardMutedWords,
        _recentlyUsedUsers = recentlyUsedUsers,
        _hashtags = hashtags;

  factory _$AccountSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSettingsImplFromJson(json);

// Privacy
  @override
  @JsonKey()
  final bool keepCw;
  @override
  @JsonKey()
  final bool rememberNoteVisibility;
  @override
  @JsonKey()
  final NoteVisibility defaultNoteVisibility;
  @override
  @JsonKey()
  final bool defaultNoteLocalOnly;
  @override
  final ReactionAcceptance? reactionAcceptance;
  @override
  @JsonKey()
  final NoteVisibility visibility;
  @override
  @JsonKey()
  final bool localOnly;
// EmojiPicker
  final List<String> _pinnedEmojisForReaction;
// EmojiPicker
  @override
  @JsonKey()
  List<String> get pinnedEmojisForReaction {
    if (_pinnedEmojisForReaction is EqualUnmodifiableListView)
      return _pinnedEmojisForReaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pinnedEmojisForReaction);
  }

  final List<String> _pinnedEmojis;
  @override
  @JsonKey()
  List<String> get pinnedEmojis {
    if (_pinnedEmojis is EqualUnmodifiableListView) return _pinnedEmojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pinnedEmojis);
  }

  final List<String> _recentlyUsedEmojis;
  @override
  @JsonKey()
  List<String> get recentlyUsedEmojis {
    if (_recentlyUsedEmojis is EqualUnmodifiableListView)
      return _recentlyUsedEmojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyUsedEmojis);
  }

// Drive
  @override
  final String? uploadFolder;
  @override
  @JsonKey()
  final bool keepOriginalUploading;
  @override
  @JsonKey()
  final bool keepOriginalFilename;
// Mute
  final List<MuteWord> _mutedWords;
// Mute
  @override
  @JsonKey()
  List<MuteWord> get mutedWords {
    if (_mutedWords is EqualUnmodifiableListView) return _mutedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutedWords);
  }

  final List<MuteWord> _hardMutedWords;
  @override
  @JsonKey()
  List<MuteWord> get hardMutedWords {
    if (_hardMutedWords is EqualUnmodifiableListView) return _hardMutedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hardMutedWords);
  }

// UserSelectDialog
  final List<String> _recentlyUsedUsers;
// UserSelectDialog
  @override
  @JsonKey()
  List<String> get recentlyUsedUsers {
    if (_recentlyUsedUsers is EqualUnmodifiableListView)
      return _recentlyUsedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyUsedUsers);
  }

// PostForm
  final List<String> _hashtags;
// PostForm
  @override
  @JsonKey()
  List<String> get hashtags {
    if (_hashtags is EqualUnmodifiableListView) return _hashtags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hashtags);
  }

  @override
  String toString() {
    return 'AccountSettings(keepCw: $keepCw, rememberNoteVisibility: $rememberNoteVisibility, defaultNoteVisibility: $defaultNoteVisibility, defaultNoteLocalOnly: $defaultNoteLocalOnly, reactionAcceptance: $reactionAcceptance, visibility: $visibility, localOnly: $localOnly, pinnedEmojisForReaction: $pinnedEmojisForReaction, pinnedEmojis: $pinnedEmojis, recentlyUsedEmojis: $recentlyUsedEmojis, uploadFolder: $uploadFolder, keepOriginalUploading: $keepOriginalUploading, keepOriginalFilename: $keepOriginalFilename, mutedWords: $mutedWords, hardMutedWords: $hardMutedWords, recentlyUsedUsers: $recentlyUsedUsers, hashtags: $hashtags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSettingsImpl &&
            (identical(other.keepCw, keepCw) || other.keepCw == keepCw) &&
            (identical(other.rememberNoteVisibility, rememberNoteVisibility) ||
                other.rememberNoteVisibility == rememberNoteVisibility) &&
            (identical(other.defaultNoteVisibility, defaultNoteVisibility) ||
                other.defaultNoteVisibility == defaultNoteVisibility) &&
            (identical(other.defaultNoteLocalOnly, defaultNoteLocalOnly) ||
                other.defaultNoteLocalOnly == defaultNoteLocalOnly) &&
            (identical(other.reactionAcceptance, reactionAcceptance) ||
                other.reactionAcceptance == reactionAcceptance) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.localOnly, localOnly) ||
                other.localOnly == localOnly) &&
            const DeepCollectionEquality().equals(
                other._pinnedEmojisForReaction, _pinnedEmojisForReaction) &&
            const DeepCollectionEquality()
                .equals(other._pinnedEmojis, _pinnedEmojis) &&
            const DeepCollectionEquality()
                .equals(other._recentlyUsedEmojis, _recentlyUsedEmojis) &&
            (identical(other.uploadFolder, uploadFolder) ||
                other.uploadFolder == uploadFolder) &&
            (identical(other.keepOriginalUploading, keepOriginalUploading) ||
                other.keepOriginalUploading == keepOriginalUploading) &&
            (identical(other.keepOriginalFilename, keepOriginalFilename) ||
                other.keepOriginalFilename == keepOriginalFilename) &&
            const DeepCollectionEquality()
                .equals(other._mutedWords, _mutedWords) &&
            const DeepCollectionEquality()
                .equals(other._hardMutedWords, _hardMutedWords) &&
            const DeepCollectionEquality()
                .equals(other._recentlyUsedUsers, _recentlyUsedUsers) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      keepCw,
      rememberNoteVisibility,
      defaultNoteVisibility,
      defaultNoteLocalOnly,
      reactionAcceptance,
      visibility,
      localOnly,
      const DeepCollectionEquality().hash(_pinnedEmojisForReaction),
      const DeepCollectionEquality().hash(_pinnedEmojis),
      const DeepCollectionEquality().hash(_recentlyUsedEmojis),
      uploadFolder,
      keepOriginalUploading,
      keepOriginalFilename,
      const DeepCollectionEquality().hash(_mutedWords),
      const DeepCollectionEquality().hash(_hardMutedWords),
      const DeepCollectionEquality().hash(_recentlyUsedUsers),
      const DeepCollectionEquality().hash(_hashtags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsImplCopyWith<_$AccountSettingsImpl> get copyWith =>
      __$$AccountSettingsImplCopyWithImpl<_$AccountSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSettingsImplToJson(
      this,
    );
  }
}

abstract class _AccountSettings implements AccountSettings {
  const factory _AccountSettings(
      {final bool keepCw,
      final bool rememberNoteVisibility,
      final NoteVisibility defaultNoteVisibility,
      final bool defaultNoteLocalOnly,
      final ReactionAcceptance? reactionAcceptance,
      final NoteVisibility visibility,
      final bool localOnly,
      final List<String> pinnedEmojisForReaction,
      final List<String> pinnedEmojis,
      final List<String> recentlyUsedEmojis,
      final String? uploadFolder,
      final bool keepOriginalUploading,
      final bool keepOriginalFilename,
      final List<MuteWord> mutedWords,
      final List<MuteWord> hardMutedWords,
      final List<String> recentlyUsedUsers,
      final List<String> hashtags}) = _$AccountSettingsImpl;

  factory _AccountSettings.fromJson(Map<String, dynamic> json) =
      _$AccountSettingsImpl.fromJson;

  @override // Privacy
  bool get keepCw;
  @override
  bool get rememberNoteVisibility;
  @override
  NoteVisibility get defaultNoteVisibility;
  @override
  bool get defaultNoteLocalOnly;
  @override
  ReactionAcceptance? get reactionAcceptance;
  @override
  NoteVisibility get visibility;
  @override
  bool get localOnly;
  @override // EmojiPicker
  List<String> get pinnedEmojisForReaction;
  @override
  List<String> get pinnedEmojis;
  @override
  List<String> get recentlyUsedEmojis;
  @override // Drive
  String? get uploadFolder;
  @override
  bool get keepOriginalUploading;
  @override
  bool get keepOriginalFilename;
  @override // Mute
  List<MuteWord> get mutedWords;
  @override
  List<MuteWord> get hardMutedWords;
  @override // UserSelectDialog
  List<String> get recentlyUsedUsers;
  @override // PostForm
  List<String> get hashtags;
  @override
  @JsonKey(ignore: true)
  _$$AccountSettingsImplCopyWith<_$AccountSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
