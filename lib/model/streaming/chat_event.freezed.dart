// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Message {


/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Message;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as Message;
  return Object.hash(runtimeType,_this.message);
}

@override
String toString() {
  final _this = this as Message;
  return 'Message(message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
 ChatMessage message
});


$ChatMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(Message(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as ChatMessage,
  ));
}
/// Create a copy of Message
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
mixin _$Deleted {


/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletedCopyWith<Deleted> get copyWith => _$DeletedCopyWithImpl<Deleted>(this as Deleted, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Deleted;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deleted&&(identical(other.messageId, _this.messageId) || other.messageId == _this.messageId));
}


@override
int get hashCode {
  final _this = this as Deleted;
  return Object.hash(runtimeType,_this.messageId);
}

@override
String toString() {
  final _this = this as Deleted;
  return 'Deleted(messageId: ${_this.messageId})';
}


}

/// @nodoc
abstract mixin class $DeletedCopyWith<$Res>  {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) _then) = _$DeletedCopyWithImpl;
@useResult
$Res call({
 String messageId
});




}
/// @nodoc
class _$DeletedCopyWithImpl<$Res>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(this._self, this._then);

  final Deleted _self;
  final $Res Function(Deleted) _then;

/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,}) {
  return _then(Deleted(
null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}




/// @nodoc
mixin _$React {


/// Create a copy of React
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReactCopyWith<React> get copyWith => _$ReactCopyWithImpl<React>(this as React, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as React;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is React&&(identical(other.reaction, _this.reaction) || other.reaction == _this.reaction)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.messageId, _this.messageId) || other.messageId == _this.messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as React;
  return Object.hash(runtimeType,_this.reaction,_this.user,_this.messageId);
}

@override
String toString() {
  final _this = this as React;
  return 'React(reaction: ${_this.reaction}, user: ${_this.user}, messageId: ${_this.messageId})';
}


}

/// @nodoc
abstract mixin class $ReactCopyWith<$Res>  {
  factory $ReactCopyWith(React value, $Res Function(React) _then) = _$ReactCopyWithImpl;
@useResult
$Res call({
 String reaction, UserLite? user, String messageId
});


$UserLiteCopyWith<$Res>? get user;

}
/// @nodoc
class _$ReactCopyWithImpl<$Res>
    implements $ReactCopyWith<$Res> {
  _$ReactCopyWithImpl(this._self, this._then);

  final React _self;
  final $Res Function(React) _then;

/// Create a copy of React
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reaction = null,Object? user = freezed,Object? messageId = null,}) {
  return _then(React(
reaction: null == reaction ? _self.reaction : reaction // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserLite?,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of React
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLiteCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserLiteCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}




/// @nodoc
mixin _$Unreact {


/// Create a copy of Unreact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreactCopyWith<Unreact> get copyWith => _$UnreactCopyWithImpl<Unreact>(this as Unreact, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Unreact;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unreact&&(identical(other.reaction, _this.reaction) || other.reaction == _this.reaction)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.messageId, _this.messageId) || other.messageId == _this.messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Unreact;
  return Object.hash(runtimeType,_this.reaction,_this.user,_this.messageId);
}

@override
String toString() {
  final _this = this as Unreact;
  return 'Unreact(reaction: ${_this.reaction}, user: ${_this.user}, messageId: ${_this.messageId})';
}


}

/// @nodoc
abstract mixin class $UnreactCopyWith<$Res>  {
  factory $UnreactCopyWith(Unreact value, $Res Function(Unreact) _then) = _$UnreactCopyWithImpl;
@useResult
$Res call({
 String reaction, UserLite? user, String messageId
});


$UserLiteCopyWith<$Res>? get user;

}
/// @nodoc
class _$UnreactCopyWithImpl<$Res>
    implements $UnreactCopyWith<$Res> {
  _$UnreactCopyWithImpl(this._self, this._then);

  final Unreact _self;
  final $Res Function(Unreact) _then;

/// Create a copy of Unreact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reaction = null,Object? user = freezed,Object? messageId = null,}) {
  return _then(Unreact(
reaction: null == reaction ? _self.reaction : reaction // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserLite?,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Unreact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLiteCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserLiteCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}



// dart format on
