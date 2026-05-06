// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_note_draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalNoteDraft {

 int get id; Account get account; String? get tabId; NoteDraft get draft; bool get isPinned;
/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalNoteDraftCopyWith<LocalNoteDraft> get copyWith => _$LocalNoteDraftCopyWithImpl<LocalNoteDraft>(this as LocalNoteDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalNoteDraft&&(identical(other.id, id) || other.id == id)&&(identical(other.account, account) || other.account == account)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned));
}


@override
int get hashCode => Object.hash(runtimeType,id,account,tabId,draft,isPinned);

@override
String toString() {
  return 'LocalNoteDraft(id: $id, account: $account, tabId: $tabId, draft: $draft, isPinned: $isPinned)';
}


}

/// @nodoc
abstract mixin class $LocalNoteDraftCopyWith<$Res>  {
  factory $LocalNoteDraftCopyWith(LocalNoteDraft value, $Res Function(LocalNoteDraft) _then) = _$LocalNoteDraftCopyWithImpl;
@useResult
$Res call({
 int id, Account account, String? tabId, NoteDraft draft, bool isPinned
});


$AccountCopyWith<$Res> get account;$NoteDraftCopyWith<$Res> get draft;

}
/// @nodoc
class _$LocalNoteDraftCopyWithImpl<$Res>
    implements $LocalNoteDraftCopyWith<$Res> {
  _$LocalNoteDraftCopyWithImpl(this._self, this._then);

  final LocalNoteDraft _self;
  final $Res Function(LocalNoteDraft) _then;

/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? account = null,Object? tabId = freezed,Object? draft = null,Object? isPinned = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account,tabId: freezed == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as String?,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as NoteDraft,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res> get account {
  
  return $AccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteDraftCopyWith<$Res> get draft {
  
  return $NoteDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocalNoteDraft].
extension LocalNoteDraftPatterns on LocalNoteDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalNoteDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalNoteDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalNoteDraft value)  $default,){
final _that = this;
switch (_that) {
case _LocalNoteDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalNoteDraft value)?  $default,){
final _that = this;
switch (_that) {
case _LocalNoteDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Account account,  String? tabId,  NoteDraft draft,  bool isPinned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalNoteDraft() when $default != null:
return $default(_that.id,_that.account,_that.tabId,_that.draft,_that.isPinned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Account account,  String? tabId,  NoteDraft draft,  bool isPinned)  $default,) {final _that = this;
switch (_that) {
case _LocalNoteDraft():
return $default(_that.id,_that.account,_that.tabId,_that.draft,_that.isPinned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  Account account,  String? tabId,  NoteDraft draft,  bool isPinned)?  $default,) {final _that = this;
switch (_that) {
case _LocalNoteDraft() when $default != null:
return $default(_that.id,_that.account,_that.tabId,_that.draft,_that.isPinned);case _:
  return null;

}
}

}

/// @nodoc


class _LocalNoteDraft implements LocalNoteDraft {
  const _LocalNoteDraft({required this.id, required this.account, this.tabId, required this.draft, required this.isPinned});
  

@override final  int id;
@override final  Account account;
@override final  String? tabId;
@override final  NoteDraft draft;
@override final  bool isPinned;

/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalNoteDraftCopyWith<_LocalNoteDraft> get copyWith => __$LocalNoteDraftCopyWithImpl<_LocalNoteDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalNoteDraft&&(identical(other.id, id) || other.id == id)&&(identical(other.account, account) || other.account == account)&&(identical(other.tabId, tabId) || other.tabId == tabId)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned));
}


@override
int get hashCode => Object.hash(runtimeType,id,account,tabId,draft,isPinned);

@override
String toString() {
  return 'LocalNoteDraft(id: $id, account: $account, tabId: $tabId, draft: $draft, isPinned: $isPinned)';
}


}

/// @nodoc
abstract mixin class _$LocalNoteDraftCopyWith<$Res> implements $LocalNoteDraftCopyWith<$Res> {
  factory _$LocalNoteDraftCopyWith(_LocalNoteDraft value, $Res Function(_LocalNoteDraft) _then) = __$LocalNoteDraftCopyWithImpl;
@override @useResult
$Res call({
 int id, Account account, String? tabId, NoteDraft draft, bool isPinned
});


@override $AccountCopyWith<$Res> get account;@override $NoteDraftCopyWith<$Res> get draft;

}
/// @nodoc
class __$LocalNoteDraftCopyWithImpl<$Res>
    implements _$LocalNoteDraftCopyWith<$Res> {
  __$LocalNoteDraftCopyWithImpl(this._self, this._then);

  final _LocalNoteDraft _self;
  final $Res Function(_LocalNoteDraft) _then;

/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? account = null,Object? tabId = freezed,Object? draft = null,Object? isPinned = null,}) {
  return _then(_LocalNoteDraft(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account,tabId: freezed == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as String?,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as NoteDraft,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res> get account {
  
  return $AccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteDraftCopyWith<$Res> get draft {
  
  return $NoteDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

// dart format on
