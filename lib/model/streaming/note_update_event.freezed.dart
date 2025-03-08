// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_update_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reacted {

 String get reaction; ReactedEmoji? get emoji; String get userId;
/// Create a copy of Reacted
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReactedCopyWith<Reacted> get copyWith => _$ReactedCopyWithImpl<Reacted>(this as Reacted, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reacted&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,emoji,userId);

@override
String toString() {
  return 'Reacted(reaction: $reaction, emoji: $emoji, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ReactedCopyWith<$Res>  {
  factory $ReactedCopyWith(Reacted value, $Res Function(Reacted) _then) = _$ReactedCopyWithImpl;
@useResult
$Res call({
 String reaction, ReactedEmoji? emoji, String userId
});


$ReactedEmojiCopyWith<$Res>? get emoji;

}
/// @nodoc
class _$ReactedCopyWithImpl<$Res>
    implements $ReactedCopyWith<$Res> {
  _$ReactedCopyWithImpl(this._self, this._then);

  final Reacted _self;
  final $Res Function(Reacted) _then;

/// Create a copy of Reacted
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reaction = null,Object? emoji = freezed,Object? userId = null,}) {
  return _then(_self.copyWith(
reaction: null == reaction ? _self.reaction : reaction // ignore: cast_nullable_to_non_nullable
as String,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as ReactedEmoji?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Reacted
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReactedEmojiCopyWith<$Res>? get emoji {
    if (_self.emoji == null) {
    return null;
  }

  return $ReactedEmojiCopyWith<$Res>(_self.emoji!, (value) {
    return _then(_self.copyWith(emoji: value));
  });
}
}


/// @nodoc
@JsonSerializable(createToJson: false)

class _Reacted implements Reacted {
  const _Reacted({required this.reaction, this.emoji, required this.userId});
  factory _Reacted.fromJson(Map<String, dynamic> json) => _$ReactedFromJson(json);

@override final  String reaction;
@override final  ReactedEmoji? emoji;
@override final  String userId;

/// Create a copy of Reacted
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReactedCopyWith<_Reacted> get copyWith => __$ReactedCopyWithImpl<_Reacted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reacted&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,emoji,userId);

@override
String toString() {
  return 'Reacted(reaction: $reaction, emoji: $emoji, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$ReactedCopyWith<$Res> implements $ReactedCopyWith<$Res> {
  factory _$ReactedCopyWith(_Reacted value, $Res Function(_Reacted) _then) = __$ReactedCopyWithImpl;
@override @useResult
$Res call({
 String reaction, ReactedEmoji? emoji, String userId
});


@override $ReactedEmojiCopyWith<$Res>? get emoji;

}
/// @nodoc
class __$ReactedCopyWithImpl<$Res>
    implements _$ReactedCopyWith<$Res> {
  __$ReactedCopyWithImpl(this._self, this._then);

  final _Reacted _self;
  final $Res Function(_Reacted) _then;

/// Create a copy of Reacted
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reaction = null,Object? emoji = freezed,Object? userId = null,}) {
  return _then(_Reacted(
reaction: null == reaction ? _self.reaction : reaction // ignore: cast_nullable_to_non_nullable
as String,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as ReactedEmoji?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Reacted
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReactedEmojiCopyWith<$Res>? get emoji {
    if (_self.emoji == null) {
    return null;
  }

  return $ReactedEmojiCopyWith<$Res>(_self.emoji!, (value) {
    return _then(_self.copyWith(emoji: value));
  });
}
}


/// @nodoc
mixin _$Unreacted {

 String get reaction; String get userId;
/// Create a copy of Unreacted
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreactedCopyWith<Unreacted> get copyWith => _$UnreactedCopyWithImpl<Unreacted>(this as Unreacted, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unreacted&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,userId);

@override
String toString() {
  return 'Unreacted(reaction: $reaction, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UnreactedCopyWith<$Res>  {
  factory $UnreactedCopyWith(Unreacted value, $Res Function(Unreacted) _then) = _$UnreactedCopyWithImpl;
@useResult
$Res call({
 String reaction, String userId
});




}
/// @nodoc
class _$UnreactedCopyWithImpl<$Res>
    implements $UnreactedCopyWith<$Res> {
  _$UnreactedCopyWithImpl(this._self, this._then);

  final Unreacted _self;
  final $Res Function(Unreacted) _then;

/// Create a copy of Unreacted
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reaction = null,Object? userId = null,}) {
  return _then(_self.copyWith(
reaction: null == reaction ? _self.reaction : reaction // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _Unreacted implements Unreacted {
  const _Unreacted({required this.reaction, required this.userId});
  factory _Unreacted.fromJson(Map<String, dynamic> json) => _$UnreactedFromJson(json);

@override final  String reaction;
@override final  String userId;

/// Create a copy of Unreacted
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreactedCopyWith<_Unreacted> get copyWith => __$UnreactedCopyWithImpl<_Unreacted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unreacted&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,userId);

@override
String toString() {
  return 'Unreacted(reaction: $reaction, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UnreactedCopyWith<$Res> implements $UnreactedCopyWith<$Res> {
  factory _$UnreactedCopyWith(_Unreacted value, $Res Function(_Unreacted) _then) = __$UnreactedCopyWithImpl;
@override @useResult
$Res call({
 String reaction, String userId
});




}
/// @nodoc
class __$UnreactedCopyWithImpl<$Res>
    implements _$UnreactedCopyWith<$Res> {
  __$UnreactedCopyWithImpl(this._self, this._then);

  final _Unreacted _self;
  final $Res Function(_Unreacted) _then;

/// Create a copy of Unreacted
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reaction = null,Object? userId = null,}) {
  return _then(_Unreacted(
reaction: null == reaction ? _self.reaction : reaction // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Deleted {

 DateTime get deletedAt;
/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletedCopyWith<Deleted> get copyWith => _$DeletedCopyWithImpl<Deleted>(this as Deleted, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deleted&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedAt);

@override
String toString() {
  return 'Deleted(deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $DeletedCopyWith<$Res>  {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) _then) = _$DeletedCopyWithImpl;
@useResult
$Res call({
 DateTime deletedAt
});




}
/// @nodoc
class _$DeletedCopyWithImpl<$Res>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(this._self, this._then);

  final Deleted _self;
  final $Res Function(Deleted) _then;

/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deletedAt = null,}) {
  return _then(_self.copyWith(
deletedAt: null == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _Deleted implements Deleted {
  const _Deleted({required this.deletedAt});
  factory _Deleted.fromJson(Map<String, dynamic> json) => _$DeletedFromJson(json);

@override final  DateTime deletedAt;

/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleted&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deletedAt);

@override
String toString() {
  return 'Deleted(deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$DeletedCopyWith<$Res> implements $DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) _then) = __$DeletedCopyWithImpl;
@override @useResult
$Res call({
 DateTime deletedAt
});




}
/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(this._self, this._then);

  final _Deleted _self;
  final $Res Function(_Deleted) _then;

/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deletedAt = null,}) {
  return _then(_Deleted(
deletedAt: null == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$PollVoted {

 int get choice; String get userId;
/// Create a copy of PollVoted
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollVotedCopyWith<PollVoted> get copyWith => _$PollVotedCopyWithImpl<PollVoted>(this as PollVoted, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollVoted&&(identical(other.choice, choice) || other.choice == choice)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,choice,userId);

@override
String toString() {
  return 'PollVoted(choice: $choice, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $PollVotedCopyWith<$Res>  {
  factory $PollVotedCopyWith(PollVoted value, $Res Function(PollVoted) _then) = _$PollVotedCopyWithImpl;
@useResult
$Res call({
 int choice, String userId
});




}
/// @nodoc
class _$PollVotedCopyWithImpl<$Res>
    implements $PollVotedCopyWith<$Res> {
  _$PollVotedCopyWithImpl(this._self, this._then);

  final PollVoted _self;
  final $Res Function(PollVoted) _then;

/// Create a copy of PollVoted
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? choice = null,Object? userId = null,}) {
  return _then(_self.copyWith(
choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _PollVoted implements PollVoted {
  const _PollVoted({required this.choice, required this.userId});
  factory _PollVoted.fromJson(Map<String, dynamic> json) => _$PollVotedFromJson(json);

@override final  int choice;
@override final  String userId;

/// Create a copy of PollVoted
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollVotedCopyWith<_PollVoted> get copyWith => __$PollVotedCopyWithImpl<_PollVoted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollVoted&&(identical(other.choice, choice) || other.choice == choice)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,choice,userId);

@override
String toString() {
  return 'PollVoted(choice: $choice, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$PollVotedCopyWith<$Res> implements $PollVotedCopyWith<$Res> {
  factory _$PollVotedCopyWith(_PollVoted value, $Res Function(_PollVoted) _then) = __$PollVotedCopyWithImpl;
@override @useResult
$Res call({
 int choice, String userId
});




}
/// @nodoc
class __$PollVotedCopyWithImpl<$Res>
    implements _$PollVotedCopyWith<$Res> {
  __$PollVotedCopyWithImpl(this._self, this._then);

  final _PollVoted _self;
  final $Res Function(_PollVoted) _then;

/// Create a copy of PollVoted
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? choice = null,Object? userId = null,}) {
  return _then(_PollVoted(
choice: null == choice ? _self.choice : choice // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Updated {

 String? get cw; String? get text; Note? get note;
/// Create a copy of Updated
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatedCopyWith<Updated> get copyWith => _$UpdatedCopyWithImpl<Updated>(this as Updated, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Updated&&(identical(other.cw, cw) || other.cw == cw)&&(identical(other.text, text) || other.text == text)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cw,text,note);

@override
String toString() {
  return 'Updated(cw: $cw, text: $text, note: $note)';
}


}

/// @nodoc
abstract mixin class $UpdatedCopyWith<$Res>  {
  factory $UpdatedCopyWith(Updated value, $Res Function(Updated) _then) = _$UpdatedCopyWithImpl;
@useResult
$Res call({
 String? cw, String? text, Note? note
});


$NoteCopyWith<$Res>? get note;

}
/// @nodoc
class _$UpdatedCopyWithImpl<$Res>
    implements $UpdatedCopyWith<$Res> {
  _$UpdatedCopyWithImpl(this._self, this._then);

  final Updated _self;
  final $Res Function(Updated) _then;

/// Create a copy of Updated
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cw = freezed,Object? text = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
cw: freezed == cw ? _self.cw : cw // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note?,
  ));
}
/// Create a copy of Updated
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res>? get note {
    if (_self.note == null) {
    return null;
  }

  return $NoteCopyWith<$Res>(_self.note!, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}


/// @nodoc
@JsonSerializable(createToJson: false)

class _Updated implements Updated {
  const _Updated({this.cw, this.text, this.note});
  factory _Updated.fromJson(Map<String, dynamic> json) => _$UpdatedFromJson(json);

@override final  String? cw;
@override final  String? text;
@override final  Note? note;

/// Create a copy of Updated
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatedCopyWith<_Updated> get copyWith => __$UpdatedCopyWithImpl<_Updated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Updated&&(identical(other.cw, cw) || other.cw == cw)&&(identical(other.text, text) || other.text == text)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cw,text,note);

@override
String toString() {
  return 'Updated(cw: $cw, text: $text, note: $note)';
}


}

/// @nodoc
abstract mixin class _$UpdatedCopyWith<$Res> implements $UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) _then) = __$UpdatedCopyWithImpl;
@override @useResult
$Res call({
 String? cw, String? text, Note? note
});


@override $NoteCopyWith<$Res>? get note;

}
/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(this._self, this._then);

  final _Updated _self;
  final $Res Function(_Updated) _then;

/// Create a copy of Updated
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cw = freezed,Object? text = freezed,Object? note = freezed,}) {
  return _then(_Updated(
cw: freezed == cw ? _self.cw : cw // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note?,
  ));
}

/// Create a copy of Updated
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res>? get note {
    if (_self.note == null) {
    return null;
  }

  return $NoteCopyWith<$Res>(_self.note!, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}


/// @nodoc
mixin _$ReactedEmoji {

 String get name; String get url;
/// Create a copy of ReactedEmoji
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReactedEmojiCopyWith<ReactedEmoji> get copyWith => _$ReactedEmojiCopyWithImpl<ReactedEmoji>(this as ReactedEmoji, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReactedEmoji&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'ReactedEmoji(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $ReactedEmojiCopyWith<$Res>  {
  factory $ReactedEmojiCopyWith(ReactedEmoji value, $Res Function(ReactedEmoji) _then) = _$ReactedEmojiCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$ReactedEmojiCopyWithImpl<$Res>
    implements $ReactedEmojiCopyWith<$Res> {
  _$ReactedEmojiCopyWithImpl(this._self, this._then);

  final ReactedEmoji _self;
  final $Res Function(ReactedEmoji) _then;

/// Create a copy of ReactedEmoji
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _ReactedEmoji implements ReactedEmoji {
  const _ReactedEmoji({required this.name, required this.url});
  factory _ReactedEmoji.fromJson(Map<String, dynamic> json) => _$ReactedEmojiFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of ReactedEmoji
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReactedEmojiCopyWith<_ReactedEmoji> get copyWith => __$ReactedEmojiCopyWithImpl<_ReactedEmoji>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReactedEmoji&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'ReactedEmoji(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ReactedEmojiCopyWith<$Res> implements $ReactedEmojiCopyWith<$Res> {
  factory _$ReactedEmojiCopyWith(_ReactedEmoji value, $Res Function(_ReactedEmoji) _then) = __$ReactedEmojiCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$ReactedEmojiCopyWithImpl<$Res>
    implements _$ReactedEmojiCopyWith<$Res> {
  __$ReactedEmojiCopyWithImpl(this._self, this._then);

  final _ReactedEmoji _self;
  final $Res Function(_ReactedEmoji) _then;

/// Create a copy of ReactedEmoji
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_ReactedEmoji(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
