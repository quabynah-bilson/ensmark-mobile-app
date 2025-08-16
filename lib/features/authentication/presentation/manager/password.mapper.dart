// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'password.dart';

class CreatePasswordStateMapper extends ClassMapperBase<CreatePasswordState> {
  CreatePasswordStateMapper._();

  static CreatePasswordStateMapper? _instance;
  static CreatePasswordStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatePasswordStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreatePasswordState';

  static String _$password(CreatePasswordState v) => v.password;
  static const Field<CreatePasswordState, String> _f$password =
      Field('password', _$password, opt: true, def: '');
  static String _$confirmPassword(CreatePasswordState v) => v.confirmPassword;
  static const Field<CreatePasswordState, String> _f$confirmPassword =
      Field('confirmPassword', _$confirmPassword, opt: true, def: '');
  static bool _$loading(CreatePasswordState v) => v.loading;
  static const Field<CreatePasswordState, bool> _f$loading =
      Field('loading', _$loading, opt: true, def: false);
  static String? _$errorMessage(CreatePasswordState v) => v.errorMessage;
  static const Field<CreatePasswordState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static AppUser? _$user(CreatePasswordState v) => v.user;
  static const Field<CreatePasswordState, AppUser> _f$user =
      Field('user', _$user, opt: true);

  @override
  final MappableFields<CreatePasswordState> fields = const {
    #password: _f$password,
    #confirmPassword: _f$confirmPassword,
    #loading: _f$loading,
    #errorMessage: _f$errorMessage,
    #user: _f$user,
  };

  static CreatePasswordState _instantiate(DecodingData data) {
    return CreatePasswordState(
        password: data.dec(_f$password),
        confirmPassword: data.dec(_f$confirmPassword),
        loading: data.dec(_f$loading),
        errorMessage: data.dec(_f$errorMessage),
        user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatePasswordState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatePasswordState>(map);
  }

  static CreatePasswordState fromJson(String json) {
    return ensureInitialized().decodeJson<CreatePasswordState>(json);
  }
}

mixin CreatePasswordStateMappable {
  String toJson() {
    return CreatePasswordStateMapper.ensureInitialized()
        .encodeJson<CreatePasswordState>(this as CreatePasswordState);
  }

  Map<String, dynamic> toMap() {
    return CreatePasswordStateMapper.ensureInitialized()
        .encodeMap<CreatePasswordState>(this as CreatePasswordState);
  }

  CreatePasswordStateCopyWith<CreatePasswordState, CreatePasswordState,
          CreatePasswordState>
      get copyWith => _CreatePasswordStateCopyWithImpl(
          this as CreatePasswordState, $identity, $identity);
  @override
  String toString() {
    return CreatePasswordStateMapper.ensureInitialized()
        .stringifyValue(this as CreatePasswordState);
  }

  @override
  bool operator ==(Object other) {
    return CreatePasswordStateMapper.ensureInitialized()
        .equalsValue(this as CreatePasswordState, other);
  }

  @override
  int get hashCode {
    return CreatePasswordStateMapper.ensureInitialized()
        .hashValue(this as CreatePasswordState);
  }
}

extension CreatePasswordStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatePasswordState, $Out> {
  CreatePasswordStateCopyWith<$R, CreatePasswordState, $Out>
      get $asCreatePasswordState =>
          $base.as((v, t, t2) => _CreatePasswordStateCopyWithImpl(v, t, t2));
}

abstract class CreatePasswordStateCopyWith<$R, $In extends CreatePasswordState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? password,
      String? confirmPassword,
      bool? loading,
      String? errorMessage,
      AppUser? user});
  CreatePasswordStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreatePasswordStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatePasswordState, $Out>
    implements CreatePasswordStateCopyWith<$R, CreatePasswordState, $Out> {
  _CreatePasswordStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatePasswordState> $mapper =
      CreatePasswordStateMapper.ensureInitialized();
  @override
  $R call(
          {String? password,
          String? confirmPassword,
          bool? loading,
          Object? errorMessage = $none,
          Object? user = $none}) =>
      $apply(FieldCopyWithData({
        if (password != null) #password: password,
        if (confirmPassword != null) #confirmPassword: confirmPassword,
        if (loading != null) #loading: loading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (user != $none) #user: user
      }));
  @override
  CreatePasswordState $make(CopyWithData data) => CreatePasswordState(
      password: data.get(#password, or: $value.password),
      confirmPassword: data.get(#confirmPassword, or: $value.confirmPassword),
      loading: data.get(#loading, or: $value.loading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      user: data.get(#user, or: $value.user));

  @override
  CreatePasswordStateCopyWith<$R2, CreatePasswordState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreatePasswordStateCopyWithImpl($value, $cast, t);
}
