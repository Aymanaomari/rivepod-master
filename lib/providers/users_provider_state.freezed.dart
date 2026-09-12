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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProviderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProviderState()';
}


}

/// @nodoc
class $UserProviderStateCopyWith<$Res>  {
$UserProviderStateCopyWith(UserProviderState _, $Res Function(UserProviderState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserProviderStateLoading value)?  loading,TResult Function( UserProviderStateSuccess value)?  success,TResult Function( UserProviderStateFail value)?  fail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserProviderStateLoading() when loading != null:
return loading(_that);case UserProviderStateSuccess() when success != null:
return success(_that);case UserProviderStateFail() when fail != null:
return fail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserProviderStateLoading value)  loading,required TResult Function( UserProviderStateSuccess value)  success,required TResult Function( UserProviderStateFail value)  fail,}){
final _that = this;
switch (_that) {
case UserProviderStateLoading():
return loading(_that);case UserProviderStateSuccess():
return success(_that);case UserProviderStateFail():
return fail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserProviderStateLoading value)?  loading,TResult? Function( UserProviderStateSuccess value)?  success,TResult? Function( UserProviderStateFail value)?  fail,}){
final _that = this;
switch (_that) {
case UserProviderStateLoading() when loading != null:
return loading(_that);case UserProviderStateSuccess() when success != null:
return success(_that);case UserProviderStateFail() when fail != null:
return fail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<User> users)?  success,TResult Function( String errorMessage)?  fail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserProviderStateLoading() when loading != null:
return loading();case UserProviderStateSuccess() when success != null:
return success(_that.users);case UserProviderStateFail() when fail != null:
return fail(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<User> users)  success,required TResult Function( String errorMessage)  fail,}) {final _that = this;
switch (_that) {
case UserProviderStateLoading():
return loading();case UserProviderStateSuccess():
return success(_that.users);case UserProviderStateFail():
return fail(_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<User> users)?  success,TResult? Function( String errorMessage)?  fail,}) {final _that = this;
switch (_that) {
case UserProviderStateLoading() when loading != null:
return loading();case UserProviderStateSuccess() when success != null:
return success(_that.users);case UserProviderStateFail() when fail != null:
return fail(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class UserProviderStateLoading extends UserProviderState {
  const UserProviderStateLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProviderStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProviderState.loading()';
}


}




/// @nodoc


class UserProviderStateSuccess extends UserProviderState {
  const UserProviderStateSuccess({required final  List<User> users}): _users = users,super._();
  

 final  List<User> _users;
 List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProviderStateSuccessCopyWith<UserProviderStateSuccess> get copyWith => _$UserProviderStateSuccessCopyWithImpl<UserProviderStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProviderStateSuccess&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserProviderState.success(users: $users)';
}


}

/// @nodoc
abstract mixin class $UserProviderStateSuccessCopyWith<$Res> implements $UserProviderStateCopyWith<$Res> {
  factory $UserProviderStateSuccessCopyWith(UserProviderStateSuccess value, $Res Function(UserProviderStateSuccess) _then) = _$UserProviderStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class _$UserProviderStateSuccessCopyWithImpl<$Res>
    implements $UserProviderStateSuccessCopyWith<$Res> {
  _$UserProviderStateSuccessCopyWithImpl(this._self, this._then);

  final UserProviderStateSuccess _self;
  final $Res Function(UserProviderStateSuccess) _then;

/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(UserProviderStateSuccess(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc


class UserProviderStateFail extends UserProviderState {
  const UserProviderStateFail({required this.errorMessage}): super._();
  

 final  String errorMessage;

/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProviderStateFailCopyWith<UserProviderStateFail> get copyWith => _$UserProviderStateFailCopyWithImpl<UserProviderStateFail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProviderStateFail&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'UserProviderState.fail(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UserProviderStateFailCopyWith<$Res> implements $UserProviderStateCopyWith<$Res> {
  factory $UserProviderStateFailCopyWith(UserProviderStateFail value, $Res Function(UserProviderStateFail) _then) = _$UserProviderStateFailCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$UserProviderStateFailCopyWithImpl<$Res>
    implements $UserProviderStateFailCopyWith<$Res> {
  _$UserProviderStateFailCopyWithImpl(this._self, this._then);

  final UserProviderStateFail _self;
  final $Res Function(UserProviderStateFail) _then;

/// Create a copy of UserProviderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(UserProviderStateFail(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
