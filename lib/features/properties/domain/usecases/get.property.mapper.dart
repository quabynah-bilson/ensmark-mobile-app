// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get.property.dart';

class GetPropertyParamsMapper extends ClassMapperBase<GetPropertyParams> {
  GetPropertyParamsMapper._();

  static GetPropertyParamsMapper? _instance;
  static GetPropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetPropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetPropertyParams';

  static String _$guid(GetPropertyParams v) => v.guid;
  static const Field<GetPropertyParams, String> _f$guid = Field('guid', _$guid);

  @override
  final MappableFields<GetPropertyParams> fields = const {
    #guid: _f$guid,
  };

  static GetPropertyParams _instantiate(DecodingData data) {
    return GetPropertyParams(guid: data.dec(_f$guid));
  }

  @override
  final Function instantiate = _instantiate;

  static GetPropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetPropertyParams>(map);
  }

  static GetPropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetPropertyParams>(json);
  }
}

mixin GetPropertyParamsMappable {
  String toJson() {
    return GetPropertyParamsMapper.ensureInitialized()
        .encodeJson<GetPropertyParams>(this as GetPropertyParams);
  }

  Map<String, dynamic> toMap() {
    return GetPropertyParamsMapper.ensureInitialized()
        .encodeMap<GetPropertyParams>(this as GetPropertyParams);
  }

  GetPropertyParamsCopyWith<GetPropertyParams, GetPropertyParams,
          GetPropertyParams>
      get copyWith => _GetPropertyParamsCopyWithImpl(
          this as GetPropertyParams, $identity, $identity);
  @override
  String toString() {
    return GetPropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as GetPropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return GetPropertyParamsMapper.ensureInitialized()
        .equalsValue(this as GetPropertyParams, other);
  }

  @override
  int get hashCode {
    return GetPropertyParamsMapper.ensureInitialized()
        .hashValue(this as GetPropertyParams);
  }
}

extension GetPropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetPropertyParams, $Out> {
  GetPropertyParamsCopyWith<$R, GetPropertyParams, $Out>
      get $asGetPropertyParams =>
          $base.as((v, t, t2) => _GetPropertyParamsCopyWithImpl(v, t, t2));
}

abstract class GetPropertyParamsCopyWith<$R, $In extends GetPropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? guid});
  GetPropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetPropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetPropertyParams, $Out>
    implements GetPropertyParamsCopyWith<$R, GetPropertyParams, $Out> {
  _GetPropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetPropertyParams> $mapper =
      GetPropertyParamsMapper.ensureInitialized();
  @override
  $R call({String? guid}) =>
      $apply(FieldCopyWithData({if (guid != null) #guid: guid}));
  @override
  GetPropertyParams $make(CopyWithData data) =>
      GetPropertyParams(guid: data.get(#guid, or: $value.guid));

  @override
  GetPropertyParamsCopyWith<$R2, GetPropertyParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetPropertyParamsCopyWithImpl($value, $cast, t);
}
