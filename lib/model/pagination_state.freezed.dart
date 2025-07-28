// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginationState<T> {

 List<T> get items; bool get isLastLoaded;
/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationStateCopyWith<T, PaginationState<T>> get copyWith => _$PaginationStateCopyWithImpl<T, PaginationState<T>>(this as PaginationState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationState<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isLastLoaded, isLastLoaded) || other.isLastLoaded == isLastLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isLastLoaded);

@override
String toString() {
  return 'PaginationState<$T>(items: $items, isLastLoaded: $isLastLoaded)';
}


}

/// @nodoc
abstract mixin class $PaginationStateCopyWith<T,$Res>  {
  factory $PaginationStateCopyWith(PaginationState<T> value, $Res Function(PaginationState<T>) _then) = _$PaginationStateCopyWithImpl;
@useResult
$Res call({
 List<T> items, bool isLastLoaded
});




}
/// @nodoc
class _$PaginationStateCopyWithImpl<T,$Res>
    implements $PaginationStateCopyWith<T, $Res> {
  _$PaginationStateCopyWithImpl(this._self, this._then);

  final PaginationState<T> _self;
  final $Res Function(PaginationState<T>) _then;

/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isLastLoaded = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isLastLoaded: null == isLastLoaded ? _self.isLastLoaded : isLastLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationState].
extension PaginationStatePatterns<T> on PaginationState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationState<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  bool isLastLoaded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
return $default(_that.items,_that.isLastLoaded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  bool isLastLoaded)  $default,) {final _that = this;
switch (_that) {
case _PaginationState():
return $default(_that.items,_that.isLastLoaded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  bool isLastLoaded)?  $default,) {final _that = this;
switch (_that) {
case _PaginationState() when $default != null:
return $default(_that.items,_that.isLastLoaded);case _:
  return null;

}
}

}

/// @nodoc


class _PaginationState<T> implements PaginationState<T> {
  const _PaginationState({final  List<T> items = const [], this.isLastLoaded = false}): _items = items;
  

 final  List<T> _items;
@override@JsonKey() List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isLastLoaded;

/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationStateCopyWith<T, _PaginationState<T>> get copyWith => __$PaginationStateCopyWithImpl<T, _PaginationState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationState<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isLastLoaded, isLastLoaded) || other.isLastLoaded == isLastLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isLastLoaded);

@override
String toString() {
  return 'PaginationState<$T>(items: $items, isLastLoaded: $isLastLoaded)';
}


}

/// @nodoc
abstract mixin class _$PaginationStateCopyWith<T,$Res> implements $PaginationStateCopyWith<T, $Res> {
  factory _$PaginationStateCopyWith(_PaginationState<T> value, $Res Function(_PaginationState<T>) _then) = __$PaginationStateCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, bool isLastLoaded
});




}
/// @nodoc
class __$PaginationStateCopyWithImpl<T,$Res>
    implements _$PaginationStateCopyWith<T, $Res> {
  __$PaginationStateCopyWithImpl(this._self, this._then);

  final _PaginationState<T> _self;
  final $Res Function(_PaginationState<T>) _then;

/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isLastLoaded = null,}) {
  return _then(_PaginationState<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isLastLoaded: null == isLastLoaded ? _self.isLastLoaded : isLastLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
