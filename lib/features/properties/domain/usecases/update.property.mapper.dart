// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'update.property.dart';

class UpdatePropertyParamsMapper extends ClassMapperBase<UpdatePropertyParams> {
  UpdatePropertyParamsMapper._();

  static UpdatePropertyParamsMapper? _instance;
  static UpdatePropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatePropertyParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatePropertyParams';

  static Property _$property(UpdatePropertyParams v) => v.property;
  static const Field<UpdatePropertyParams, Property> _f$property =
      Field('property', _$property);

  @override
  final MappableFields<UpdatePropertyParams> fields = const {
    #property: _f$property,
  };

  static UpdatePropertyParams _instantiate(DecodingData data) {
    return UpdatePropertyParams(property: data.dec(_f$property));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatePropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatePropertyParams>(map);
  }

  static UpdatePropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatePropertyParams>(json);
  }
}

mixin UpdatePropertyParamsMappable {
  String toJson() {
    return UpdatePropertyParamsMapper.ensureInitialized()
        .encodeJson<UpdatePropertyParams>(this as UpdatePropertyParams);
  }

  Map<String, dynamic> toMap() {
    return UpdatePropertyParamsMapper.ensureInitialized()
        .encodeMap<UpdatePropertyParams>(this as UpdatePropertyParams);
  }

  UpdatePropertyParamsCopyWith<UpdatePropertyParams, UpdatePropertyParams,
          UpdatePropertyParams>
      get copyWith => _UpdatePropertyParamsCopyWithImpl(
          this as UpdatePropertyParams, $identity, $identity);
  @override
  String toString() {
    return UpdatePropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as UpdatePropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return UpdatePropertyParamsMapper.ensureInitialized()
        .equalsValue(this as UpdatePropertyParams, other);
  }

  @override
  int get hashCode {
    return UpdatePropertyParamsMapper.ensureInitialized()
        .hashValue(this as UpdatePropertyParams);
  }
}

extension UpdatePropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatePropertyParams, $Out> {
  UpdatePropertyParamsCopyWith<$R, UpdatePropertyParams, $Out>
      get $asUpdatePropertyParams =>
          $base.as((v, t, t2) => _UpdatePropertyParamsCopyWithImpl(v, t, t2));
}

abstract class UpdatePropertyParamsCopyWith<
    $R,
    $In extends UpdatePropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({Property? property});
  UpdatePropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdatePropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatePropertyParams, $Out>
    implements UpdatePropertyParamsCopyWith<$R, UpdatePropertyParams, $Out> {
  _UpdatePropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatePropertyParams> $mapper =
      UpdatePropertyParamsMapper.ensureInitialized();
  @override
  $R call({Property? property}) =>
      $apply(FieldCopyWithData({if (property != null) #property: property}));
  @override
  UpdatePropertyParams $make(CopyWithData data) =>
      UpdatePropertyParams(property: data.get(#property, or: $value.property));

  @override
  UpdatePropertyParamsCopyWith<$R2, UpdatePropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdatePropertyParamsCopyWithImpl($value, $cast, t);
}
