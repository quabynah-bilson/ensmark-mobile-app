// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'business.info.dart';

class BusinessInfoStateMapper extends ClassMapperBase<BusinessInfoState> {
  BusinessInfoStateMapper._();

  static BusinessInfoStateMapper? _instance;
  static BusinessInfoStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BusinessInfoStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BusinessInfoState';

  static String _$registrationNumber(BusinessInfoState v) =>
      v.registrationNumber;
  static const Field<BusinessInfoState, String> _f$registrationNumber =
      Field('registrationNumber', _$registrationNumber, opt: true, def: '');
  static DateTime? _$registrationDate(BusinessInfoState v) =>
      v.registrationDate;
  static const Field<BusinessInfoState, DateTime> _f$registrationDate =
      Field('registrationDate', _$registrationDate, opt: true);

  @override
  final MappableFields<BusinessInfoState> fields = const {
    #registrationNumber: _f$registrationNumber,
    #registrationDate: _f$registrationDate,
  };

  static BusinessInfoState _instantiate(DecodingData data) {
    return BusinessInfoState(
        registrationNumber: data.dec(_f$registrationNumber),
        registrationDate: data.dec(_f$registrationDate));
  }

  @override
  final Function instantiate = _instantiate;

  static BusinessInfoState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BusinessInfoState>(map);
  }

  static BusinessInfoState fromJson(String json) {
    return ensureInitialized().decodeJson<BusinessInfoState>(json);
  }
}

mixin BusinessInfoStateMappable {
  String toJson() {
    return BusinessInfoStateMapper.ensureInitialized()
        .encodeJson<BusinessInfoState>(this as BusinessInfoState);
  }

  Map<String, dynamic> toMap() {
    return BusinessInfoStateMapper.ensureInitialized()
        .encodeMap<BusinessInfoState>(this as BusinessInfoState);
  }

  BusinessInfoStateCopyWith<BusinessInfoState, BusinessInfoState,
          BusinessInfoState>
      get copyWith => _BusinessInfoStateCopyWithImpl(
          this as BusinessInfoState, $identity, $identity);
  @override
  String toString() {
    return BusinessInfoStateMapper.ensureInitialized()
        .stringifyValue(this as BusinessInfoState);
  }

  @override
  bool operator ==(Object other) {
    return BusinessInfoStateMapper.ensureInitialized()
        .equalsValue(this as BusinessInfoState, other);
  }

  @override
  int get hashCode {
    return BusinessInfoStateMapper.ensureInitialized()
        .hashValue(this as BusinessInfoState);
  }
}

extension BusinessInfoStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BusinessInfoState, $Out> {
  BusinessInfoStateCopyWith<$R, BusinessInfoState, $Out>
      get $asBusinessInfoState =>
          $base.as((v, t, t2) => _BusinessInfoStateCopyWithImpl(v, t, t2));
}

abstract class BusinessInfoStateCopyWith<$R, $In extends BusinessInfoState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? registrationNumber, DateTime? registrationDate});
  BusinessInfoStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BusinessInfoStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BusinessInfoState, $Out>
    implements BusinessInfoStateCopyWith<$R, BusinessInfoState, $Out> {
  _BusinessInfoStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BusinessInfoState> $mapper =
      BusinessInfoStateMapper.ensureInitialized();
  @override
  $R call({String? registrationNumber, Object? registrationDate = $none}) =>
      $apply(FieldCopyWithData({
        if (registrationNumber != null) #registrationNumber: registrationNumber,
        if (registrationDate != $none) #registrationDate: registrationDate
      }));
  @override
  BusinessInfoState $make(CopyWithData data) => BusinessInfoState(
      registrationNumber:
          data.get(#registrationNumber, or: $value.registrationNumber),
      registrationDate:
          data.get(#registrationDate, or: $value.registrationDate));

  @override
  BusinessInfoStateCopyWith<$R2, BusinessInfoState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BusinessInfoStateCopyWithImpl($value, $cast, t);
}
