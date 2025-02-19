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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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
  bool get rememberRenoteVisibility => throw _privateConstructorUsedError;
  NoteVisibility get defaultRenoteVisibility =>
      throw _privateConstructorUsedError;
  bool get defaultRenoteLocalOnly => throw _privateConstructorUsedError;
  ReactionAcceptance? get reactionAcceptance =>
      throw _privateConstructorUsedError;
  NoteVisibility get visibility => throw _privateConstructorUsedError;
  bool get localOnly => throw _privateConstructorUsedError;
  NoteVisibility get renoteVisibility => throw _privateConstructorUsedError;
  bool get renoteLocalOnly => throw _privateConstructorUsedError; // EmojiPicker
  List<String> get pinnedEmojisForReaction =>
      throw _privateConstructorUsedError;
  List<String> get pinnedEmojis => throw _privateConstructorUsedError;
  List<String> get recentlyUsedEmojis => throw _privateConstructorUsedError;
  String? get defaultReaction => throw _privateConstructorUsedError; // Drive
  String? get uploadFolder => throw _privateConstructorUsedError;
  bool get keepOriginalUploading => throw _privateConstructorUsedError;
  bool get keepOriginalFilename => throw _privateConstructorUsedError; // Mute
  List<MuteWord> get mutedWords => throw _privateConstructorUsedError;
  List<MuteWord> get hardMutedWords => throw _privateConstructorUsedError;
  List<String> get mutedEmojis =>
      throw _privateConstructorUsedError; // UserSelectDialog
  List<String> get recentlyUsedUsers =>
      throw _privateConstructorUsedError; // PostForm
  List<String> get hashtags => throw _privateConstructorUsedError;
  bool get postFormUseHashtags => throw _privateConstructorUsedError;
  List<String> get postFormHashtags => throw _privateConstructorUsedError;

  /// Serializes this AccountSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSettingsCopyWith<AccountSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsCopyWith<$Res> {
  factory $AccountSettingsCopyWith(
    AccountSettings value,
    $Res Function(AccountSettings) then,
  ) = _$AccountSettingsCopyWithImpl<$Res, AccountSettings>;
  @useResult
  $Res call({
    bool keepCw,
    bool rememberNoteVisibility,
    NoteVisibility defaultNoteVisibility,
    bool defaultNoteLocalOnly,
    bool rememberRenoteVisibility,
    NoteVisibility defaultRenoteVisibility,
    bool defaultRenoteLocalOnly,
    ReactionAcceptance? reactionAcceptance,
    NoteVisibility visibility,
    bool localOnly,
    NoteVisibility renoteVisibility,
    bool renoteLocalOnly,
    List<String> pinnedEmojisForReaction,
    List<String> pinnedEmojis,
    List<String> recentlyUsedEmojis,
    String? defaultReaction,
    String? uploadFolder,
    bool keepOriginalUploading,
    bool keepOriginalFilename,
    List<MuteWord> mutedWords,
    List<MuteWord> hardMutedWords,
    List<String> mutedEmojis,
    List<String> recentlyUsedUsers,
    List<String> hashtags,
    bool postFormUseHashtags,
    List<String> postFormHashtags,
  });
}

/// @nodoc
class _$AccountSettingsCopyWithImpl<$Res, $Val extends AccountSettings>
    implements $AccountSettingsCopyWith<$Res> {
  _$AccountSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keepCw = null,
    Object? rememberNoteVisibility = null,
    Object? defaultNoteVisibility = null,
    Object? defaultNoteLocalOnly = null,
    Object? rememberRenoteVisibility = null,
    Object? defaultRenoteVisibility = null,
    Object? defaultRenoteLocalOnly = null,
    Object? reactionAcceptance = freezed,
    Object? visibility = null,
    Object? localOnly = null,
    Object? renoteVisibility = null,
    Object? renoteLocalOnly = null,
    Object? pinnedEmojisForReaction = null,
    Object? pinnedEmojis = null,
    Object? recentlyUsedEmojis = null,
    Object? defaultReaction = freezed,
    Object? uploadFolder = freezed,
    Object? keepOriginalUploading = null,
    Object? keepOriginalFilename = null,
    Object? mutedWords = null,
    Object? hardMutedWords = null,
    Object? mutedEmojis = null,
    Object? recentlyUsedUsers = null,
    Object? hashtags = null,
    Object? postFormUseHashtags = null,
    Object? postFormHashtags = null,
  }) {
    return _then(
      _value.copyWith(
            keepCw:
                null == keepCw
                    ? _value.keepCw
                    : keepCw // ignore: cast_nullable_to_non_nullable
                        as bool,
            rememberNoteVisibility:
                null == rememberNoteVisibility
                    ? _value.rememberNoteVisibility
                    : rememberNoteVisibility // ignore: cast_nullable_to_non_nullable
                        as bool,
            defaultNoteVisibility:
                null == defaultNoteVisibility
                    ? _value.defaultNoteVisibility
                    : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
                        as NoteVisibility,
            defaultNoteLocalOnly:
                null == defaultNoteLocalOnly
                    ? _value.defaultNoteLocalOnly
                    : defaultNoteLocalOnly // ignore: cast_nullable_to_non_nullable
                        as bool,
            rememberRenoteVisibility:
                null == rememberRenoteVisibility
                    ? _value.rememberRenoteVisibility
                    : rememberRenoteVisibility // ignore: cast_nullable_to_non_nullable
                        as bool,
            defaultRenoteVisibility:
                null == defaultRenoteVisibility
                    ? _value.defaultRenoteVisibility
                    : defaultRenoteVisibility // ignore: cast_nullable_to_non_nullable
                        as NoteVisibility,
            defaultRenoteLocalOnly:
                null == defaultRenoteLocalOnly
                    ? _value.defaultRenoteLocalOnly
                    : defaultRenoteLocalOnly // ignore: cast_nullable_to_non_nullable
                        as bool,
            reactionAcceptance:
                freezed == reactionAcceptance
                    ? _value.reactionAcceptance
                    : reactionAcceptance // ignore: cast_nullable_to_non_nullable
                        as ReactionAcceptance?,
            visibility:
                null == visibility
                    ? _value.visibility
                    : visibility // ignore: cast_nullable_to_non_nullable
                        as NoteVisibility,
            localOnly:
                null == localOnly
                    ? _value.localOnly
                    : localOnly // ignore: cast_nullable_to_non_nullable
                        as bool,
            renoteVisibility:
                null == renoteVisibility
                    ? _value.renoteVisibility
                    : renoteVisibility // ignore: cast_nullable_to_non_nullable
                        as NoteVisibility,
            renoteLocalOnly:
                null == renoteLocalOnly
                    ? _value.renoteLocalOnly
                    : renoteLocalOnly // ignore: cast_nullable_to_non_nullable
                        as bool,
            pinnedEmojisForReaction:
                null == pinnedEmojisForReaction
                    ? _value.pinnedEmojisForReaction
                    : pinnedEmojisForReaction // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            pinnedEmojis:
                null == pinnedEmojis
                    ? _value.pinnedEmojis
                    : pinnedEmojis // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            recentlyUsedEmojis:
                null == recentlyUsedEmojis
                    ? _value.recentlyUsedEmojis
                    : recentlyUsedEmojis // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            defaultReaction:
                freezed == defaultReaction
                    ? _value.defaultReaction
                    : defaultReaction // ignore: cast_nullable_to_non_nullable
                        as String?,
            uploadFolder:
                freezed == uploadFolder
                    ? _value.uploadFolder
                    : uploadFolder // ignore: cast_nullable_to_non_nullable
                        as String?,
            keepOriginalUploading:
                null == keepOriginalUploading
                    ? _value.keepOriginalUploading
                    : keepOriginalUploading // ignore: cast_nullable_to_non_nullable
                        as bool,
            keepOriginalFilename:
                null == keepOriginalFilename
                    ? _value.keepOriginalFilename
                    : keepOriginalFilename // ignore: cast_nullable_to_non_nullable
                        as bool,
            mutedWords:
                null == mutedWords
                    ? _value.mutedWords
                    : mutedWords // ignore: cast_nullable_to_non_nullable
                        as List<MuteWord>,
            hardMutedWords:
                null == hardMutedWords
                    ? _value.hardMutedWords
                    : hardMutedWords // ignore: cast_nullable_to_non_nullable
                        as List<MuteWord>,
            mutedEmojis:
                null == mutedEmojis
                    ? _value.mutedEmojis
                    : mutedEmojis // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            recentlyUsedUsers:
                null == recentlyUsedUsers
                    ? _value.recentlyUsedUsers
                    : recentlyUsedUsers // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            hashtags:
                null == hashtags
                    ? _value.hashtags
                    : hashtags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            postFormUseHashtags:
                null == postFormUseHashtags
                    ? _value.postFormUseHashtags
                    : postFormUseHashtags // ignore: cast_nullable_to_non_nullable
                        as bool,
            postFormHashtags:
                null == postFormHashtags
                    ? _value.postFormHashtags
                    : postFormHashtags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountSettingsImplCopyWith<$Res>
    implements $AccountSettingsCopyWith<$Res> {
  factory _$$AccountSettingsImplCopyWith(
    _$AccountSettingsImpl value,
    $Res Function(_$AccountSettingsImpl) then,
  ) = __$$AccountSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool keepCw,
    bool rememberNoteVisibility,
    NoteVisibility defaultNoteVisibility,
    bool defaultNoteLocalOnly,
    bool rememberRenoteVisibility,
    NoteVisibility defaultRenoteVisibility,
    bool defaultRenoteLocalOnly,
    ReactionAcceptance? reactionAcceptance,
    NoteVisibility visibility,
    bool localOnly,
    NoteVisibility renoteVisibility,
    bool renoteLocalOnly,
    List<String> pinnedEmojisForReaction,
    List<String> pinnedEmojis,
    List<String> recentlyUsedEmojis,
    String? defaultReaction,
    String? uploadFolder,
    bool keepOriginalUploading,
    bool keepOriginalFilename,
    List<MuteWord> mutedWords,
    List<MuteWord> hardMutedWords,
    List<String> mutedEmojis,
    List<String> recentlyUsedUsers,
    List<String> hashtags,
    bool postFormUseHashtags,
    List<String> postFormHashtags,
  });
}

/// @nodoc
class __$$AccountSettingsImplCopyWithImpl<$Res>
    extends _$AccountSettingsCopyWithImpl<$Res, _$AccountSettingsImpl>
    implements _$$AccountSettingsImplCopyWith<$Res> {
  __$$AccountSettingsImplCopyWithImpl(
    _$AccountSettingsImpl _value,
    $Res Function(_$AccountSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keepCw = null,
    Object? rememberNoteVisibility = null,
    Object? defaultNoteVisibility = null,
    Object? defaultNoteLocalOnly = null,
    Object? rememberRenoteVisibility = null,
    Object? defaultRenoteVisibility = null,
    Object? defaultRenoteLocalOnly = null,
    Object? reactionAcceptance = freezed,
    Object? visibility = null,
    Object? localOnly = null,
    Object? renoteVisibility = null,
    Object? renoteLocalOnly = null,
    Object? pinnedEmojisForReaction = null,
    Object? pinnedEmojis = null,
    Object? recentlyUsedEmojis = null,
    Object? defaultReaction = freezed,
    Object? uploadFolder = freezed,
    Object? keepOriginalUploading = null,
    Object? keepOriginalFilename = null,
    Object? mutedWords = null,
    Object? hardMutedWords = null,
    Object? mutedEmojis = null,
    Object? recentlyUsedUsers = null,
    Object? hashtags = null,
    Object? postFormUseHashtags = null,
    Object? postFormHashtags = null,
  }) {
    return _then(
      _$AccountSettingsImpl(
        keepCw:
            null == keepCw
                ? _value.keepCw
                : keepCw // ignore: cast_nullable_to_non_nullable
                    as bool,
        rememberNoteVisibility:
            null == rememberNoteVisibility
                ? _value.rememberNoteVisibility
                : rememberNoteVisibility // ignore: cast_nullable_to_non_nullable
                    as bool,
        defaultNoteVisibility:
            null == defaultNoteVisibility
                ? _value.defaultNoteVisibility
                : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
                    as NoteVisibility,
        defaultNoteLocalOnly:
            null == defaultNoteLocalOnly
                ? _value.defaultNoteLocalOnly
                : defaultNoteLocalOnly // ignore: cast_nullable_to_non_nullable
                    as bool,
        rememberRenoteVisibility:
            null == rememberRenoteVisibility
                ? _value.rememberRenoteVisibility
                : rememberRenoteVisibility // ignore: cast_nullable_to_non_nullable
                    as bool,
        defaultRenoteVisibility:
            null == defaultRenoteVisibility
                ? _value.defaultRenoteVisibility
                : defaultRenoteVisibility // ignore: cast_nullable_to_non_nullable
                    as NoteVisibility,
        defaultRenoteLocalOnly:
            null == defaultRenoteLocalOnly
                ? _value.defaultRenoteLocalOnly
                : defaultRenoteLocalOnly // ignore: cast_nullable_to_non_nullable
                    as bool,
        reactionAcceptance:
            freezed == reactionAcceptance
                ? _value.reactionAcceptance
                : reactionAcceptance // ignore: cast_nullable_to_non_nullable
                    as ReactionAcceptance?,
        visibility:
            null == visibility
                ? _value.visibility
                : visibility // ignore: cast_nullable_to_non_nullable
                    as NoteVisibility,
        localOnly:
            null == localOnly
                ? _value.localOnly
                : localOnly // ignore: cast_nullable_to_non_nullable
                    as bool,
        renoteVisibility:
            null == renoteVisibility
                ? _value.renoteVisibility
                : renoteVisibility // ignore: cast_nullable_to_non_nullable
                    as NoteVisibility,
        renoteLocalOnly:
            null == renoteLocalOnly
                ? _value.renoteLocalOnly
                : renoteLocalOnly // ignore: cast_nullable_to_non_nullable
                    as bool,
        pinnedEmojisForReaction:
            null == pinnedEmojisForReaction
                ? _value._pinnedEmojisForReaction
                : pinnedEmojisForReaction // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        pinnedEmojis:
            null == pinnedEmojis
                ? _value._pinnedEmojis
                : pinnedEmojis // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        recentlyUsedEmojis:
            null == recentlyUsedEmojis
                ? _value._recentlyUsedEmojis
                : recentlyUsedEmojis // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        defaultReaction:
            freezed == defaultReaction
                ? _value.defaultReaction
                : defaultReaction // ignore: cast_nullable_to_non_nullable
                    as String?,
        uploadFolder:
            freezed == uploadFolder
                ? _value.uploadFolder
                : uploadFolder // ignore: cast_nullable_to_non_nullable
                    as String?,
        keepOriginalUploading:
            null == keepOriginalUploading
                ? _value.keepOriginalUploading
                : keepOriginalUploading // ignore: cast_nullable_to_non_nullable
                    as bool,
        keepOriginalFilename:
            null == keepOriginalFilename
                ? _value.keepOriginalFilename
                : keepOriginalFilename // ignore: cast_nullable_to_non_nullable
                    as bool,
        mutedWords:
            null == mutedWords
                ? _value._mutedWords
                : mutedWords // ignore: cast_nullable_to_non_nullable
                    as List<MuteWord>,
        hardMutedWords:
            null == hardMutedWords
                ? _value._hardMutedWords
                : hardMutedWords // ignore: cast_nullable_to_non_nullable
                    as List<MuteWord>,
        mutedEmojis:
            null == mutedEmojis
                ? _value._mutedEmojis
                : mutedEmojis // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        recentlyUsedUsers:
            null == recentlyUsedUsers
                ? _value._recentlyUsedUsers
                : recentlyUsedUsers // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        hashtags:
            null == hashtags
                ? _value._hashtags
                : hashtags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        postFormUseHashtags:
            null == postFormUseHashtags
                ? _value.postFormUseHashtags
                : postFormUseHashtags // ignore: cast_nullable_to_non_nullable
                    as bool,
        postFormHashtags:
            null == postFormHashtags
                ? _value._postFormHashtags
                : postFormHashtags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSettingsImpl implements _AccountSettings {
  const _$AccountSettingsImpl({
    this.keepCw = true,
    this.rememberNoteVisibility = false,
    this.defaultNoteVisibility = NoteVisibility.public,
    this.defaultNoteLocalOnly = false,
    this.rememberRenoteVisibility = false,
    this.defaultRenoteVisibility = NoteVisibility.public,
    this.defaultRenoteLocalOnly = false,
    this.reactionAcceptance,
    this.visibility = NoteVisibility.public,
    this.localOnly = false,
    this.renoteVisibility = NoteVisibility.public,
    this.renoteLocalOnly = false,
    final List<String> pinnedEmojisForReaction = defaultPinnedEmojis,
    final List<String> pinnedEmojis = defaultPinnedEmojis,
    final List<String> recentlyUsedEmojis = const [],
    this.defaultReaction,
    this.uploadFolder,
    this.keepOriginalUploading = false,
    this.keepOriginalFilename = true,
    final List<MuteWord> mutedWords = const [],
    final List<MuteWord> hardMutedWords = const [],
    final List<String> mutedEmojis = const [],
    final List<String> recentlyUsedUsers = const [],
    final List<String> hashtags = const [],
    this.postFormUseHashtags = false,
    final List<String> postFormHashtags = const [],
  }) : _pinnedEmojisForReaction = pinnedEmojisForReaction,
       _pinnedEmojis = pinnedEmojis,
       _recentlyUsedEmojis = recentlyUsedEmojis,
       _mutedWords = mutedWords,
       _hardMutedWords = hardMutedWords,
       _mutedEmojis = mutedEmojis,
       _recentlyUsedUsers = recentlyUsedUsers,
       _hashtags = hashtags,
       _postFormHashtags = postFormHashtags;

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
  @JsonKey()
  final bool rememberRenoteVisibility;
  @override
  @JsonKey()
  final NoteVisibility defaultRenoteVisibility;
  @override
  @JsonKey()
  final bool defaultRenoteLocalOnly;
  @override
  final ReactionAcceptance? reactionAcceptance;
  @override
  @JsonKey()
  final NoteVisibility visibility;
  @override
  @JsonKey()
  final bool localOnly;
  @override
  @JsonKey()
  final NoteVisibility renoteVisibility;
  @override
  @JsonKey()
  final bool renoteLocalOnly;
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

  @override
  final String? defaultReaction;
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

  final List<String> _mutedEmojis;
  @override
  @JsonKey()
  List<String> get mutedEmojis {
    if (_mutedEmojis is EqualUnmodifiableListView) return _mutedEmojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mutedEmojis);
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
  @JsonKey()
  final bool postFormUseHashtags;
  final List<String> _postFormHashtags;
  @override
  @JsonKey()
  List<String> get postFormHashtags {
    if (_postFormHashtags is EqualUnmodifiableListView)
      return _postFormHashtags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postFormHashtags);
  }

  @override
  String toString() {
    return 'AccountSettings(keepCw: $keepCw, rememberNoteVisibility: $rememberNoteVisibility, defaultNoteVisibility: $defaultNoteVisibility, defaultNoteLocalOnly: $defaultNoteLocalOnly, rememberRenoteVisibility: $rememberRenoteVisibility, defaultRenoteVisibility: $defaultRenoteVisibility, defaultRenoteLocalOnly: $defaultRenoteLocalOnly, reactionAcceptance: $reactionAcceptance, visibility: $visibility, localOnly: $localOnly, renoteVisibility: $renoteVisibility, renoteLocalOnly: $renoteLocalOnly, pinnedEmojisForReaction: $pinnedEmojisForReaction, pinnedEmojis: $pinnedEmojis, recentlyUsedEmojis: $recentlyUsedEmojis, defaultReaction: $defaultReaction, uploadFolder: $uploadFolder, keepOriginalUploading: $keepOriginalUploading, keepOriginalFilename: $keepOriginalFilename, mutedWords: $mutedWords, hardMutedWords: $hardMutedWords, mutedEmojis: $mutedEmojis, recentlyUsedUsers: $recentlyUsedUsers, hashtags: $hashtags, postFormUseHashtags: $postFormUseHashtags, postFormHashtags: $postFormHashtags)';
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
            (identical(
                  other.rememberRenoteVisibility,
                  rememberRenoteVisibility,
                ) ||
                other.rememberRenoteVisibility == rememberRenoteVisibility) &&
            (identical(
                  other.defaultRenoteVisibility,
                  defaultRenoteVisibility,
                ) ||
                other.defaultRenoteVisibility == defaultRenoteVisibility) &&
            (identical(other.defaultRenoteLocalOnly, defaultRenoteLocalOnly) ||
                other.defaultRenoteLocalOnly == defaultRenoteLocalOnly) &&
            (identical(other.reactionAcceptance, reactionAcceptance) ||
                other.reactionAcceptance == reactionAcceptance) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.localOnly, localOnly) ||
                other.localOnly == localOnly) &&
            (identical(other.renoteVisibility, renoteVisibility) ||
                other.renoteVisibility == renoteVisibility) &&
            (identical(other.renoteLocalOnly, renoteLocalOnly) ||
                other.renoteLocalOnly == renoteLocalOnly) &&
            const DeepCollectionEquality().equals(
              other._pinnedEmojisForReaction,
              _pinnedEmojisForReaction,
            ) &&
            const DeepCollectionEquality().equals(
              other._pinnedEmojis,
              _pinnedEmojis,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentlyUsedEmojis,
              _recentlyUsedEmojis,
            ) &&
            (identical(other.defaultReaction, defaultReaction) ||
                other.defaultReaction == defaultReaction) &&
            (identical(other.uploadFolder, uploadFolder) ||
                other.uploadFolder == uploadFolder) &&
            (identical(other.keepOriginalUploading, keepOriginalUploading) ||
                other.keepOriginalUploading == keepOriginalUploading) &&
            (identical(other.keepOriginalFilename, keepOriginalFilename) ||
                other.keepOriginalFilename == keepOriginalFilename) &&
            const DeepCollectionEquality().equals(
              other._mutedWords,
              _mutedWords,
            ) &&
            const DeepCollectionEquality().equals(
              other._hardMutedWords,
              _hardMutedWords,
            ) &&
            const DeepCollectionEquality().equals(
              other._mutedEmojis,
              _mutedEmojis,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentlyUsedUsers,
              _recentlyUsedUsers,
            ) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags) &&
            (identical(other.postFormUseHashtags, postFormUseHashtags) ||
                other.postFormUseHashtags == postFormUseHashtags) &&
            const DeepCollectionEquality().equals(
              other._postFormHashtags,
              _postFormHashtags,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    keepCw,
    rememberNoteVisibility,
    defaultNoteVisibility,
    defaultNoteLocalOnly,
    rememberRenoteVisibility,
    defaultRenoteVisibility,
    defaultRenoteLocalOnly,
    reactionAcceptance,
    visibility,
    localOnly,
    renoteVisibility,
    renoteLocalOnly,
    const DeepCollectionEquality().hash(_pinnedEmojisForReaction),
    const DeepCollectionEquality().hash(_pinnedEmojis),
    const DeepCollectionEquality().hash(_recentlyUsedEmojis),
    defaultReaction,
    uploadFolder,
    keepOriginalUploading,
    keepOriginalFilename,
    const DeepCollectionEquality().hash(_mutedWords),
    const DeepCollectionEquality().hash(_hardMutedWords),
    const DeepCollectionEquality().hash(_mutedEmojis),
    const DeepCollectionEquality().hash(_recentlyUsedUsers),
    const DeepCollectionEquality().hash(_hashtags),
    postFormUseHashtags,
    const DeepCollectionEquality().hash(_postFormHashtags),
  ]);

  /// Create a copy of AccountSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSettingsImplCopyWith<_$AccountSettingsImpl> get copyWith =>
      __$$AccountSettingsImplCopyWithImpl<_$AccountSettingsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSettingsImplToJson(this);
  }
}

abstract class _AccountSettings implements AccountSettings {
  const factory _AccountSettings({
    final bool keepCw,
    final bool rememberNoteVisibility,
    final NoteVisibility defaultNoteVisibility,
    final bool defaultNoteLocalOnly,
    final bool rememberRenoteVisibility,
    final NoteVisibility defaultRenoteVisibility,
    final bool defaultRenoteLocalOnly,
    final ReactionAcceptance? reactionAcceptance,
    final NoteVisibility visibility,
    final bool localOnly,
    final NoteVisibility renoteVisibility,
    final bool renoteLocalOnly,
    final List<String> pinnedEmojisForReaction,
    final List<String> pinnedEmojis,
    final List<String> recentlyUsedEmojis,
    final String? defaultReaction,
    final String? uploadFolder,
    final bool keepOriginalUploading,
    final bool keepOriginalFilename,
    final List<MuteWord> mutedWords,
    final List<MuteWord> hardMutedWords,
    final List<String> mutedEmojis,
    final List<String> recentlyUsedUsers,
    final List<String> hashtags,
    final bool postFormUseHashtags,
    final List<String> postFormHashtags,
  }) = _$AccountSettingsImpl;

  factory _AccountSettings.fromJson(Map<String, dynamic> json) =
      _$AccountSettingsImpl.fromJson;

  // Privacy
  @override
  bool get keepCw;
  @override
  bool get rememberNoteVisibility;
  @override
  NoteVisibility get defaultNoteVisibility;
  @override
  bool get defaultNoteLocalOnly;
  @override
  bool get rememberRenoteVisibility;
  @override
  NoteVisibility get defaultRenoteVisibility;
  @override
  bool get defaultRenoteLocalOnly;
  @override
  ReactionAcceptance? get reactionAcceptance;
  @override
  NoteVisibility get visibility;
  @override
  bool get localOnly;
  @override
  NoteVisibility get renoteVisibility;
  @override
  bool get renoteLocalOnly; // EmojiPicker
  @override
  List<String> get pinnedEmojisForReaction;
  @override
  List<String> get pinnedEmojis;
  @override
  List<String> get recentlyUsedEmojis;
  @override
  String? get defaultReaction; // Drive
  @override
  String? get uploadFolder;
  @override
  bool get keepOriginalUploading;
  @override
  bool get keepOriginalFilename; // Mute
  @override
  List<MuteWord> get mutedWords;
  @override
  List<MuteWord> get hardMutedWords;
  @override
  List<String> get mutedEmojis; // UserSelectDialog
  @override
  List<String> get recentlyUsedUsers; // PostForm
  @override
  List<String> get hashtags;
  @override
  bool get postFormUseHashtags;
  @override
  List<String> get postFormHashtags;

  /// Create a copy of AccountSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSettingsImplCopyWith<_$AccountSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
