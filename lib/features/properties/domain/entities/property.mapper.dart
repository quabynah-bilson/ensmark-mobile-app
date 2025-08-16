// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'property.dart';

class PropertyLocationMapper extends ClassMapperBase<PropertyLocation> {
  PropertyLocationMapper._();

  static PropertyLocationMapper? _instance;
  static PropertyLocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PropertyLocationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PropertyLocation';

  static String _$name(PropertyLocation v) => v.name;
  static const Field<PropertyLocation, String> _f$name = Field('name', _$name);
  static String _$address(PropertyLocation v) => v.address;
  static const Field<PropertyLocation, String> _f$address =
      Field('address', _$address);
  static String _$city(PropertyLocation v) => v.city;
  static const Field<PropertyLocation, String> _f$city = Field('city', _$city);
  static String _$state(PropertyLocation v) => v.state;
  static const Field<PropertyLocation, String> _f$state =
      Field('state', _$state);
  static double _$latitude(PropertyLocation v) => v.latitude;
  static const Field<PropertyLocation, double> _f$latitude =
      Field('latitude', _$latitude);
  static double _$longitude(PropertyLocation v) => v.longitude;
  static const Field<PropertyLocation, double> _f$longitude =
      Field('longitude', _$longitude);
  static String _$zip(PropertyLocation v) => v.zip;
  static const Field<PropertyLocation, String> _f$zip =
      Field('zip', _$zip, opt: true, def: '00233');
  static String _$country(PropertyLocation v) => v.country;
  static const Field<PropertyLocation, String> _f$country =
      Field('country', _$country, opt: true, def: 'Ghana');

  @override
  final MappableFields<PropertyLocation> fields = const {
    #name: _f$name,
    #address: _f$address,
    #city: _f$city,
    #state: _f$state,
    #latitude: _f$latitude,
    #longitude: _f$longitude,
    #zip: _f$zip,
    #country: _f$country,
  };

  static PropertyLocation _instantiate(DecodingData data) {
    return PropertyLocation(
        name: data.dec(_f$name),
        address: data.dec(_f$address),
        city: data.dec(_f$city),
        state: data.dec(_f$state),
        latitude: data.dec(_f$latitude),
        longitude: data.dec(_f$longitude),
        zip: data.dec(_f$zip),
        country: data.dec(_f$country));
  }

  @override
  final Function instantiate = _instantiate;

  static PropertyLocation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PropertyLocation>(map);
  }

  static PropertyLocation fromJson(String json) {
    return ensureInitialized().decodeJson<PropertyLocation>(json);
  }
}

mixin PropertyLocationMappable {
  String toJson() {
    return PropertyLocationMapper.ensureInitialized()
        .encodeJson<PropertyLocation>(this as PropertyLocation);
  }

  Map<String, dynamic> toMap() {
    return PropertyLocationMapper.ensureInitialized()
        .encodeMap<PropertyLocation>(this as PropertyLocation);
  }

  PropertyLocationCopyWith<PropertyLocation, PropertyLocation, PropertyLocation>
      get copyWith => _PropertyLocationCopyWithImpl(
          this as PropertyLocation, $identity, $identity);
  @override
  String toString() {
    return PropertyLocationMapper.ensureInitialized()
        .stringifyValue(this as PropertyLocation);
  }

  @override
  bool operator ==(Object other) {
    return PropertyLocationMapper.ensureInitialized()
        .equalsValue(this as PropertyLocation, other);
  }

  @override
  int get hashCode {
    return PropertyLocationMapper.ensureInitialized()
        .hashValue(this as PropertyLocation);
  }
}

extension PropertyLocationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PropertyLocation, $Out> {
  PropertyLocationCopyWith<$R, PropertyLocation, $Out>
      get $asPropertyLocation =>
          $base.as((v, t, t2) => _PropertyLocationCopyWithImpl(v, t, t2));
}

abstract class PropertyLocationCopyWith<$R, $In extends PropertyLocation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? address,
      String? city,
      String? state,
      double? latitude,
      double? longitude,
      String? zip,
      String? country});
  PropertyLocationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PropertyLocationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PropertyLocation, $Out>
    implements PropertyLocationCopyWith<$R, PropertyLocation, $Out> {
  _PropertyLocationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PropertyLocation> $mapper =
      PropertyLocationMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          String? address,
          String? city,
          String? state,
          double? latitude,
          double? longitude,
          String? zip,
          String? country}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (address != null) #address: address,
        if (city != null) #city: city,
        if (state != null) #state: state,
        if (latitude != null) #latitude: latitude,
        if (longitude != null) #longitude: longitude,
        if (zip != null) #zip: zip,
        if (country != null) #country: country
      }));
  @override
  PropertyLocation $make(CopyWithData data) => PropertyLocation(
      name: data.get(#name, or: $value.name),
      address: data.get(#address, or: $value.address),
      city: data.get(#city, or: $value.city),
      state: data.get(#state, or: $value.state),
      latitude: data.get(#latitude, or: $value.latitude),
      longitude: data.get(#longitude, or: $value.longitude),
      zip: data.get(#zip, or: $value.zip),
      country: data.get(#country, or: $value.country));

  @override
  PropertyLocationCopyWith<$R2, PropertyLocation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PropertyLocationCopyWithImpl($value, $cast, t);
}
