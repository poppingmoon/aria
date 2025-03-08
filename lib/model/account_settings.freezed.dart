// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountSettings {

// Privacy
 bool get keepCw; bool get rememberNoteVisibility; NoteVisibility get defaultNoteVisibility; bool get defaultNoteLocalOnly; bool get rememberRenoteVisibility; NoteVisibility get defaultRenoteVisibility; bool get defaultRenoteLocalOnly; ReactionAcceptance? get reactionAcceptance; NoteVisibility get visibility; bool get localOnly; NoteVisibility get renoteVisibility; bool get renoteLocalOnly;// EmojiPicker
 List<String> get pinnedEmojisForReaction; List<String> get pinnedEmojis; List<String> get recentlyUsedEmojis; String? get defaultReaction;// Drive
 String? get uploadFolder; bool get keepOriginalUploading; bool get keepOriginalFilename;// Mute
 List<MuteWord> get mutedWords; List<MuteWord> get hardMutedWords; List<String> get mutedEmojis;// UserSelectDialog
 List<String> get recentlyUsedUsers;// PostForm
 List<String> get hashtags; bool get postFormUseHashtags; List<String> get postFormHashtags;
/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSettingsCopyWith<AccountSettings> get copyWith => _$AccountSettingsCopyWithImpl<AccountSettings>(this as AccountSettings, _$identity);

  /// Serializes this AccountSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSettings&&(identical(other.keepCw, keepCw) || other.keepCw == keepCw)&&(identical(other.rememberNoteVisibility, rememberNoteVisibility) || other.rememberNoteVisibility == rememberNoteVisibility)&&(identical(other.defaultNoteVisibility, defaultNoteVisibility) || other.defaultNoteVisibility == defaultNoteVisibility)&&(identical(other.defaultNoteLocalOnly, defaultNoteLocalOnly) || other.defaultNoteLocalOnly == defaultNoteLocalOnly)&&(identical(other.rememberRenoteVisibility, rememberRenoteVisibility) || other.rememberRenoteVisibility == rememberRenoteVisibility)&&(identical(other.defaultRenoteVisibility, defaultRenoteVisibility) || other.defaultRenoteVisibility == defaultRenoteVisibility)&&(identical(other.defaultRenoteLocalOnly, defaultRenoteLocalOnly) || other.defaultRenoteLocalOnly == defaultRenoteLocalOnly)&&(identical(other.reactionAcceptance, reactionAcceptance) || other.reactionAcceptance == reactionAcceptance)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.localOnly, localOnly) || other.localOnly == localOnly)&&(identical(other.renoteVisibility, renoteVisibility) || other.renoteVisibility == renoteVisibility)&&(identical(other.renoteLocalOnly, renoteLocalOnly) || other.renoteLocalOnly == renoteLocalOnly)&&const DeepCollectionEquality().equals(other.pinnedEmojisForReaction, pinnedEmojisForReaction)&&const DeepCollectionEquality().equals(other.pinnedEmojis, pinnedEmojis)&&const DeepCollectionEquality().equals(other.recentlyUsedEmojis, recentlyUsedEmojis)&&(identical(other.defaultReaction, defaultReaction) || other.defaultReaction == defaultReaction)&&(identical(other.uploadFolder, uploadFolder) || other.uploadFolder == uploadFolder)&&(identical(other.keepOriginalUploading, keepOriginalUploading) || other.keepOriginalUploading == keepOriginalUploading)&&(identical(other.keepOriginalFilename, keepOriginalFilename) || other.keepOriginalFilename == keepOriginalFilename)&&const DeepCollectionEquality().equals(other.mutedWords, mutedWords)&&const DeepCollectionEquality().equals(other.hardMutedWords, hardMutedWords)&&const DeepCollectionEquality().equals(other.mutedEmojis, mutedEmojis)&&const DeepCollectionEquality().equals(other.recentlyUsedUsers, recentlyUsedUsers)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.postFormUseHashtags, postFormUseHashtags) || other.postFormUseHashtags == postFormUseHashtags)&&const DeepCollectionEquality().equals(other.postFormHashtags, postFormHashtags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,keepCw,rememberNoteVisibility,defaultNoteVisibility,defaultNoteLocalOnly,rememberRenoteVisibility,defaultRenoteVisibility,defaultRenoteLocalOnly,reactionAcceptance,visibility,localOnly,renoteVisibility,renoteLocalOnly,const DeepCollectionEquality().hash(pinnedEmojisForReaction),const DeepCollectionEquality().hash(pinnedEmojis),const DeepCollectionEquality().hash(recentlyUsedEmojis),defaultReaction,uploadFolder,keepOriginalUploading,keepOriginalFilename,const DeepCollectionEquality().hash(mutedWords),const DeepCollectionEquality().hash(hardMutedWords),const DeepCollectionEquality().hash(mutedEmojis),const DeepCollectionEquality().hash(recentlyUsedUsers),const DeepCollectionEquality().hash(hashtags),postFormUseHashtags,const DeepCollectionEquality().hash(postFormHashtags)]);

@override
String toString() {
  return 'AccountSettings(keepCw: $keepCw, rememberNoteVisibility: $rememberNoteVisibility, defaultNoteVisibility: $defaultNoteVisibility, defaultNoteLocalOnly: $defaultNoteLocalOnly, rememberRenoteVisibility: $rememberRenoteVisibility, defaultRenoteVisibility: $defaultRenoteVisibility, defaultRenoteLocalOnly: $defaultRenoteLocalOnly, reactionAcceptance: $reactionAcceptance, visibility: $visibility, localOnly: $localOnly, renoteVisibility: $renoteVisibility, renoteLocalOnly: $renoteLocalOnly, pinnedEmojisForReaction: $pinnedEmojisForReaction, pinnedEmojis: $pinnedEmojis, recentlyUsedEmojis: $recentlyUsedEmojis, defaultReaction: $defaultReaction, uploadFolder: $uploadFolder, keepOriginalUploading: $keepOriginalUploading, keepOriginalFilename: $keepOriginalFilename, mutedWords: $mutedWords, hardMutedWords: $hardMutedWords, mutedEmojis: $mutedEmojis, recentlyUsedUsers: $recentlyUsedUsers, hashtags: $hashtags, postFormUseHashtags: $postFormUseHashtags, postFormHashtags: $postFormHashtags)';
}


}

/// @nodoc
abstract mixin class $AccountSettingsCopyWith<$Res>  {
  factory $AccountSettingsCopyWith(AccountSettings value, $Res Function(AccountSettings) _then) = _$AccountSettingsCopyWithImpl;
@useResult
$Res call({
 bool keepCw, bool rememberNoteVisibility, NoteVisibility defaultNoteVisibility, bool defaultNoteLocalOnly, bool rememberRenoteVisibility, NoteVisibility defaultRenoteVisibility, bool defaultRenoteLocalOnly, ReactionAcceptance? reactionAcceptance, NoteVisibility visibility, bool localOnly, NoteVisibility renoteVisibility, bool renoteLocalOnly, List<String> pinnedEmojisForReaction, List<String> pinnedEmojis, List<String> recentlyUsedEmojis, String? defaultReaction, String? uploadFolder, bool keepOriginalUploading, bool keepOriginalFilename, List<MuteWord> mutedWords, List<MuteWord> hardMutedWords, List<String> mutedEmojis, List<String> recentlyUsedUsers, List<String> hashtags, bool postFormUseHashtags, List<String> postFormHashtags
});




}
/// @nodoc
class _$AccountSettingsCopyWithImpl<$Res>
    implements $AccountSettingsCopyWith<$Res> {
  _$AccountSettingsCopyWithImpl(this._self, this._then);

  final AccountSettings _self;
  final $Res Function(AccountSettings) _then;

/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keepCw = null,Object? rememberNoteVisibility = null,Object? defaultNoteVisibility = null,Object? defaultNoteLocalOnly = null,Object? rememberRenoteVisibility = null,Object? defaultRenoteVisibility = null,Object? defaultRenoteLocalOnly = null,Object? reactionAcceptance = freezed,Object? visibility = null,Object? localOnly = null,Object? renoteVisibility = null,Object? renoteLocalOnly = null,Object? pinnedEmojisForReaction = null,Object? pinnedEmojis = null,Object? recentlyUsedEmojis = null,Object? defaultReaction = freezed,Object? uploadFolder = freezed,Object? keepOriginalUploading = null,Object? keepOriginalFilename = null,Object? mutedWords = null,Object? hardMutedWords = null,Object? mutedEmojis = null,Object? recentlyUsedUsers = null,Object? hashtags = null,Object? postFormUseHashtags = null,Object? postFormHashtags = null,}) {
  return _then(_self.copyWith(
keepCw: null == keepCw ? _self.keepCw : keepCw // ignore: cast_nullable_to_non_nullable
as bool,rememberNoteVisibility: null == rememberNoteVisibility ? _self.rememberNoteVisibility : rememberNoteVisibility // ignore: cast_nullable_to_non_nullable
as bool,defaultNoteVisibility: null == defaultNoteVisibility ? _self.defaultNoteVisibility : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,defaultNoteLocalOnly: null == defaultNoteLocalOnly ? _self.defaultNoteLocalOnly : defaultNoteLocalOnly // ignore: cast_nullable_to_non_nullable
as bool,rememberRenoteVisibility: null == rememberRenoteVisibility ? _self.rememberRenoteVisibility : rememberRenoteVisibility // ignore: cast_nullable_to_non_nullable
as bool,defaultRenoteVisibility: null == defaultRenoteVisibility ? _self.defaultRenoteVisibility : defaultRenoteVisibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,defaultRenoteLocalOnly: null == defaultRenoteLocalOnly ? _self.defaultRenoteLocalOnly : defaultRenoteLocalOnly // ignore: cast_nullable_to_non_nullable
as bool,reactionAcceptance: freezed == reactionAcceptance ? _self.reactionAcceptance : reactionAcceptance // ignore: cast_nullable_to_non_nullable
as ReactionAcceptance?,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,localOnly: null == localOnly ? _self.localOnly : localOnly // ignore: cast_nullable_to_non_nullable
as bool,renoteVisibility: null == renoteVisibility ? _self.renoteVisibility : renoteVisibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,renoteLocalOnly: null == renoteLocalOnly ? _self.renoteLocalOnly : renoteLocalOnly // ignore: cast_nullable_to_non_nullable
as bool,pinnedEmojisForReaction: null == pinnedEmojisForReaction ? _self.pinnedEmojisForReaction : pinnedEmojisForReaction // ignore: cast_nullable_to_non_nullable
as List<String>,pinnedEmojis: null == pinnedEmojis ? _self.pinnedEmojis : pinnedEmojis // ignore: cast_nullable_to_non_nullable
as List<String>,recentlyUsedEmojis: null == recentlyUsedEmojis ? _self.recentlyUsedEmojis : recentlyUsedEmojis // ignore: cast_nullable_to_non_nullable
as List<String>,defaultReaction: freezed == defaultReaction ? _self.defaultReaction : defaultReaction // ignore: cast_nullable_to_non_nullable
as String?,uploadFolder: freezed == uploadFolder ? _self.uploadFolder : uploadFolder // ignore: cast_nullable_to_non_nullable
as String?,keepOriginalUploading: null == keepOriginalUploading ? _self.keepOriginalUploading : keepOriginalUploading // ignore: cast_nullable_to_non_nullable
as bool,keepOriginalFilename: null == keepOriginalFilename ? _self.keepOriginalFilename : keepOriginalFilename // ignore: cast_nullable_to_non_nullable
as bool,mutedWords: null == mutedWords ? _self.mutedWords : mutedWords // ignore: cast_nullable_to_non_nullable
as List<MuteWord>,hardMutedWords: null == hardMutedWords ? _self.hardMutedWords : hardMutedWords // ignore: cast_nullable_to_non_nullable
as List<MuteWord>,mutedEmojis: null == mutedEmojis ? _self.mutedEmojis : mutedEmojis // ignore: cast_nullable_to_non_nullable
as List<String>,recentlyUsedUsers: null == recentlyUsedUsers ? _self.recentlyUsedUsers : recentlyUsedUsers // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,postFormUseHashtags: null == postFormUseHashtags ? _self.postFormUseHashtags : postFormUseHashtags // ignore: cast_nullable_to_non_nullable
as bool,postFormHashtags: null == postFormHashtags ? _self.postFormHashtags : postFormHashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccountSettings implements AccountSettings {
  const _AccountSettings({this.keepCw = true, this.rememberNoteVisibility = false, this.defaultNoteVisibility = NoteVisibility.public, this.defaultNoteLocalOnly = false, this.rememberRenoteVisibility = false, this.defaultRenoteVisibility = NoteVisibility.public, this.defaultRenoteLocalOnly = false, this.reactionAcceptance, this.visibility = NoteVisibility.public, this.localOnly = false, this.renoteVisibility = NoteVisibility.public, this.renoteLocalOnly = false, final  List<String> pinnedEmojisForReaction = defaultPinnedEmojis, final  List<String> pinnedEmojis = defaultPinnedEmojis, final  List<String> recentlyUsedEmojis = const [], this.defaultReaction, this.uploadFolder, this.keepOriginalUploading = false, this.keepOriginalFilename = true, final  List<MuteWord> mutedWords = const [], final  List<MuteWord> hardMutedWords = const [], final  List<String> mutedEmojis = const [], final  List<String> recentlyUsedUsers = const [], final  List<String> hashtags = const [], this.postFormUseHashtags = false, final  List<String> postFormHashtags = const []}): _pinnedEmojisForReaction = pinnedEmojisForReaction,_pinnedEmojis = pinnedEmojis,_recentlyUsedEmojis = recentlyUsedEmojis,_mutedWords = mutedWords,_hardMutedWords = hardMutedWords,_mutedEmojis = mutedEmojis,_recentlyUsedUsers = recentlyUsedUsers,_hashtags = hashtags,_postFormHashtags = postFormHashtags;
  factory _AccountSettings.fromJson(Map<String, dynamic> json) => _$AccountSettingsFromJson(json);

// Privacy
@override@JsonKey() final  bool keepCw;
@override@JsonKey() final  bool rememberNoteVisibility;
@override@JsonKey() final  NoteVisibility defaultNoteVisibility;
@override@JsonKey() final  bool defaultNoteLocalOnly;
@override@JsonKey() final  bool rememberRenoteVisibility;
@override@JsonKey() final  NoteVisibility defaultRenoteVisibility;
@override@JsonKey() final  bool defaultRenoteLocalOnly;
@override final  ReactionAcceptance? reactionAcceptance;
@override@JsonKey() final  NoteVisibility visibility;
@override@JsonKey() final  bool localOnly;
@override@JsonKey() final  NoteVisibility renoteVisibility;
@override@JsonKey() final  bool renoteLocalOnly;
// EmojiPicker
 final  List<String> _pinnedEmojisForReaction;
// EmojiPicker
@override@JsonKey() List<String> get pinnedEmojisForReaction {
  if (_pinnedEmojisForReaction is EqualUnmodifiableListView) return _pinnedEmojisForReaction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pinnedEmojisForReaction);
}

 final  List<String> _pinnedEmojis;
@override@JsonKey() List<String> get pinnedEmojis {
  if (_pinnedEmojis is EqualUnmodifiableListView) return _pinnedEmojis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pinnedEmojis);
}

 final  List<String> _recentlyUsedEmojis;
@override@JsonKey() List<String> get recentlyUsedEmojis {
  if (_recentlyUsedEmojis is EqualUnmodifiableListView) return _recentlyUsedEmojis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentlyUsedEmojis);
}

@override final  String? defaultReaction;
// Drive
@override final  String? uploadFolder;
@override@JsonKey() final  bool keepOriginalUploading;
@override@JsonKey() final  bool keepOriginalFilename;
// Mute
 final  List<MuteWord> _mutedWords;
// Mute
@override@JsonKey() List<MuteWord> get mutedWords {
  if (_mutedWords is EqualUnmodifiableListView) return _mutedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedWords);
}

 final  List<MuteWord> _hardMutedWords;
@override@JsonKey() List<MuteWord> get hardMutedWords {
  if (_hardMutedWords is EqualUnmodifiableListView) return _hardMutedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hardMutedWords);
}

 final  List<String> _mutedEmojis;
@override@JsonKey() List<String> get mutedEmojis {
  if (_mutedEmojis is EqualUnmodifiableListView) return _mutedEmojis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedEmojis);
}

// UserSelectDialog
 final  List<String> _recentlyUsedUsers;
// UserSelectDialog
@override@JsonKey() List<String> get recentlyUsedUsers {
  if (_recentlyUsedUsers is EqualUnmodifiableListView) return _recentlyUsedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentlyUsedUsers);
}

// PostForm
 final  List<String> _hashtags;
// PostForm
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override@JsonKey() final  bool postFormUseHashtags;
 final  List<String> _postFormHashtags;
@override@JsonKey() List<String> get postFormHashtags {
  if (_postFormHashtags is EqualUnmodifiableListView) return _postFormHashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_postFormHashtags);
}


/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSettingsCopyWith<_AccountSettings> get copyWith => __$AccountSettingsCopyWithImpl<_AccountSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSettings&&(identical(other.keepCw, keepCw) || other.keepCw == keepCw)&&(identical(other.rememberNoteVisibility, rememberNoteVisibility) || other.rememberNoteVisibility == rememberNoteVisibility)&&(identical(other.defaultNoteVisibility, defaultNoteVisibility) || other.defaultNoteVisibility == defaultNoteVisibility)&&(identical(other.defaultNoteLocalOnly, defaultNoteLocalOnly) || other.defaultNoteLocalOnly == defaultNoteLocalOnly)&&(identical(other.rememberRenoteVisibility, rememberRenoteVisibility) || other.rememberRenoteVisibility == rememberRenoteVisibility)&&(identical(other.defaultRenoteVisibility, defaultRenoteVisibility) || other.defaultRenoteVisibility == defaultRenoteVisibility)&&(identical(other.defaultRenoteLocalOnly, defaultRenoteLocalOnly) || other.defaultRenoteLocalOnly == defaultRenoteLocalOnly)&&(identical(other.reactionAcceptance, reactionAcceptance) || other.reactionAcceptance == reactionAcceptance)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.localOnly, localOnly) || other.localOnly == localOnly)&&(identical(other.renoteVisibility, renoteVisibility) || other.renoteVisibility == renoteVisibility)&&(identical(other.renoteLocalOnly, renoteLocalOnly) || other.renoteLocalOnly == renoteLocalOnly)&&const DeepCollectionEquality().equals(other._pinnedEmojisForReaction, _pinnedEmojisForReaction)&&const DeepCollectionEquality().equals(other._pinnedEmojis, _pinnedEmojis)&&const DeepCollectionEquality().equals(other._recentlyUsedEmojis, _recentlyUsedEmojis)&&(identical(other.defaultReaction, defaultReaction) || other.defaultReaction == defaultReaction)&&(identical(other.uploadFolder, uploadFolder) || other.uploadFolder == uploadFolder)&&(identical(other.keepOriginalUploading, keepOriginalUploading) || other.keepOriginalUploading == keepOriginalUploading)&&(identical(other.keepOriginalFilename, keepOriginalFilename) || other.keepOriginalFilename == keepOriginalFilename)&&const DeepCollectionEquality().equals(other._mutedWords, _mutedWords)&&const DeepCollectionEquality().equals(other._hardMutedWords, _hardMutedWords)&&const DeepCollectionEquality().equals(other._mutedEmojis, _mutedEmojis)&&const DeepCollectionEquality().equals(other._recentlyUsedUsers, _recentlyUsedUsers)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.postFormUseHashtags, postFormUseHashtags) || other.postFormUseHashtags == postFormUseHashtags)&&const DeepCollectionEquality().equals(other._postFormHashtags, _postFormHashtags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,keepCw,rememberNoteVisibility,defaultNoteVisibility,defaultNoteLocalOnly,rememberRenoteVisibility,defaultRenoteVisibility,defaultRenoteLocalOnly,reactionAcceptance,visibility,localOnly,renoteVisibility,renoteLocalOnly,const DeepCollectionEquality().hash(_pinnedEmojisForReaction),const DeepCollectionEquality().hash(_pinnedEmojis),const DeepCollectionEquality().hash(_recentlyUsedEmojis),defaultReaction,uploadFolder,keepOriginalUploading,keepOriginalFilename,const DeepCollectionEquality().hash(_mutedWords),const DeepCollectionEquality().hash(_hardMutedWords),const DeepCollectionEquality().hash(_mutedEmojis),const DeepCollectionEquality().hash(_recentlyUsedUsers),const DeepCollectionEquality().hash(_hashtags),postFormUseHashtags,const DeepCollectionEquality().hash(_postFormHashtags)]);

@override
String toString() {
  return 'AccountSettings(keepCw: $keepCw, rememberNoteVisibility: $rememberNoteVisibility, defaultNoteVisibility: $defaultNoteVisibility, defaultNoteLocalOnly: $defaultNoteLocalOnly, rememberRenoteVisibility: $rememberRenoteVisibility, defaultRenoteVisibility: $defaultRenoteVisibility, defaultRenoteLocalOnly: $defaultRenoteLocalOnly, reactionAcceptance: $reactionAcceptance, visibility: $visibility, localOnly: $localOnly, renoteVisibility: $renoteVisibility, renoteLocalOnly: $renoteLocalOnly, pinnedEmojisForReaction: $pinnedEmojisForReaction, pinnedEmojis: $pinnedEmojis, recentlyUsedEmojis: $recentlyUsedEmojis, defaultReaction: $defaultReaction, uploadFolder: $uploadFolder, keepOriginalUploading: $keepOriginalUploading, keepOriginalFilename: $keepOriginalFilename, mutedWords: $mutedWords, hardMutedWords: $hardMutedWords, mutedEmojis: $mutedEmojis, recentlyUsedUsers: $recentlyUsedUsers, hashtags: $hashtags, postFormUseHashtags: $postFormUseHashtags, postFormHashtags: $postFormHashtags)';
}


}

/// @nodoc
abstract mixin class _$AccountSettingsCopyWith<$Res> implements $AccountSettingsCopyWith<$Res> {
  factory _$AccountSettingsCopyWith(_AccountSettings value, $Res Function(_AccountSettings) _then) = __$AccountSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool keepCw, bool rememberNoteVisibility, NoteVisibility defaultNoteVisibility, bool defaultNoteLocalOnly, bool rememberRenoteVisibility, NoteVisibility defaultRenoteVisibility, bool defaultRenoteLocalOnly, ReactionAcceptance? reactionAcceptance, NoteVisibility visibility, bool localOnly, NoteVisibility renoteVisibility, bool renoteLocalOnly, List<String> pinnedEmojisForReaction, List<String> pinnedEmojis, List<String> recentlyUsedEmojis, String? defaultReaction, String? uploadFolder, bool keepOriginalUploading, bool keepOriginalFilename, List<MuteWord> mutedWords, List<MuteWord> hardMutedWords, List<String> mutedEmojis, List<String> recentlyUsedUsers, List<String> hashtags, bool postFormUseHashtags, List<String> postFormHashtags
});




}
/// @nodoc
class __$AccountSettingsCopyWithImpl<$Res>
    implements _$AccountSettingsCopyWith<$Res> {
  __$AccountSettingsCopyWithImpl(this._self, this._then);

  final _AccountSettings _self;
  final $Res Function(_AccountSettings) _then;

/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keepCw = null,Object? rememberNoteVisibility = null,Object? defaultNoteVisibility = null,Object? defaultNoteLocalOnly = null,Object? rememberRenoteVisibility = null,Object? defaultRenoteVisibility = null,Object? defaultRenoteLocalOnly = null,Object? reactionAcceptance = freezed,Object? visibility = null,Object? localOnly = null,Object? renoteVisibility = null,Object? renoteLocalOnly = null,Object? pinnedEmojisForReaction = null,Object? pinnedEmojis = null,Object? recentlyUsedEmojis = null,Object? defaultReaction = freezed,Object? uploadFolder = freezed,Object? keepOriginalUploading = null,Object? keepOriginalFilename = null,Object? mutedWords = null,Object? hardMutedWords = null,Object? mutedEmojis = null,Object? recentlyUsedUsers = null,Object? hashtags = null,Object? postFormUseHashtags = null,Object? postFormHashtags = null,}) {
  return _then(_AccountSettings(
keepCw: null == keepCw ? _self.keepCw : keepCw // ignore: cast_nullable_to_non_nullable
as bool,rememberNoteVisibility: null == rememberNoteVisibility ? _self.rememberNoteVisibility : rememberNoteVisibility // ignore: cast_nullable_to_non_nullable
as bool,defaultNoteVisibility: null == defaultNoteVisibility ? _self.defaultNoteVisibility : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,defaultNoteLocalOnly: null == defaultNoteLocalOnly ? _self.defaultNoteLocalOnly : defaultNoteLocalOnly // ignore: cast_nullable_to_non_nullable
as bool,rememberRenoteVisibility: null == rememberRenoteVisibility ? _self.rememberRenoteVisibility : rememberRenoteVisibility // ignore: cast_nullable_to_non_nullable
as bool,defaultRenoteVisibility: null == defaultRenoteVisibility ? _self.defaultRenoteVisibility : defaultRenoteVisibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,defaultRenoteLocalOnly: null == defaultRenoteLocalOnly ? _self.defaultRenoteLocalOnly : defaultRenoteLocalOnly // ignore: cast_nullable_to_non_nullable
as bool,reactionAcceptance: freezed == reactionAcceptance ? _self.reactionAcceptance : reactionAcceptance // ignore: cast_nullable_to_non_nullable
as ReactionAcceptance?,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,localOnly: null == localOnly ? _self.localOnly : localOnly // ignore: cast_nullable_to_non_nullable
as bool,renoteVisibility: null == renoteVisibility ? _self.renoteVisibility : renoteVisibility // ignore: cast_nullable_to_non_nullable
as NoteVisibility,renoteLocalOnly: null == renoteLocalOnly ? _self.renoteLocalOnly : renoteLocalOnly // ignore: cast_nullable_to_non_nullable
as bool,pinnedEmojisForReaction: null == pinnedEmojisForReaction ? _self._pinnedEmojisForReaction : pinnedEmojisForReaction // ignore: cast_nullable_to_non_nullable
as List<String>,pinnedEmojis: null == pinnedEmojis ? _self._pinnedEmojis : pinnedEmojis // ignore: cast_nullable_to_non_nullable
as List<String>,recentlyUsedEmojis: null == recentlyUsedEmojis ? _self._recentlyUsedEmojis : recentlyUsedEmojis // ignore: cast_nullable_to_non_nullable
as List<String>,defaultReaction: freezed == defaultReaction ? _self.defaultReaction : defaultReaction // ignore: cast_nullable_to_non_nullable
as String?,uploadFolder: freezed == uploadFolder ? _self.uploadFolder : uploadFolder // ignore: cast_nullable_to_non_nullable
as String?,keepOriginalUploading: null == keepOriginalUploading ? _self.keepOriginalUploading : keepOriginalUploading // ignore: cast_nullable_to_non_nullable
as bool,keepOriginalFilename: null == keepOriginalFilename ? _self.keepOriginalFilename : keepOriginalFilename // ignore: cast_nullable_to_non_nullable
as bool,mutedWords: null == mutedWords ? _self._mutedWords : mutedWords // ignore: cast_nullable_to_non_nullable
as List<MuteWord>,hardMutedWords: null == hardMutedWords ? _self._hardMutedWords : hardMutedWords // ignore: cast_nullable_to_non_nullable
as List<MuteWord>,mutedEmojis: null == mutedEmojis ? _self._mutedEmojis : mutedEmojis // ignore: cast_nullable_to_non_nullable
as List<String>,recentlyUsedUsers: null == recentlyUsedUsers ? _self._recentlyUsedUsers : recentlyUsedUsers // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,postFormUseHashtags: null == postFormUseHashtags ? _self.postFormUseHashtags : postFormUseHashtags // ignore: cast_nullable_to_non_nullable
as bool,postFormHashtags: null == postFormHashtags ? _self._postFormHashtags : postFormHashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
