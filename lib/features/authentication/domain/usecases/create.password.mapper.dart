// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create.password.dart';

class CreatePasswordParamsMapper extends ClassMapperBase<CreatePasswordParams> {
  CreatePasswordParamsMapper._();

  static CreatePasswordParamsMapper? _instance;
  static CreatePasswordParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatePasswordParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreatePasswordParams';

  static String _$password(CreatePasswordParams v) => v.password;
  static const Field<CreatePasswordParams, String> _f$password =
      Field('password', _$password);
  static String _$confirmPassword(CreatePasswordParams v) => v.confirmPassword;
  static const Field<CreatePasswordParams, String> _f$confirmPassword =
      Field('confirmPassword', _$confirmPassword);
  static String _$guid(CreatePasswordParams v) => v.guid;
  static const Field<CreatePasswordParams, String> _f$guid =
      Field('guid', _$guid);

  @override
  final MappableFields<CreatePasswordParams> fields = const {
    #password: _f$password,
    #confirmPassword: _f$confirmPassword,
    #guid: _f$guid,
  };

  static CreatePasswordParams _instantiate(DecodingData data) {
    return CreatePasswordParams(
        password: data.dec(_f$password),
        confirmPassword: data.dec(_f$confirmPassword),
        guid: data.dec(_f$guid));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatePasswordParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatePasswordParams>(map);
  }

  static CreatePasswordParams fromJson(String json) {
    return ensureInitialized().decodeJson<CreatePasswordParams>(json);
  }
}

mixin CreatePasswordParamsMappable {
  String toJson() {
    return CreatePasswordParamsMapper.ensureInitialized()
        .encodeJson<CreatePasswordParams>(this as CreatePasswordParams);
  }

  Map<String, dynamic> toMap() {
    return CreatePasswordParamsMapper.ensureInitialized()
        .encodeMap<CreatePasswordParams>(this as CreatePasswordParams);
  }

  CreatePasswordParamsCopyWith<CreatePasswordParams, CreatePasswordParams,
          CreatePasswordParams>
      get copyWith => _CreatePasswordParamsCopyWithImpl(
          this as CreatePasswordParams, $identity, $identity);
  @override
  String toString() {
    return CreatePasswordParamsMapper.ensureInitialized()
        .stringifyValue(this as CreatePasswordParams);
  }

  @override
  bool operator ==(Object other) {
    return CreatePasswordParamsMapper.ensureInitialized()
        .equalsValue(this as CreatePasswordParams, other);
  }

  @override
  int get hashCode {
    return CreatePasswordParamsMapper.ensureInitialized()
        .hashValue(this as CreatePasswordParams);
  }
}

extension CreatePasswordParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatePasswordParams, $Out> {
  CreatePasswordParamsCopyWith<$R, CreatePasswordParams, $Out>
      get $asCreatePasswordParams =>
          $base.as((v, t, t2) => _CreatePasswordParamsCopyWithImpl(v, t, t2));
}

abstract class CreatePasswordParamsCopyWith<
    $R,
    $In extends CreatePasswordParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? password, String? confirmPassword, String? guid});
  CreatePasswordParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreatePasswordParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatePasswordParams, $Out>
    implements CreatePasswordParamsCopyWith<$R, CreatePasswordParams, $Out> {
  _CreatePasswordParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatePasswordParams> $mapper =
      CreatePasswordParamsMapper.ensureInitialized();
  @override
  $R call({String? password, String? confirmPassword, String? guid}) =>
      $apply(FieldCopyWithData({
        if (password != null) #password: password,
        if (confirmPassword != null) #confirmPassword: confirmPassword,
        if (guid != null) #guid: guid
      }));
  @override
  CreatePasswordParams $make(CopyWithData data) => CreatePasswordParams(
      password: data.get(#password, or: $value.password),
      confirmPassword: data.get(#confirmPassword, or: $value.confirmPassword),
      guid: data.get(#guid, or: $value.guid));

  @override
  CreatePasswordParamsCopyWith<$R2, CreatePasswordParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreatePasswordParamsCopyWithImpl($value, $cast, t);
}
