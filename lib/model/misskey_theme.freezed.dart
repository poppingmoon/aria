// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misskey_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MisskeyTheme {


/// Create a copy of MisskeyTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MisskeyThemeCopyWith<MisskeyTheme> get copyWith => _$MisskeyThemeCopyWithImpl<MisskeyTheme>(this as MisskeyTheme, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MisskeyTheme;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MisskeyTheme&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.desc, _this.desc) || other.desc == _this.desc)&&(identical(other.base, _this.base) || other.base == _this.base)&&const DeepCollectionEquality().equals(other.props, _this.props)&&const DeepCollectionEquality().equals(other.codeHighlighter, _this.codeHighlighter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MisskeyTheme;
  return Object.hash(runtimeType,_this.id,_this.name,_this.author,_this.desc,_this.base,const DeepCollectionEquality().hash(_this.props),const DeepCollectionEquality().hash(_this.codeHighlighter));
}

@override
String toString() {
  final _this = this as MisskeyTheme;
  return 'MisskeyTheme(id: ${_this.id}, name: ${_this.name}, author: ${_this.author}, desc: ${_this.desc}, base: ${_this.base}, props: ${_this.props}, codeHighlighter: ${_this.codeHighlighter})';
}


}

/// @nodoc
abstract mixin class $MisskeyThemeCopyWith<$Res>  {
  factory $MisskeyThemeCopyWith(MisskeyTheme value, $Res Function(MisskeyTheme) _then) = _$MisskeyThemeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? author, String? desc, String? base, Map<String, String> props, Map<String, dynamic>? codeHighlighter
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? author = freezed,Object? desc = freezed,Object? base = freezed,Object? props = null,Object? codeHighlighter = freezed,}) {
  return _then(MisskeyTheme(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,props: null == props ? _self.props : props // ignore: cast_nullable_to_non_nullable
as Map<String, String>,codeHighlighter: freezed == codeHighlighter ? _self.codeHighlighter : codeHighlighter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}



// dart format on
