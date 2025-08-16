// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'personal.info.dart';

class PersonalInfoStateMapper extends ClassMapperBase<PersonalInfoState> {
  PersonalInfoStateMapper._();

  static PersonalInfoStateMapper? _instance;
  static PersonalInfoStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonalInfoStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonalInfoState';

  static OwnerType _$type(PersonalInfoState v) => v.type;
  static const Field<PersonalInfoState, OwnerType> _f$type =
      Field('type', _$type, opt: true, def: OwnerType.individual);
  static String _$username(PersonalInfoState v) => v.username;
  static const Field<PersonalInfoState, String> _f$username =
      Field('username', _$username, opt: true, def: '');
  static String _$phoneNumber(PersonalInfoState v) => v.phoneNumber;
  static const Field<PersonalInfoState, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber, opt: true, def: '');
  static String _$firstName(PersonalInfoState v) => v.firstName;
  static const Field<PersonalInfoState, String> _f$firstName =
      Field('firstName', _$firstName, opt: true, def: '');
  static String _$lastName(PersonalInfoState v) => v.lastName;
  static const Field<PersonalInfoState, String> _f$lastName =
      Field('lastName', _$lastName, opt: true, def: '');
  static DateTime? _$dateOfBirth(PersonalInfoState v) => v.dateOfBirth;
  static const Field<PersonalInfoState, DateTime> _f$dateOfBirth =
      Field('dateOfBirth', _$dateOfBirth, opt: true);

  @override
  final MappableFields<PersonalInfoState> fields = const {
    #type: _f$type,
    #username: _f$username,
    #phoneNumber: _f$phoneNumber,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #dateOfBirth: _f$dateOfBirth,
  };

  static PersonalInfoState _instantiate(DecodingData data) {
    return PersonalInfoState(
        type: data.dec(_f$type),
        username: data.dec(_f$username),
        phoneNumber: data.dec(_f$phoneNumber),
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        dateOfBirth: data.dec(_f$dateOfBirth));
  }

  @override
  final Function instantiate = _instantiate;

  static PersonalInfoState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonalInfoState>(map);
  }

  static PersonalInfoState fromJson(String json) {
    return ensureInitialized().decodeJson<PersonalInfoState>(json);
  }
}

mixin PersonalInfoStateMappable {
  String toJson() {
    return PersonalInfoStateMapper.ensureInitialized()
        .encodeJson<PersonalInfoState>(this as PersonalInfoState);
  }

  Map<String, dynamic> toMap() {
    return PersonalInfoStateMapper.ensureInitialized()
        .encodeMap<PersonalInfoState>(this as PersonalInfoState);
  }

  PersonalInfoStateCopyWith<PersonalInfoState, PersonalInfoState,
          PersonalInfoState>
      get copyWith => _PersonalInfoStateCopyWithImpl(
          this as PersonalInfoState, $identity, $identity);
  @override
  String toString() {
    return PersonalInfoStateMapper.ensureInitialized()
        .stringifyValue(this as PersonalInfoState);
  }

  @override
  bool operator ==(Object other) {
    return PersonalInfoStateMapper.ensureInitialized()
        .equalsValue(this as PersonalInfoState, other);
  }

  @override
  int get hashCode {
    return PersonalInfoStateMapper.ensureInitialized()
        .hashValue(this as PersonalInfoState);
  }
}

extension PersonalInfoStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonalInfoState, $Out> {
  PersonalInfoStateCopyWith<$R, PersonalInfoState, $Out>
      get $asPersonalInfoState =>
          $base.as((v, t, t2) => _PersonalInfoStateCopyWithImpl(v, t, t2));
}

abstract class PersonalInfoStateCopyWith<$R, $In extends PersonalInfoState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {OwnerType? type,
      String? username,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      DateTime? dateOfBirth});
  PersonalInfoStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonalInfoStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonalInfoState, $Out>
    implements PersonalInfoStateCopyWith<$R, PersonalInfoState, $Out> {
  _PersonalInfoStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonalInfoState> $mapper =
      PersonalInfoStateMapper.ensureInitialized();
  @override
  $R call(
          {OwnerType? type,
          String? username,
          String? phoneNumber,
          String? firstName,
          String? lastName,
          Object? dateOfBirth = $none}) =>
      $apply(FieldCopyWithData({
        if (type != null) #type: type,
        if (username != null) #username: username,
        if (phoneNumber != null) #phoneNumber: phoneNumber,
        if (firstName != null) #firstName: firstName,
        if (lastName != null) #lastName: lastName,
        if (dateOfBirth != $none) #dateOfBirth: dateOfBirth
      }));
  @override
  PersonalInfoState $make(CopyWithData data) => PersonalInfoState(
      type: data.get(#type, or: $value.type),
      username: data.get(#username, or: $value.username),
      phoneNumber: data.get(#phoneNumber, or: $value.phoneNumber),
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      dateOfBirth: data.get(#dateOfBirth, or: $value.dateOfBirth));

  @override
  PersonalInfoStateCopyWith<$R2, PersonalInfoState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonalInfoStateCopyWithImpl($value, $cast, t);
}
