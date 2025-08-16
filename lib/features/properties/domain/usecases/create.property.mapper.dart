// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create.property.dart';

class CreatePropertyParamsMapper extends ClassMapperBase<CreatePropertyParams> {
  CreatePropertyParamsMapper._();

  static CreatePropertyParamsMapper? _instance;
  static CreatePropertyParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatePropertyParamsMapper._());
      PropertyLocationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreatePropertyParams';

  static String _$title(CreatePropertyParams v) => v.title;
  static const Field<CreatePropertyParams, String> _f$title =
      Field('title', _$title);
  static String _$owner(CreatePropertyParams v) => v.owner;
  static const Field<CreatePropertyParams, String> _f$owner =
      Field('owner', _$owner);
  static PropertyLocation _$location(CreatePropertyParams v) => v.location;
  static const Field<CreatePropertyParams, PropertyLocation> _f$location =
      Field('location', _$location);
  static PropertyType _$type(CreatePropertyParams v) => v.type;
  static const Field<CreatePropertyParams, PropertyType> _f$type =
      Field('type', _$type);
  static double _$value(CreatePropertyParams v) => v.value;
  static const Field<CreatePropertyParams, double> _f$value =
      Field('value', _$value);
  static String _$ownerGuid(CreatePropertyParams v) => v.ownerGuid;
  static const Field<CreatePropertyParams, String> _f$ownerGuid =
      Field('ownerGuid', _$ownerGuid);
  static String _$officerGuid(CreatePropertyParams v) => v.officerGuid;
  static const Field<CreatePropertyParams, String> _f$officerGuid =
      Field('officerGuid', _$officerGuid);
  static PropertyStatus _$status(CreatePropertyParams v) => v.status;
  static const Field<CreatePropertyParams, PropertyStatus> _f$status =
      Field('status', _$status, opt: true, def: PropertyStatus.pending);

  @override
  final MappableFields<CreatePropertyParams> fields = const {
    #title: _f$title,
    #owner: _f$owner,
    #location: _f$location,
    #type: _f$type,
    #value: _f$value,
    #ownerGuid: _f$ownerGuid,
    #officerGuid: _f$officerGuid,
    #status: _f$status,
  };

  static CreatePropertyParams _instantiate(DecodingData data) {
    return CreatePropertyParams(
        title: data.dec(_f$title),
        owner: data.dec(_f$owner),
        location: data.dec(_f$location),
        type: data.dec(_f$type),
        value: data.dec(_f$value),
        ownerGuid: data.dec(_f$ownerGuid),
        officerGuid: data.dec(_f$officerGuid),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatePropertyParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatePropertyParams>(map);
  }

  static CreatePropertyParams fromJson(String json) {
    return ensureInitialized().decodeJson<CreatePropertyParams>(json);
  }
}

mixin CreatePropertyParamsMappable {
  String toJson() {
    return CreatePropertyParamsMapper.ensureInitialized()
        .encodeJson<CreatePropertyParams>(this as CreatePropertyParams);
  }

  Map<String, dynamic> toMap() {
    return CreatePropertyParamsMapper.ensureInitialized()
        .encodeMap<CreatePropertyParams>(this as CreatePropertyParams);
  }

  CreatePropertyParamsCopyWith<CreatePropertyParams, CreatePropertyParams,
          CreatePropertyParams>
      get copyWith => _CreatePropertyParamsCopyWithImpl(
          this as CreatePropertyParams, $identity, $identity);
  @override
  String toString() {
    return CreatePropertyParamsMapper.ensureInitialized()
        .stringifyValue(this as CreatePropertyParams);
  }

  @override
  bool operator ==(Object other) {
    return CreatePropertyParamsMapper.ensureInitialized()
        .equalsValue(this as CreatePropertyParams, other);
  }

  @override
  int get hashCode {
    return CreatePropertyParamsMapper.ensureInitialized()
        .hashValue(this as CreatePropertyParams);
  }
}

extension CreatePropertyParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatePropertyParams, $Out> {
  CreatePropertyParamsCopyWith<$R, CreatePropertyParams, $Out>
      get $asCreatePropertyParams =>
          $base.as((v, t, t2) => _CreatePropertyParamsCopyWithImpl(v, t, t2));
}

abstract class CreatePropertyParamsCopyWith<
    $R,
    $In extends CreatePropertyParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  PropertyLocationCopyWith<$R, PropertyLocation, PropertyLocation> get location;
  $R call(
      {String? title,
      String? owner,
      PropertyLocation? location,
      PropertyType? type,
      double? value,
      String? ownerGuid,
      String? officerGuid,
      PropertyStatus? status});
  CreatePropertyParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreatePropertyParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatePropertyParams, $Out>
    implements CreatePropertyParamsCopyWith<$R, CreatePropertyParams, $Out> {
  _CreatePropertyParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatePropertyParams> $mapper =
      CreatePropertyParamsMapper.ensureInitialized();
  @override
  PropertyLocationCopyWith<$R, PropertyLocation, PropertyLocation>
      get location => $value.location.copyWith.$chain((v) => call(location: v));
  @override
  $R call(
          {String? title,
          String? owner,
          PropertyLocation? location,
          PropertyType? type,
          double? value,
          String? ownerGuid,
          String? officerGuid,
          PropertyStatus? status}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (owner != null) #owner: owner,
        if (location != null) #location: location,
        if (type != null) #type: type,
        if (value != null) #value: value,
        if (ownerGuid != null) #ownerGuid: ownerGuid,
        if (officerGuid != null) #officerGuid: officerGuid,
        if (status != null) #status: status
      }));
  @override
  CreatePropertyParams $make(CopyWithData data) => CreatePropertyParams(
      title: data.get(#title, or: $value.title),
      owner: data.get(#owner, or: $value.owner),
      location: data.get(#location, or: $value.location),
      type: data.get(#type, or: $value.type),
      value: data.get(#value, or: $value.value),
      ownerGuid: data.get(#ownerGuid, or: $value.ownerGuid),
      officerGuid: data.get(#officerGuid, or: $value.officerGuid),
      status: data.get(#status, or: $value.status));

  @override
  CreatePropertyParamsCopyWith<$R2, CreatePropertyParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreatePropertyParamsCopyWithImpl($value, $cast, t);
}
