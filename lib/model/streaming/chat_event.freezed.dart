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

@override ChatMessage get message;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Message(message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
@override ChatMessage message
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


class _Message extends Message {
  const _Message(@override this.message): super(message);
  

@override@override final  ChatMessage message;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Message(message: $message)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
@override ChatMessage message
});


@override $ChatMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Message(
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

@override String get messageId;
/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletedCopyWith<Deleted> get copyWith => _$DeletedCopyWithImpl<Deleted>(this as Deleted, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deleted&&(identical(other.messageId, messageId) || other.messageId == messageId));
}


@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'Deleted(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $DeletedCopyWith<$Res>  {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) _then) = _$DeletedCopyWithImpl;
@useResult
$Res call({
@override String messageId
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


class _Deleted extends Deleted {
  const _Deleted(@override this.messageId): super(messageId);
  

@override@override final  String messageId;

/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleted&&(identical(other.messageId, messageId) || other.messageId == messageId));
}


@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'Deleted(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class _$DeletedCopyWith<$Res> implements $DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) _then) = __$DeletedCopyWithImpl;
@override @useResult
$Res call({
@override String messageId
});




}
/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(this._self, this._then);

  final _Deleted _self;
  final $Res Function(_Deleted) _then;

/// Create a copy of Deleted
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,}) {
  return _then(_Deleted(
null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$React {

@override String get reaction;@override UserLite? get user;@override String get messageId;
/// Create a copy of React
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReactCopyWith<React> get copyWith => _$ReactCopyWithImpl<React>(this as React, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is React&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.user, user) || other.user == user)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,user,messageId);

@override
String toString() {
  return 'React(reaction: $reaction, user: $user, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $ReactCopyWith<$Res>  {
  factory $ReactCopyWith(React value, $Res Function(React) _then) = _$ReactCopyWithImpl;
@useResult
$Res call({
@override String reaction,@override UserLite? user,@override String messageId
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


/// Adds pattern-matching-related methods to [React].
extension ReactPatterns on React {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _React value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _React() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _React value)  $default,){
final _that = this;
switch (_that) {
case _React():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _React value)?  $default,){
final _that = this;
switch (_that) {
case _React() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@override  String reaction, @override  UserLite? user, @override  String messageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _React() when $default != null:
return $default(_that.reaction,_that.user,_that.messageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@override  String reaction, @override  UserLite? user, @override  String messageId)  $default,) {final _that = this;
switch (_that) {
case _React():
return $default(_that.reaction,_that.user,_that.messageId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@override  String reaction, @override  UserLite? user, @override  String messageId)?  $default,) {final _that = this;
switch (_that) {
case _React() when $default != null:
return $default(_that.reaction,_that.user,_that.messageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _React extends React {
  const _React({@override required this.reaction, @override this.user, @override required this.messageId}): super(reaction: reaction, user: user, messageId: messageId);
  factory _React.fromJson(Map<String, dynamic> json) => _$ReactFromJson(json);

@override@override final  String reaction;
@override@override final  UserLite? user;
@override@override final  String messageId;

/// Create a copy of React
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReactCopyWith<_React> get copyWith => __$ReactCopyWithImpl<_React>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _React&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.user, user) || other.user == user)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,user,messageId);

@override
String toString() {
  return 'React(reaction: $reaction, user: $user, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class _$ReactCopyWith<$Res> implements $ReactCopyWith<$Res> {
  factory _$ReactCopyWith(_React value, $Res Function(_React) _then) = __$ReactCopyWithImpl;
@override @useResult
$Res call({
@override String reaction,@override UserLite? user,@override String messageId
});


@override $UserLiteCopyWith<$Res>? get user;

}
/// @nodoc
class __$ReactCopyWithImpl<$Res>
    implements _$ReactCopyWith<$Res> {
  __$ReactCopyWithImpl(this._self, this._then);

  final _React _self;
  final $Res Function(_React) _then;

/// Create a copy of React
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reaction = null,Object? user = freezed,Object? messageId = null,}) {
  return _then(_React(
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

@override String get reaction;@override UserLite? get user;@override String get messageId;
/// Create a copy of Unreact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreactCopyWith<Unreact> get copyWith => _$UnreactCopyWithImpl<Unreact>(this as Unreact, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unreact&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.user, user) || other.user == user)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,user,messageId);

@override
String toString() {
  return 'Unreact(reaction: $reaction, user: $user, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $UnreactCopyWith<$Res>  {
  factory $UnreactCopyWith(Unreact value, $Res Function(Unreact) _then) = _$UnreactCopyWithImpl;
@useResult
$Res call({
@override String reaction,@override UserLite? user,@override String messageId
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


/// Adds pattern-matching-related methods to [Unreact].
extension UnreactPatterns on Unreact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Unreact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Unreact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Unreact value)  $default,){
final _that = this;
switch (_that) {
case _Unreact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Unreact value)?  $default,){
final _that = this;
switch (_that) {
case _Unreact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@override  String reaction, @override  UserLite? user, @override  String messageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Unreact() when $default != null:
return $default(_that.reaction,_that.user,_that.messageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@override  String reaction, @override  UserLite? user, @override  String messageId)  $default,) {final _that = this;
switch (_that) {
case _Unreact():
return $default(_that.reaction,_that.user,_that.messageId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@override  String reaction, @override  UserLite? user, @override  String messageId)?  $default,) {final _that = this;
switch (_that) {
case _Unreact() when $default != null:
return $default(_that.reaction,_that.user,_that.messageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _Unreact extends Unreact {
  const _Unreact({@override required this.reaction, @override this.user, @override required this.messageId}): super(reaction: reaction, user: user, messageId: messageId);
  factory _Unreact.fromJson(Map<String, dynamic> json) => _$UnreactFromJson(json);

@override@override final  String reaction;
@override@override final  UserLite? user;
@override@override final  String messageId;

/// Create a copy of Unreact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreactCopyWith<_Unreact> get copyWith => __$UnreactCopyWithImpl<_Unreact>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unreact&&(identical(other.reaction, reaction) || other.reaction == reaction)&&(identical(other.user, user) || other.user == user)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reaction,user,messageId);

@override
String toString() {
  return 'Unreact(reaction: $reaction, user: $user, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class _$UnreactCopyWith<$Res> implements $UnreactCopyWith<$Res> {
  factory _$UnreactCopyWith(_Unreact value, $Res Function(_Unreact) _then) = __$UnreactCopyWithImpl;
@override @useResult
$Res call({
@override String reaction,@override UserLite? user,@override String messageId
});


@override $UserLiteCopyWith<$Res>? get user;

}
/// @nodoc
class __$UnreactCopyWithImpl<$Res>
    implements _$UnreactCopyWith<$Res> {
  __$UnreactCopyWithImpl(this._self, this._then);

  final _Unreact _self;
  final $Res Function(_Unreact) _then;

/// Create a copy of Unreact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reaction = null,Object? user = freezed,Object? messageId = null,}) {
  return _then(_Unreact(
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
