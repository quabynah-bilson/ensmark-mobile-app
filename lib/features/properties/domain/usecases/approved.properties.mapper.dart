// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'approved.properties.dart';

class GetApprovedPropertiesParamsMapper
    extends ClassMapperBase<GetApprovedPropertiesParams> {
  GetApprovedPropertiesParamsMapper._();

  static GetApprovedPropertiesParamsMapper? _instance;
  static GetApprovedPropertiesParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GetApprovedPropertiesParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetApprovedPropertiesParams';

  static String? _$ownerGuid(GetApprovedPropertiesParams v) => v.ownerGuid;
  static const Field<GetApprovedPropertiesParams, String> _f$ownerGuid =
      Field('ownerGuid', _$ownerGuid, opt: true);
  static String? _$officerGuid(GetApprovedPropertiesParams v) => v.officerGuid;
  static const Field<GetApprovedPropertiesParams, String> _f$officerGuid =
      Field('officerGuid', _$officerGuid, opt: true);

  @override
  final MappableFields<GetApprovedPropertiesParams> fields = const {
    #ownerGuid: _f$ownerGuid,
    #officerGuid: _f$officerGuid,
  };

  static GetApprovedPropertiesParams _instantiate(DecodingData data) {
    return GetApprovedPropertiesParams(
        ownerGuid: data.dec(_f$ownerGuid),
        officerGuid: data.dec(_f$officerGuid));
  }

  @override
  final Function instantiate = _instantiate;

  static GetApprovedPropertiesParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetApprovedPropertiesParams>(map);
  }

  static GetApprovedPropertiesParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetApprovedPropertiesParams>(json);
  }
}

mixin GetApprovedPropertiesParamsMappable {
  String toJson() {
    return GetApprovedPropertiesParamsMapper.ensureInitialized()
        .encodeJson<GetApprovedPropertiesParams>(
            this as GetApprovedPropertiesParams);
  }

  Map<String, dynamic> toMap() {
    return GetApprovedPropertiesParamsMapper.ensureInitialized()
        .encodeMap<GetApprovedPropertiesParams>(
            this as GetApprovedPropertiesParams);
  }

  GetApprovedPropertiesParamsCopyWith<GetApprovedPropertiesParams,
          GetApprovedPropertiesParams, GetApprovedPropertiesParams>
      get copyWith => _GetApprovedPropertiesParamsCopyWithImpl(
          this as GetApprovedPropertiesParams, $identity, $identity);
  @override
  String toString() {
    return GetApprovedPropertiesParamsMapper.ensureInitialized()
        .stringifyValue(this as GetApprovedPropertiesParams);
  }

  @override
  bool operator ==(Object other) {
    return GetApprovedPropertiesParamsMapper.ensureInitialized()
        .equalsValue(this as GetApprovedPropertiesParams, other);
  }

  @override
  int get hashCode {
    return GetApprovedPropertiesParamsMapper.ensureInitialized()
        .hashValue(this as GetApprovedPropertiesParams);
  }
}

extension GetApprovedPropertiesParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetApprovedPropertiesParams, $Out> {
  GetApprovedPropertiesParamsCopyWith<$R, GetApprovedPropertiesParams, $Out>
      get $asGetApprovedPropertiesParams => $base
          .as((v, t, t2) => _GetApprovedPropertiesParamsCopyWithImpl(v, t, t2));
}

abstract class GetApprovedPropertiesParamsCopyWith<
    $R,
    $In extends GetApprovedPropertiesParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? ownerGuid, String? officerGuid});
  GetApprovedPropertiesParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetApprovedPropertiesParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetApprovedPropertiesParams, $Out>
    implements
        GetApprovedPropertiesParamsCopyWith<$R, GetApprovedPropertiesParams,
            $Out> {
  _GetApprovedPropertiesParamsCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetApprovedPropertiesParams> $mapper =
      GetApprovedPropertiesParamsMapper.ensureInitialized();
  @override
  $R call({Object? ownerGuid = $none, Object? officerGuid = $none}) =>
      $apply(FieldCopyWithData({
        if (ownerGuid != $none) #ownerGuid: ownerGuid,
        if (officerGuid != $none) #officerGuid: officerGuid
      }));
  @override
  GetApprovedPropertiesParams $make(CopyWithData data) =>
      GetApprovedPropertiesParams(
          ownerGuid: data.get(#ownerGuid, or: $value.ownerGuid),
          officerGuid: data.get(#officerGuid, or: $value.officerGuid));

  @override
  GetApprovedPropertiesParamsCopyWith<$R2, GetApprovedPropertiesParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetApprovedPropertiesParamsCopyWithImpl($value, $cast, t);
}
