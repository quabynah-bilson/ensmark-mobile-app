// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RequestAccountUseCaseParams {

 String get username; String get firstName; String get lastName; String get phoneNumber; OwnerType get ownerType; List<RevenueItem> get revenueItems; String? get registrationNumber; DateTime? get registrationDate; String? get taxIdentificationNumber; String? get houseNumber; String? get street; String? get digitalCode; String? get landmark; String? get town; String? get region; String? get countryCode; String? get idType; String? get idNumber; String? get addressLine1; String? get addressLine2; String? get addressLine3; String? get addressLine4; DateTime? get dateOfBirth;
/// Create a copy of RequestAccountUseCaseParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAccountUseCaseParamsCopyWith<RequestAccountUseCaseParams> get copyWith => _$RequestAccountUseCaseParamsCopyWithImpl<RequestAccountUseCaseParams>(this as RequestAccountUseCaseParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAccountUseCaseParams&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&const DeepCollectionEquality().equals(other.revenueItems, revenueItems)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate)&&(identical(other.taxIdentificationNumber, taxIdentificationNumber) || other.taxIdentificationNumber == taxIdentificationNumber)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.street, street) || other.street == street)&&(identical(other.digitalCode, digitalCode) || other.digitalCode == digitalCode)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.town, town) || other.town == town)&&(identical(other.region, region) || other.region == region)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.idType, idType) || other.idType == idType)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.addressLine3, addressLine3) || other.addressLine3 == addressLine3)&&(identical(other.addressLine4, addressLine4) || other.addressLine4 == addressLine4)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth));
}


@override
int get hashCode => Object.hashAll([runtimeType,username,firstName,lastName,phoneNumber,ownerType,const DeepCollectionEquality().hash(revenueItems),registrationNumber,registrationDate,taxIdentificationNumber,houseNumber,street,digitalCode,landmark,town,region,countryCode,idType,idNumber,addressLine1,addressLine2,addressLine3,addressLine4,dateOfBirth]);

@override
String toString() {
  return 'RequestAccountUseCaseParams(username: $username, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, ownerType: $ownerType, revenueItems: $revenueItems, registrationNumber: $registrationNumber, registrationDate: $registrationDate, taxIdentificationNumber: $taxIdentificationNumber, houseNumber: $houseNumber, street: $street, digitalCode: $digitalCode, landmark: $landmark, town: $town, region: $region, countryCode: $countryCode, idType: $idType, idNumber: $idNumber, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, addressLine4: $addressLine4, dateOfBirth: $dateOfBirth)';
}


}

/// @nodoc
abstract mixin class $RequestAccountUseCaseParamsCopyWith<$Res>  {
  factory $RequestAccountUseCaseParamsCopyWith(RequestAccountUseCaseParams value, $Res Function(RequestAccountUseCaseParams) _then) = _$RequestAccountUseCaseParamsCopyWithImpl;
@useResult
$Res call({
 String username, String firstName, String lastName, String phoneNumber, OwnerType ownerType, List<RevenueItem> revenueItems, String? registrationNumber, DateTime? registrationDate, String? taxIdentificationNumber, String? houseNumber, String? street, String? digitalCode, String? landmark, String? town, String? region, String? countryCode, String? idType, String? idNumber, String? addressLine1, String? addressLine2, String? addressLine3, String? addressLine4, DateTime? dateOfBirth
});




}
/// @nodoc
class _$RequestAccountUseCaseParamsCopyWithImpl<$Res>
    implements $RequestAccountUseCaseParamsCopyWith<$Res> {
  _$RequestAccountUseCaseParamsCopyWithImpl(this._self, this._then);

  final RequestAccountUseCaseParams _self;
  final $Res Function(RequestAccountUseCaseParams) _then;

/// Create a copy of RequestAccountUseCaseParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? ownerType = null,Object? revenueItems = null,Object? registrationNumber = freezed,Object? registrationDate = freezed,Object? taxIdentificationNumber = freezed,Object? houseNumber = freezed,Object? street = freezed,Object? digitalCode = freezed,Object? landmark = freezed,Object? town = freezed,Object? region = freezed,Object? countryCode = freezed,Object? idType = freezed,Object? idNumber = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? addressLine3 = freezed,Object? addressLine4 = freezed,Object? dateOfBirth = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,revenueItems: null == revenueItems ? _self.revenueItems : revenueItems // ignore: cast_nullable_to_non_nullable
as List<RevenueItem>,registrationNumber: freezed == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String?,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,taxIdentificationNumber: freezed == taxIdentificationNumber ? _self.taxIdentificationNumber : taxIdentificationNumber // ignore: cast_nullable_to_non_nullable
as String?,houseNumber: freezed == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,digitalCode: freezed == digitalCode ? _self.digitalCode : digitalCode // ignore: cast_nullable_to_non_nullable
as String?,landmark: freezed == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String?,town: freezed == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,idType: freezed == idType ? _self.idType : idType // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,addressLine3: freezed == addressLine3 ? _self.addressLine3 : addressLine3 // ignore: cast_nullable_to_non_nullable
as String?,addressLine4: freezed == addressLine4 ? _self.addressLine4 : addressLine4 // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAccountUseCaseParams].
extension RequestAccountUseCaseParamsPatterns on RequestAccountUseCaseParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAccountUseCaseParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAccountUseCaseParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAccountUseCaseParams value)  $default,){
final _that = this;
switch (_that) {
case _RequestAccountUseCaseParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAccountUseCaseParams value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAccountUseCaseParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String firstName,  String lastName,  String phoneNumber,  OwnerType ownerType,  List<RevenueItem> revenueItems,  String? registrationNumber,  DateTime? registrationDate,  String? taxIdentificationNumber,  String? houseNumber,  String? street,  String? digitalCode,  String? landmark,  String? town,  String? region,  String? countryCode,  String? idType,  String? idNumber,  String? addressLine1,  String? addressLine2,  String? addressLine3,  String? addressLine4,  DateTime? dateOfBirth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAccountUseCaseParams() when $default != null:
return $default(_that.username,_that.firstName,_that.lastName,_that.phoneNumber,_that.ownerType,_that.revenueItems,_that.registrationNumber,_that.registrationDate,_that.taxIdentificationNumber,_that.houseNumber,_that.street,_that.digitalCode,_that.landmark,_that.town,_that.region,_that.countryCode,_that.idType,_that.idNumber,_that.addressLine1,_that.addressLine2,_that.addressLine3,_that.addressLine4,_that.dateOfBirth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String firstName,  String lastName,  String phoneNumber,  OwnerType ownerType,  List<RevenueItem> revenueItems,  String? registrationNumber,  DateTime? registrationDate,  String? taxIdentificationNumber,  String? houseNumber,  String? street,  String? digitalCode,  String? landmark,  String? town,  String? region,  String? countryCode,  String? idType,  String? idNumber,  String? addressLine1,  String? addressLine2,  String? addressLine3,  String? addressLine4,  DateTime? dateOfBirth)  $default,) {final _that = this;
switch (_that) {
case _RequestAccountUseCaseParams():
return $default(_that.username,_that.firstName,_that.lastName,_that.phoneNumber,_that.ownerType,_that.revenueItems,_that.registrationNumber,_that.registrationDate,_that.taxIdentificationNumber,_that.houseNumber,_that.street,_that.digitalCode,_that.landmark,_that.town,_that.region,_that.countryCode,_that.idType,_that.idNumber,_that.addressLine1,_that.addressLine2,_that.addressLine3,_that.addressLine4,_that.dateOfBirth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String firstName,  String lastName,  String phoneNumber,  OwnerType ownerType,  List<RevenueItem> revenueItems,  String? registrationNumber,  DateTime? registrationDate,  String? taxIdentificationNumber,  String? houseNumber,  String? street,  String? digitalCode,  String? landmark,  String? town,  String? region,  String? countryCode,  String? idType,  String? idNumber,  String? addressLine1,  String? addressLine2,  String? addressLine3,  String? addressLine4,  DateTime? dateOfBirth)?  $default,) {final _that = this;
switch (_that) {
case _RequestAccountUseCaseParams() when $default != null:
return $default(_that.username,_that.firstName,_that.lastName,_that.phoneNumber,_that.ownerType,_that.revenueItems,_that.registrationNumber,_that.registrationDate,_that.taxIdentificationNumber,_that.houseNumber,_that.street,_that.digitalCode,_that.landmark,_that.town,_that.region,_that.countryCode,_that.idType,_that.idNumber,_that.addressLine1,_that.addressLine2,_that.addressLine3,_that.addressLine4,_that.dateOfBirth);case _:
  return null;

}
}

}

/// @nodoc


class _RequestAccountUseCaseParams implements RequestAccountUseCaseParams {
  const _RequestAccountUseCaseParams({required this.username, required this.firstName, required this.lastName, required this.phoneNumber, required this.ownerType, required final  List<RevenueItem> revenueItems, this.registrationNumber, this.registrationDate, this.taxIdentificationNumber, this.houseNumber, this.street, this.digitalCode, this.landmark, this.town, this.region, this.countryCode, this.idType, this.idNumber, this.addressLine1, this.addressLine2, this.addressLine3, this.addressLine4, this.dateOfBirth}): _revenueItems = revenueItems;
  

@override final  String username;
@override final  String firstName;
@override final  String lastName;
@override final  String phoneNumber;
@override final  OwnerType ownerType;
 final  List<RevenueItem> _revenueItems;
@override List<RevenueItem> get revenueItems {
  if (_revenueItems is EqualUnmodifiableListView) return _revenueItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenueItems);
}

@override final  String? registrationNumber;
@override final  DateTime? registrationDate;
@override final  String? taxIdentificationNumber;
@override final  String? houseNumber;
@override final  String? street;
@override final  String? digitalCode;
@override final  String? landmark;
@override final  String? town;
@override final  String? region;
@override final  String? countryCode;
@override final  String? idType;
@override final  String? idNumber;
@override final  String? addressLine1;
@override final  String? addressLine2;
@override final  String? addressLine3;
@override final  String? addressLine4;
@override final  DateTime? dateOfBirth;

/// Create a copy of RequestAccountUseCaseParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAccountUseCaseParamsCopyWith<_RequestAccountUseCaseParams> get copyWith => __$RequestAccountUseCaseParamsCopyWithImpl<_RequestAccountUseCaseParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAccountUseCaseParams&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&const DeepCollectionEquality().equals(other._revenueItems, _revenueItems)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.registrationDate, registrationDate) || other.registrationDate == registrationDate)&&(identical(other.taxIdentificationNumber, taxIdentificationNumber) || other.taxIdentificationNumber == taxIdentificationNumber)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.street, street) || other.street == street)&&(identical(other.digitalCode, digitalCode) || other.digitalCode == digitalCode)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.town, town) || other.town == town)&&(identical(other.region, region) || other.region == region)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.idType, idType) || other.idType == idType)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.addressLine3, addressLine3) || other.addressLine3 == addressLine3)&&(identical(other.addressLine4, addressLine4) || other.addressLine4 == addressLine4)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth));
}


@override
int get hashCode => Object.hashAll([runtimeType,username,firstName,lastName,phoneNumber,ownerType,const DeepCollectionEquality().hash(_revenueItems),registrationNumber,registrationDate,taxIdentificationNumber,houseNumber,street,digitalCode,landmark,town,region,countryCode,idType,idNumber,addressLine1,addressLine2,addressLine3,addressLine4,dateOfBirth]);

@override
String toString() {
  return 'RequestAccountUseCaseParams(username: $username, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, ownerType: $ownerType, revenueItems: $revenueItems, registrationNumber: $registrationNumber, registrationDate: $registrationDate, taxIdentificationNumber: $taxIdentificationNumber, houseNumber: $houseNumber, street: $street, digitalCode: $digitalCode, landmark: $landmark, town: $town, region: $region, countryCode: $countryCode, idType: $idType, idNumber: $idNumber, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, addressLine4: $addressLine4, dateOfBirth: $dateOfBirth)';
}


}

/// @nodoc
abstract mixin class _$RequestAccountUseCaseParamsCopyWith<$Res> implements $RequestAccountUseCaseParamsCopyWith<$Res> {
  factory _$RequestAccountUseCaseParamsCopyWith(_RequestAccountUseCaseParams value, $Res Function(_RequestAccountUseCaseParams) _then) = __$RequestAccountUseCaseParamsCopyWithImpl;
@override @useResult
$Res call({
 String username, String firstName, String lastName, String phoneNumber, OwnerType ownerType, List<RevenueItem> revenueItems, String? registrationNumber, DateTime? registrationDate, String? taxIdentificationNumber, String? houseNumber, String? street, String? digitalCode, String? landmark, String? town, String? region, String? countryCode, String? idType, String? idNumber, String? addressLine1, String? addressLine2, String? addressLine3, String? addressLine4, DateTime? dateOfBirth
});




}
/// @nodoc
class __$RequestAccountUseCaseParamsCopyWithImpl<$Res>
    implements _$RequestAccountUseCaseParamsCopyWith<$Res> {
  __$RequestAccountUseCaseParamsCopyWithImpl(this._self, this._then);

  final _RequestAccountUseCaseParams _self;
  final $Res Function(_RequestAccountUseCaseParams) _then;

/// Create a copy of RequestAccountUseCaseParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? ownerType = null,Object? revenueItems = null,Object? registrationNumber = freezed,Object? registrationDate = freezed,Object? taxIdentificationNumber = freezed,Object? houseNumber = freezed,Object? street = freezed,Object? digitalCode = freezed,Object? landmark = freezed,Object? town = freezed,Object? region = freezed,Object? countryCode = freezed,Object? idType = freezed,Object? idNumber = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? addressLine3 = freezed,Object? addressLine4 = freezed,Object? dateOfBirth = freezed,}) {
  return _then(_RequestAccountUseCaseParams(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,revenueItems: null == revenueItems ? _self._revenueItems : revenueItems // ignore: cast_nullable_to_non_nullable
as List<RevenueItem>,registrationNumber: freezed == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String?,registrationDate: freezed == registrationDate ? _self.registrationDate : registrationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,taxIdentificationNumber: freezed == taxIdentificationNumber ? _self.taxIdentificationNumber : taxIdentificationNumber // ignore: cast_nullable_to_non_nullable
as String?,houseNumber: freezed == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,digitalCode: freezed == digitalCode ? _self.digitalCode : digitalCode // ignore: cast_nullable_to_non_nullable
as String?,landmark: freezed == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String?,town: freezed == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,idType: freezed == idType ? _self.idType : idType // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,addressLine3: freezed == addressLine3 ? _self.addressLine3 : addressLine3 // ignore: cast_nullable_to_non_nullable
as String?,addressLine4: freezed == addressLine4 ? _self.addressLine4 : addressLine4 // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
