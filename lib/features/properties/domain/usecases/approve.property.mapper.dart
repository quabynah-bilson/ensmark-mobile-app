// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'approve.property.dart';

class ApprovePropertyParamsMapper
    extends ClassMapperBase<ApprovePropertyParams> {
  ApprovePropertyParamsMapper._();

  static ApprovePropertyParamsMapper? _instance;
  static ApprovePropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApprovePropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApprovePropertyParams';

  static String _$guid(ApprovePropertyParams v) => v.guid;
  static const Field<ApprovePropertyParams, String> _f$guid =
      Field('guid', _$guid);

  @override
  final MappableFields<ApprovePropertyParams> fields = const {
    #guid: _f$guid,
  };

  static ApprovePropertyParams _instantiate(DecodingData data) {
    return ApprovePropertyParams(guid: data.dec(_f$guid));
  }

  @override
  final Function instantiate = _instantiate;

  static ApprovePropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApprovePropertyParams>(map);
  }

  static ApprovePropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<ApprovePropertyParams>(json);
  }
}

mixin ApprovePropertyParamsMappable {
  String toJson() {
    return ApprovePropertyParamsMapper.ensureInitialized()
        .encodeJson<ApprovePropertyParams>(this as ApprovePropertyParams);
  }

  Map<String, dynamic> toMap() {
    return ApprovePropertyParamsMapper.ensureInitialized()
        .encodeMap<ApprovePropertyParams>(this as ApprovePropertyParams);
  }

  ApprovePropertyParamsCopyWith<ApprovePropertyParams, ApprovePropertyParams,
          ApprovePropertyParams>
      get copyWith => _ApprovePropertyParamsCopyWithImpl(
          this as ApprovePropertyParams, $identity, $identity);
  @override
  String toString() {
    return ApprovePropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as ApprovePropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return ApprovePropertyParamsMapper.ensureInitialized()
        .equalsValue(this as ApprovePropertyParams, other);
  }

  @override
  int get hashCode {
    return ApprovePropertyParamsMapper.ensureInitialized()
        .hashValue(this as ApprovePropertyParams);
  }
}

extension ApprovePropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApprovePropertyParams, $Out> {
  ApprovePropertyParamsCopyWith<$R, ApprovePropertyParams, $Out>
      get $asApprovePropertyParams =>
          $base.as((v, t, t2) => _ApprovePropertyParamsCopyWithImpl(v, t, t2));
}

abstract class ApprovePropertyParamsCopyWith<
    $R,
    $In extends ApprovePropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? guid});
  ApprovePropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ApprovePropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApprovePropertyParams, $Out>
    implements ApprovePropertyParamsCopyWith<$R, ApprovePropertyParams, $Out> {
  _ApprovePropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApprovePropertyParams> $mapper =
      ApprovePropertyParamsMapper.ensureInitialized();
  @override
  $R call({String? guid}) =>
      $apply(FieldCopyWithData({if (guid != null) #guid: guid}));
  @override
  ApprovePropertyParams $make(CopyWithData data) =>
      ApprovePropertyParams(guid: data.get(#guid, or: $value.guid));

  @override
  ApprovePropertyParamsCopyWith<$R2, ApprovePropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ApprovePropertyParamsCopyWithImpl($value, $cast, t);
}
