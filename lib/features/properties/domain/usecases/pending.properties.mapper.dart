// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pending.properties.dart';

class GetPendingPropertiesParamsMapper
    extends ClassMapperBase<GetPendingPropertiesParams> {
  GetPendingPropertiesParamsMapper._();

  static GetPendingPropertiesParamsMapper? _instance;
  static GetPendingPropertiesParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GetPendingPropertiesParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetPendingPropertiesParams';

  static String? _$ownerGuid(GetPendingPropertiesParams v) => v.ownerGuid;
  static const Field<GetPendingPropertiesParams, String> _f$ownerGuid =
      Field('ownerGuid', _$ownerGuid, opt: true);
  static String? _$officerGuid(GetPendingPropertiesParams v) => v.officerGuid;
  static const Field<GetPendingPropertiesParams, String> _f$officerGuid =
      Field('officerGuid', _$officerGuid, opt: true);

  @override
  final MappableFields<GetPendingPropertiesParams> fields = const {
    #ownerGuid: _f$ownerGuid,
    #officerGuid: _f$officerGuid,
  };

  static GetPendingPropertiesParams _instantiate(DecodingData data) {
    return GetPendingPropertiesParams(
        ownerGuid: data.dec(_f$ownerGuid),
        officerGuid: data.dec(_f$officerGuid));
  }

  @override
  final Function instantiate = _instantiate;

  static GetPendingPropertiesParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetPendingPropertiesParams>(map);
  }

  static GetPendingPropertiesParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetPendingPropertiesParams>(json);
  }
}

mixin GetPendingPropertiesParamsMappable {
  String toJson() {
    return GetPendingPropertiesParamsMapper.ensureInitialized()
        .encodeJson<GetPendingPropertiesParams>(
            this as GetPendingPropertiesParams);
  }

  Map<String, dynamic> toMap() {
    return GetPendingPropertiesParamsMapper.ensureInitialized()
        .encodeMap<GetPendingPropertiesParams>(
            this as GetPendingPropertiesParams);
  }

  GetPendingPropertiesParamsCopyWith<GetPendingPropertiesParams,
          GetPendingPropertiesParams, GetPendingPropertiesParams>
      get copyWith => _GetPendingPropertiesParamsCopyWithImpl(
          this as GetPendingPropertiesParams, $identity, $identity);
  @override
  String toString() {
    return GetPendingPropertiesParamsMapper.ensureInitialized()
        .stringifyValue(this as GetPendingPropertiesParams);
  }

  @override
  bool operator ==(Object other) {
    return GetPendingPropertiesParamsMapper.ensureInitialized()
        .equalsValue(this as GetPendingPropertiesParams, other);
  }

  @override
  int get hashCode {
    return GetPendingPropertiesParamsMapper.ensureInitialized()
        .hashValue(this as GetPendingPropertiesParams);
  }
}

extension GetPendingPropertiesParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetPendingPropertiesParams, $Out> {
  GetPendingPropertiesParamsCopyWith<$R, GetPendingPropertiesParams, $Out>
      get $asGetPendingPropertiesParams => $base
          .as((v, t, t2) => _GetPendingPropertiesParamsCopyWithImpl(v, t, t2));
}

abstract class GetPendingPropertiesParamsCopyWith<
    $R,
    $In extends GetPendingPropertiesParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? ownerGuid, String? officerGuid});
  GetPendingPropertiesParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetPendingPropertiesParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetPendingPropertiesParams, $Out>
    implements
        GetPendingPropertiesParamsCopyWith<$R, GetPendingPropertiesParams,
            $Out> {
  _GetPendingPropertiesParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetPendingPropertiesParams> $mapper =
      GetPendingPropertiesParamsMapper.ensureInitialized();
  @override
  $R call({Object? ownerGuid = $none, Object? officerGuid = $none}) =>
      $apply(FieldCopyWithData({
        if (ownerGuid != $none) #ownerGuid: ownerGuid,
        if (officerGuid != $none) #officerGuid: officerGuid
      }));
  @override
  GetPendingPropertiesParams $make(CopyWithData data) =>
      GetPendingPropertiesParams(
          ownerGuid: data.get(#ownerGuid, or: $value.ownerGuid),
          officerGuid: data.get(#officerGuid, or: $value.officerGuid));

  @override
  GetPendingPropertiesParamsCopyWith<$R2, GetPendingPropertiesParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetPendingPropertiesParamsCopyWithImpl($value, $cast, t);
}
