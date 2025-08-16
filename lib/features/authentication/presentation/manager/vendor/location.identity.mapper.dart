// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'location.identity.dart';

class IdentityTypeMapper extends EnumMapper<IdentityType> {
  IdentityTypeMapper._();

  static IdentityTypeMapper? _instance;
  static IdentityTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IdentityTypeMapper._());
    }
    return _instance!;
  }

  static IdentityType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  IdentityType decode(dynamic value) {
    switch (value) {
      case 0:
        return IdentityType.nationalId;
      case 1:
        return IdentityType.passport;
      case 2:
        return IdentityType.driverLicense;
      case 3:
        return IdentityType.businessLicense;
      case 4:
        return IdentityType.other;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(IdentityType self) {
    switch (self) {
      case IdentityType.nationalId:
        return 0;
      case IdentityType.passport:
        return 1;
      case IdentityType.driverLicense:
        return 2;
      case IdentityType.businessLicense:
        return 3;
      case IdentityType.other:
        return 4;
    }
  }
}

extension IdentityTypeMapperExtension on IdentityType {
  dynamic toValue() {
    IdentityTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<IdentityType>(this);
  }
}

class LocationIdentityStateMapper
    extends ClassMapperBase<LocationIdentityState> {
  LocationIdentityStateMapper._();

  static LocationIdentityStateMapper? _instance;
  static LocationIdentityStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationIdentityStateMapper._());
      IdentityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LocationIdentityState';

  static IdentityType _$idType(LocationIdentityState v) => v.idType;
  static const Field<LocationIdentityState, IdentityType> _f$idType =
      Field('idType', _$idType, opt: true, def: IdentityType.nationalId);
  static String _$idNumber(LocationIdentityState v) => v.idNumber;
  static const Field<LocationIdentityState, String> _f$idNumber =
      Field('idNumber', _$idNumber, opt: true, def: '');
  static String _$addressLine1(LocationIdentityState v) => v.addressLine1;
  static const Field<LocationIdentityState, String> _f$addressLine1 =
      Field('addressLine1', _$addressLine1, opt: true, def: '');
  static String _$addressLine2(LocationIdentityState v) => v.addressLine2;
  static const Field<LocationIdentityState, String> _f$addressLine2 =
      Field('addressLine2', _$addressLine2, opt: true, def: '');
  static String _$addressLine3(LocationIdentityState v) => v.addressLine3;
  static const Field<LocationIdentityState, String> _f$addressLine3 =
      Field('addressLine3', _$addressLine3, opt: true, def: '');
  static String _$addressLine4(LocationIdentityState v) => v.addressLine4;
  static const Field<LocationIdentityState, String> _f$addressLine4 =
      Field('addressLine4', _$addressLine4, opt: true, def: '');
  static String _$country(LocationIdentityState v) => v.country;
  static const Field<LocationIdentityState, String> _f$country =
      Field('country', _$country, opt: true, def: 'GH');
  static String _$taxIdentificationNumber(LocationIdentityState v) =>
      v.taxIdentificationNumber;
  static const Field<LocationIdentityState, String> _f$taxIdentificationNumber =
      Field('taxIdentificationNumber', _$taxIdentificationNumber,
          opt: true, def: '');
  static String _$houseNumber(LocationIdentityState v) => v.houseNumber;
  static const Field<LocationIdentityState, String> _f$houseNumber =
      Field('houseNumber', _$houseNumber, opt: true, def: '');
  static String _$street(LocationIdentityState v) => v.street;
  static const Field<LocationIdentityState, String> _f$street =
      Field('street', _$street, opt: true, def: '');
  static String _$digitalCode(LocationIdentityState v) => v.digitalCode;
  static const Field<LocationIdentityState, String> _f$digitalCode =
      Field('digitalCode', _$digitalCode, opt: true, def: '');
  static String _$landmark(LocationIdentityState v) => v.landmark;
  static const Field<LocationIdentityState, String> _f$landmark =
      Field('landmark', _$landmark, opt: true, def: '');
  static String _$town(LocationIdentityState v) => v.town;
  static const Field<LocationIdentityState, String> _f$town =
      Field('town', _$town, opt: true, def: '');
  static String _$region(LocationIdentityState v) => v.region;
  static const Field<LocationIdentityState, String> _f$region =
      Field('region', _$region, opt: true, def: '');

  @override
  final MappableFields<LocationIdentityState> fields = const {
    #idType: _f$idType,
    #idNumber: _f$idNumber,
    #addressLine1: _f$addressLine1,
    #addressLine2: _f$addressLine2,
    #addressLine3: _f$addressLine3,
    #addressLine4: _f$addressLine4,
    #country: _f$country,
    #taxIdentificationNumber: _f$taxIdentificationNumber,
    #houseNumber: _f$houseNumber,
    #street: _f$street,
    #digitalCode: _f$digitalCode,
    #landmark: _f$landmark,
    #town: _f$town,
    #region: _f$region,
  };

  static LocationIdentityState _instantiate(DecodingData data) {
    return LocationIdentityState(
        idType: data.dec(_f$idType),
        idNumber: data.dec(_f$idNumber),
        addressLine1: data.dec(_f$addressLine1),
        addressLine2: data.dec(_f$addressLine2),
        addressLine3: data.dec(_f$addressLine3),
        addressLine4: data.dec(_f$addressLine4),
        country: data.dec(_f$country),
        taxIdentificationNumber: data.dec(_f$taxIdentificationNumber),
        houseNumber: data.dec(_f$houseNumber),
        street: data.dec(_f$street),
        digitalCode: data.dec(_f$digitalCode),
        landmark: data.dec(_f$landmark),
        town: data.dec(_f$town),
        region: data.dec(_f$region));
  }

  @override
  final Function instantiate = _instantiate;

  static LocationIdentityState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocationIdentityState>(map);
  }

  static LocationIdentityState fromJson(String json) {
    return ensureInitialized().decodeJson<LocationIdentityState>(json);
  }
}

mixin LocationIdentityStateMappable {
  String toJson() {
    return LocationIdentityStateMapper.ensureInitialized()
        .encodeJson<LocationIdentityState>(this as LocationIdentityState);
  }

  Map<String, dynamic> toMap() {
    return LocationIdentityStateMapper.ensureInitialized()
        .encodeMap<LocationIdentityState>(this as LocationIdentityState);
  }

  LocationIdentityStateCopyWith<LocationIdentityState, LocationIdentityState,
          LocationIdentityState>
      get copyWith => _LocationIdentityStateCopyWithImpl(
          this as LocationIdentityState, $identity, $identity);
  @override
  String toString() {
    return LocationIdentityStateMapper.ensureInitialized()
        .stringifyValue(this as LocationIdentityState);
  }

  @override
  bool operator ==(Object other) {
    return LocationIdentityStateMapper.ensureInitialized()
        .equalsValue(this as LocationIdentityState, other);
  }

  @override
  int get hashCode {
    return LocationIdentityStateMapper.ensureInitialized()
        .hashValue(this as LocationIdentityState);
  }
}

extension LocationIdentityStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocationIdentityState, $Out> {
  LocationIdentityStateCopyWith<$R, LocationIdentityState, $Out>
      get $asLocationIdentityState =>
          $base.as((v, t, t2) => _LocationIdentityStateCopyWithImpl(v, t, t2));
}

abstract class LocationIdentityStateCopyWith<
    $R,
    $In extends LocationIdentityState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {IdentityType? idType,
      String? idNumber,
      String? addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? addressLine4,
      String? country,
      String? taxIdentificationNumber,
      String? houseNumber,
      String? street,
      String? digitalCode,
      String? landmark,
      String? town,
      String? region});
  LocationIdentityStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LocationIdentityStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocationIdentityState, $Out>
    implements LocationIdentityStateCopyWith<$R, LocationIdentityState, $Out> {
  _LocationIdentityStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocationIdentityState> $mapper =
      LocationIdentityStateMapper.ensureInitialized();
  @override
  $R call(
          {IdentityType? idType,
          String? idNumber,
          String? addressLine1,
          String? addressLine2,
          String? addressLine3,
          String? addressLine4,
          String? country,
          String? taxIdentificationNumber,
          String? houseNumber,
          String? street,
          String? digitalCode,
          String? landmark,
          String? town,
          String? region}) =>
      $apply(FieldCopyWithData({
        if (idType != null) #idType: idType,
        if (idNumber != null) #idNumber: idNumber,
        if (addressLine1 != null) #addressLine1: addressLine1,
        if (addressLine2 != null) #addressLine2: addressLine2,
        if (addressLine3 != null) #addressLine3: addressLine3,
        if (addressLine4 != null) #addressLine4: addressLine4,
        if (country != null) #country: country,
        if (taxIdentificationNumber != null)
          #taxIdentificationNumber: taxIdentificationNumber,
        if (houseNumber != null) #houseNumber: houseNumber,
        if (street != null) #street: street,
        if (digitalCode != null) #digitalCode: digitalCode,
        if (landmark != null) #landmark: landmark,
        if (town != null) #town: town,
        if (region != null) #region: region
      }));
  @override
  LocationIdentityState $make(CopyWithData data) => LocationIdentityState(
      idType: data.get(#idType, or: $value.idType),
      idNumber: data.get(#idNumber, or: $value.idNumber),
      addressLine1: data.get(#addressLine1, or: $value.addressLine1),
      addressLine2: data.get(#addressLine2, or: $value.addressLine2),
      addressLine3: data.get(#addressLine3, or: $value.addressLine3),
      addressLine4: data.get(#addressLine4, or: $value.addressLine4),
      country: data.get(#country, or: $value.country),
      taxIdentificationNumber: data.get(#taxIdentificationNumber,
          or: $value.taxIdentificationNumber),
      houseNumber: data.get(#houseNumber, or: $value.houseNumber),
      street: data.get(#street, or: $value.street),
      digitalCode: data.get(#digitalCode, or: $value.digitalCode),
      landmark: data.get(#landmark, or: $value.landmark),
      town: data.get(#town, or: $value.town),
      region: data.get(#region, or: $value.region));

  @override
  LocationIdentityStateCopyWith<$R2, LocationIdentityState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LocationIdentityStateCopyWithImpl($value, $cast, t);
}
