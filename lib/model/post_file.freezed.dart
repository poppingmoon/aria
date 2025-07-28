// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalPostFile {

 File get file; String get name; bool get isSensitive; String? get comment; String? get type; bool get uploading;
/// Create a copy of LocalPostFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalPostFileCopyWith<LocalPostFile> get copyWith => _$LocalPostFileCopyWithImpl<LocalPostFile>(this as LocalPostFile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalPostFile&&(identical(other.file, file) || other.file == file)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSensitive, isSensitive) || other.isSensitive == isSensitive)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.type, type) || other.type == type)&&(identical(other.uploading, uploading) || other.uploading == uploading));
}


@override
int get hashCode => Object.hash(runtimeType,file,name,isSensitive,comment,type,uploading);

@override
String toString() {
  return 'LocalPostFile(file: $file, name: $name, isSensitive: $isSensitive, comment: $comment, type: $type, uploading: $uploading)';
}


}

/// @nodoc
abstract mixin class $LocalPostFileCopyWith<$Res>  {
  factory $LocalPostFileCopyWith(LocalPostFile value, $Res Function(LocalPostFile) _then) = _$LocalPostFileCopyWithImpl;
@useResult
$Res call({
 File file, String name, bool isSensitive, String? comment, String? type, bool uploading
});




}
/// @nodoc
class _$LocalPostFileCopyWithImpl<$Res>
    implements $LocalPostFileCopyWith<$Res> {
  _$LocalPostFileCopyWithImpl(this._self, this._then);

  final LocalPostFile _self;
  final $Res Function(LocalPostFile) _then;

/// Create a copy of LocalPostFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = null,Object? name = null,Object? isSensitive = null,Object? comment = freezed,Object? type = freezed,Object? uploading = null,}) {
  return _then(_self.copyWith(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSensitive: null == isSensitive ? _self.isSensitive : isSensitive // ignore: cast_nullable_to_non_nullable
as bool,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,uploading: null == uploading ? _self.uploading : uploading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalPostFile].
extension LocalPostFilePatterns on LocalPostFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalPostFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalPostFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalPostFile value)  $default,){
final _that = this;
switch (_that) {
case _LocalPostFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalPostFile value)?  $default,){
final _that = this;
switch (_that) {
case _LocalPostFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( File file,  String name,  bool isSensitive,  String? comment,  String? type,  bool uploading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalPostFile() when $default != null:
return $default(_that.file,_that.name,_that.isSensitive,_that.comment,_that.type,_that.uploading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( File file,  String name,  bool isSensitive,  String? comment,  String? type,  bool uploading)  $default,) {final _that = this;
switch (_that) {
case _LocalPostFile():
return $default(_that.file,_that.name,_that.isSensitive,_that.comment,_that.type,_that.uploading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( File file,  String name,  bool isSensitive,  String? comment,  String? type,  bool uploading)?  $default,) {final _that = this;
switch (_that) {
case _LocalPostFile() when $default != null:
return $default(_that.file,_that.name,_that.isSensitive,_that.comment,_that.type,_that.uploading);case _:
  return null;

}
}

}

/// @nodoc


class _LocalPostFile implements LocalPostFile {
  const _LocalPostFile({required this.file, required this.name, this.isSensitive = false, this.comment, this.type, this.uploading = false});
  

@override final  File file;
@override final  String name;
@override@JsonKey() final  bool isSensitive;
@override final  String? comment;
@override final  String? type;
@override@JsonKey() final  bool uploading;

/// Create a copy of LocalPostFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalPostFileCopyWith<_LocalPostFile> get copyWith => __$LocalPostFileCopyWithImpl<_LocalPostFile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalPostFile&&(identical(other.file, file) || other.file == file)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSensitive, isSensitive) || other.isSensitive == isSensitive)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.type, type) || other.type == type)&&(identical(other.uploading, uploading) || other.uploading == uploading));
}


@override
int get hashCode => Object.hash(runtimeType,file,name,isSensitive,comment,type,uploading);

@override
String toString() {
  return 'LocalPostFile(file: $file, name: $name, isSensitive: $isSensitive, comment: $comment, type: $type, uploading: $uploading)';
}


}

/// @nodoc
abstract mixin class _$LocalPostFileCopyWith<$Res> implements $LocalPostFileCopyWith<$Res> {
  factory _$LocalPostFileCopyWith(_LocalPostFile value, $Res Function(_LocalPostFile) _then) = __$LocalPostFileCopyWithImpl;
@override @useResult
$Res call({
 File file, String name, bool isSensitive, String? comment, String? type, bool uploading
});




}
/// @nodoc
class __$LocalPostFileCopyWithImpl<$Res>
    implements _$LocalPostFileCopyWith<$Res> {
  __$LocalPostFileCopyWithImpl(this._self, this._then);

  final _LocalPostFile _self;
  final $Res Function(_LocalPostFile) _then;

/// Create a copy of LocalPostFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = null,Object? name = null,Object? isSensitive = null,Object? comment = freezed,Object? type = freezed,Object? uploading = null,}) {
  return _then(_LocalPostFile(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSensitive: null == isSensitive ? _self.isSensitive : isSensitive // ignore: cast_nullable_to_non_nullable
as bool,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,uploading: null == uploading ? _self.uploading : uploading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$DrivePostFile {

 DriveFile get file; String get name; bool get isSensitive; String? get comment; String? get type;
/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrivePostFileCopyWith<DrivePostFile> get copyWith => _$DrivePostFileCopyWithImpl<DrivePostFile>(this as DrivePostFile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrivePostFile&&(identical(other.file, file) || other.file == file)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSensitive, isSensitive) || other.isSensitive == isSensitive)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,file,name,isSensitive,comment,type);

@override
String toString() {
  return 'DrivePostFile(file: $file, name: $name, isSensitive: $isSensitive, comment: $comment, type: $type)';
}


}

/// @nodoc
abstract mixin class $DrivePostFileCopyWith<$Res>  {
  factory $DrivePostFileCopyWith(DrivePostFile value, $Res Function(DrivePostFile) _then) = _$DrivePostFileCopyWithImpl;
@useResult
$Res call({
 DriveFile file, String name, bool isSensitive, String? comment, String? type
});


$DriveFileCopyWith<$Res> get file;

}
/// @nodoc
class _$DrivePostFileCopyWithImpl<$Res>
    implements $DrivePostFileCopyWith<$Res> {
  _$DrivePostFileCopyWithImpl(this._self, this._then);

  final DrivePostFile _self;
  final $Res Function(DrivePostFile) _then;

/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = null,Object? name = null,Object? isSensitive = null,Object? comment = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as DriveFile,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSensitive: null == isSensitive ? _self.isSensitive : isSensitive // ignore: cast_nullable_to_non_nullable
as bool,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriveFileCopyWith<$Res> get file {
  
  return $DriveFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// Adds pattern-matching-related methods to [DrivePostFile].
extension DrivePostFilePatterns on DrivePostFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrivePostFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrivePostFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrivePostFile value)  $default,){
final _that = this;
switch (_that) {
case _DrivePostFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrivePostFile value)?  $default,){
final _that = this;
switch (_that) {
case _DrivePostFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DriveFile file,  String name,  bool isSensitive,  String? comment,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrivePostFile() when $default != null:
return $default(_that.file,_that.name,_that.isSensitive,_that.comment,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DriveFile file,  String name,  bool isSensitive,  String? comment,  String? type)  $default,) {final _that = this;
switch (_that) {
case _DrivePostFile():
return $default(_that.file,_that.name,_that.isSensitive,_that.comment,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DriveFile file,  String name,  bool isSensitive,  String? comment,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _DrivePostFile() when $default != null:
return $default(_that.file,_that.name,_that.isSensitive,_that.comment,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _DrivePostFile implements DrivePostFile {
  const _DrivePostFile({required this.file, required this.name, this.isSensitive = false, this.comment, this.type});
  

@override final  DriveFile file;
@override final  String name;
@override@JsonKey() final  bool isSensitive;
@override final  String? comment;
@override final  String? type;

/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrivePostFileCopyWith<_DrivePostFile> get copyWith => __$DrivePostFileCopyWithImpl<_DrivePostFile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrivePostFile&&(identical(other.file, file) || other.file == file)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSensitive, isSensitive) || other.isSensitive == isSensitive)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,file,name,isSensitive,comment,type);

@override
String toString() {
  return 'DrivePostFile(file: $file, name: $name, isSensitive: $isSensitive, comment: $comment, type: $type)';
}


}

/// @nodoc
abstract mixin class _$DrivePostFileCopyWith<$Res> implements $DrivePostFileCopyWith<$Res> {
  factory _$DrivePostFileCopyWith(_DrivePostFile value, $Res Function(_DrivePostFile) _then) = __$DrivePostFileCopyWithImpl;
@override @useResult
$Res call({
 DriveFile file, String name, bool isSensitive, String? comment, String? type
});


@override $DriveFileCopyWith<$Res> get file;

}
/// @nodoc
class __$DrivePostFileCopyWithImpl<$Res>
    implements _$DrivePostFileCopyWith<$Res> {
  __$DrivePostFileCopyWithImpl(this._self, this._then);

  final _DrivePostFile _self;
  final $Res Function(_DrivePostFile) _then;

/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = null,Object? name = null,Object? isSensitive = null,Object? comment = freezed,Object? type = freezed,}) {
  return _then(_DrivePostFile(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as DriveFile,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSensitive: null == isSensitive ? _self.isSensitive : isSensitive // ignore: cast_nullable_to_non_nullable
as bool,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriveFileCopyWith<$Res> get file {
  
  return $DriveFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}

// dart format on
