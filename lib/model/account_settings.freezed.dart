// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountSettings {


/// Create a copy of AccountSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSettingsCopyWith<AccountSettings> get copyWith => _$AccountSettingsCopyWithImpl<AccountSettings>(this as AccountSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AccountSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSettings&&(identical(other.keepCw, _this.keepCw) || other.keepCw == _this.keepCw)&&(identical(other.rememberNoteVisibility, _this.rememberNoteVisibility) || other.rememberNoteVisibility == _this.rememberNoteVisibility)&&(identical(other.defaultNoteVisibility, _this.defaultNoteVisibility) || other.defaultNoteVisibility == _this.defaultNoteVisibility)&&(identical(other.defaultNoteLocalOnly, _this.defaultNoteLocalOnly) || other.defaultNoteLocalOnly == _this.defaultNoteLocalOnly)&&(identical(other.rememberRenoteVisibility, _this.rememberRenoteVisibility) || other.rememberRenoteVisibility == _this.rememberRenoteVisibility)&&(identical(other.defaultRenoteVisibility, _this.defaultRenoteVisibility) || other.defaultRenoteVisibility == _this.defaultRenoteVisibility)&&(identical(other.defaultRenoteLocalOnly, _this.defaultRenoteLocalOnly) || other.defaultRenoteLocalOnly == _this.defaultRenoteLocalOnly)&&(identical(other.reactionAcceptance, _this.reactionAcceptance) || other.reactionAcceptance == _this.reactionAcceptance)&&(identical(other.visibility, _this.visibility) || other.visibility == _this.visibility)&&(identical(other.localOnly, _this.localOnly) || other.localOnly == _this.localOnly)&&(identical(other.renoteVisibility, _this.renoteVisibility) || other.renoteVisibility == _this.renoteVisibility)&&(identical(other.renoteLocalOnly, _this.renoteLocalOnly) || other.renoteLocalOnly == _this.renoteLocalOnly)&&const DeepCollectionEquality().equals(other.pinnedEmojisForReaction, _this.pinnedEmojisForReaction)&&const DeepCollectionEquality().equals(other.pinnedEmojis, _this.pinnedEmojis)&&const DeepCollectionEquality().equals(other.recentlyUsedEmojis, _this.recentlyUsedEmojis)&&(identical(other.defaultReaction, _this.defaultReaction) || other.defaultReaction == _this.defaultReaction)&&(identical(other.uploadFolder, _this.uploadFolder) || other.uploadFolder == _this.uploadFolder)&&(identical(other.keepOriginalUploading, _this.keepOriginalUploading) || other.keepOriginalUploading == _this.keepOriginalUploading)&&(identical(other.keepOriginalFilename, _this.keepOriginalFilename) || other.keepOriginalFilename == _this.keepOriginalFilename)&&const DeepCollectionEquality().equals(other.mutedWords, _this.mutedWords)&&const DeepCollectionEquality().equals(other.hardMutedWords, _this.hardMutedWords)&&const DeepCollectionEquality().equals(other.mutedEmojis, _this.mutedEmojis)&&const DeepCollectionEquality().equals(other.recentlyUsedUsers, _this.recentlyUsedUsers)&&const DeepCollectionEquality().equals(other.hashtags, _this.hashtags)&&const DeepCollectionEquality().equals(other.postFormHashtags, _this.postFormHashtags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AccountSettings;
  return Object.hashAll([runtimeType,_this.keepCw,_this.rememberNoteVisibility,_this.defaultNoteVisibility,_this.defaultNoteLocalOnly,_this.rememberRenoteVisibility,_this.defaultRenoteVisibility,_this.defaultRenoteLocalOnly,_this.reactionAcceptance,_this.visibility,_this.localOnly,_this.renoteVisibility,_this.renoteLocalOnly,const DeepCollectionEquality().hash(_this.pinnedEmojisForReaction),const DeepCollectionEquality().hash(_this.pinnedEmojis),const DeepCollectionEquality().hash(_this.recentlyUsedEmojis),_this.defaultReaction,_this.uploadFolder,_this.keepOriginalUploading,_this.keepOriginalFilename,const DeepCollectionEquality().hash(_this.mutedWords),const DeepCollectionEquality().hash(_this.hardMutedWords),const DeepCollectionEquality().hash(_this.mutedEmojis),const DeepCollectionEquality().hash(_this.recentlyUsedUsers),const DeepCollectionEquality().hash(_this.hashtags),const DeepCollectionEquality().hash(_this.postFormHashtags)]);
}

@override
String toString() {
  final _this = this as AccountSettings;
  return 'AccountSettings(keepCw: ${_this.keepCw}, rememberNoteVisibility: ${_this.rememberNoteVisibility}, defaultNoteVisibility: ${_this.defaultNoteVisibility}, defaultNoteLocalOnly: ${_this.defaultNoteLocalOnly}, rememberRenoteVisibility: ${_this.rememberRenoteVisibility}, defaultRenoteVisibility: ${_this.defaultRenoteVisibility}, defaultRenoteLocalOnly: ${_this.defaultRenoteLocalOnly}, reactionAcceptance: ${_this.reactionAcceptance}, visibility: ${_this.visibility}, localOnly: ${_this.localOnly}, renoteVisibility: ${_this.renoteVisibility}, renoteLocalOnly: ${_this.renoteLocalOnly}, pinnedEmojisForReaction: ${_this.pinnedEmojisForReaction}, pinnedEmojis: ${_this.pinnedEmojis}, recentlyUsedEmojis: ${_this.recentlyUsedEmojis}, defaultReaction: ${_this.defaultReaction}, uploadFolder: ${_this.uploadFolder}, keepOriginalUploading: ${_this.keepOriginalUploading}, keepOriginalFilename: ${_this.keepOriginalFilename}, mutedWords: ${_this.mutedWords}, hardMutedWords: ${_this.hardMutedWords}, mutedEmojis: ${_this.mutedEmojis}, recentlyUsedUsers: ${_this.recentlyUsedUsers}, hashtags: ${_this.hashtags}, postFormHashtags: ${_this.postFormHashtags})';
}


}

/// @nodoc
abstract mixin class $AccountSettingsCopyWith<$Res>  {
  factory $AccountSettingsCopyWith(AccountSettings value, $Res Function(AccountSettings) _then) = _$AccountSettingsCopyWithImpl;
@useResult
$Res call({
 bool keepCw, bool rememberNoteVisibility, NoteVisibility defaultNoteVisibility, bool defaultNoteLocalOnly, bool rememberRenoteVisibility, NoteVisibility defaultRenoteVisibility, bool defaultRenoteLocalOnly, ReactionAcceptance? reactionAcceptance, NoteVisibility visibility, bool localOnly, NoteVisibility renoteVisibility, bool renoteLocalOnly, List<String> pinnedEmojisForReaction, List<String> pinnedEmojis, List<String> recentlyUsedEmojis, String? defaultReaction, String? uploadFolder, bool keepOriginalUploading, bool keepOriginalFilename, List<MuteWord> mutedWords, List<MuteWord> hardMutedWords, List<String> mutedEmojis, List<String> recentlyUsedUsers, List<String> hashtags, List<String> postFormHashtags
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
@pragma('vm:prefer-inline') @override $Res call({Object? keepCw = null,Object? rememberNoteVisibility = null,Object? defaultNoteVisibility = null,Object? defaultNoteLocalOnly = null,Object? rememberRenoteVisibility = null,Object? defaultRenoteVisibility = null,Object? defaultRenoteLocalOnly = null,Object? reactionAcceptance = freezed,Object? visibility = null,Object? localOnly = null,Object? renoteVisibility = null,Object? renoteLocalOnly = null,Object? pinnedEmojisForReaction = null,Object? pinnedEmojis = null,Object? recentlyUsedEmojis = null,Object? defaultReaction = freezed,Object? uploadFolder = freezed,Object? keepOriginalUploading = null,Object? keepOriginalFilename = null,Object? mutedWords = null,Object? hardMutedWords = null,Object? mutedEmojis = null,Object? recentlyUsedUsers = null,Object? hashtags = null,Object? postFormHashtags = null,}) {
  return _then(AccountSettings(
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
as List<String>,postFormHashtags: null == postFormHashtags ? _self.postFormHashtags : postFormHashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}



// dart format on
