// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login.params.dart';

class LoginParamsMapper extends ClassMapperBase<LoginParams> {
  LoginParamsMapper._();

  static LoginParamsMapper? _instance;
  static LoginParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginParams';

  static UserRole _$role(LoginParams v) => v.role;
  static const Field<LoginParams, UserRole> _f$role = Field('role', _$role);
  static String _$username(LoginParams v) => v.username;
  static const Field<LoginParams, String> _f$username =
      Field('username', _$username);
  static String _$password(LoginParams v) => v.password;
  static const Field<LoginParams, String> _f$password =
      Field('password', _$password);

  @override
  final MappableFields<LoginParams> fields = const {
    #role: _f$role,
    #username: _f$username,
    #password: _f$password,
  };

  static LoginParams _instantiate(DecodingData data) {
    return LoginParams(
        role: data.dec(_f$role),
        username: data.dec(_f$username),
        password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginParams>(map);
  }

  static LoginParams fromJson(String json) {
    return ensureInitialized().decodeJson<LoginParams>(json);
  }
}

mixin LoginParamsMappable {
  String toJson() {
    return LoginParamsMapper.ensureInitialized()
        .encodeJson<LoginParams>(this as LoginParams);
  }

  Map<String, dynamic> toMap() {
    return LoginParamsMapper.ensureInitialized()
        .encodeMap<LoginParams>(this as LoginParams);
  }

  LoginParamsCopyWith<LoginParams, LoginParams, LoginParams> get copyWith =>
      _LoginParamsCopyWithImpl(this as LoginParams, $identity, $identity);
  @override
  String toString() {
    return LoginParamsMapper.ensureInitialized()
        .stringifyValue(this as LoginParams);
  }

  @override
  bool operator ==(Object other) {
    return LoginParamsMapper.ensureInitialized()
        .equalsValue(this as LoginParams, other);
  }

  @override
  int get hashCode {
    return LoginParamsMapper.ensureInitialized().hashValue(this as LoginParams);
  }
}

extension LoginParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginParams, $Out> {
  LoginParamsCopyWith<$R, LoginParams, $Out> get $asLoginParams =>
      $base.as((v, t, t2) => _LoginParamsCopyWithImpl(v, t, t2));
}

abstract class LoginParamsCopyWith<$R, $In extends LoginParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({UserRole? role, String? username, String? password});
  LoginParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginParams, $Out>
    implements LoginParamsCopyWith<$R, LoginParams, $Out> {
  _LoginParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginParams> $mapper =
      LoginParamsMapper.ensureInitialized();
  @override
  $R call({UserRole? role, String? username, String? password}) =>
      $apply(FieldCopyWithData({
        if (role != null) #role: role,
        if (username != null) #username: username,
        if (password != null) #password: password
      }));
  @override
  LoginParams $make(CopyWithData data) => LoginParams(
      role: data.get(#role, or: $value.role),
      username: data.get(#username, or: $value.username),
      password: data.get(#password, or: $value.password));

  @override
  LoginParamsCopyWith<$R2, LoginParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginParamsCopyWithImpl($value, $cast, t);
}
