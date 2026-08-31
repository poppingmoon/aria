// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Notification {


/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Notification;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.notification, _this.notification) || other.notification == _this.notification));
}


@override
int get hashCode {
  final _this = this as Notification;
  return Object.hash(runtimeType,_this.notification);
}

@override
String toString() {
  final _this = this as Notification;
  return 'Notification(notification: ${_this.notification})';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 INotificationsResponse notification
});


$INotificationsResponseCopyWith<$Res> get notification;

}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notification = null,}) {
  return _then(Notification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as INotificationsResponse,
  ));
}
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INotificationsResponseCopyWith<$Res> get notification {
  
  return $INotificationsResponseCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}



/// @nodoc


class _Notification extends Notification {
  const _Notification(this.notification): super(notification);
  

@override final  INotificationsResponse notification;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode {
    return Object.hash(runtimeType,notification);
}

@override
String toString() {
    return 'Notification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 INotificationsResponse notification
});


@override $INotificationsResponseCopyWith<$Res> get notification;

}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(_Notification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as INotificationsResponse,
  ));
}

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INotificationsResponseCopyWith<$Res> get notification {
  
  return $INotificationsResponseCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc
mixin _$Mention {


/// Create a copy of Mention
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionCopyWith<Mention> get copyWith => _$MentionCopyWithImpl<Mention>(this as Mention, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Mention;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mention&&(identical(other.note, _this.note) || other.note == _this.note));
}


@override
int get hashCode {
  final _this = this as Mention;
  return Object.hash(runtimeType,_this.note);
}

@override
String toString() {
  final _this = this as Mention;
  return 'Mention(note: ${_this.note})';
}


}

/// @nodoc
abstract mixin class $MentionCopyWith<$Res>  {
  factory $MentionCopyWith(Mention value, $Res Function(Mention) _then) = _$MentionCopyWithImpl;
@useResult
$Res call({
 Note note
});


$NoteCopyWith<$Res> get note;

}
/// @nodoc
class _$MentionCopyWithImpl<$Res>
    implements $MentionCopyWith<$Res> {
  _$MentionCopyWithImpl(this._self, this._then);

  final Mention _self;
  final $Res Function(Mention) _then;

/// Create a copy of Mention
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? note = null,}) {
  return _then(Mention(
null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note,
  ));
}
/// Create a copy of Mention
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res> get note {
  
  return $NoteCopyWith<$Res>(_self.note, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}



/// @nodoc


class _Mention extends Mention {
  const _Mention(this.note): super(note);
  

@override final  Note note;

/// Create a copy of Mention
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MentionCopyWith<_Mention> get copyWith => __$MentionCopyWithImpl<_Mention>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mention&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode {
    return Object.hash(runtimeType,note);
}

@override
String toString() {
    return 'Mention(note: $note)';
}


}

/// @nodoc
abstract mixin class _$MentionCopyWith<$Res> implements $MentionCopyWith<$Res> {
  factory _$MentionCopyWith(_Mention value, $Res Function(_Mention) _then) = __$MentionCopyWithImpl;
@override @useResult
$Res call({
 Note note
});


@override $NoteCopyWith<$Res> get note;

}
/// @nodoc
class __$MentionCopyWithImpl<$Res>
    implements _$MentionCopyWith<$Res> {
  __$MentionCopyWithImpl(this._self, this._then);

  final _Mention _self;
  final $Res Function(_Mention) _then;

/// Create a copy of Mention
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? note = null,}) {
  return _then(_Mention(
null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note,
  ));
}

/// Create a copy of Mention
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res> get note {
  
  return $NoteCopyWith<$Res>(_self.note, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}

/// @nodoc
mixin _$MeUpdated {


/// Create a copy of MeUpdated
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeUpdatedCopyWith<MeUpdated> get copyWith => _$MeUpdatedCopyWithImpl<MeUpdated>(this as MeUpdated, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MeUpdated;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeUpdated&&(identical(other.i, _this.i) || other.i == _this.i));
}


@override
int get hashCode {
  final _this = this as MeUpdated;
  return Object.hash(runtimeType,_this.i);
}

@override
String toString() {
  final _this = this as MeUpdated;
  return 'MeUpdated(i: ${_this.i})';
}


}

/// @nodoc
abstract mixin class $MeUpdatedCopyWith<$Res>  {
  factory $MeUpdatedCopyWith(MeUpdated value, $Res Function(MeUpdated) _then) = _$MeUpdatedCopyWithImpl;
@useResult
$Res call({
 MeDetailed i
});


$MeDetailedCopyWith<$Res> get i;

}
/// @nodoc
class _$MeUpdatedCopyWithImpl<$Res>
    implements $MeUpdatedCopyWith<$Res> {
  _$MeUpdatedCopyWithImpl(this._self, this._then);

  final MeUpdated _self;
  final $Res Function(MeUpdated) _then;

/// Create a copy of MeUpdated
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? i = null,}) {
  return _then(MeUpdated(
null == i ? _self.i : i // ignore: cast_nullable_to_non_nullable
as MeDetailed,
  ));
}
/// Create a copy of MeUpdated
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeDetailedCopyWith<$Res> get i {
  
  return $MeDetailedCopyWith<$Res>(_self.i, (value) {
    return _then(_self.copyWith(i: value));
  });
}
}



/// @nodoc


class _MeUpdated extends MeUpdated {
  const _MeUpdated(this.i): super(i);
  

@override final  MeDetailed i;

/// Create a copy of MeUpdated
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeUpdatedCopyWith<_MeUpdated> get copyWith => __$MeUpdatedCopyWithImpl<_MeUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeUpdated&&(identical(other.i, i) || other.i == i));
}


@override
int get hashCode {
    return Object.hash(runtimeType,i);
}

@override
String toString() {
    return 'MeUpdated(i: $i)';
}


}

/// @nodoc
abstract mixin class _$MeUpdatedCopyWith<$Res> implements $MeUpdatedCopyWith<$Res> {
  factory _$MeUpdatedCopyWith(_MeUpdated value, $Res Function(_MeUpdated) _then) = __$MeUpdatedCopyWithImpl;
@override @useResult
$Res call({
 MeDetailed i
});


@override $MeDetailedCopyWith<$Res> get i;

}
/// @nodoc
class __$MeUpdatedCopyWithImpl<$Res>
    implements _$MeUpdatedCopyWith<$Res> {
  __$MeUpdatedCopyWithImpl(this._self, this._then);

  final _MeUpdated _self;
  final $Res Function(_MeUpdated) _then;

/// Create a copy of MeUpdated
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? i = null,}) {
  return _then(_MeUpdated(
null == i ? _self.i : i // ignore: cast_nullable_to_non_nullable
as MeDetailed,
  ));
}

/// Create a copy of MeUpdated
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeDetailedCopyWith<$Res> get i {
  
  return $MeDetailedCopyWith<$Res>(_self.i, (value) {
    return _then(_self.copyWith(i: value));
  });
}
}


/// @nodoc
mixin _$UrlUploadFinished {


/// Create a copy of UrlUploadFinished
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlUploadFinishedCopyWith<UrlUploadFinished> get copyWith => _$UrlUploadFinishedCopyWithImpl<UrlUploadFinished>(this as UrlUploadFinished, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UrlUploadFinished;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlUploadFinished&&(identical(other.marker, _this.marker) || other.marker == _this.marker)&&(identical(other.file, _this.file) || other.file == _this.file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UrlUploadFinished;
  return Object.hash(runtimeType,_this.marker,_this.file);
}

@override
String toString() {
  final _this = this as UrlUploadFinished;
  return 'UrlUploadFinished(marker: ${_this.marker}, file: ${_this.file})';
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
  return _then(UrlUploadFinished(
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


/// Adds pattern-matching-related methods to [UrlUploadFinished].
extension UrlUploadFinishedPatterns on UrlUploadFinished {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UrlUploadFinished value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UrlUploadFinished() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UrlUploadFinished value)  $default,){
final _that = this;
switch (_that) {
case _UrlUploadFinished():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UrlUploadFinished value)?  $default,){
final _that = this;
switch (_that) {
case _UrlUploadFinished() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? marker,  DriveFile file)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UrlUploadFinished() when $default != null:
return $default(_that.marker,_that.file);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? marker,  DriveFile file)  $default,) {final _that = this;
switch (_that) {
case _UrlUploadFinished():
return $default(_that.marker,_that.file);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? marker,  DriveFile file)?  $default,) {final _that = this;
switch (_that) {
case _UrlUploadFinished() when $default != null:
return $default(_that.marker,_that.file);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _UrlUploadFinished extends UrlUploadFinished {
  const _UrlUploadFinished({this.marker, required this.file}): super(marker: marker, file: file);
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
int get hashCode {
    return Object.hash(runtimeType,marker,file);
}

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

/// @nodoc
mixin _$UnreadNotification {


/// Create a copy of UnreadNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadNotificationCopyWith<UnreadNotification> get copyWith => _$UnreadNotificationCopyWithImpl<UnreadNotification>(this as UnreadNotification, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UnreadNotification;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadNotification&&(identical(other.notification, _this.notification) || other.notification == _this.notification));
}


@override
int get hashCode {
  final _this = this as UnreadNotification;
  return Object.hash(runtimeType,_this.notification);
}

@override
String toString() {
  final _this = this as UnreadNotification;
  return 'UnreadNotification(notification: ${_this.notification})';
}


}

/// @nodoc
abstract mixin class $UnreadNotificationCopyWith<$Res>  {
  factory $UnreadNotificationCopyWith(UnreadNotification value, $Res Function(UnreadNotification) _then) = _$UnreadNotificationCopyWithImpl;
@useResult
$Res call({
 INotificationsResponse notification
});


$INotificationsResponseCopyWith<$Res> get notification;

}
/// @nodoc
class _$UnreadNotificationCopyWithImpl<$Res>
    implements $UnreadNotificationCopyWith<$Res> {
  _$UnreadNotificationCopyWithImpl(this._self, this._then);

  final UnreadNotification _self;
  final $Res Function(UnreadNotification) _then;

/// Create a copy of UnreadNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notification = null,}) {
  return _then(UnreadNotification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as INotificationsResponse,
  ));
}
/// Create a copy of UnreadNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INotificationsResponseCopyWith<$Res> get notification {
  
  return $INotificationsResponseCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}



/// @nodoc


class _UnreadNotification extends UnreadNotification {
  const _UnreadNotification(this.notification): super(notification);
  

@override final  INotificationsResponse notification;

/// Create a copy of UnreadNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreadNotificationCopyWith<_UnreadNotification> get copyWith => __$UnreadNotificationCopyWithImpl<_UnreadNotification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnreadNotification&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode {
    return Object.hash(runtimeType,notification);
}

@override
String toString() {
    return 'UnreadNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$UnreadNotificationCopyWith<$Res> implements $UnreadNotificationCopyWith<$Res> {
  factory _$UnreadNotificationCopyWith(_UnreadNotification value, $Res Function(_UnreadNotification) _then) = __$UnreadNotificationCopyWithImpl;
@override @useResult
$Res call({
 INotificationsResponse notification
});


@override $INotificationsResponseCopyWith<$Res> get notification;

}
/// @nodoc
class __$UnreadNotificationCopyWithImpl<$Res>
    implements _$UnreadNotificationCopyWith<$Res> {
  __$UnreadNotificationCopyWithImpl(this._self, this._then);

  final _UnreadNotification _self;
  final $Res Function(_UnreadNotification) _then;

/// Create a copy of UnreadNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(_UnreadNotification(
null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as INotificationsResponse,
  ));
}

/// Create a copy of UnreadNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INotificationsResponseCopyWith<$Res> get notification {
  
  return $INotificationsResponseCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

/// @nodoc
mixin _$NewChatMessage {


/// Create a copy of NewChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewChatMessageCopyWith<NewChatMessage> get copyWith => _$NewChatMessageCopyWithImpl<NewChatMessage>(this as NewChatMessage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NewChatMessage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewChatMessage&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as NewChatMessage;
  return Object.hash(runtimeType,_this.message);
}

@override
String toString() {
  final _this = this as NewChatMessage;
  return 'NewChatMessage(message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $NewChatMessageCopyWith<$Res>  {
  factory $NewChatMessageCopyWith(NewChatMessage value, $Res Function(NewChatMessage) _then) = _$NewChatMessageCopyWithImpl;
@useResult
$Res call({
 ChatMessage message
});


$ChatMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$NewChatMessageCopyWithImpl<$Res>
    implements $NewChatMessageCopyWith<$Res> {
  _$NewChatMessageCopyWithImpl(this._self, this._then);

  final NewChatMessage _self;
  final $Res Function(NewChatMessage) _then;

/// Create a copy of NewChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(NewChatMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,
  ));
}
/// Create a copy of NewChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res> get message {
  
  return $ChatMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}



/// @nodoc


class _NewChatMessage extends NewChatMessage {
  const _NewChatMessage(this.message): super(message);
  

@override final  ChatMessage message;

/// Create a copy of NewChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewChatMessageCopyWith<_NewChatMessage> get copyWith => __$NewChatMessageCopyWithImpl<_NewChatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewChatMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'NewChatMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NewChatMessageCopyWith<$Res> implements $NewChatMessageCopyWith<$Res> {
  factory _$NewChatMessageCopyWith(_NewChatMessage value, $Res Function(_NewChatMessage) _then) = __$NewChatMessageCopyWithImpl;
@override @useResult
$Res call({
 ChatMessage message
});


@override $ChatMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$NewChatMessageCopyWithImpl<$Res>
    implements _$NewChatMessageCopyWith<$Res> {
  __$NewChatMessageCopyWithImpl(this._self, this._then);

  final _NewChatMessage _self;
  final $Res Function(_NewChatMessage) _then;

/// Create a copy of NewChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NewChatMessage(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,
  ));
}

/// Create a copy of NewChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res> get message {
  
  return $ChatMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc
mixin _$ReceiveFollowRequest {


/// Create a copy of ReceiveFollowRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiveFollowRequestCopyWith<ReceiveFollowRequest> get copyWith => _$ReceiveFollowRequestCopyWithImpl<ReceiveFollowRequest>(this as ReceiveFollowRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReceiveFollowRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiveFollowRequest&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as ReceiveFollowRequest;
  return Object.hash(runtimeType,_this.user);
}

@override
String toString() {
  final _this = this as ReceiveFollowRequest;
  return 'ReceiveFollowRequest(user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $ReceiveFollowRequestCopyWith<$Res>  {
  factory $ReceiveFollowRequestCopyWith(ReceiveFollowRequest value, $Res Function(ReceiveFollowRequest) _then) = _$ReceiveFollowRequestCopyWithImpl;
@useResult
$Res call({
 UserLite user
});


$UserLiteCopyWith<$Res> get user;

}
/// @nodoc
class _$ReceiveFollowRequestCopyWithImpl<$Res>
    implements $ReceiveFollowRequestCopyWith<$Res> {
  _$ReceiveFollowRequestCopyWithImpl(this._self, this._then);

  final ReceiveFollowRequest _self;
  final $Res Function(ReceiveFollowRequest) _then;

/// Create a copy of ReceiveFollowRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(ReceiveFollowRequest(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserLite,
  ));
}
/// Create a copy of ReceiveFollowRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLiteCopyWith<$Res> get user {
  
  return $UserLiteCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}



/// @nodoc


class _ReceiveFollowRequest extends ReceiveFollowRequest {
  const _ReceiveFollowRequest(this.user): super(user);
  

@override final  UserLite user;

/// Create a copy of ReceiveFollowRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiveFollowRequestCopyWith<_ReceiveFollowRequest> get copyWith => __$ReceiveFollowRequestCopyWithImpl<_ReceiveFollowRequest>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiveFollowRequest&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'ReceiveFollowRequest(user: $user)';
}


}

/// @nodoc
abstract mixin class _$ReceiveFollowRequestCopyWith<$Res> implements $ReceiveFollowRequestCopyWith<$Res> {
  factory _$ReceiveFollowRequestCopyWith(_ReceiveFollowRequest value, $Res Function(_ReceiveFollowRequest) _then) = __$ReceiveFollowRequestCopyWithImpl;
@override @useResult
$Res call({
 UserLite user
});


@override $UserLiteCopyWith<$Res> get user;

}
/// @nodoc
class __$ReceiveFollowRequestCopyWithImpl<$Res>
    implements _$ReceiveFollowRequestCopyWith<$Res> {
  __$ReceiveFollowRequestCopyWithImpl(this._self, this._then);

  final _ReceiveFollowRequest _self;
  final $Res Function(_ReceiveFollowRequest) _then;

/// Create a copy of ReceiveFollowRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_ReceiveFollowRequest(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserLite,
  ));
}

/// Create a copy of ReceiveFollowRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLiteCopyWith<$Res> get user {
  
  return $UserLiteCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$AnnouncementCreated {


/// Create a copy of AnnouncementCreated
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementCreatedCopyWith<AnnouncementCreated> get copyWith => _$AnnouncementCreatedCopyWithImpl<AnnouncementCreated>(this as AnnouncementCreated, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AnnouncementCreated;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementCreated&&(identical(other.announcement, _this.announcement) || other.announcement == _this.announcement));
}


@override
int get hashCode {
  final _this = this as AnnouncementCreated;
  return Object.hash(runtimeType,_this.announcement);
}

@override
String toString() {
  final _this = this as AnnouncementCreated;
  return 'AnnouncementCreated(announcement: ${_this.announcement})';
}


}

/// @nodoc
abstract mixin class $AnnouncementCreatedCopyWith<$Res>  {
  factory $AnnouncementCreatedCopyWith(AnnouncementCreated value, $Res Function(AnnouncementCreated) _then) = _$AnnouncementCreatedCopyWithImpl;
@useResult
$Res call({
 AnnouncementsResponse announcement
});


$AnnouncementsResponseCopyWith<$Res> get announcement;

}
/// @nodoc
class _$AnnouncementCreatedCopyWithImpl<$Res>
    implements $AnnouncementCreatedCopyWith<$Res> {
  _$AnnouncementCreatedCopyWithImpl(this._self, this._then);

  final AnnouncementCreated _self;
  final $Res Function(AnnouncementCreated) _then;

/// Create a copy of AnnouncementCreated
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? announcement = null,}) {
  return _then(AnnouncementCreated(
null == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as AnnouncementsResponse,
  ));
}
/// Create a copy of AnnouncementCreated
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnouncementsResponseCopyWith<$Res> get announcement {
  
  return $AnnouncementsResponseCopyWith<$Res>(_self.announcement, (value) {
    return _then(_self.copyWith(announcement: value));
  });
}
}



/// @nodoc


class _AnnouncementCreated extends AnnouncementCreated {
  const _AnnouncementCreated(this.announcement): super(announcement);
  

@override final  AnnouncementsResponse announcement;

/// Create a copy of AnnouncementCreated
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnnouncementCreatedCopyWith<_AnnouncementCreated> get copyWith => __$AnnouncementCreatedCopyWithImpl<_AnnouncementCreated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnnouncementCreated&&(identical(other.announcement, announcement) || other.announcement == announcement));
}


@override
int get hashCode {
    return Object.hash(runtimeType,announcement);
}

@override
String toString() {
    return 'AnnouncementCreated(announcement: $announcement)';
}


}

/// @nodoc
abstract mixin class _$AnnouncementCreatedCopyWith<$Res> implements $AnnouncementCreatedCopyWith<$Res> {
  factory _$AnnouncementCreatedCopyWith(_AnnouncementCreated value, $Res Function(_AnnouncementCreated) _then) = __$AnnouncementCreatedCopyWithImpl;
@override @useResult
$Res call({
 AnnouncementsResponse announcement
});


@override $AnnouncementsResponseCopyWith<$Res> get announcement;

}
/// @nodoc
class __$AnnouncementCreatedCopyWithImpl<$Res>
    implements _$AnnouncementCreatedCopyWith<$Res> {
  __$AnnouncementCreatedCopyWithImpl(this._self, this._then);

  final _AnnouncementCreated _self;
  final $Res Function(_AnnouncementCreated) _then;

/// Create a copy of AnnouncementCreated
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? announcement = null,}) {
  return _then(_AnnouncementCreated(
null == announcement ? _self.announcement : announcement // ignore: cast_nullable_to_non_nullable
as AnnouncementsResponse,
  ));
}

/// Create a copy of AnnouncementCreated
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnnouncementsResponseCopyWith<$Res> get announcement {
  
  return $AnnouncementsResponseCopyWith<$Res>(_self.announcement, (value) {
    return _then(_self.copyWith(announcement: value));
  });
}
}

// dart format on
