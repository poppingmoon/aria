// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Lookup {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Lookup);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'Lookup()';
}


}

/// @nodoc
class $LookupCopyWith<$Res>  {
$LookupCopyWith(Lookup _, $Res Function(Lookup) __);
}



/// @nodoc


class LookupUser implements Lookup {
  const LookupUser(this.user);
  

 final  UserDetailed user;

/// Create a copy of Lookup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LookupUserCopyWith<LookupUser> get copyWith => _$LookupUserCopyWithImpl<LookupUser>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LookupUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'Lookup.user(user: $user)';
}


}

/// @nodoc
abstract mixin class $LookupUserCopyWith<$Res> implements $LookupCopyWith<$Res> {
  factory $LookupUserCopyWith(LookupUser value, $Res Function(LookupUser) _then) = _$LookupUserCopyWithImpl;
@useResult
$Res call({
 UserDetailed user
});




}
/// @nodoc
class _$LookupUserCopyWithImpl<$Res>
    implements $LookupUserCopyWith<$Res> {
  _$LookupUserCopyWithImpl(this._self, this._then);

  final LookupUser _self;
  final $Res Function(LookupUser) _then;

/// Create a copy of Lookup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(LookupUser(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailed,
  ));
}


}

/// @nodoc


class LookupNote implements Lookup {
  const LookupNote(this.note);
  

 final  Note note;

/// Create a copy of Lookup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LookupNoteCopyWith<LookupNote> get copyWith => _$LookupNoteCopyWithImpl<LookupNote>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LookupNote&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode {
    return Object.hash(runtimeType,note);
}

@override
String toString() {
    return 'Lookup.note(note: $note)';
}


}

/// @nodoc
abstract mixin class $LookupNoteCopyWith<$Res> implements $LookupCopyWith<$Res> {
  factory $LookupNoteCopyWith(LookupNote value, $Res Function(LookupNote) _then) = _$LookupNoteCopyWithImpl;
@useResult
$Res call({
 Note note
});


$NoteCopyWith<$Res> get note;

}
/// @nodoc
class _$LookupNoteCopyWithImpl<$Res>
    implements $LookupNoteCopyWith<$Res> {
  _$LookupNoteCopyWithImpl(this._self, this._then);

  final LookupNote _self;
  final $Res Function(LookupNote) _then;

/// Create a copy of Lookup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? note = null,}) {
  return _then(LookupNote(
null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note,
  ));
}

/// Create a copy of Lookup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res> get note {
  
  return $NoteCopyWith<$Res>(_self.note, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}

// dart format on
