// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'delete.property.dart';

class DeletePropertyParamsMapper extends ClassMapperBase<DeletePropertyParams> {
  DeletePropertyParamsMapper._();

  static DeletePropertyParamsMapper? _instance;
  static DeletePropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeletePropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DeletePropertyParams';

  static String _$guid(DeletePropertyParams v) => v.guid;
  static const Field<DeletePropertyParams, String> _f$guid =
      Field('guid', _$guid);

  @override
  final MappableFields<DeletePropertyParams> fields = const {
    #guid: _f$guid,
  };

  static DeletePropertyParams _instantiate(DecodingData data) {
    return DeletePropertyParams(guid: data.dec(_f$guid));
  }

  @override
  final Function instantiate = _instantiate;

  static DeletePropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeletePropertyParams>(map);
  }

  static DeletePropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<DeletePropertyParams>(json);
  }
}

mixin DeletePropertyParamsMappable {
  String toJson() {
    return DeletePropertyParamsMapper.ensureInitialized()
        .encodeJson<DeletePropertyParams>(this as DeletePropertyParams);
  }

  Map<String, dynamic> toMap() {
    return DeletePropertyParamsMapper.ensureInitialized()
        .encodeMap<DeletePropertyParams>(this as DeletePropertyParams);
  }

  DeletePropertyParamsCopyWith<DeletePropertyParams, DeletePropertyParams,
          DeletePropertyParams>
      get copyWith => _DeletePropertyParamsCopyWithImpl(
          this as DeletePropertyParams, $identity, $identity);
  @override
  String toString() {
    return DeletePropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as DeletePropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return DeletePropertyParamsMapper.ensureInitialized()
        .equalsValue(this as DeletePropertyParams, other);
  }

  @override
  int get hashCode {
    return DeletePropertyParamsMapper.ensureInitialized()
        .hashValue(this as DeletePropertyParams);
  }
}

extension DeletePropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeletePropertyParams, $Out> {
  DeletePropertyParamsCopyWith<$R, DeletePropertyParams, $Out>
      get $asDeletePropertyParams =>
          $base.as((v, t, t2) => _DeletePropertyParamsCopyWithImpl(v, t, t2));
}

abstract class DeletePropertyParamsCopyWith<
    $R,
    $In extends DeletePropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? guid});
  DeletePropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DeletePropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeletePropertyParams, $Out>
    implements DeletePropertyParamsCopyWith<$R, DeletePropertyParams, $Out> {
  _DeletePropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeletePropertyParams> $mapper =
      DeletePropertyParamsMapper.ensureInitialized();
  @override
  $R call({String? guid}) =>
      $apply(FieldCopyWithData({if (guid != null) #guid: guid}));
  @override
  DeletePropertyParams $make(CopyWithData data) =>
      DeletePropertyParams(guid: data.get(#guid, or: $value.guid));

  @override
  DeletePropertyParamsCopyWith<$R2, DeletePropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DeletePropertyParamsCopyWithImpl($value, $cast, t);
}
