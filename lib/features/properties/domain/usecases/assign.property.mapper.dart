// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'assign.property.dart';

class AssignPropertyParamsMapper extends ClassMapperBase<AssignPropertyParams> {
  AssignPropertyParamsMapper._();

  static AssignPropertyParamsMapper? _instance;
  static AssignPropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AssignPropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AssignPropertyParams';

  static String _$guid(AssignPropertyParams v) => v.guid;
  static const Field<AssignPropertyParams, String> _f$guid =
      Field('guid', _$guid);
  static String _$officerGuid(AssignPropertyParams v) => v.officerGuid;
  static const Field<AssignPropertyParams, String> _f$officerGuid =
      Field('officerGuid', _$officerGuid);

  @override
  final MappableFields<AssignPropertyParams> fields = const {
    #guid: _f$guid,
    #officerGuid: _f$officerGuid,
  };

  static AssignPropertyParams _instantiate(DecodingData data) {
    return AssignPropertyParams(
        guid: data.dec(_f$guid), officerGuid: data.dec(_f$officerGuid));
  }

  @override
  final Function instantiate = _instantiate;

  static AssignPropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AssignPropertyParams>(map);
  }

  static AssignPropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<AssignPropertyParams>(json);
  }
}

mixin AssignPropertyParamsMappable {
  String toJson() {
    return AssignPropertyParamsMapper.ensureInitialized()
        .encodeJson<AssignPropertyParams>(this as AssignPropertyParams);
  }

  Map<String, dynamic> toMap() {
    return AssignPropertyParamsMapper.ensureInitialized()
        .encodeMap<AssignPropertyParams>(this as AssignPropertyParams);
  }

  AssignPropertyParamsCopyWith<AssignPropertyParams, AssignPropertyParams,
          AssignPropertyParams>
      get copyWith => _AssignPropertyParamsCopyWithImpl(
          this as AssignPropertyParams, $identity, $identity);
  @override
  String toString() {
    return AssignPropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as AssignPropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return AssignPropertyParamsMapper.ensureInitialized()
        .equalsValue(this as AssignPropertyParams, other);
  }

  @override
  int get hashCode {
    return AssignPropertyParamsMapper.ensureInitialized()
        .hashValue(this as AssignPropertyParams);
  }
}

extension AssignPropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AssignPropertyParams, $Out> {
  AssignPropertyParamsCopyWith<$R, AssignPropertyParams, $Out>
      get $asAssignPropertyParams =>
          $base.as((v, t, t2) => _AssignPropertyParamsCopyWithImpl(v, t, t2));
}

abstract class AssignPropertyParamsCopyWith<
    $R,
    $In extends AssignPropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? guid, String? officerGuid});
  AssignPropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AssignPropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AssignPropertyParams, $Out>
    implements AssignPropertyParamsCopyWith<$R, AssignPropertyParams, $Out> {
  _AssignPropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AssignPropertyParams> $mapper =
      AssignPropertyParamsMapper.ensureInitialized();
  @override
  $R call({String? guid, String? officerGuid}) => $apply(FieldCopyWithData({
        if (guid != null) #guid: guid,
        if (officerGuid != null) #officerGuid: officerGuid
      }));
  @override
  AssignPropertyParams $make(CopyWithData data) => AssignPropertyParams(
      guid: data.get(#guid, or: $value.guid),
      officerGuid: data.get(#officerGuid, or: $value.officerGuid));

  @override
  AssignPropertyParamsCopyWith<$R2, AssignPropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AssignPropertyParamsCopyWithImpl($value, $cast, t);
}
