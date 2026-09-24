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



// dart format on
