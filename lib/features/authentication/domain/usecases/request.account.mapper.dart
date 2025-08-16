// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'request.account.dart';

class RequestAccountUseCaseParamsMapper
    extends ClassMapperBase<RequestAccountUseCaseParams> {
  RequestAccountUseCaseParamsMapper._();

  static RequestAccountUseCaseParamsMapper? _instance;
  static RequestAccountUseCaseParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = RequestAccountUseCaseParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RequestAccountUseCaseParams';

  static String _$username(RequestAccountUseCaseParams v) => v.username;
  static const Field<RequestAccountUseCaseParams, String> _f$username =
      Field('username', _$username, opt: true, def: '');
  static String _$firstName(RequestAccountUseCaseParams v) => v.firstName;
  static const Field<RequestAccountUseCaseParams, String> _f$firstName =
      Field('firstName', _$firstName, opt: true, def: '');
  static String _$lastName(RequestAccountUseCaseParams v) => v.lastName;
  static const Field<RequestAccountUseCaseParams, String> _f$lastName =
      Field('lastName', _$lastName, opt: true, def: '');
  static String _$phoneNumber(RequestAccountUseCaseParams v) => v.phoneNumber;
  static const Field<RequestAccountUseCaseParams, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber, opt: true, def: '');
  static OwnerType _$ownerType(RequestAccountUseCaseParams v) => v.ownerType;
  static const Field<RequestAccountUseCaseParams, OwnerType> _f$ownerType =
      Field('ownerType', _$ownerType, opt: true, def: OwnerType.individual);
  static List<RevenueItem> _$revenueItems(RequestAccountUseCaseParams v) =>
      v.revenueItems;
  static const Field<RequestAccountUseCaseParams, List<RevenueItem>>
      _f$revenueItems =
      Field('revenueItems', _$revenueItems, opt: true, def: const []);
  static String? _$registrationNumber(RequestAccountUseCaseParams v) =>
      v.registrationNumber;
  static const Field<RequestAccountUseCaseParams, String>
      _f$registrationNumber =
      Field('registrationNumber', _$registrationNumber, opt: true);
  static DateTime? _$registrationDate(RequestAccountUseCaseParams v) =>
      v.registrationDate;
  static const Field<RequestAccountUseCaseParams, DateTime>
      _f$registrationDate =
      Field('registrationDate', _$registrationDate, opt: true);
  static String? _$taxIdentificationNumber(RequestAccountUseCaseParams v) =>
      v.taxIdentificationNumber;
  static const Field<RequestAccountUseCaseParams, String>
      _f$taxIdentificationNumber =
      Field('taxIdentificationNumber', _$taxIdentificationNumber, opt: true);
  static String? _$houseNumber(RequestAccountUseCaseParams v) => v.houseNumber;
  static const Field<RequestAccountUseCaseParams, String> _f$houseNumber =
      Field('houseNumber', _$houseNumber, opt: true);
  static String? _$street(RequestAccountUseCaseParams v) => v.street;
  static const Field<RequestAccountUseCaseParams, String> _f$street =
      Field('street', _$street, opt: true);
  static String? _$digitalCode(RequestAccountUseCaseParams v) => v.digitalCode;
  static const Field<RequestAccountUseCaseParams, String> _f$digitalCode =
      Field('digitalCode', _$digitalCode, opt: true);
  static String? _$landmark(RequestAccountUseCaseParams v) => v.landmark;
  static const Field<RequestAccountUseCaseParams, String> _f$landmark =
      Field('landmark', _$landmark, opt: true);
  static String? _$town(RequestAccountUseCaseParams v) => v.town;
  static const Field<RequestAccountUseCaseParams, String> _f$town =
      Field('town', _$town, opt: true);
  static String? _$region(RequestAccountUseCaseParams v) => v.region;
  static const Field<RequestAccountUseCaseParams, String> _f$region =
      Field('region', _$region, opt: true);
  static String? _$countryCode(RequestAccountUseCaseParams v) => v.countryCode;
  static const Field<RequestAccountUseCaseParams, String> _f$countryCode =
      Field('countryCode', _$countryCode, opt: true);
  static String? _$idType(RequestAccountUseCaseParams v) => v.idType;
  static const Field<RequestAccountUseCaseParams, String> _f$idType =
      Field('idType', _$idType, opt: true);
  static String? _$idNumber(RequestAccountUseCaseParams v) => v.idNumber;
  static const Field<RequestAccountUseCaseParams, String> _f$idNumber =
      Field('idNumber', _$idNumber, opt: true);
  static String? _$addressLine1(RequestAccountUseCaseParams v) =>
      v.addressLine1;
  static const Field<RequestAccountUseCaseParams, String> _f$addressLine1 =
      Field('addressLine1', _$addressLine1, opt: true);
  static String? _$addressLine2(RequestAccountUseCaseParams v) =>
      v.addressLine2;
  static const Field<RequestAccountUseCaseParams, String> _f$addressLine2 =
      Field('addressLine2', _$addressLine2, opt: true);
  static String? _$addressLine3(RequestAccountUseCaseParams v) =>
      v.addressLine3;
  static const Field<RequestAccountUseCaseParams, String> _f$addressLine3 =
      Field('addressLine3', _$addressLine3, opt: true);
  static String? _$addressLine4(RequestAccountUseCaseParams v) =>
      v.addressLine4;
  static const Field<RequestAccountUseCaseParams, String> _f$addressLine4 =
      Field('addressLine4', _$addressLine4, opt: true);
  static DateTime? _$dateOfBirth(RequestAccountUseCaseParams v) =>
      v.dateOfBirth;
  static const Field<RequestAccountUseCaseParams, DateTime> _f$dateOfBirth =
      Field('dateOfBirth', _$dateOfBirth, opt: true);

  @override
  final MappableFields<RequestAccountUseCaseParams> fields = const {
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

  static RequestAccountUseCaseParams _instantiate(DecodingData data) {
    return RequestAccountUseCaseParams(
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

  static RequestAccountUseCaseParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RequestAccountUseCaseParams>(map);
  }

  static RequestAccountUseCaseParams fromJson(String json) {
    return ensureInitialized().decodeJson<RequestAccountUseCaseParams>(json);
  }
}

mixin RequestAccountUseCaseParamsMappable {
  String toJson() {
    return RequestAccountUseCaseParamsMapper.ensureInitialized()
        .encodeJson<RequestAccountUseCaseParams>(
            this as RequestAccountUseCaseParams);
  }

  Map<String, dynamic> toMap() {
    return RequestAccountUseCaseParamsMapper.ensureInitialized()
        .encodeMap<RequestAccountUseCaseParams>(
            this as RequestAccountUseCaseParams);
  }

  RequestAccountUseCaseParamsCopyWith<RequestAccountUseCaseParams,
          RequestAccountUseCaseParams, RequestAccountUseCaseParams>
      get copyWith => _RequestAccountUseCaseParamsCopyWithImpl(
          this as RequestAccountUseCaseParams, $identity, $identity);
  @override
  String toString() {
    return RequestAccountUseCaseParamsMapper.ensureInitialized()
        .stringifyValue(this as RequestAccountUseCaseParams);
  }

  @override
  bool operator ==(Object other) {
    return RequestAccountUseCaseParamsMapper.ensureInitialized()
        .equalsValue(this as RequestAccountUseCaseParams, other);
  }

  @override
  int get hashCode {
    return RequestAccountUseCaseParamsMapper.ensureInitialized()
        .hashValue(this as RequestAccountUseCaseParams);
  }
}

extension RequestAccountUseCaseParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RequestAccountUseCaseParams, $Out> {
  RequestAccountUseCaseParamsCopyWith<$R, RequestAccountUseCaseParams, $Out>
      get $asRequestAccountUseCaseParams => $base
          .as((v, t, t2) => _RequestAccountUseCaseParamsCopyWithImpl(v, t, t2));
}

abstract class RequestAccountUseCaseParamsCopyWith<
    $R,
    $In extends RequestAccountUseCaseParams,
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
  RequestAccountUseCaseParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RequestAccountUseCaseParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RequestAccountUseCaseParams, $Out>
    implements
        RequestAccountUseCaseParamsCopyWith<$R, RequestAccountUseCaseParams,
            $Out> {
  _RequestAccountUseCaseParamsCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RequestAccountUseCaseParams> $mapper =
      RequestAccountUseCaseParamsMapper.ensureInitialized();
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
  RequestAccountUseCaseParams $make(CopyWithData data) =>
      RequestAccountUseCaseParams(
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
  RequestAccountUseCaseParamsCopyWith<$R2, RequestAccountUseCaseParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RequestAccountUseCaseParamsCopyWithImpl($value, $cast, t);
}
