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


/// Adds pattern-matching-related methods to [AccountSettings].
extension AccountSettingsPatterns on AccountSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSettings value)  $default,){
final _that = this;
switch (_that) {
case _AccountSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool keepCw,  bool rememberNoteVisibility,  NoteVisibility defaultNoteVisibility,  bool defaultNoteLocalOnly,  bool rememberRenoteVisibility,  NoteVisibility defaultRenoteVisibility,  bool defaultRenoteLocalOnly,  ReactionAcceptance? reactionAcceptance,  NoteVisibility visibility,  bool localOnly,  NoteVisibility renoteVisibility,  bool renoteLocalOnly,  List<String> pinnedEmojisForReaction,  List<String> pinnedEmojis,  List<String> recentlyUsedEmojis,  String? defaultReaction,  String? uploadFolder,  bool keepOriginalUploading,  bool keepOriginalFilename,  List<MuteWord> mutedWords,  List<MuteWord> hardMutedWords,  List<String> mutedEmojis,  List<String> recentlyUsedUsers,  List<String> hashtags,  List<String> postFormHashtags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
return $default(_that.keepCw,_that.rememberNoteVisibility,_that.defaultNoteVisibility,_that.defaultNoteLocalOnly,_that.rememberRenoteVisibility,_that.defaultRenoteVisibility,_that.defaultRenoteLocalOnly,_that.reactionAcceptance,_that.visibility,_that.localOnly,_that.renoteVisibility,_that.renoteLocalOnly,_that.pinnedEmojisForReaction,_that.pinnedEmojis,_that.recentlyUsedEmojis,_that.defaultReaction,_that.uploadFolder,_that.keepOriginalUploading,_that.keepOriginalFilename,_that.mutedWords,_that.hardMutedWords,_that.mutedEmojis,_that.recentlyUsedUsers,_that.hashtags,_that.postFormHashtags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool keepCw,  bool rememberNoteVisibility,  NoteVisibility defaultNoteVisibility,  bool defaultNoteLocalOnly,  bool rememberRenoteVisibility,  NoteVisibility defaultRenoteVisibility,  bool defaultRenoteLocalOnly,  ReactionAcceptance? reactionAcceptance,  NoteVisibility visibility,  bool localOnly,  NoteVisibility renoteVisibility,  bool renoteLocalOnly,  List<String> pinnedEmojisForReaction,  List<String> pinnedEmojis,  List<String> recentlyUsedEmojis,  String? defaultReaction,  String? uploadFolder,  bool keepOriginalUploading,  bool keepOriginalFilename,  List<MuteWord> mutedWords,  List<MuteWord> hardMutedWords,  List<String> mutedEmojis,  List<String> recentlyUsedUsers,  List<String> hashtags,  List<String> postFormHashtags)  $default,) {final _that = this;
switch (_that) {
case _AccountSettings():
return $default(_that.keepCw,_that.rememberNoteVisibility,_that.defaultNoteVisibility,_that.defaultNoteLocalOnly,_that.rememberRenoteVisibility,_that.defaultRenoteVisibility,_that.defaultRenoteLocalOnly,_that.reactionAcceptance,_that.visibility,_that.localOnly,_that.renoteVisibility,_that.renoteLocalOnly,_that.pinnedEmojisForReaction,_that.pinnedEmojis,_that.recentlyUsedEmojis,_that.defaultReaction,_that.uploadFolder,_that.keepOriginalUploading,_that.keepOriginalFilename,_that.mutedWords,_that.hardMutedWords,_that.mutedEmojis,_that.recentlyUsedUsers,_that.hashtags,_that.postFormHashtags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool keepCw,  bool rememberNoteVisibility,  NoteVisibility defaultNoteVisibility,  bool defaultNoteLocalOnly,  bool rememberRenoteVisibility,  NoteVisibility defaultRenoteVisibility,  bool defaultRenoteLocalOnly,  ReactionAcceptance? reactionAcceptance,  NoteVisibility visibility,  bool localOnly,  NoteVisibility renoteVisibility,  bool renoteLocalOnly,  List<String> pinnedEmojisForReaction,  List<String> pinnedEmojis,  List<String> recentlyUsedEmojis,  String? defaultReaction,  String? uploadFolder,  bool keepOriginalUploading,  bool keepOriginalFilename,  List<MuteWord> mutedWords,  List<MuteWord> hardMutedWords,  List<String> mutedEmojis,  List<String> recentlyUsedUsers,  List<String> hashtags,  List<String> postFormHashtags)?  $default,) {final _that = this;
switch (_that) {
case _AccountSettings() when $default != null:
return $default(_that.keepCw,_that.rememberNoteVisibility,_that.defaultNoteVisibility,_that.defaultNoteLocalOnly,_that.rememberRenoteVisibility,_that.defaultRenoteVisibility,_that.defaultRenoteLocalOnly,_that.reactionAcceptance,_that.visibility,_that.localOnly,_that.renoteVisibility,_that.renoteLocalOnly,_that.pinnedEmojisForReaction,_that.pinnedEmojis,_that.recentlyUsedEmojis,_that.defaultReaction,_that.uploadFolder,_that.keepOriginalUploading,_that.keepOriginalFilename,_that.mutedWords,_that.hardMutedWords,_that.mutedEmojis,_that.recentlyUsedUsers,_that.hashtags,_that.postFormHashtags);case _:
  return null;

}
}

}

/// @nodoc


class _AccountSettings extends AccountSettings {
  const _AccountSettings({this.keepCw = true, this.rememberNoteVisibility = false, this.defaultNoteVisibility = NoteVisibility.public, this.defaultNoteLocalOnly = false, this.rememberRenoteVisibility = false, this.defaultRenoteVisibility = NoteVisibility.public, this.defaultRenoteLocalOnly = false, this.reactionAcceptance, this.visibility = NoteVisibility.public, this.localOnly = false, this.renoteVisibility = NoteVisibility.public, this.renoteLocalOnly = false,  List<String> pinnedEmojisForReaction = defaultPinnedEmojis,  List<String> pinnedEmojis = defaultPinnedEmojis,  List<String> recentlyUsedEmojis = const [], this.defaultReaction, this.uploadFolder, this.keepOriginalUploading = false, this.keepOriginalFilename = true,  List<MuteWord> mutedWords = const [],  List<MuteWord> hardMutedWords = const [],  List<String> mutedEmojis = const [],  List<String> recentlyUsedUsers = const [],  List<String> hashtags = const [],  List<String> postFormHashtags = const []}): _pinnedEmojisForReaction = pinnedEmojisForReaction,_pinnedEmojis = pinnedEmojis,_recentlyUsedEmojis = recentlyUsedEmojis,_mutedWords = mutedWords,_hardMutedWords = hardMutedWords,_mutedEmojis = mutedEmojis,_recentlyUsedUsers = recentlyUsedUsers,_hashtags = hashtags,_postFormHashtags = postFormHashtags,super(keepCw: keepCw, rememberNoteVisibility: rememberNoteVisibility, defaultNoteVisibility: defaultNoteVisibility, defaultNoteLocalOnly: defaultNoteLocalOnly, rememberRenoteVisibility: rememberRenoteVisibility, defaultRenoteVisibility: defaultRenoteVisibility, defaultRenoteLocalOnly: defaultRenoteLocalOnly, reactionAcceptance: reactionAcceptance, visibility: visibility, localOnly: localOnly, renoteVisibility: renoteVisibility, renoteLocalOnly: renoteLocalOnly, pinnedEmojisForReaction: pinnedEmojisForReaction, pinnedEmojis: pinnedEmojis, recentlyUsedEmojis: recentlyUsedEmojis, defaultReaction: defaultReaction, uploadFolder: uploadFolder, keepOriginalUploading: keepOriginalUploading, keepOriginalFilename: keepOriginalFilename, mutedWords: mutedWords, hardMutedWords: hardMutedWords, mutedEmojis: mutedEmojis, recentlyUsedUsers: recentlyUsedUsers, hashtags: hashtags, postFormHashtags: postFormHashtags);
  

@override final  bool keepCw;
@override final  bool rememberNoteVisibility;
@override final  NoteVisibility defaultNoteVisibility;
@override final  bool defaultNoteLocalOnly;
@override final  bool rememberRenoteVisibility;
@override final  NoteVisibility defaultRenoteVisibility;
@override final  bool defaultRenoteLocalOnly;
@override final  ReactionAcceptance? reactionAcceptance;
@override final  NoteVisibility visibility;
@override final  bool localOnly;
@override final  NoteVisibility renoteVisibility;
@override final  bool renoteLocalOnly;
 final  List<String> _pinnedEmojisForReaction;
@override List<String> get pinnedEmojisForReaction {
  if (_pinnedEmojisForReaction is EqualUnmodifiableListView) return _pinnedEmojisForReaction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pinnedEmojisForReaction);
}

 final  List<String> _pinnedEmojis;
@override List<String> get pinnedEmojis {
  if (_pinnedEmojis is EqualUnmodifiableListView) return _pinnedEmojis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pinnedEmojis);
}

 final  List<String> _recentlyUsedEmojis;
@override List<String> get recentlyUsedEmojis {
  if (_recentlyUsedEmojis is EqualUnmodifiableListView) return _recentlyUsedEmojis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentlyUsedEmojis);
}

@override final  String? defaultReaction;
@override final  String? uploadFolder;
@override final  bool keepOriginalUploading;
@override final  bool keepOriginalFilename;
 final  List<MuteWord> _mutedWords;
@override List<MuteWord> get mutedWords {
  if (_mutedWords is EqualUnmodifiableListView) return _mutedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedWords);
}

 final  List<MuteWord> _hardMutedWords;
@override List<MuteWord> get hardMutedWords {
  if (_hardMutedWords is EqualUnmodifiableListView) return _hardMutedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hardMutedWords);
}

 final  List<String> _mutedEmojis;
@override List<String> get mutedEmojis {
  if (_mutedEmojis is EqualUnmodifiableListView) return _mutedEmojis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedEmojis);
}

 final  List<String> _recentlyUsedUsers;
@override List<String> get recentlyUsedUsers {
  if (_recentlyUsedUsers is EqualUnmodifiableListView) return _recentlyUsedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentlyUsedUsers);
}

 final  List<String> _hashtags;
@override List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

 final  List<String> _postFormHashtags;
@override List<String> get postFormHashtags {
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
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSettings&&(identical(other.keepCw, keepCw) || other.keepCw == keepCw)&&(identical(other.rememberNoteVisibility, rememberNoteVisibility) || other.rememberNoteVisibility == rememberNoteVisibility)&&(identical(other.defaultNoteVisibility, defaultNoteVisibility) || other.defaultNoteVisibility == defaultNoteVisibility)&&(identical(other.defaultNoteLocalOnly, defaultNoteLocalOnly) || other.defaultNoteLocalOnly == defaultNoteLocalOnly)&&(identical(other.rememberRenoteVisibility, rememberRenoteVisibility) || other.rememberRenoteVisibility == rememberRenoteVisibility)&&(identical(other.defaultRenoteVisibility, defaultRenoteVisibility) || other.defaultRenoteVisibility == defaultRenoteVisibility)&&(identical(other.defaultRenoteLocalOnly, defaultRenoteLocalOnly) || other.defaultRenoteLocalOnly == defaultRenoteLocalOnly)&&(identical(other.reactionAcceptance, reactionAcceptance) || other.reactionAcceptance == reactionAcceptance)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.localOnly, localOnly) || other.localOnly == localOnly)&&(identical(other.renoteVisibility, renoteVisibility) || other.renoteVisibility == renoteVisibility)&&(identical(other.renoteLocalOnly, renoteLocalOnly) || other.renoteLocalOnly == renoteLocalOnly)&&const DeepCollectionEquality().equals(other.pinnedEmojisForReaction, _pinnedEmojisForReaction)&&const DeepCollectionEquality().equals(other.pinnedEmojis, _pinnedEmojis)&&const DeepCollectionEquality().equals(other.recentlyUsedEmojis, _recentlyUsedEmojis)&&(identical(other.defaultReaction, defaultReaction) || other.defaultReaction == defaultReaction)&&(identical(other.uploadFolder, uploadFolder) || other.uploadFolder == uploadFolder)&&(identical(other.keepOriginalUploading, keepOriginalUploading) || other.keepOriginalUploading == keepOriginalUploading)&&(identical(other.keepOriginalFilename, keepOriginalFilename) || other.keepOriginalFilename == keepOriginalFilename)&&const DeepCollectionEquality().equals(other.mutedWords, _mutedWords)&&const DeepCollectionEquality().equals(other.hardMutedWords, _hardMutedWords)&&const DeepCollectionEquality().equals(other.mutedEmojis, _mutedEmojis)&&const DeepCollectionEquality().equals(other.recentlyUsedUsers, _recentlyUsedUsers)&&const DeepCollectionEquality().equals(other.hashtags, _hashtags)&&const DeepCollectionEquality().equals(other.postFormHashtags, _postFormHashtags));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,keepCw,rememberNoteVisibility,defaultNoteVisibility,defaultNoteLocalOnly,rememberRenoteVisibility,defaultRenoteVisibility,defaultRenoteLocalOnly,reactionAcceptance,visibility,localOnly,renoteVisibility,renoteLocalOnly,const DeepCollectionEquality().hash(_pinnedEmojisForReaction),const DeepCollectionEquality().hash(_pinnedEmojis),const DeepCollectionEquality().hash(_recentlyUsedEmojis),defaultReaction,uploadFolder,keepOriginalUploading,keepOriginalFilename,const DeepCollectionEquality().hash(_mutedWords),const DeepCollectionEquality().hash(_hardMutedWords),const DeepCollectionEquality().hash(_mutedEmojis),const DeepCollectionEquality().hash(_recentlyUsedUsers),const DeepCollectionEquality().hash(_hashtags),const DeepCollectionEquality().hash(_postFormHashtags)]);
}

@override
String toString() {
    return 'AccountSettings(keepCw: $keepCw, rememberNoteVisibility: $rememberNoteVisibility, defaultNoteVisibility: $defaultNoteVisibility, defaultNoteLocalOnly: $defaultNoteLocalOnly, rememberRenoteVisibility: $rememberRenoteVisibility, defaultRenoteVisibility: $defaultRenoteVisibility, defaultRenoteLocalOnly: $defaultRenoteLocalOnly, reactionAcceptance: $reactionAcceptance, visibility: $visibility, localOnly: $localOnly, renoteVisibility: $renoteVisibility, renoteLocalOnly: $renoteLocalOnly, pinnedEmojisForReaction: $pinnedEmojisForReaction, pinnedEmojis: $pinnedEmojis, recentlyUsedEmojis: $recentlyUsedEmojis, defaultReaction: $defaultReaction, uploadFolder: $uploadFolder, keepOriginalUploading: $keepOriginalUploading, keepOriginalFilename: $keepOriginalFilename, mutedWords: $mutedWords, hardMutedWords: $hardMutedWords, mutedEmojis: $mutedEmojis, recentlyUsedUsers: $recentlyUsedUsers, hashtags: $hashtags, postFormHashtags: $postFormHashtags)';
}


}

/// @nodoc
abstract mixin class _$AccountSettingsCopyWith<$Res> implements $AccountSettingsCopyWith<$Res> {
  factory _$AccountSettingsCopyWith(_AccountSettings value, $Res Function(_AccountSettings) _then) = __$AccountSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool keepCw, bool rememberNoteVisibility, NoteVisibility defaultNoteVisibility, bool defaultNoteLocalOnly, bool rememberRenoteVisibility, NoteVisibility defaultRenoteVisibility, bool defaultRenoteLocalOnly, ReactionAcceptance? reactionAcceptance, NoteVisibility visibility, bool localOnly, NoteVisibility renoteVisibility, bool renoteLocalOnly, List<String> pinnedEmojisForReaction, List<String> pinnedEmojis, List<String> recentlyUsedEmojis, String? defaultReaction, String? uploadFolder, bool keepOriginalUploading, bool keepOriginalFilename, List<MuteWord> mutedWords, List<MuteWord> hardMutedWords, List<String> mutedEmojis, List<String> recentlyUsedUsers, List<String> hashtags, List<String> postFormHashtags
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
@override @pragma('vm:prefer-inline') $Res call({Object? keepCw = null,Object? rememberNoteVisibility = null,Object? defaultNoteVisibility = null,Object? defaultNoteLocalOnly = null,Object? rememberRenoteVisibility = null,Object? defaultRenoteVisibility = null,Object? defaultRenoteLocalOnly = null,Object? reactionAcceptance = freezed,Object? visibility = null,Object? localOnly = null,Object? renoteVisibility = null,Object? renoteLocalOnly = null,Object? pinnedEmojisForReaction = null,Object? pinnedEmojis = null,Object? recentlyUsedEmojis = null,Object? defaultReaction = freezed,Object? uploadFolder = freezed,Object? keepOriginalUploading = null,Object? keepOriginalFilename = null,Object? mutedWords = null,Object? hardMutedWords = null,Object? mutedEmojis = null,Object? recentlyUsedUsers = null,Object? hashtags = null,Object? postFormHashtags = null,}) {
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
as List<String>,postFormHashtags: null == postFormHashtags ? _self._postFormHashtags : postFormHashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
