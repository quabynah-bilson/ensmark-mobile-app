// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business.info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BusinessInfoState {

 String get registrationNumber; DateTime? get registrationDate;
/// Create a copy of BusinessInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessInfoStateCopyWith<BusinessInfoState> get copyWith => _$BusinessInfoStateCopyWithImpl<BusinessInfoState>(this as BusinessInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessInfoState&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate));
}


@override
int get hashCode => Object.hash(runtimeType,registrationNumber,registrationDate);

@override
String toString() {
  return 'BusinessInfoState(registrationNumber: $registrationNumber, registrationDate: $registrationDate)';
}


}

/// @nodoc
abstract mixin class $BusinessInfoStateCopyWith<$Res>  {
  factory $BusinessInfoStateCopyWith(BusinessInfoState value, $Res Function(BusinessInfoState) _then) = _$BusinessInfoStateCopyWithImpl;
@useResult
$Res call({
 String registrationNumber, DateTime? registrationDate
});




}
/// @nodoc
class _$BusinessInfoStateCopyWithImpl<$Res>
    implements $BusinessInfoStateCopyWith<$Res> {
  _$BusinessInfoStateCopyWithImpl(this._self, this._then);

  final BusinessInfoState _self;
  final $Res Function(BusinessInfoState) _then;

/// Create a copy of BusinessInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? registrationNumber = null,Object? registrationDate = freezed,}) {
  return _then(_self.copyWith(
registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessInfoState].
extension BusinessInfoStatePatterns on BusinessInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessInfoState value)  $default,){
final _that = this;
switch (_that) {
case _BusinessInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String registrationNumber,  DateTime? registrationDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessInfoState() when $default != null:
return $default(_that.registrationNumber,_that.registrationDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String registrationNumber,  DateTime? registrationDate)  $default,) {final _that = this;
switch (_that) {
case _BusinessInfoState():
return $default(_that.registrationNumber,_that.registrationDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String registrationNumber,  DateTime? registrationDate)?  $default,) {final _that = this;
switch (_that) {
case _BusinessInfoState() when $default != null:
return $default(_that.registrationNumber,_that.registrationDate);case _:
  return null;

}
}

}

/// @nodoc


class _BusinessInfoState implements BusinessInfoState {
  const _BusinessInfoState({this.registrationNumber = '', this.registrationDate});
  

@override@JsonKey() final  String registrationNumber;
@override final  DateTime? registrationDate;

/// Create a copy of BusinessInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessInfoStateCopyWith<_BusinessInfoState> get copyWith => __$BusinessInfoStateCopyWithImpl<_BusinessInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessInfoState&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate));
}


@override
int get hashCode => Object.hash(runtimeType,registrationNumber,registrationDate);

@override
String toString() {
  return 'BusinessInfoState(registrationNumber: $registrationNumber, registrationDate: $registrationDate)';
}


}

/// @nodoc
abstract mixin class _$BusinessInfoStateCopyWith<$Res> implements $BusinessInfoStateCopyWith<$Res> {
  factory _$BusinessInfoStateCopyWith(_BusinessInfoState value, $Res Function(_BusinessInfoState) _then) = __$BusinessInfoStateCopyWithImpl;
@override @useResult
$Res call({
 String registrationNumber, DateTime? registrationDate
});




}
/// @nodoc
class __$BusinessInfoStateCopyWithImpl<$Res>
    implements _$BusinessInfoStateCopyWith<$Res> {
  __$BusinessInfoStateCopyWithImpl(this._self, this._then);

  final _BusinessInfoState _self;
  final $Res Function(_BusinessInfoState) _then;

/// Create a copy of BusinessInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? registrationNumber = null,Object? registrationDate = freezed,}) {
  return _then(_BusinessInfoState(
registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
