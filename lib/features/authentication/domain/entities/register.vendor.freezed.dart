// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.vendor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterVendorRequest {

 String get username; String get password; String get firstName; String get lastName;
/// Create a copy of RegisterVendorRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterVendorRequestCopyWith<RegisterVendorRequest> get copyWith => _$RegisterVendorRequestCopyWithImpl<RegisterVendorRequest>(this as RegisterVendorRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterVendorRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode => Object.hash(runtimeType,username,password,firstName,lastName);

@override
String toString() {
  return 'RegisterVendorRequest(username: $username, password: $password, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $RegisterVendorRequestCopyWith<$Res>  {
  factory $RegisterVendorRequestCopyWith(RegisterVendorRequest value, $Res Function(RegisterVendorRequest) _then) = _$RegisterVendorRequestCopyWithImpl;
@useResult
$Res call({
 String username, String password, String firstName, String lastName
});




}
/// @nodoc
class _$RegisterVendorRequestCopyWithImpl<$Res>
    implements $RegisterVendorRequestCopyWith<$Res> {
  _$RegisterVendorRequestCopyWithImpl(this._self, this._then);

  final RegisterVendorRequest _self;
  final $Res Function(RegisterVendorRequest) _then;

/// Create a copy of RegisterVendorRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterVendorRequest].
extension RegisterVendorRequestPatterns on RegisterVendorRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterVendorRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterVendorRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterVendorRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterVendorRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterVendorRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterVendorRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterVendorRequest() when $default != null:
return $default(_that.username,_that.password,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _RegisterVendorRequest():
return $default(_that.username,_that.password,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterVendorRequest() when $default != null:
return $default(_that.username,_that.password,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterVendorRequest implements RegisterVendorRequest {
  const _RegisterVendorRequest({required this.username, required this.password, required this.firstName, required this.lastName});
  

@override final  String username;
@override final  String password;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of RegisterVendorRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterVendorRequestCopyWith<_RegisterVendorRequest> get copyWith => __$RegisterVendorRequestCopyWithImpl<_RegisterVendorRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterVendorRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode => Object.hash(runtimeType,username,password,firstName,lastName);

@override
String toString() {
  return 'RegisterVendorRequest(username: $username, password: $password, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$RegisterVendorRequestCopyWith<$Res> implements $RegisterVendorRequestCopyWith<$Res> {
  factory _$RegisterVendorRequestCopyWith(_RegisterVendorRequest value, $Res Function(_RegisterVendorRequest) _then) = __$RegisterVendorRequestCopyWithImpl;
@override @useResult
$Res call({
 String username, String password, String firstName, String lastName
});




}
/// @nodoc
class __$RegisterVendorRequestCopyWithImpl<$Res>
    implements _$RegisterVendorRequestCopyWith<$Res> {
  __$RegisterVendorRequestCopyWithImpl(this._self, this._then);

  final _RegisterVendorRequest _self;
  final $Res Function(_RegisterVendorRequest) _then;

/// Create a copy of RegisterVendorRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_RegisterVendorRequest(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
