// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaterialIcon {

 int get codePoint;
/// Create a copy of MaterialIcon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialIconCopyWith<MaterialIcon> get copyWith => _$MaterialIconCopyWithImpl<MaterialIcon>(this as MaterialIcon, _$identity);

  /// Serializes this MaterialIcon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialIcon&&(identical(other.codePoint, codePoint) || other.codePoint == codePoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,codePoint);

@override
String toString() {
  return 'MaterialIcon(codePoint: $codePoint)';
}


}

/// @nodoc
abstract mixin class $MaterialIconCopyWith<$Res>  {
  factory $MaterialIconCopyWith(MaterialIcon value, $Res Function(MaterialIcon) _then) = _$MaterialIconCopyWithImpl;
@useResult
$Res call({
 int codePoint
});




}
/// @nodoc
class _$MaterialIconCopyWithImpl<$Res>
    implements $MaterialIconCopyWith<$Res> {
  _$MaterialIconCopyWithImpl(this._self, this._then);

  final MaterialIcon _self;
  final $Res Function(MaterialIcon) _then;

/// Create a copy of MaterialIcon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codePoint = null,}) {
  return _then(_self.copyWith(
codePoint: null == codePoint ? _self.codePoint : codePoint // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MaterialIcon].
extension MaterialIconPatterns on MaterialIcon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaterialIcon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaterialIcon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaterialIcon value)  $default,){
final _that = this;
switch (_that) {
case _MaterialIcon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaterialIcon value)?  $default,){
final _that = this;
switch (_that) {
case _MaterialIcon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int codePoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaterialIcon() when $default != null:
return $default(_that.codePoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int codePoint)  $default,) {final _that = this;
switch (_that) {
case _MaterialIcon():
return $default(_that.codePoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int codePoint)?  $default,) {final _that = this;
switch (_that) {
case _MaterialIcon() when $default != null:
return $default(_that.codePoint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaterialIcon implements MaterialIcon {
  const _MaterialIcon({required this.codePoint});
  factory _MaterialIcon.fromJson(Map<String, dynamic> json) => _$MaterialIconFromJson(json);

@override final  int codePoint;

/// Create a copy of MaterialIcon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialIconCopyWith<_MaterialIcon> get copyWith => __$MaterialIconCopyWithImpl<_MaterialIcon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialIconToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialIcon&&(identical(other.codePoint, codePoint) || other.codePoint == codePoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,codePoint);

@override
String toString() {
  return 'MaterialIcon(codePoint: $codePoint)';
}


}

/// @nodoc
abstract mixin class _$MaterialIconCopyWith<$Res> implements $MaterialIconCopyWith<$Res> {
  factory _$MaterialIconCopyWith(_MaterialIcon value, $Res Function(_MaterialIcon) _then) = __$MaterialIconCopyWithImpl;
@override @useResult
$Res call({
 int codePoint
});




}
/// @nodoc
class __$MaterialIconCopyWithImpl<$Res>
    implements _$MaterialIconCopyWith<$Res> {
  __$MaterialIconCopyWithImpl(this._self, this._then);

  final _MaterialIcon _self;
  final $Res Function(_MaterialIcon) _then;

/// Create a copy of MaterialIcon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codePoint = null,}) {
  return _then(_MaterialIcon(
codePoint: null == codePoint ? _self.codePoint : codePoint // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ImageIcon {

 String get url;
/// Create a copy of ImageIcon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageIconCopyWith<ImageIcon> get copyWith => _$ImageIconCopyWithImpl<ImageIcon>(this as ImageIcon, _$identity);

  /// Serializes this ImageIcon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageIcon&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ImageIcon(url: $url)';
}


}

/// @nodoc
abstract mixin class $ImageIconCopyWith<$Res>  {
  factory $ImageIconCopyWith(ImageIcon value, $Res Function(ImageIcon) _then) = _$ImageIconCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$ImageIconCopyWithImpl<$Res>
    implements $ImageIconCopyWith<$Res> {
  _$ImageIconCopyWithImpl(this._self, this._then);

  final ImageIcon _self;
  final $Res Function(ImageIcon) _then;

/// Create a copy of ImageIcon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageIcon].
extension ImageIconPatterns on ImageIcon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageIcon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageIcon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageIcon value)  $default,){
final _that = this;
switch (_that) {
case _ImageIcon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageIcon value)?  $default,){
final _that = this;
switch (_that) {
case _ImageIcon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageIcon() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url)  $default,) {final _that = this;
switch (_that) {
case _ImageIcon():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url)?  $default,) {final _that = this;
switch (_that) {
case _ImageIcon() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageIcon implements ImageIcon {
  const _ImageIcon({required this.url});
  factory _ImageIcon.fromJson(Map<String, dynamic> json) => _$ImageIconFromJson(json);

@override final  String url;

/// Create a copy of ImageIcon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageIconCopyWith<_ImageIcon> get copyWith => __$ImageIconCopyWithImpl<_ImageIcon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageIconToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageIcon&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ImageIcon(url: $url)';
}


}

/// @nodoc
abstract mixin class _$ImageIconCopyWith<$Res> implements $ImageIconCopyWith<$Res> {
  factory _$ImageIconCopyWith(_ImageIcon value, $Res Function(_ImageIcon) _then) = __$ImageIconCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$ImageIconCopyWithImpl<$Res>
    implements _$ImageIconCopyWith<$Res> {
  __$ImageIconCopyWithImpl(this._self, this._then);

  final _ImageIcon _self;
  final $Res Function(_ImageIcon) _then;

/// Create a copy of ImageIcon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_ImageIcon(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EmojiIcon {

 String get emoji;
/// Create a copy of EmojiIcon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmojiIconCopyWith<EmojiIcon> get copyWith => _$EmojiIconCopyWithImpl<EmojiIcon>(this as EmojiIcon, _$identity);

  /// Serializes this EmojiIcon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmojiIcon&&(identical(other.emoji, emoji) || other.emoji == emoji));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emoji);

@override
String toString() {
  return 'EmojiIcon(emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class $EmojiIconCopyWith<$Res>  {
  factory $EmojiIconCopyWith(EmojiIcon value, $Res Function(EmojiIcon) _then) = _$EmojiIconCopyWithImpl;
@useResult
$Res call({
 String emoji
});




}
/// @nodoc
class _$EmojiIconCopyWithImpl<$Res>
    implements $EmojiIconCopyWith<$Res> {
  _$EmojiIconCopyWithImpl(this._self, this._then);

  final EmojiIcon _self;
  final $Res Function(EmojiIcon) _then;

/// Create a copy of EmojiIcon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emoji = null,}) {
  return _then(_self.copyWith(
emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmojiIcon].
extension EmojiIconPatterns on EmojiIcon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmojiIcon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmojiIcon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmojiIcon value)  $default,){
final _that = this;
switch (_that) {
case _EmojiIcon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmojiIcon value)?  $default,){
final _that = this;
switch (_that) {
case _EmojiIcon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String emoji)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmojiIcon() when $default != null:
return $default(_that.emoji);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String emoji)  $default,) {final _that = this;
switch (_that) {
case _EmojiIcon():
return $default(_that.emoji);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String emoji)?  $default,) {final _that = this;
switch (_that) {
case _EmojiIcon() when $default != null:
return $default(_that.emoji);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmojiIcon implements EmojiIcon {
  const _EmojiIcon({required this.emoji});
  factory _EmojiIcon.fromJson(Map<String, dynamic> json) => _$EmojiIconFromJson(json);

@override final  String emoji;

/// Create a copy of EmojiIcon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmojiIconCopyWith<_EmojiIcon> get copyWith => __$EmojiIconCopyWithImpl<_EmojiIcon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmojiIconToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmojiIcon&&(identical(other.emoji, emoji) || other.emoji == emoji));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emoji);

@override
String toString() {
  return 'EmojiIcon(emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class _$EmojiIconCopyWith<$Res> implements $EmojiIconCopyWith<$Res> {
  factory _$EmojiIconCopyWith(_EmojiIcon value, $Res Function(_EmojiIcon) _then) = __$EmojiIconCopyWithImpl;
@override @useResult
$Res call({
 String emoji
});




}
/// @nodoc
class __$EmojiIconCopyWithImpl<$Res>
    implements _$EmojiIconCopyWith<$Res> {
  __$EmojiIconCopyWithImpl(this._self, this._then);

  final _EmojiIcon _self;
  final $Res Function(_EmojiIcon) _then;

/// Create a copy of EmojiIcon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emoji = null,}) {
  return _then(_EmojiIcon(
emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
