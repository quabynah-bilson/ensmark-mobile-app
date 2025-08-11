// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal.info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonalInfoState {

 OwnerType get type; String get username; String get phoneNumber; String get firstName; String get lastName; DateTime? get dateOfBirth;
/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalInfoStateCopyWith<PersonalInfoState> get copyWith => _$PersonalInfoStateCopyWithImpl<PersonalInfoState>(this as PersonalInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalInfoState&&(identical(other.type, type) || other.type == type)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth));
}


@override
int get hashCode => Object.hash(runtimeType,type,username,phoneNumber,firstName,lastName,dateOfBirth);

@override
String toString() {
  return 'PersonalInfoState(type: $type, username: $username, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth)';
}


}

/// @nodoc
abstract mixin class $PersonalInfoStateCopyWith<$Res>  {
  factory $PersonalInfoStateCopyWith(PersonalInfoState value, $Res Function(PersonalInfoState) _then) = _$PersonalInfoStateCopyWithImpl;
@useResult
$Res call({
 OwnerType type, String username, String phoneNumber, String firstName, String lastName, DateTime? dateOfBirth
});




}
/// @nodoc
class _$PersonalInfoStateCopyWithImpl<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  _$PersonalInfoStateCopyWithImpl(this._self, this._then);

  final PersonalInfoState _self;
  final $Res Function(PersonalInfoState) _then;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? username = null,Object? phoneNumber = null,Object? firstName = null,Object? lastName = null,Object? dateOfBirth = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OwnerType,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalInfoState].
extension PersonalInfoStatePatterns on PersonalInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalInfoState value)  $default,){
final _that = this;
switch (_that) {
case _PersonalInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OwnerType type,  String username,  String phoneNumber,  String firstName,  String lastName,  DateTime? dateOfBirth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
return $default(_that.type,_that.username,_that.phoneNumber,_that.firstName,_that.lastName,_that.dateOfBirth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OwnerType type,  String username,  String phoneNumber,  String firstName,  String lastName,  DateTime? dateOfBirth)  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoState():
return $default(_that.type,_that.username,_that.phoneNumber,_that.firstName,_that.lastName,_that.dateOfBirth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OwnerType type,  String username,  String phoneNumber,  String firstName,  String lastName,  DateTime? dateOfBirth)?  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
return $default(_that.type,_that.username,_that.phoneNumber,_that.firstName,_that.lastName,_that.dateOfBirth);case _:
  return null;

}
}

}

/// @nodoc


class _PersonalInfoState implements PersonalInfoState {
  const _PersonalInfoState({this.type = OwnerType.individual, this.username = '', this.phoneNumber = '', this.firstName = '', this.lastName = '', this.dateOfBirth});
  

@override@JsonKey() final  OwnerType type;
@override@JsonKey() final  String username;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override final  DateTime? dateOfBirth;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith => __$PersonalInfoStateCopyWithImpl<_PersonalInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalInfoState&&(identical(other.type, type) || other.type == type)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth));
}


@override
int get hashCode => Object.hash(runtimeType,type,username,phoneNumber,firstName,lastName,dateOfBirth);

@override
String toString() {
  return 'PersonalInfoState(type: $type, username: $username, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth)';
}


}

/// @nodoc
abstract mixin class _$PersonalInfoStateCopyWith<$Res> implements $PersonalInfoStateCopyWith<$Res> {
  factory _$PersonalInfoStateCopyWith(_PersonalInfoState value, $Res Function(_PersonalInfoState) _then) = __$PersonalInfoStateCopyWithImpl;
@override @useResult
$Res call({
 OwnerType type, String username, String phoneNumber, String firstName, String lastName, DateTime? dateOfBirth
});




}
/// @nodoc
class __$PersonalInfoStateCopyWithImpl<$Res>
    implements _$PersonalInfoStateCopyWith<$Res> {
  __$PersonalInfoStateCopyWithImpl(this._self, this._then);

  final _PersonalInfoState _self;
  final $Res Function(_PersonalInfoState) _then;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? username = null,Object? phoneNumber = null,Object? firstName = null,Object? lastName = null,Object? dateOfBirth = freezed,}) {
  return _then(_PersonalInfoState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OwnerType,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
