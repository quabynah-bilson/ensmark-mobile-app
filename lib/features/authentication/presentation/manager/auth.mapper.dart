// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth.dart';

class UserAuthStateMapper extends ClassMapperBase<UserAuthState> {
  UserAuthStateMapper._();

  static UserAuthStateMapper? _instance;
  static UserAuthStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAuthStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserAuthState';

  static bool _$authenticating(UserAuthState v) => v.authenticating;
  static const Field<UserAuthState, bool> _f$authenticating =
      Field('authenticating', _$authenticating, opt: true, def: false);
  static String? _$errorMessage(UserAuthState v) => v.errorMessage;
  static const Field<UserAuthState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static AppUser? _$user(UserAuthState v) => v.user;
  static const Field<UserAuthState, AppUser> _f$user =
      Field('user', _$user, opt: true);

  @override
  final MappableFields<UserAuthState> fields = const {
    #authenticating: _f$authenticating,
    #errorMessage: _f$errorMessage,
    #user: _f$user,
  };

  static UserAuthState _instantiate(DecodingData data) {
    return UserAuthState(
        authenticating: data.dec(_f$authenticating),
        errorMessage: data.dec(_f$errorMessage),
        user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static UserAuthState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserAuthState>(map);
  }

  static UserAuthState fromJson(String json) {
    return ensureInitialized().decodeJson<UserAuthState>(json);
  }
}

mixin UserAuthStateMappable {
  String toJson() {
    return UserAuthStateMapper.ensureInitialized()
        .encodeJson<UserAuthState>(this as UserAuthState);
  }

  Map<String, dynamic> toMap() {
    return UserAuthStateMapper.ensureInitialized()
        .encodeMap<UserAuthState>(this as UserAuthState);
  }

  UserAuthStateCopyWith<UserAuthState, UserAuthState, UserAuthState>
      get copyWith => _UserAuthStateCopyWithImpl(
          this as UserAuthState, $identity, $identity);
  @override
  String toString() {
    return UserAuthStateMapper.ensureInitialized()
        .stringifyValue(this as UserAuthState);
  }

  @override
  bool operator ==(Object other) {
    return UserAuthStateMapper.ensureInitialized()
        .equalsValue(this as UserAuthState, other);
  }

  @override
  int get hashCode {
    return UserAuthStateMapper.ensureInitialized()
        .hashValue(this as UserAuthState);
  }
}

extension UserAuthStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserAuthState, $Out> {
  UserAuthStateCopyWith<$R, UserAuthState, $Out> get $asUserAuthState =>
      $base.as((v, t, t2) => _UserAuthStateCopyWithImpl(v, t, t2));
}

abstract class UserAuthStateCopyWith<$R, $In extends UserAuthState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? authenticating, String? errorMessage, AppUser? user});
  UserAuthStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserAuthStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAuthState, $Out>
    implements UserAuthStateCopyWith<$R, UserAuthState, $Out> {
  _UserAuthStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAuthState> $mapper =
      UserAuthStateMapper.ensureInitialized();
  @override
  $R call(
          {bool? authenticating,
          Object? errorMessage = $none,
          Object? user = $none}) =>
      $apply(FieldCopyWithData({
        if (authenticating != null) #authenticating: authenticating,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (user != $none) #user: user
      }));
  @override
  UserAuthState $make(CopyWithData data) => UserAuthState(
      authenticating: data.get(#authenticating, or: $value.authenticating),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      user: data.get(#user, or: $value.user));

  @override
  UserAuthStateCopyWith<$R2, UserAuthState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserAuthStateCopyWithImpl($value, $cast, t);
}
