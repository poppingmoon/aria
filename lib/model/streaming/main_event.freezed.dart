// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UrlUploadFinished {

 String? get marker; DriveFile get file;
/// Create a copy of UrlUploadFinished
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlUploadFinishedCopyWith<UrlUploadFinished> get copyWith => _$UrlUploadFinishedCopyWithImpl<UrlUploadFinished>(this as UrlUploadFinished, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlUploadFinished&&(identical(other.marker, marker) || other.marker == marker)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marker,file);

@override
String toString() {
  return 'UrlUploadFinished(marker: $marker, file: $file)';
}


}

/// @nodoc
abstract mixin class $UrlUploadFinishedCopyWith<$Res>  {
  factory $UrlUploadFinishedCopyWith(UrlUploadFinished value, $Res Function(UrlUploadFinished) _then) = _$UrlUploadFinishedCopyWithImpl;
@useResult
$Res call({
 String? marker, DriveFile file
});


$DriveFileCopyWith<$Res> get file;

}
/// @nodoc
class _$UrlUploadFinishedCopyWithImpl<$Res>
    implements $UrlUploadFinishedCopyWith<$Res> {
  _$UrlUploadFinishedCopyWithImpl(this._self, this._then);

  final UrlUploadFinished _self;
  final $Res Function(UrlUploadFinished) _then;

/// Create a copy of UrlUploadFinished
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marker = freezed,Object? file = null,}) {
  return _then(_self.copyWith(
marker: freezed == marker ? _self.marker : marker // ignore: cast_nullable_to_non_nullable
as String?,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as DriveFile,
  ));
}
/// Create a copy of UrlUploadFinished
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriveFileCopyWith<$Res> get file {
  
  return $DriveFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// @nodoc
@JsonSerializable(createToJson: false)

class _UrlUploadFinished implements UrlUploadFinished {
  const _UrlUploadFinished({this.marker, required this.file});
  factory _UrlUploadFinished.fromJson(Map<String, dynamic> json) => _$UrlUploadFinishedFromJson(json);

@override final  String? marker;
@override final  DriveFile file;

/// Create a copy of UrlUploadFinished
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UrlUploadFinishedCopyWith<_UrlUploadFinished> get copyWith => __$UrlUploadFinishedCopyWithImpl<_UrlUploadFinished>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UrlUploadFinished&&(identical(other.marker, marker) || other.marker == marker)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marker,file);

@override
String toString() {
  return 'UrlUploadFinished(marker: $marker, file: $file)';
}


}

/// @nodoc
abstract mixin class _$UrlUploadFinishedCopyWith<$Res> implements $UrlUploadFinishedCopyWith<$Res> {
  factory _$UrlUploadFinishedCopyWith(_UrlUploadFinished value, $Res Function(_UrlUploadFinished) _then) = __$UrlUploadFinishedCopyWithImpl;
@override @useResult
$Res call({
 String? marker, DriveFile file
});


@override $DriveFileCopyWith<$Res> get file;

}
/// @nodoc
class __$UrlUploadFinishedCopyWithImpl<$Res>
    implements _$UrlUploadFinishedCopyWith<$Res> {
  __$UrlUploadFinishedCopyWithImpl(this._self, this._then);

  final _UrlUploadFinished _self;
  final $Res Function(_UrlUploadFinished) _then;

/// Create a copy of UrlUploadFinished
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marker = freezed,Object? file = null,}) {
  return _then(_UrlUploadFinished(
marker: freezed == marker ? _self.marker : marker // ignore: cast_nullable_to_non_nullable
as String?,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as DriveFile,
  ));
}

/// Create a copy of UrlUploadFinished
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
