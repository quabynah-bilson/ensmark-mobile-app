// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.identity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationIdentityState {

 String get taxIdentificationNumber; String get houseNumber; String get street; String get digitalCode; String get landmark; String get town; String get region; IdentityType get idType; String get idNumber; String get addressLine1; String get addressLine2; String get addressLine3; String get addressLine4; String get country;
/// Create a copy of LocationIdentityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationIdentityStateCopyWith<LocationIdentityState> get copyWith => _$LocationIdentityStateCopyWithImpl<LocationIdentityState>(this as LocationIdentityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationIdentityState&&(identical(other.taxIdentificationNumber, taxIdentificationNumber) || other.taxIdentificationNumber == taxIdentificationNumber)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.street, street) || other.street == street)&&(identical(other.digitalCode, digitalCode) || other.digitalCode == digitalCode)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.town, town) || other.town == town)&&(identical(other.region, region) || other.region == region)&&(identical(other.idType, idType) || other.idType == idType)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.addressLine3, addressLine3) || other.addressLine3 == addressLine3)&&(identical(other.addressLine4, addressLine4) || other.addressLine4 == addressLine4)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,taxIdentificationNumber,houseNumber,street,digitalCode,landmark,town,region,idType,idNumber,addressLine1,addressLine2,addressLine3,addressLine4,country);

@override
String toString() {
  return 'LocationIdentityState(taxIdentificationNumber: $taxIdentificationNumber, houseNumber: $houseNumber, street: $street, digitalCode: $digitalCode, landmark: $landmark, town: $town, region: $region, idType: $idType, idNumber: $idNumber, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, addressLine4: $addressLine4, country: $country)';
}


}

/// @nodoc
abstract mixin class $LocationIdentityStateCopyWith<$Res>  {
  factory $LocationIdentityStateCopyWith(LocationIdentityState value, $Res Function(LocationIdentityState) _then) = _$LocationIdentityStateCopyWithImpl;
@useResult
$Res call({
 String taxIdentificationNumber, String houseNumber, String street, String digitalCode, String landmark, String town, String region, IdentityType idType, String idNumber, String addressLine1, String addressLine2, String addressLine3, String addressLine4, String country
});




}
/// @nodoc
class _$LocationIdentityStateCopyWithImpl<$Res>
    implements $LocationIdentityStateCopyWith<$Res> {
  _$LocationIdentityStateCopyWithImpl(this._self, this._then);

  final LocationIdentityState _self;
  final $Res Function(LocationIdentityState) _then;

/// Create a copy of LocationIdentityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taxIdentificationNumber = null,Object? houseNumber = null,Object? street = null,Object? digitalCode = null,Object? landmark = null,Object? town = null,Object? region = null,Object? idType = null,Object? idNumber = null,Object? addressLine1 = null,Object? addressLine2 = null,Object? addressLine3 = null,Object? addressLine4 = null,Object? country = null,}) {
  return _then(_self.copyWith(
taxIdentificationNumber: null == taxIdentificationNumber ? _self.taxIdentificationNumber : taxIdentificationNumber // ignore: cast_nullable_to_non_nullable
as String,houseNumber: null == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,digitalCode: null == digitalCode ? _self.digitalCode : digitalCode // ignore: cast_nullable_to_non_nullable
as String,landmark: null == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String,town: null == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,idType: null == idType ? _self.idType : idType // ignore: cast_nullable_to_non_nullable
as IdentityType,idNumber: null == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: null == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String,addressLine3: null == addressLine3 ? _self.addressLine3 : addressLine3 // ignore: cast_nullable_to_non_nullable
as String,addressLine4: null == addressLine4 ? _self.addressLine4 : addressLine4 // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationIdentityState].
extension LocationIdentityStatePatterns on LocationIdentityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationIdentityState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationIdentityState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationIdentityState value)  $default,){
final _that = this;
switch (_that) {
case _LocationIdentityState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationIdentityState value)?  $default,){
final _that = this;
switch (_that) {
case _LocationIdentityState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String taxIdentificationNumber,  String houseNumber,  String street,  String digitalCode,  String landmark,  String town,  String region,  IdentityType idType,  String idNumber,  String addressLine1,  String addressLine2,  String addressLine3,  String addressLine4,  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationIdentityState() when $default != null:
return $default(_that.taxIdentificationNumber,_that.houseNumber,_that.street,_that.digitalCode,_that.landmark,_that.town,_that.region,_that.idType,_that.idNumber,_that.addressLine1,_that.addressLine2,_that.addressLine3,_that.addressLine4,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String taxIdentificationNumber,  String houseNumber,  String street,  String digitalCode,  String landmark,  String town,  String region,  IdentityType idType,  String idNumber,  String addressLine1,  String addressLine2,  String addressLine3,  String addressLine4,  String country)  $default,) {final _that = this;
switch (_that) {
case _LocationIdentityState():
return $default(_that.taxIdentificationNumber,_that.houseNumber,_that.street,_that.digitalCode,_that.landmark,_that.town,_that.region,_that.idType,_that.idNumber,_that.addressLine1,_that.addressLine2,_that.addressLine3,_that.addressLine4,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String taxIdentificationNumber,  String houseNumber,  String street,  String digitalCode,  String landmark,  String town,  String region,  IdentityType idType,  String idNumber,  String addressLine1,  String addressLine2,  String addressLine3,  String addressLine4,  String country)?  $default,) {final _that = this;
switch (_that) {
case _LocationIdentityState() when $default != null:
return $default(_that.taxIdentificationNumber,_that.houseNumber,_that.street,_that.digitalCode,_that.landmark,_that.town,_that.region,_that.idType,_that.idNumber,_that.addressLine1,_that.addressLine2,_that.addressLine3,_that.addressLine4,_that.country);case _:
  return null;

}
}

}

/// @nodoc


class _LocationIdentityState implements LocationIdentityState {
  const _LocationIdentityState({this.taxIdentificationNumber = '', this.houseNumber = '', this.street = '', this.digitalCode = '', this.landmark = '', this.town = '', this.region = '', this.idType = IdentityType.nationalId, this.idNumber = '', this.addressLine1 = '', this.addressLine2 = '', this.addressLine3 = '', this.addressLine4 = '', this.country = 'GH'});
  

@override@JsonKey() final  String taxIdentificationNumber;
@override@JsonKey() final  String houseNumber;
@override@JsonKey() final  String street;
@override@JsonKey() final  String digitalCode;
@override@JsonKey() final  String landmark;
@override@JsonKey() final  String town;
@override@JsonKey() final  String region;
@override@JsonKey() final  IdentityType idType;
@override@JsonKey() final  String idNumber;
@override@JsonKey() final  String addressLine1;
@override@JsonKey() final  String addressLine2;
@override@JsonKey() final  String addressLine3;
@override@JsonKey() final  String addressLine4;
@override@JsonKey() final  String country;

/// Create a copy of LocationIdentityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationIdentityStateCopyWith<_LocationIdentityState> get copyWith => __$LocationIdentityStateCopyWithImpl<_LocationIdentityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationIdentityState&&(identical(other.taxIdentificationNumber, taxIdentificationNumber) || other.taxIdentificationNumber == taxIdentificationNumber)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.street, street) || other.street == street)&&(identical(other.digitalCode, digitalCode) || other.digitalCode == digitalCode)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.town, town) || other.town == town)&&(identical(other.region, region) || other.region == region)&&(identical(other.idType, idType) || other.idType == idType)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.addressLine3, addressLine3) || other.addressLine3 == addressLine3)&&(identical(other.addressLine4, addressLine4) || other.addressLine4 == addressLine4)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,taxIdentificationNumber,houseNumber,street,digitalCode,landmark,town,region,idType,idNumber,addressLine1,addressLine2,addressLine3,addressLine4,country);

@override
String toString() {
  return 'LocationIdentityState(taxIdentificationNumber: $taxIdentificationNumber, houseNumber: $houseNumber, street: $street, digitalCode: $digitalCode, landmark: $landmark, town: $town, region: $region, idType: $idType, idNumber: $idNumber, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, addressLine4: $addressLine4, country: $country)';
}


}

/// @nodoc
abstract mixin class _$LocationIdentityStateCopyWith<$Res> implements $LocationIdentityStateCopyWith<$Res> {
  factory _$LocationIdentityStateCopyWith(_LocationIdentityState value, $Res Function(_LocationIdentityState) _then) = __$LocationIdentityStateCopyWithImpl;
@override @useResult
$Res call({
 String taxIdentificationNumber, String houseNumber, String street, String digitalCode, String landmark, String town, String region, IdentityType idType, String idNumber, String addressLine1, String addressLine2, String addressLine3, String addressLine4, String country
});




}
/// @nodoc
class __$LocationIdentityStateCopyWithImpl<$Res>
    implements _$LocationIdentityStateCopyWith<$Res> {
  __$LocationIdentityStateCopyWithImpl(this._self, this._then);

  final _LocationIdentityState _self;
  final $Res Function(_LocationIdentityState) _then;

/// Create a copy of LocationIdentityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taxIdentificationNumber = null,Object? houseNumber = null,Object? street = null,Object? digitalCode = null,Object? landmark = null,Object? town = null,Object? region = null,Object? idType = null,Object? idNumber = null,Object? addressLine1 = null,Object? addressLine2 = null,Object? addressLine3 = null,Object? addressLine4 = null,Object? country = null,}) {
  return _then(_LocationIdentityState(
taxIdentificationNumber: null == taxIdentificationNumber ? _self.taxIdentificationNumber : taxIdentificationNumber // ignore: cast_nullable_to_non_nullable
as String,houseNumber: null == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,digitalCode: null == digitalCode ? _self.digitalCode : digitalCode // ignore: cast_nullable_to_non_nullable
as String,landmark: null == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String,town: null == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,idType: null == idType ? _self.idType : idType // ignore: cast_nullable_to_non_nullable
as IdentityType,idNumber: null == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: null == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String,addressLine3: null == addressLine3 ? _self.addressLine3 : addressLine3 // ignore: cast_nullable_to_non_nullable
as String,addressLine4: null == addressLine4 ? _self.addressLine4 : addressLine4 // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
