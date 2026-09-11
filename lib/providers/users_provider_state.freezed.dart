// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProviderState {

 UserProviderStatus get status; List<User> get users; String get errorMessage;
/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProviderStateCopyWith<UserProviderState> get copyWith => _$UserProviderStateCopyWithImpl<UserProviderState>(this as UserProviderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProviderState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(users),errorMessage);

@override
String toString() {
  return 'UserProviderState(status: $status, users: $users, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UserProviderStateCopyWith<$Res>  {
  factory $UserProviderStateCopyWith(UserProviderState value, $Res Function(UserProviderState) _then) = _$UserProviderStateCopyWithImpl;
@useResult
$Res call({
 UserProviderStatus status, List<User> users, String errorMessage
});




}
/// @nodoc
class _$UserProviderStateCopyWithImpl<$Res>
    implements $UserProviderStateCopyWith<$Res> {
  _$UserProviderStateCopyWithImpl(this._self, this._then);

  final UserProviderState _self;
  final $Res Function(UserProviderState) _then;

/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? users = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserProviderStatus,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProviderState].
extension UserProviderStatePatterns on UserProviderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProviderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProviderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProviderState value)  $default,){
final _that = this;
switch (_that) {
case _UserProviderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProviderState value)?  $default,){
final _that = this;
switch (_that) {
case _UserProviderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProviderStatus status,  List<User> users,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProviderState() when $default != null:
return $default(_that.status,_that.users,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProviderStatus status,  List<User> users,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _UserProviderState():
return $default(_that.status,_that.users,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProviderStatus status,  List<User> users,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _UserProviderState() when $default != null:
return $default(_that.status,_that.users,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _UserProviderState implements UserProviderState {
  const _UserProviderState({required this.status, final  List<User> users = const [], this.errorMessage = ''}): _users = users;
  

@override final  UserProviderStatus status;
 final  List<User> _users;
@override@JsonKey() List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  String errorMessage;

/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProviderStateCopyWith<_UserProviderState> get copyWith => __$UserProviderStateCopyWithImpl<_UserProviderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProviderState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_users),errorMessage);

@override
String toString() {
  return 'UserProviderState(status: $status, users: $users, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$UserProviderStateCopyWith<$Res> implements $UserProviderStateCopyWith<$Res> {
  factory _$UserProviderStateCopyWith(_UserProviderState value, $Res Function(_UserProviderState) _then) = __$UserProviderStateCopyWithImpl;
@override @useResult
$Res call({
 UserProviderStatus status, List<User> users, String errorMessage
});




}
/// @nodoc
class __$UserProviderStateCopyWithImpl<$Res>
    implements _$UserProviderStateCopyWith<$Res> {
  __$UserProviderStateCopyWithImpl(this._self, this._then);

  final _UserProviderState _self;
  final $Res Function(_UserProviderState) _then;

/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? users = null,Object? errorMessage = null,}) {
  return _then(_UserProviderState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserProviderStatus,users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
