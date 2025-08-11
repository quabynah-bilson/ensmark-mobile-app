// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserAuthState {

 bool get authenticating; String? get errorMessage; AppUser? get user;
/// Create a copy of UserAuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAuthStateCopyWith<UserAuthState> get copyWith => _$UserAuthStateCopyWithImpl<UserAuthState>(this as UserAuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAuthState&&(identical(other.authenticating, authenticating) || other.authenticating == authenticating)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,authenticating,errorMessage,user);

@override
String toString() {
  return 'UserAuthState(authenticating: $authenticating, errorMessage: $errorMessage, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserAuthStateCopyWith<$Res>  {
  factory $UserAuthStateCopyWith(UserAuthState value, $Res Function(UserAuthState) _then) = _$UserAuthStateCopyWithImpl;
@useResult
$Res call({
 bool authenticating, String? errorMessage, AppUser? user
});




}
/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._self, this._then);

  final UserAuthState _self;
  final $Res Function(UserAuthState) _then;

/// Create a copy of UserAuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authenticating = null,Object? errorMessage = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
authenticating: null == authenticating ? _self.authenticating : authenticating // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUser?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAuthState].
extension UserAuthStatePatterns on UserAuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAuthState value)  $default,){
final _that = this;
switch (_that) {
case _UserAuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAuthState value)?  $default,){
final _that = this;
switch (_that) {
case _UserAuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool authenticating,  String? errorMessage,  AppUser? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAuthState() when $default != null:
return $default(_that.authenticating,_that.errorMessage,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool authenticating,  String? errorMessage,  AppUser? user)  $default,) {final _that = this;
switch (_that) {
case _UserAuthState():
return $default(_that.authenticating,_that.errorMessage,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool authenticating,  String? errorMessage,  AppUser? user)?  $default,) {final _that = this;
switch (_that) {
case _UserAuthState() when $default != null:
return $default(_that.authenticating,_that.errorMessage,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _UserAuthState implements UserAuthState {
  const _UserAuthState({this.authenticating = false, this.errorMessage = null, this.user = null});
  

@override@JsonKey() final  bool authenticating;
@override@JsonKey() final  String? errorMessage;
@override@JsonKey() final  AppUser? user;

/// Create a copy of UserAuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAuthStateCopyWith<_UserAuthState> get copyWith => __$UserAuthStateCopyWithImpl<_UserAuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAuthState&&(identical(other.authenticating, authenticating) || other.authenticating == authenticating)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,authenticating,errorMessage,user);

@override
String toString() {
  return 'UserAuthState(authenticating: $authenticating, errorMessage: $errorMessage, user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserAuthStateCopyWith<$Res> implements $UserAuthStateCopyWith<$Res> {
  factory _$UserAuthStateCopyWith(_UserAuthState value, $Res Function(_UserAuthState) _then) = __$UserAuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool authenticating, String? errorMessage, AppUser? user
});




}
/// @nodoc
class __$UserAuthStateCopyWithImpl<$Res>
    implements _$UserAuthStateCopyWith<$Res> {
  __$UserAuthStateCopyWithImpl(this._self, this._then);

  final _UserAuthState _self;
  final $Res Function(_UserAuthState) _then;

/// Create a copy of UserAuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authenticating = null,Object? errorMessage = freezed,Object? user = freezed,}) {
  return _then(_UserAuthState(
authenticating: null == authenticating ? _self.authenticating : authenticating // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUser?,
  ));
}


}

// dart format on
