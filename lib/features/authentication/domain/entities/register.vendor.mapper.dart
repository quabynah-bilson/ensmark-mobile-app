// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'register.vendor.dart';

class RegisterVendorRequestMapper
    extends ClassMapperBase<RegisterVendorRequest> {
  RegisterVendorRequestMapper._();

  static RegisterVendorRequestMapper? _instance;
  static RegisterVendorRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterVendorRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterVendorRequest';

  static String _$username(RegisterVendorRequest v) => v.username;
  static const Field<RegisterVendorRequest, String> _f$username =
      Field('username', _$username, opt: true, def: '');
  static String _$firstName(RegisterVendorRequest v) => v.firstName;
  static const Field<RegisterVendorRequest, String> _f$firstName =
      Field('firstName', _$firstName, opt: true, def: '');
  static String _$lastName(RegisterVendorRequest v) => v.lastName;
  static const Field<RegisterVendorRequest, String> _f$lastName =
      Field('lastName', _$lastName, opt: true, def: '');
  static String _$phoneNumber(RegisterVendorRequest v) => v.phoneNumber;
  static const Field<RegisterVendorRequest, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber, opt: true, def: '');
  static OwnerType _$ownerType(RegisterVendorRequest v) => v.ownerType;
  static const Field<RegisterVendorRequest, OwnerType> _f$ownerType =
      Field('ownerType', _$ownerType, opt: true, def: OwnerType.individual);
  static List<RevenueItem> _$revenueItems(RegisterVendorRequest v) =>
      v.revenueItems;
  static const Field<RegisterVendorRequest, List<RevenueItem>> _f$revenueItems =
      Field('revenueItems', _$revenueItems, opt: true, def: const []);
  static String? _$registrationNumber(RegisterVendorRequest v) =>
      v.registrationNumber;
  static const Field<RegisterVendorRequest, String> _f$registrationNumber =
      Field('registrationNumber', _$registrationNumber, opt: true);
  static DateTime? _$registrationDate(RegisterVendorRequest v) =>
      v.registrationDate;
  static const Field<RegisterVendorRequest, DateTime> _f$registrationDate =
      Field('registrationDate', _$registrationDate, opt: true);
  static String? _$taxIdentificationNumber(RegisterVendorRequest v) =>
      v.taxIdentificationNumber;
  static const Field<RegisterVendorRequest, String> _f$taxIdentificationNumber =
      Field('taxIdentificationNumber', _$taxIdentificationNumber, opt: true);
  static String? _$houseNumber(RegisterVendorRequest v) => v.houseNumber;
  static const Field<RegisterVendorRequest, String> _f$houseNumber =
      Field('houseNumber', _$houseNumber, opt: true);
  static String? _$street(RegisterVendorRequest v) => v.street;
  static const Field<RegisterVendorRequest, String> _f$street =
      Field('street', _$street, opt: true);
  static String? _$digitalCode(RegisterVendorRequest v) => v.digitalCode;
  static const Field<RegisterVendorRequest, String> _f$digitalCode =
      Field('digitalCode', _$digitalCode, opt: true);
  static String? _$landmark(RegisterVendorRequest v) => v.landmark;
  static const Field<RegisterVendorRequest, String> _f$landmark =
      Field('landmark', _$landmark, opt: true);
  static String? _$town(RegisterVendorRequest v) => v.town;
  static const Field<RegisterVendorRequest, String> _f$town =
      Field('town', _$town, opt: true);
  static String? _$region(RegisterVendorRequest v) => v.region;
  static const Field<RegisterVendorRequest, String> _f$region =
      Field('region', _$region, opt: true);
  static String? _$countryCode(RegisterVendorRequest v) => v.countryCode;
  static const Field<RegisterVendorRequest, String> _f$countryCode =
      Field('countryCode', _$countryCode, opt: true);
  static String? _$idType(RegisterVendorRequest v) => v.idType;
  static const Field<RegisterVendorRequest, String> _f$idType =
      Field('idType', _$idType, opt: true);
  static String? _$idNumber(RegisterVendorRequest v) => v.idNumber;
  static const Field<RegisterVendorRequest, String> _f$idNumber =
      Field('idNumber', _$idNumber, opt: true);
  static String? _$addressLine1(RegisterVendorRequest v) => v.addressLine1;
  static const Field<RegisterVendorRequest, String> _f$addressLine1 =
      Field('addressLine1', _$addressLine1, opt: true);
  static String? _$addressLine2(RegisterVendorRequest v) => v.addressLine2;
  static const Field<RegisterVendorRequest, String> _f$addressLine2 =
      Field('addressLine2', _$addressLine2, opt: true);
  static String? _$addressLine3(RegisterVendorRequest v) => v.addressLine3;
  static const Field<RegisterVendorRequest, String> _f$addressLine3 =
      Field('addressLine3', _$addressLine3, opt: true);
  static String? _$addressLine4(RegisterVendorRequest v) => v.addressLine4;
  static const Field<RegisterVendorRequest, String> _f$addressLine4 =
      Field('addressLine4', _$addressLine4, opt: true);
  static DateTime? _$dateOfBirth(RegisterVendorRequest v) => v.dateOfBirth;
  static const Field<RegisterVendorRequest, DateTime> _f$dateOfBirth =
      Field('dateOfBirth', _$dateOfBirth, opt: true);

  @override
  final MappableFields<RegisterVendorRequest> fields = const {
    #username: _f$username,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #phoneNumber: _f$phoneNumber,
    #ownerType: _f$ownerType,
    #revenueItems: _f$revenueItems,
    #registrationNumber: _f$registrationNumber,
    #registrationDate: _f$registrationDate,
    #taxIdentificationNumber: _f$taxIdentificationNumber,
    #houseNumber: _f$houseNumber,
    #street: _f$street,
    #digitalCode: _f$digitalCode,
    #landmark: _f$landmark,
    #town: _f$town,
    #region: _f$region,
    #countryCode: _f$countryCode,
    #idType: _f$idType,
    #idNumber: _f$idNumber,
    #addressLine1: _f$addressLine1,
    #addressLine2: _f$addressLine2,
    #addressLine3: _f$addressLine3,
    #addressLine4: _f$addressLine4,
    #dateOfBirth: _f$dateOfBirth,
  };

  static RegisterVendorRequest _instantiate(DecodingData data) {
    return RegisterVendorRequest(
        username: data.dec(_f$username),
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        phoneNumber: data.dec(_f$phoneNumber),
        ownerType: data.dec(_f$ownerType),
        revenueItems: data.dec(_f$revenueItems),
        registrationNumber: data.dec(_f$registrationNumber),
        registrationDate: data.dec(_f$registrationDate),
        taxIdentificationNumber: data.dec(_f$taxIdentificationNumber),
        houseNumber: data.dec(_f$houseNumber),
        street: data.dec(_f$street),
        digitalCode: data.dec(_f$digitalCode),
        landmark: data.dec(_f$landmark),
        town: data.dec(_f$town),
        region: data.dec(_f$region),
        countryCode: data.dec(_f$countryCode),
        idType: data.dec(_f$idType),
        idNumber: data.dec(_f$idNumber),
        addressLine1: data.dec(_f$addressLine1),
        addressLine2: data.dec(_f$addressLine2),
        addressLine3: data.dec(_f$addressLine3),
        addressLine4: data.dec(_f$addressLine4),
        dateOfBirth: data.dec(_f$dateOfBirth));
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterVendorRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterVendorRequest>(map);
  }

  static RegisterVendorRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RegisterVendorRequest>(json);
  }
}

mixin RegisterVendorRequestMappable {
  String toJson() {
    return RegisterVendorRequestMapper.ensureInitialized()
        .encodeJson<RegisterVendorRequest>(this as RegisterVendorRequest);
  }

  Map<String, dynamic> toMap() {
    return RegisterVendorRequestMapper.ensureInitialized()
        .encodeMap<RegisterVendorRequest>(this as RegisterVendorRequest);
  }

  RegisterVendorRequestCopyWith<RegisterVendorRequest, RegisterVendorRequest,
          RegisterVendorRequest>
      get copyWith => _RegisterVendorRequestCopyWithImpl(
          this as RegisterVendorRequest, $identity, $identity);
  @override
  String toString() {
    return RegisterVendorRequestMapper.ensureInitialized()
        .stringifyValue(this as RegisterVendorRequest);
  }

  @override
  bool operator ==(Object other) {
    return RegisterVendorRequestMapper.ensureInitialized()
        .equalsValue(this as RegisterVendorRequest, other);
  }

  @override
  int get hashCode {
    return RegisterVendorRequestMapper.ensureInitialized()
        .hashValue(this as RegisterVendorRequest);
  }
}

extension RegisterVendorRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegisterVendorRequest, $Out> {
  RegisterVendorRequestCopyWith<$R, RegisterVendorRequest, $Out>
      get $asRegisterVendorRequest =>
          $base.as((v, t, t2) => _RegisterVendorRequestCopyWithImpl(v, t, t2));
}

abstract class RegisterVendorRequestCopyWith<
    $R,
    $In extends RegisterVendorRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, RevenueItem, ObjectCopyWith<$R, RevenueItem, RevenueItem>>
      get revenueItems;
  $R call(
      {String? username,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      OwnerType? ownerType,
      List<RevenueItem>? revenueItems,
      String? registrationNumber,
      DateTime? registrationDate,
      String? taxIdentificationNumber,
      String? houseNumber,
      String? street,
      String? digitalCode,
      String? landmark,
      String? town,
      String? region,
      String? countryCode,
      String? idType,
      String? idNumber,
      String? addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? addressLine4,
      DateTime? dateOfBirth});
  RegisterVendorRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RegisterVendorRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegisterVendorRequest, $Out>
    implements RegisterVendorRequestCopyWith<$R, RegisterVendorRequest, $Out> {
  _RegisterVendorRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegisterVendorRequest> $mapper =
      RegisterVendorRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, RevenueItem, ObjectCopyWith<$R, RevenueItem, RevenueItem>>
      get revenueItems => ListCopyWith(
          $value.revenueItems,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(revenueItems: v));
  @override
  $R call(
          {String? username,
          String? firstName,
          String? lastName,
          String? phoneNumber,
          OwnerType? ownerType,
          List<RevenueItem>? revenueItems,
          Object? registrationNumber = $none,
          Object? registrationDate = $none,
          Object? taxIdentificationNumber = $none,
          Object? houseNumber = $none,
          Object? street = $none,
          Object? digitalCode = $none,
          Object? landmark = $none,
          Object? town = $none,
          Object? region = $none,
          Object? countryCode = $none,
          Object? idType = $none,
          Object? idNumber = $none,
          Object? addressLine1 = $none,
          Object? addressLine2 = $none,
          Object? addressLine3 = $none,
          Object? addressLine4 = $none,
          Object? dateOfBirth = $none}) =>
      $apply(FieldCopyWithData({
        if (username != null) #username: username,
        if (firstName != null) #firstName: firstName,
        if (lastName != null) #lastName: lastName,
        if (phoneNumber != null) #phoneNumber: phoneNumber,
        if (ownerType != null) #ownerType: ownerType,
        if (revenueItems != null) #revenueItems: revenueItems,
        if (registrationNumber != $none)
          #registrationNumber: registrationNumber,
        if (registrationDate != $none) #registrationDate: registrationDate,
        if (taxIdentificationNumber != $none)
          #taxIdentificationNumber: taxIdentificationNumber,
        if (houseNumber != $none) #houseNumber: houseNumber,
        if (street != $none) #street: street,
        if (digitalCode != $none) #digitalCode: digitalCode,
        if (landmark != $none) #landmark: landmark,
        if (town != $none) #town: town,
        if (region != $none) #region: region,
        if (countryCode != $none) #countryCode: countryCode,
        if (idType != $none) #idType: idType,
        if (idNumber != $none) #idNumber: idNumber,
        if (addressLine1 != $none) #addressLine1: addressLine1,
        if (addressLine2 != $none) #addressLine2: addressLine2,
        if (addressLine3 != $none) #addressLine3: addressLine3,
        if (addressLine4 != $none) #addressLine4: addressLine4,
        if (dateOfBirth != $none) #dateOfBirth: dateOfBirth
      }));
  @override
  RegisterVendorRequest $make(CopyWithData data) => RegisterVendorRequest(
      username: data.get(#username, or: $value.username),
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      phoneNumber: data.get(#phoneNumber, or: $value.phoneNumber),
      ownerType: data.get(#ownerType, or: $value.ownerType),
      revenueItems: data.get(#revenueItems, or: $value.revenueItems),
      registrationNumber:
          data.get(#registrationNumber, or: $value.registrationNumber),
      registrationDate:
          data.get(#registrationDate, or: $value.registrationDate),
      taxIdentificationNumber: data.get(#taxIdentificationNumber,
          or: $value.taxIdentificationNumber),
      houseNumber: data.get(#houseNumber, or: $value.houseNumber),
      street: data.get(#street, or: $value.street),
      digitalCode: data.get(#digitalCode, or: $value.digitalCode),
      landmark: data.get(#landmark, or: $value.landmark),
      town: data.get(#town, or: $value.town),
      region: data.get(#region, or: $value.region),
      countryCode: data.get(#countryCode, or: $value.countryCode),
      idType: data.get(#idType, or: $value.idType),
      idNumber: data.get(#idNumber, or: $value.idNumber),
      addressLine1: data.get(#addressLine1, or: $value.addressLine1),
      addressLine2: data.get(#addressLine2, or: $value.addressLine2),
      addressLine3: data.get(#addressLine3, or: $value.addressLine3),
      addressLine4: data.get(#addressLine4, or: $value.addressLine4),
      dateOfBirth: data.get(#dateOfBirth, or: $value.dateOfBirth));

  @override
  RegisterVendorRequestCopyWith<$R2, RegisterVendorRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RegisterVendorRequestCopyWithImpl($value, $cast, t);
}
