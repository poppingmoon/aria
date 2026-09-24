// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalPostFile {


/// Create a copy of LocalPostFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalPostFileCopyWith<LocalPostFile> get copyWith => _$LocalPostFileCopyWithImpl<LocalPostFile>(this as LocalPostFile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LocalPostFile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalPostFile&&(identical(other.file, _this.file) || other.file == _this.file)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isSensitive, _this.isSensitive) || other.isSensitive == _this.isSensitive)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.uploading, _this.uploading) || other.uploading == _this.uploading));
}


@override
int get hashCode {
  final _this = this as LocalPostFile;
  return Object.hash(runtimeType,_this.file,_this.name,_this.isSensitive,_this.comment,_this.type,_this.uploading);
}

@override
String toString() {
  final _this = this as LocalPostFile;
  return 'LocalPostFile(file: ${_this.file}, name: ${_this.name}, isSensitive: ${_this.isSensitive}, comment: ${_this.comment}, type: ${_this.type}, uploading: ${_this.uploading})';
}


}

/// @nodoc
abstract mixin class $LocalPostFileCopyWith<$Res>  {
  factory $LocalPostFileCopyWith(LocalPostFile value, $Res Function(LocalPostFile) _then) = _$LocalPostFileCopyWithImpl;
@useResult
$Res call({
 File file,@override String name,@override bool isSensitive,@override String? comment,@override String? type, bool uploading
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
  return _then(LocalPostFile(
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


/// Create a copy of DrivePostFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrivePostFileCopyWith<DrivePostFile> get copyWith => _$DrivePostFileCopyWithImpl<DrivePostFile>(this as DrivePostFile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DrivePostFile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrivePostFile&&(identical(other.file, _this.file) || other.file == _this.file)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isSensitive, _this.isSensitive) || other.isSensitive == _this.isSensitive)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.type, _this.type) || other.type == _this.type));
}


@override
int get hashCode {
  final _this = this as DrivePostFile;
  return Object.hash(runtimeType,_this.file,_this.name,_this.isSensitive,_this.comment,_this.type);
}

@override
String toString() {
  final _this = this as DrivePostFile;
  return 'DrivePostFile(file: ${_this.file}, name: ${_this.name}, isSensitive: ${_this.isSensitive}, comment: ${_this.comment}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $DrivePostFileCopyWith<$Res>  {
  factory $DrivePostFileCopyWith(DrivePostFile value, $Res Function(DrivePostFile) _then) = _$DrivePostFileCopyWithImpl;
@useResult
$Res call({
 DriveFile file,@override String name,@override bool isSensitive,@override String? comment,@override String? type
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
  return _then(DrivePostFile(
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
