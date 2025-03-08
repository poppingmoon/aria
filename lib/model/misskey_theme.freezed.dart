// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misskey_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MisskeyTheme {

 String get id; String get name; String? get author; String? get desc; String? get base; Map<String, String> get props;
/// Create a copy of MisskeyTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MisskeyThemeCopyWith<MisskeyTheme> get copyWith => _$MisskeyThemeCopyWithImpl<MisskeyTheme>(this as MisskeyTheme, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MisskeyTheme&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.author, author) || other.author == author)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.base, base) || other.base == base)&&const DeepCollectionEquality().equals(other.props, props));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,author,desc,base,const DeepCollectionEquality().hash(props));

@override
String toString() {
  return 'MisskeyTheme(id: $id, name: $name, author: $author, desc: $desc, base: $base, props: $props)';
}


}

/// @nodoc
abstract mixin class $MisskeyThemeCopyWith<$Res>  {
  factory $MisskeyThemeCopyWith(MisskeyTheme value, $Res Function(MisskeyTheme) _then) = _$MisskeyThemeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? author, String? desc, String? base, Map<String, String> props
});




}
/// @nodoc
class _$MisskeyThemeCopyWithImpl<$Res>
    implements $MisskeyThemeCopyWith<$Res> {
  _$MisskeyThemeCopyWithImpl(this._self, this._then);

  final MisskeyTheme _self;
  final $Res Function(MisskeyTheme) _then;

/// Create a copy of MisskeyTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? author = freezed,Object? desc = freezed,Object? base = freezed,Object? props = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,props: null == props ? _self.props : props // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// @nodoc
@JsonSerializable(createToJson: false)

class _MisskeyTheme implements MisskeyTheme {
  const _MisskeyTheme({required this.id, required this.name, this.author, this.desc, this.base, required final  Map<String, String> props}): _props = props;
  factory _MisskeyTheme.fromJson(Map<String, dynamic> json) => _$MisskeyThemeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? author;
@override final  String? desc;
@override final  String? base;
 final  Map<String, String> _props;
@override Map<String, String> get props {
  if (_props is EqualUnmodifiableMapView) return _props;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_props);
}


/// Create a copy of MisskeyTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MisskeyThemeCopyWith<_MisskeyTheme> get copyWith => __$MisskeyThemeCopyWithImpl<_MisskeyTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MisskeyTheme&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.author, author) || other.author == author)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.base, base) || other.base == base)&&const DeepCollectionEquality().equals(other._props, _props));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,author,desc,base,const DeepCollectionEquality().hash(_props));

@override
String toString() {
  return 'MisskeyTheme(id: $id, name: $name, author: $author, desc: $desc, base: $base, props: $props)';
}


}

/// @nodoc
abstract mixin class _$MisskeyThemeCopyWith<$Res> implements $MisskeyThemeCopyWith<$Res> {
  factory _$MisskeyThemeCopyWith(_MisskeyTheme value, $Res Function(_MisskeyTheme) _then) = __$MisskeyThemeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? author, String? desc, String? base, Map<String, String> props
});




}
/// @nodoc
class __$MisskeyThemeCopyWithImpl<$Res>
    implements _$MisskeyThemeCopyWith<$Res> {
  __$MisskeyThemeCopyWithImpl(this._self, this._then);

  final _MisskeyTheme _self;
  final $Res Function(_MisskeyTheme) _then;

/// Create a copy of MisskeyTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? author = freezed,Object? desc = freezed,Object? base = freezed,Object? props = null,}) {
  return _then(_MisskeyTheme(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,props: null == props ? _self._props : props // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
