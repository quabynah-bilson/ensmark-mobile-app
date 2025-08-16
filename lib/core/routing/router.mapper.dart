// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'router.dart';

class VendorVerificationPageArgsMapper
    extends ClassMapperBase<VendorVerificationPageArgs> {
  VendorVerificationPageArgsMapper._();

  static VendorVerificationPageArgsMapper? _instance;
  static VendorVerificationPageArgsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = VendorVerificationPageArgsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VendorVerificationPageArgs';

  static String _$token(VendorVerificationPageArgs v) => v.token;
  static const Field<VendorVerificationPageArgs, String> _f$token =
      Field('token', _$token);

  @override
  final MappableFields<VendorVerificationPageArgs> fields = const {
    #token: _f$token,
  };

  static VendorVerificationPageArgs _instantiate(DecodingData data) {
    return VendorVerificationPageArgs(token: data.dec(_f$token));
  }

  @override
  final Function instantiate = _instantiate;

  static VendorVerificationPageArgs fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VendorVerificationPageArgs>(map);
  }

  static VendorVerificationPageArgs fromJson(String json) {
    return ensureInitialized().decodeJson<VendorVerificationPageArgs>(json);
  }
}

mixin VendorVerificationPageArgsMappable {
  String toJson() {
    return VendorVerificationPageArgsMapper.ensureInitialized()
        .encodeJson<VendorVerificationPageArgs>(
            this as VendorVerificationPageArgs);
  }

  Map<String, dynamic> toMap() {
    return VendorVerificationPageArgsMapper.ensureInitialized()
        .encodeMap<VendorVerificationPageArgs>(
            this as VendorVerificationPageArgs);
  }

  VendorVerificationPageArgsCopyWith<VendorVerificationPageArgs,
          VendorVerificationPageArgs, VendorVerificationPageArgs>
      get copyWith => _VendorVerificationPageArgsCopyWithImpl(
          this as VendorVerificationPageArgs, $identity, $identity);
  @override
  String toString() {
    return VendorVerificationPageArgsMapper.ensureInitialized()
        .stringifyValue(this as VendorVerificationPageArgs);
  }

  @override
  bool operator ==(Object other) {
    return VendorVerificationPageArgsMapper.ensureInitialized()
        .equalsValue(this as VendorVerificationPageArgs, other);
  }

  @override
  int get hashCode {
    return VendorVerificationPageArgsMapper.ensureInitialized()
        .hashValue(this as VendorVerificationPageArgs);
  }
}

extension VendorVerificationPageArgsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VendorVerificationPageArgs, $Out> {
  VendorVerificationPageArgsCopyWith<$R, VendorVerificationPageArgs, $Out>
      get $asVendorVerificationPageArgs => $base
          .as((v, t, t2) => _VendorVerificationPageArgsCopyWithImpl(v, t, t2));
}

abstract class VendorVerificationPageArgsCopyWith<
    $R,
    $In extends VendorVerificationPageArgs,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? token});
  VendorVerificationPageArgsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VendorVerificationPageArgsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VendorVerificationPageArgs, $Out>
    implements
        VendorVerificationPageArgsCopyWith<$R, VendorVerificationPageArgs,
            $Out> {
  _VendorVerificationPageArgsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VendorVerificationPageArgs> $mapper =
      VendorVerificationPageArgsMapper.ensureInitialized();
  @override
  $R call({String? token}) =>
      $apply(FieldCopyWithData({if (token != null) #token: token}));
  @override
  VendorVerificationPageArgs $make(CopyWithData data) =>
      VendorVerificationPageArgs(token: data.get(#token, or: $value.token));

  @override
  VendorVerificationPageArgsCopyWith<$R2, VendorVerificationPageArgs, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _VendorVerificationPageArgsCopyWithImpl($value, $cast, t);
}

class CreatePasswordPageArgsMapper
    extends ClassMapperBase<CreatePasswordPageArgs> {
  CreatePasswordPageArgsMapper._();

  static CreatePasswordPageArgsMapper? _instance;
  static CreatePasswordPageArgsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatePasswordPageArgsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreatePasswordPageArgs';

  static String _$token(CreatePasswordPageArgs v) => v.token;
  static const Field<CreatePasswordPageArgs, String> _f$token =
      Field('token', _$token);

  @override
  final MappableFields<CreatePasswordPageArgs> fields = const {
    #token: _f$token,
  };

  static CreatePasswordPageArgs _instantiate(DecodingData data) {
    return CreatePasswordPageArgs(token: data.dec(_f$token));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatePasswordPageArgs fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatePasswordPageArgs>(map);
  }

  static CreatePasswordPageArgs fromJson(String json) {
    return ensureInitialized().decodeJson<CreatePasswordPageArgs>(json);
  }
}

mixin CreatePasswordPageArgsMappable {
  String toJson() {
    return CreatePasswordPageArgsMapper.ensureInitialized()
        .encodeJson<CreatePasswordPageArgs>(this as CreatePasswordPageArgs);
  }

  Map<String, dynamic> toMap() {
    return CreatePasswordPageArgsMapper.ensureInitialized()
        .encodeMap<CreatePasswordPageArgs>(this as CreatePasswordPageArgs);
  }

  CreatePasswordPageArgsCopyWith<CreatePasswordPageArgs, CreatePasswordPageArgs,
          CreatePasswordPageArgs>
      get copyWith => _CreatePasswordPageArgsCopyWithImpl(
          this as CreatePasswordPageArgs, $identity, $identity);
  @override
  String toString() {
    return CreatePasswordPageArgsMapper.ensureInitialized()
        .stringifyValue(this as CreatePasswordPageArgs);
  }

  @override
  bool operator ==(Object other) {
    return CreatePasswordPageArgsMapper.ensureInitialized()
        .equalsValue(this as CreatePasswordPageArgs, other);
  }

  @override
  int get hashCode {
    return CreatePasswordPageArgsMapper.ensureInitialized()
        .hashValue(this as CreatePasswordPageArgs);
  }
}

extension CreatePasswordPageArgsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatePasswordPageArgs, $Out> {
  CreatePasswordPageArgsCopyWith<$R, CreatePasswordPageArgs, $Out>
      get $asCreatePasswordPageArgs =>
          $base.as((v, t, t2) => _CreatePasswordPageArgsCopyWithImpl(v, t, t2));
}

abstract class CreatePasswordPageArgsCopyWith<
    $R,
    $In extends CreatePasswordPageArgs,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? token});
  CreatePasswordPageArgsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreatePasswordPageArgsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatePasswordPageArgs, $Out>
    implements
        CreatePasswordPageArgsCopyWith<$R, CreatePasswordPageArgs, $Out> {
  _CreatePasswordPageArgsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatePasswordPageArgs> $mapper =
      CreatePasswordPageArgsMapper.ensureInitialized();
  @override
  $R call({String? token}) =>
      $apply(FieldCopyWithData({if (token != null) #token: token}));
  @override
  CreatePasswordPageArgs $make(CopyWithData data) =>
      CreatePasswordPageArgs(token: data.get(#token, or: $value.token));

  @override
  CreatePasswordPageArgsCopyWith<$R2, CreatePasswordPageArgs, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreatePasswordPageArgsCopyWithImpl($value, $cast, t);
}
