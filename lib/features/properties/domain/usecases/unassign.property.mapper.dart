// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'unassign.property.dart';

class UnassignPropertyParamsMapper
    extends ClassMapperBase<UnassignPropertyParams> {
  UnassignPropertyParamsMapper._();

  static UnassignPropertyParamsMapper? _instance;
  static UnassignPropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UnassignPropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UnassignPropertyParams';

  static String _$guid(UnassignPropertyParams v) => v.guid;
  static const Field<UnassignPropertyParams, String> _f$guid =
      Field('guid', _$guid);

  @override
  final MappableFields<UnassignPropertyParams> fields = const {
    #guid: _f$guid,
  };

  static UnassignPropertyParams _instantiate(DecodingData data) {
    return UnassignPropertyParams(guid: data.dec(_f$guid));
  }

  @override
  final Function instantiate = _instantiate;

  static UnassignPropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UnassignPropertyParams>(map);
  }

  static UnassignPropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<UnassignPropertyParams>(json);
  }
}

mixin UnassignPropertyParamsMappable {
  String toJson() {
    return UnassignPropertyParamsMapper.ensureInitialized()
        .encodeJson<UnassignPropertyParams>(this as UnassignPropertyParams);
  }

  Map<String, dynamic> toMap() {
    return UnassignPropertyParamsMapper.ensureInitialized()
        .encodeMap<UnassignPropertyParams>(this as UnassignPropertyParams);
  }

  UnassignPropertyParamsCopyWith<UnassignPropertyParams, UnassignPropertyParams,
          UnassignPropertyParams>
      get copyWith => _UnassignPropertyParamsCopyWithImpl(
          this as UnassignPropertyParams, $identity, $identity);
  @override
  String toString() {
    return UnassignPropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as UnassignPropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return UnassignPropertyParamsMapper.ensureInitialized()
        .equalsValue(this as UnassignPropertyParams, other);
  }

  @override
  int get hashCode {
    return UnassignPropertyParamsMapper.ensureInitialized()
        .hashValue(this as UnassignPropertyParams);
  }
}

extension UnassignPropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UnassignPropertyParams, $Out> {
  UnassignPropertyParamsCopyWith<$R, UnassignPropertyParams, $Out>
      get $asUnassignPropertyParams =>
          $base.as((v, t, t2) => _UnassignPropertyParamsCopyWithImpl(v, t, t2));
}

abstract class UnassignPropertyParamsCopyWith<
    $R,
    $In extends UnassignPropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? guid});
  UnassignPropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UnassignPropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UnassignPropertyParams, $Out>
    implements
        UnassignPropertyParamsCopyWith<$R, UnassignPropertyParams, $Out> {
  _UnassignPropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UnassignPropertyParams> $mapper =
      UnassignPropertyParamsMapper.ensureInitialized();
  @override
  $R call({String? guid}) =>
      $apply(FieldCopyWithData({if (guid != null) #guid: guid}));
  @override
  UnassignPropertyParams $make(CopyWithData data) =>
      UnassignPropertyParams(guid: data.get(#guid, or: $value.guid));

  @override
  UnassignPropertyParamsCopyWith<$R2, UnassignPropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UnassignPropertyParamsCopyWithImpl($value, $cast, t);
}
