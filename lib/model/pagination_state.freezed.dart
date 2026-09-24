// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginationState<T> {


/// Create a copy of PaginationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationStateCopyWith<T, PaginationState<T>> get copyWith => _$PaginationStateCopyWithImpl<T, PaginationState<T>>(this as PaginationState<T>, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PaginationState<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationState<T>&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.isLastLoaded, _this.isLastLoaded) || other.isLastLoaded == _this.isLastLoaded));
}


@override
int get hashCode {
  final _this = this as PaginationState<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.isLastLoaded);
}

@override
String toString() {
  final _this = this as PaginationState<T>;
  return 'PaginationState<$T>(items: ${_this.items}, isLastLoaded: ${_this.isLastLoaded})';
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
  return _then(PaginationState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isLastLoaded: null == isLastLoaded ? _self.isLastLoaded : isLastLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



// dart format on
