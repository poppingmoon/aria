// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summaly_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummalyResult {

 String? get title; String? get icon; String? get description; String? get thumbnail; Player get player; String? get sitename; bool? get sensitive; String? get url;
/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummalyResultCopyWith<SummalyResult> get copyWith => _$SummalyResultCopyWithImpl<SummalyResult>(this as SummalyResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummalyResult&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.player, player) || other.player == player)&&(identical(other.sitename, sitename) || other.sitename == sitename)&&(identical(other.sensitive, sensitive) || other.sensitive == sensitive)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,icon,description,thumbnail,player,sitename,sensitive,url);

@override
String toString() {
  return 'SummalyResult(title: $title, icon: $icon, description: $description, thumbnail: $thumbnail, player: $player, sitename: $sitename, sensitive: $sensitive, url: $url)';
}


}

/// @nodoc
abstract mixin class $SummalyResultCopyWith<$Res>  {
  factory $SummalyResultCopyWith(SummalyResult value, $Res Function(SummalyResult) _then) = _$SummalyResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? icon, String? description, String? thumbnail, Player player, String? sitename, bool? sensitive, String? url
});


$PlayerCopyWith<$Res> get player;

}
/// @nodoc
class _$SummalyResultCopyWithImpl<$Res>
    implements $SummalyResultCopyWith<$Res> {
  _$SummalyResultCopyWithImpl(this._self, this._then);

  final SummalyResult _self;
  final $Res Function(SummalyResult) _then;

/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? icon = freezed,Object? description = freezed,Object? thumbnail = freezed,Object? player = null,Object? sitename = freezed,Object? sensitive = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,sitename: freezed == sitename ? _self.sitename : sitename // ignore: cast_nullable_to_non_nullable
as String?,sensitive: freezed == sensitive ? _self.sensitive : sensitive // ignore: cast_nullable_to_non_nullable
as bool?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}
}


/// Adds pattern-matching-related methods to [SummalyResult].
extension SummalyResultPatterns on SummalyResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummalyResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummalyResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummalyResult value)  $default,){
final _that = this;
switch (_that) {
case _SummalyResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummalyResult value)?  $default,){
final _that = this;
switch (_that) {
case _SummalyResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? icon,  String? description,  String? thumbnail,  Player player,  String? sitename,  bool? sensitive,  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummalyResult() when $default != null:
return $default(_that.title,_that.icon,_that.description,_that.thumbnail,_that.player,_that.sitename,_that.sensitive,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? icon,  String? description,  String? thumbnail,  Player player,  String? sitename,  bool? sensitive,  String? url)  $default,) {final _that = this;
switch (_that) {
case _SummalyResult():
return $default(_that.title,_that.icon,_that.description,_that.thumbnail,_that.player,_that.sitename,_that.sensitive,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? icon,  String? description,  String? thumbnail,  Player player,  String? sitename,  bool? sensitive,  String? url)?  $default,) {final _that = this;
switch (_that) {
case _SummalyResult() when $default != null:
return $default(_that.title,_that.icon,_that.description,_that.thumbnail,_that.player,_that.sitename,_that.sensitive,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _SummalyResult implements SummalyResult {
  const _SummalyResult({this.title, this.icon, this.description, this.thumbnail, required this.player, this.sitename, this.sensitive, this.url});
  factory _SummalyResult.fromJson(Map<String, dynamic> json) => _$SummalyResultFromJson(json);

@override final  String? title;
@override final  String? icon;
@override final  String? description;
@override final  String? thumbnail;
@override final  Player player;
@override final  String? sitename;
@override final  bool? sensitive;
@override final  String? url;

/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummalyResultCopyWith<_SummalyResult> get copyWith => __$SummalyResultCopyWithImpl<_SummalyResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummalyResult&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.player, player) || other.player == player)&&(identical(other.sitename, sitename) || other.sitename == sitename)&&(identical(other.sensitive, sensitive) || other.sensitive == sensitive)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,icon,description,thumbnail,player,sitename,sensitive,url);

@override
String toString() {
  return 'SummalyResult(title: $title, icon: $icon, description: $description, thumbnail: $thumbnail, player: $player, sitename: $sitename, sensitive: $sensitive, url: $url)';
}


}

/// @nodoc
abstract mixin class _$SummalyResultCopyWith<$Res> implements $SummalyResultCopyWith<$Res> {
  factory _$SummalyResultCopyWith(_SummalyResult value, $Res Function(_SummalyResult) _then) = __$SummalyResultCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? icon, String? description, String? thumbnail, Player player, String? sitename, bool? sensitive, String? url
});


@override $PlayerCopyWith<$Res> get player;

}
/// @nodoc
class __$SummalyResultCopyWithImpl<$Res>
    implements _$SummalyResultCopyWith<$Res> {
  __$SummalyResultCopyWithImpl(this._self, this._then);

  final _SummalyResult _self;
  final $Res Function(_SummalyResult) _then;

/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? icon = freezed,Object? description = freezed,Object? thumbnail = freezed,Object? player = null,Object? sitename = freezed,Object? sensitive = freezed,Object? url = freezed,}) {
  return _then(_SummalyResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,sitename: freezed == sitename ? _self.sitename : sitename // ignore: cast_nullable_to_non_nullable
as String?,sensitive: freezed == sensitive ? _self.sensitive : sensitive // ignore: cast_nullable_to_non_nullable
as bool?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}
}


/// @nodoc
mixin _$Player {

 String? get url; double? get width; double? get height; List<String>? get allow;
/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCopyWith<Player> get copyWith => _$PlayerCopyWithImpl<Player>(this as Player, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Player&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.allow, allow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,width,height,const DeepCollectionEquality().hash(allow));

@override
String toString() {
  return 'Player(url: $url, width: $width, height: $height, allow: $allow)';
}


}

/// @nodoc
abstract mixin class $PlayerCopyWith<$Res>  {
  factory $PlayerCopyWith(Player value, $Res Function(Player) _then) = _$PlayerCopyWithImpl;
@useResult
$Res call({
 String? url, double? width, double? height, List<String>? allow
});




}
/// @nodoc
class _$PlayerCopyWithImpl<$Res>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._self, this._then);

  final Player _self;
  final $Res Function(Player) _then;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? width = freezed,Object? height = freezed,Object? allow = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,allow: freezed == allow ? _self.allow : allow // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Player].
extension PlayerPatterns on Player {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Player value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Player() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Player value)  $default,){
final _that = this;
switch (_that) {
case _Player():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Player value)?  $default,){
final _that = this;
switch (_that) {
case _Player() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url,  double? width,  double? height,  List<String>? allow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Player() when $default != null:
return $default(_that.url,_that.width,_that.height,_that.allow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url,  double? width,  double? height,  List<String>? allow)  $default,) {final _that = this;
switch (_that) {
case _Player():
return $default(_that.url,_that.width,_that.height,_that.allow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url,  double? width,  double? height,  List<String>? allow)?  $default,) {final _that = this;
switch (_that) {
case _Player() when $default != null:
return $default(_that.url,_that.width,_that.height,_that.allow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Player implements Player {
  const _Player({this.url, this.width, this.height, final  List<String>? allow}): _allow = allow;
  factory _Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

@override final  String? url;
@override final  double? width;
@override final  double? height;
 final  List<String>? _allow;
@override List<String>? get allow {
  final value = _allow;
  if (value == null) return null;
  if (_allow is EqualUnmodifiableListView) return _allow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerCopyWith<_Player> get copyWith => __$PlayerCopyWithImpl<_Player>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Player&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other._allow, _allow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,width,height,const DeepCollectionEquality().hash(_allow));

@override
String toString() {
  return 'Player(url: $url, width: $width, height: $height, allow: $allow)';
}


}

/// @nodoc
abstract mixin class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) _then) = __$PlayerCopyWithImpl;
@override @useResult
$Res call({
 String? url, double? width, double? height, List<String>? allow
});




}
/// @nodoc
class __$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(this._self, this._then);

  final _Player _self;
  final $Res Function(_Player) _then;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? width = freezed,Object? height = freezed,Object? allow = freezed,}) {
  return _then(_Player(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,allow: freezed == allow ? _self._allow : allow // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
