// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'antenna_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AntennaSettings {


/// Create a copy of AntennaSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AntennaSettingsCopyWith<AntennaSettings> get copyWith => _$AntennaSettingsCopyWithImpl<AntennaSettings>(this as AntennaSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AntennaSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AntennaSettings&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.src, _this.src) || other.src == _this.src)&&(identical(other.userListId, _this.userListId) || other.userListId == _this.userListId)&&const DeepCollectionEquality().equals(other.users, _this.users)&&(identical(other.withReplies, _this.withReplies) || other.withReplies == _this.withReplies)&&const DeepCollectionEquality().equals(other.keywords, _this.keywords)&&const DeepCollectionEquality().equals(other.excludeKeywords, _this.excludeKeywords)&&(identical(other.localOnly, _this.localOnly) || other.localOnly == _this.localOnly)&&(identical(other.caseSensitive, _this.caseSensitive) || other.caseSensitive == _this.caseSensitive)&&(identical(other.withFile, _this.withFile) || other.withFile == _this.withFile)&&(identical(other.excludeBots, _this.excludeBots) || other.excludeBots == _this.excludeBots)&&(identical(other.excludeNotesInSensitiveChannel, _this.excludeNotesInSensitiveChannel) || other.excludeNotesInSensitiveChannel == _this.excludeNotesInSensitiveChannel));
}


@override
int get hashCode {
  final _this = this as AntennaSettings;
  return Object.hash(runtimeType,_this.name,_this.src,_this.userListId,const DeepCollectionEquality().hash(_this.users),_this.withReplies,const DeepCollectionEquality().hash(_this.keywords),const DeepCollectionEquality().hash(_this.excludeKeywords),_this.localOnly,_this.caseSensitive,_this.withFile,_this.excludeBots,_this.excludeNotesInSensitiveChannel);
}

@override
String toString() {
  final _this = this as AntennaSettings;
  return 'AntennaSettings(name: ${_this.name}, src: ${_this.src}, userListId: ${_this.userListId}, users: ${_this.users}, withReplies: ${_this.withReplies}, keywords: ${_this.keywords}, excludeKeywords: ${_this.excludeKeywords}, localOnly: ${_this.localOnly}, caseSensitive: ${_this.caseSensitive}, withFile: ${_this.withFile}, excludeBots: ${_this.excludeBots}, excludeNotesInSensitiveChannel: ${_this.excludeNotesInSensitiveChannel})';
}


}

/// @nodoc
abstract mixin class $AntennaSettingsCopyWith<$Res>  {
  factory $AntennaSettingsCopyWith(AntennaSettings value, $Res Function(AntennaSettings) _then) = _$AntennaSettingsCopyWithImpl;
@useResult
$Res call({
 String? name, AntennaSource? src, String? userListId, List<String>? users, bool? withReplies, List<List<String>>? keywords, List<List<String>>? excludeKeywords, bool? localOnly, bool? caseSensitive, bool? withFile, bool? excludeBots, bool? excludeNotesInSensitiveChannel
});




}
/// @nodoc
class _$AntennaSettingsCopyWithImpl<$Res>
    implements $AntennaSettingsCopyWith<$Res> {
  _$AntennaSettingsCopyWithImpl(this._self, this._then);

  final AntennaSettings _self;
  final $Res Function(AntennaSettings) _then;

/// Create a copy of AntennaSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? src = freezed,Object? userListId = freezed,Object? users = freezed,Object? withReplies = freezed,Object? keywords = freezed,Object? excludeKeywords = freezed,Object? localOnly = freezed,Object? caseSensitive = freezed,Object? withFile = freezed,Object? excludeBots = freezed,Object? excludeNotesInSensitiveChannel = freezed,}) {
  return _then(AntennaSettings(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,src: freezed == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as AntennaSource?,userListId: freezed == userListId ? _self.userListId : userListId // ignore: cast_nullable_to_non_nullable
as String?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<String>?,withReplies: freezed == withReplies ? _self.withReplies : withReplies // ignore: cast_nullable_to_non_nullable
as bool?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<List<String>>?,excludeKeywords: freezed == excludeKeywords ? _self.excludeKeywords : excludeKeywords // ignore: cast_nullable_to_non_nullable
as List<List<String>>?,localOnly: freezed == localOnly ? _self.localOnly : localOnly // ignore: cast_nullable_to_non_nullable
as bool?,caseSensitive: freezed == caseSensitive ? _self.caseSensitive : caseSensitive // ignore: cast_nullable_to_non_nullable
as bool?,withFile: freezed == withFile ? _self.withFile : withFile // ignore: cast_nullable_to_non_nullable
as bool?,excludeBots: freezed == excludeBots ? _self.excludeBots : excludeBots // ignore: cast_nullable_to_non_nullable
as bool?,excludeNotesInSensitiveChannel: freezed == excludeNotesInSensitiveChannel ? _self.excludeNotesInSensitiveChannel : excludeNotesInSensitiveChannel // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AntennaSettings].
extension AntennaSettingsPatterns on AntennaSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AntennaSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AntennaSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AntennaSettings value)  $default,){
final _that = this;
switch (_that) {
case _AntennaSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AntennaSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AntennaSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  AntennaSource? src,  String? userListId,  List<String>? users,  bool? withReplies,  List<List<String>>? keywords,  List<List<String>>? excludeKeywords,  bool? localOnly,  bool? caseSensitive,  bool? withFile,  bool? excludeBots,  bool? excludeNotesInSensitiveChannel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AntennaSettings() when $default != null:
return $default(_that.name,_that.src,_that.userListId,_that.users,_that.withReplies,_that.keywords,_that.excludeKeywords,_that.localOnly,_that.caseSensitive,_that.withFile,_that.excludeBots,_that.excludeNotesInSensitiveChannel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  AntennaSource? src,  String? userListId,  List<String>? users,  bool? withReplies,  List<List<String>>? keywords,  List<List<String>>? excludeKeywords,  bool? localOnly,  bool? caseSensitive,  bool? withFile,  bool? excludeBots,  bool? excludeNotesInSensitiveChannel)  $default,) {final _that = this;
switch (_that) {
case _AntennaSettings():
return $default(_that.name,_that.src,_that.userListId,_that.users,_that.withReplies,_that.keywords,_that.excludeKeywords,_that.localOnly,_that.caseSensitive,_that.withFile,_that.excludeBots,_that.excludeNotesInSensitiveChannel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  AntennaSource? src,  String? userListId,  List<String>? users,  bool? withReplies,  List<List<String>>? keywords,  List<List<String>>? excludeKeywords,  bool? localOnly,  bool? caseSensitive,  bool? withFile,  bool? excludeBots,  bool? excludeNotesInSensitiveChannel)?  $default,) {final _that = this;
switch (_that) {
case _AntennaSettings() when $default != null:
return $default(_that.name,_that.src,_that.userListId,_that.users,_that.withReplies,_that.keywords,_that.excludeKeywords,_that.localOnly,_that.caseSensitive,_that.withFile,_that.excludeBots,_that.excludeNotesInSensitiveChannel);case _:
  return null;

}
}

}

/// @nodoc


class _AntennaSettings extends AntennaSettings {
  const _AntennaSettings({this.name, this.src, this.userListId,  List<String>? users, this.withReplies,  List<List<String>>? keywords,  List<List<String>>? excludeKeywords, this.localOnly, this.caseSensitive, this.withFile, this.excludeBots, this.excludeNotesInSensitiveChannel}): _users = users,_keywords = keywords,_excludeKeywords = excludeKeywords,super(name: name, src: src, userListId: userListId, users: users, withReplies: withReplies, keywords: keywords, excludeKeywords: excludeKeywords, localOnly: localOnly, caseSensitive: caseSensitive, withFile: withFile, excludeBots: excludeBots, excludeNotesInSensitiveChannel: excludeNotesInSensitiveChannel);
  

@override final  String? name;
@override final  AntennaSource? src;
@override final  String? userListId;
 final  List<String>? _users;
@override List<String>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? withReplies;
 final  List<List<String>>? _keywords;
@override List<List<String>>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<List<String>>? _excludeKeywords;
@override List<List<String>>? get excludeKeywords {
  final value = _excludeKeywords;
  if (value == null) return null;
  if (_excludeKeywords is EqualUnmodifiableListView) return _excludeKeywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? localOnly;
@override final  bool? caseSensitive;
@override final  bool? withFile;
@override final  bool? excludeBots;
@override final  bool? excludeNotesInSensitiveChannel;

/// Create a copy of AntennaSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AntennaSettingsCopyWith<_AntennaSettings> get copyWith => __$AntennaSettingsCopyWithImpl<_AntennaSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AntennaSettings&&(identical(other.name, name) || other.name == name)&&(identical(other.src, src) || other.src == src)&&(identical(other.userListId, userListId) || other.userListId == userListId)&&const DeepCollectionEquality().equals(other.users, _users)&&(identical(other.withReplies, withReplies) || other.withReplies == withReplies)&&const DeepCollectionEquality().equals(other.keywords, _keywords)&&const DeepCollectionEquality().equals(other.excludeKeywords, _excludeKeywords)&&(identical(other.localOnly, localOnly) || other.localOnly == localOnly)&&(identical(other.caseSensitive, caseSensitive) || other.caseSensitive == caseSensitive)&&(identical(other.withFile, withFile) || other.withFile == withFile)&&(identical(other.excludeBots, excludeBots) || other.excludeBots == excludeBots)&&(identical(other.excludeNotesInSensitiveChannel, excludeNotesInSensitiveChannel) || other.excludeNotesInSensitiveChannel == excludeNotesInSensitiveChannel));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,src,userListId,const DeepCollectionEquality().hash(_users),withReplies,const DeepCollectionEquality().hash(_keywords),const DeepCollectionEquality().hash(_excludeKeywords),localOnly,caseSensitive,withFile,excludeBots,excludeNotesInSensitiveChannel);
}

@override
String toString() {
    return 'AntennaSettings(name: $name, src: $src, userListId: $userListId, users: $users, withReplies: $withReplies, keywords: $keywords, excludeKeywords: $excludeKeywords, localOnly: $localOnly, caseSensitive: $caseSensitive, withFile: $withFile, excludeBots: $excludeBots, excludeNotesInSensitiveChannel: $excludeNotesInSensitiveChannel)';
}


}

/// @nodoc
abstract mixin class _$AntennaSettingsCopyWith<$Res> implements $AntennaSettingsCopyWith<$Res> {
  factory _$AntennaSettingsCopyWith(_AntennaSettings value, $Res Function(_AntennaSettings) _then) = __$AntennaSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? name, AntennaSource? src, String? userListId, List<String>? users, bool? withReplies, List<List<String>>? keywords, List<List<String>>? excludeKeywords, bool? localOnly, bool? caseSensitive, bool? withFile, bool? excludeBots, bool? excludeNotesInSensitiveChannel
});




}
/// @nodoc
class __$AntennaSettingsCopyWithImpl<$Res>
    implements _$AntennaSettingsCopyWith<$Res> {
  __$AntennaSettingsCopyWithImpl(this._self, this._then);

  final _AntennaSettings _self;
  final $Res Function(_AntennaSettings) _then;

/// Create a copy of AntennaSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? src = freezed,Object? userListId = freezed,Object? users = freezed,Object? withReplies = freezed,Object? keywords = freezed,Object? excludeKeywords = freezed,Object? localOnly = freezed,Object? caseSensitive = freezed,Object? withFile = freezed,Object? excludeBots = freezed,Object? excludeNotesInSensitiveChannel = freezed,}) {
  return _then(_AntennaSettings(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,src: freezed == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as AntennaSource?,userListId: freezed == userListId ? _self.userListId : userListId // ignore: cast_nullable_to_non_nullable
as String?,users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<String>?,withReplies: freezed == withReplies ? _self.withReplies : withReplies // ignore: cast_nullable_to_non_nullable
as bool?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<List<String>>?,excludeKeywords: freezed == excludeKeywords ? _self._excludeKeywords : excludeKeywords // ignore: cast_nullable_to_non_nullable
as List<List<String>>?,localOnly: freezed == localOnly ? _self.localOnly : localOnly // ignore: cast_nullable_to_non_nullable
as bool?,caseSensitive: freezed == caseSensitive ? _self.caseSensitive : caseSensitive // ignore: cast_nullable_to_non_nullable
as bool?,withFile: freezed == withFile ? _self.withFile : withFile // ignore: cast_nullable_to_non_nullable
as bool?,excludeBots: freezed == excludeBots ? _self.excludeBots : excludeBots // ignore: cast_nullable_to_non_nullable
as bool?,excludeNotesInSensitiveChannel: freezed == excludeNotesInSensitiveChannel ? _self.excludeNotesInSensitiveChannel : excludeNotesInSensitiveChannel // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
