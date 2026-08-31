// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_saver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DataSaver {


/// Create a copy of DataSaver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataSaverCopyWith<DataSaver> get copyWith => _$DataSaverCopyWithImpl<DataSaver>(this as DataSaver, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DataSaver;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataSaver&&(identical(other.media, _this.media) || other.media == _this.media)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.urlPreview, _this.urlPreview) || other.urlPreview == _this.urlPreview));
}


@override
int get hashCode {
  final _this = this as DataSaver;
  return Object.hash(runtimeType,_this.media,_this.avatar,_this.urlPreview);
}

@override
String toString() {
  final _this = this as DataSaver;
  return 'DataSaver(media: ${_this.media}, avatar: ${_this.avatar}, urlPreview: ${_this.urlPreview})';
}


}

/// @nodoc
abstract mixin class $DataSaverCopyWith<$Res>  {
  factory $DataSaverCopyWith(DataSaver value, $Res Function(DataSaver) _then) = _$DataSaverCopyWithImpl;
@useResult
$Res call({
 bool media, bool avatar, bool urlPreview
});




}
/// @nodoc
class _$DataSaverCopyWithImpl<$Res>
    implements $DataSaverCopyWith<$Res> {
  _$DataSaverCopyWithImpl(this._self, this._then);

  final DataSaver _self;
  final $Res Function(DataSaver) _then;

/// Create a copy of DataSaver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? media = null,Object? avatar = null,Object? urlPreview = null,}) {
  return _then(DataSaver(
media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as bool,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as bool,urlPreview: null == urlPreview ? _self.urlPreview : urlPreview // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _DataSaver extends DataSaver {
  const _DataSaver({required this.media, required this.avatar, required this.urlPreview}): super(media: media, avatar: avatar, urlPreview: urlPreview);
  

@override final  bool media;
@override final  bool avatar;
@override final  bool urlPreview;

/// Create a copy of DataSaver
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataSaverCopyWith<_DataSaver> get copyWith => __$DataSaverCopyWithImpl<_DataSaver>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataSaver&&(identical(other.media, media) || other.media == media)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.urlPreview, urlPreview) || other.urlPreview == urlPreview));
}


@override
int get hashCode {
    return Object.hash(runtimeType,media,avatar,urlPreview);
}

@override
String toString() {
    return 'DataSaver(media: $media, avatar: $avatar, urlPreview: $urlPreview)';
}


}

/// @nodoc
abstract mixin class _$DataSaverCopyWith<$Res> implements $DataSaverCopyWith<$Res> {
  factory _$DataSaverCopyWith(_DataSaver value, $Res Function(_DataSaver) _then) = __$DataSaverCopyWithImpl;
@override @useResult
$Res call({
 bool media, bool avatar, bool urlPreview
});




}
/// @nodoc
class __$DataSaverCopyWithImpl<$Res>
    implements _$DataSaverCopyWith<$Res> {
  __$DataSaverCopyWithImpl(this._self, this._then);

  final _DataSaver _self;
  final $Res Function(_DataSaver) _then;

/// Create a copy of DataSaver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? media = null,Object? avatar = null,Object? urlPreview = null,}) {
  return _then(_DataSaver(
media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as bool,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as bool,urlPreview: null == urlPreview ? _self.urlPreview : urlPreview // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
