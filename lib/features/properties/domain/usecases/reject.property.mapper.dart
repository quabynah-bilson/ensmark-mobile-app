// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reject.property.dart';

class RejectPropertyParamsMapper extends ClassMapperBase<RejectPropertyParams> {
  RejectPropertyParamsMapper._();

  static RejectPropertyParamsMapper? _instance;
  static RejectPropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RejectPropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RejectPropertyParams';

  static String _$guid(RejectPropertyParams v) => v.guid;
  static const Field<RejectPropertyParams, String> _f$guid =
      Field('guid', _$guid);

  @override
  final MappableFields<RejectPropertyParams> fields = const {
    #guid: _f$guid,
  };

  static RejectPropertyParams _instantiate(DecodingData data) {
    return RejectPropertyParams(guid: data.dec(_f$guid));
  }

  @override
  final Function instantiate = _instantiate;

  static RejectPropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RejectPropertyParams>(map);
  }

  static RejectPropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<RejectPropertyParams>(json);
  }
}

mixin RejectPropertyParamsMappable {
  String toJson() {
    return RejectPropertyParamsMapper.ensureInitialized()
        .encodeJson<RejectPropertyParams>(this as RejectPropertyParams);
  }

  Map<String, dynamic> toMap() {
    return RejectPropertyParamsMapper.ensureInitialized()
        .encodeMap<RejectPropertyParams>(this as RejectPropertyParams);
  }

  RejectPropertyParamsCopyWith<RejectPropertyParams, RejectPropertyParams,
          RejectPropertyParams>
      get copyWith => _RejectPropertyParamsCopyWithImpl(
          this as RejectPropertyParams, $identity, $identity);
  @override
  String toString() {
    return RejectPropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as RejectPropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return RejectPropertyParamsMapper.ensureInitialized()
        .equalsValue(this as RejectPropertyParams, other);
  }

  @override
  int get hashCode {
    return RejectPropertyParamsMapper.ensureInitialized()
        .hashValue(this as RejectPropertyParams);
  }
}

extension RejectPropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RejectPropertyParams, $Out> {
  RejectPropertyParamsCopyWith<$R, RejectPropertyParams, $Out>
      get $asRejectPropertyParams =>
          $base.as((v, t, t2) => _RejectPropertyParamsCopyWithImpl(v, t, t2));
}

abstract class RejectPropertyParamsCopyWith<
    $R,
    $In extends RejectPropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? guid});
  RejectPropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RejectPropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RejectPropertyParams, $Out>
    implements RejectPropertyParamsCopyWith<$R, RejectPropertyParams, $Out> {
  _RejectPropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RejectPropertyParams> $mapper =
      RejectPropertyParamsMapper.ensureInitialized();
  @override
  $R call({String? guid}) =>
      $apply(FieldCopyWithData({if (guid != null) #guid: guid}));
  @override
  RejectPropertyParams $make(CopyWithData data) =>
      RejectPropertyParams(guid: data.get(#guid, or: $value.guid));

  @override
  RejectPropertyParamsCopyWith<$R2, RejectPropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RejectPropertyParamsCopyWithImpl($value, $cast, t);
}
