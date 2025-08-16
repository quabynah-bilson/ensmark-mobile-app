// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'all.properties.dart';

class GetAllPropertiesParamsMapper
    extends ClassMapperBase<GetAllPropertiesParams> {
  GetAllPropertiesParamsMapper._();

  static GetAllPropertiesParamsMapper? _instance;
  static GetAllPropertiesParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetAllPropertiesParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetAllPropertiesParams';

  static String? _$ownerGuid(GetAllPropertiesParams v) => v.ownerGuid;
  static const Field<GetAllPropertiesParams, String> _f$ownerGuid =
      Field('ownerGuid', _$ownerGuid, opt: true);
  static String? _$officerGuid(GetAllPropertiesParams v) => v.officerGuid;
  static const Field<GetAllPropertiesParams, String> _f$officerGuid =
      Field('officerGuid', _$officerGuid, opt: true);
  static String? _$location(GetAllPropertiesParams v) => v.location;
  static const Field<GetAllPropertiesParams, String> _f$location =
      Field('location', _$location, opt: true);
  static PropertyType? _$type(GetAllPropertiesParams v) => v.type;
  static const Field<GetAllPropertiesParams, PropertyType> _f$type =
      Field('type', _$type, opt: true);
  static PropertyStatus? _$status(GetAllPropertiesParams v) => v.status;
  static const Field<GetAllPropertiesParams, PropertyStatus> _f$status =
      Field('status', _$status, opt: true);

  @override
  final MappableFields<GetAllPropertiesParams> fields = const {
    #ownerGuid: _f$ownerGuid,
    #officerGuid: _f$officerGuid,
    #location: _f$location,
    #type: _f$type,
    #status: _f$status,
  };

  static GetAllPropertiesParams _instantiate(DecodingData data) {
    return GetAllPropertiesParams(
        ownerGuid: data.dec(_f$ownerGuid),
        officerGuid: data.dec(_f$officerGuid),
        location: data.dec(_f$location),
        type: data.dec(_f$type),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static GetAllPropertiesParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetAllPropertiesParams>(map);
  }

  static GetAllPropertiesParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetAllPropertiesParams>(json);
  }
}

mixin GetAllPropertiesParamsMappable {
  String toJson() {
    return GetAllPropertiesParamsMapper.ensureInitialized()
        .encodeJson<GetAllPropertiesParams>(this as GetAllPropertiesParams);
  }

  Map<String, dynamic> toMap() {
    return GetAllPropertiesParamsMapper.ensureInitialized()
        .encodeMap<GetAllPropertiesParams>(this as GetAllPropertiesParams);
  }

  GetAllPropertiesParamsCopyWith<GetAllPropertiesParams, GetAllPropertiesParams,
          GetAllPropertiesParams>
      get copyWith => _GetAllPropertiesParamsCopyWithImpl(
          this as GetAllPropertiesParams, $identity, $identity);
  @override
  String toString() {
    return GetAllPropertiesParamsMapper.ensureInitialized()
        .stringifyValue(this as GetAllPropertiesParams);
  }

  @override
  bool operator ==(Object other) {
    return GetAllPropertiesParamsMapper.ensureInitialized()
        .equalsValue(this as GetAllPropertiesParams, other);
  }

  @override
  int get hashCode {
    return GetAllPropertiesParamsMapper.ensureInitialized()
        .hashValue(this as GetAllPropertiesParams);
  }
}

extension GetAllPropertiesParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetAllPropertiesParams, $Out> {
  GetAllPropertiesParamsCopyWith<$R, GetAllPropertiesParams, $Out>
      get $asGetAllPropertiesParams =>
          $base.as((v, t, t2) => _GetAllPropertiesParamsCopyWithImpl(v, t, t2));
}

abstract class GetAllPropertiesParamsCopyWith<
    $R,
    $In extends GetAllPropertiesParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? ownerGuid,
      String? officerGuid,
      String? location,
      PropertyType? type,
      PropertyStatus? status});
  GetAllPropertiesParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetAllPropertiesParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetAllPropertiesParams, $Out>
    implements
        GetAllPropertiesParamsCopyWith<$R, GetAllPropertiesParams, $Out> {
  _GetAllPropertiesParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetAllPropertiesParams> $mapper =
      GetAllPropertiesParamsMapper.ensureInitialized();
  @override
  $R call(
          {Object? ownerGuid = $none,
          Object? officerGuid = $none,
          Object? location = $none,
          Object? type = $none,
          Object? status = $none}) =>
      $apply(FieldCopyWithData({
        if (ownerGuid != $none) #ownerGuid: ownerGuid,
        if (officerGuid != $none) #officerGuid: officerGuid,
        if (location != $none) #location: location,
        if (type != $none) #type: type,
        if (status != $none) #status: status
      }));
  @override
  GetAllPropertiesParams $make(CopyWithData data) => GetAllPropertiesParams(
      ownerGuid: data.get(#ownerGuid, or: $value.ownerGuid),
      officerGuid: data.get(#officerGuid, or: $value.officerGuid),
      location: data.get(#location, or: $value.location),
      type: data.get(#type, or: $value.type),
      status: data.get(#status, or: $value.status));

  @override
  GetAllPropertiesParamsCopyWith<$R2, GetAllPropertiesParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetAllPropertiesParamsCopyWithImpl($value, $cast, t);
}
