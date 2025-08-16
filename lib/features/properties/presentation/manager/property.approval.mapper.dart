// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'property.approval.dart';

class PropertyApprovalStateMapper
    extends ClassMapperBase<PropertyApprovalState> {
  PropertyApprovalStateMapper._();

  static PropertyApprovalStateMapper? _instance;
  static PropertyApprovalStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PropertyApprovalStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PropertyApprovalState';

  static bool _$loading(PropertyApprovalState v) => v.loading;
  static const Field<PropertyApprovalState, bool> _f$loading =
      Field('loading', _$loading, opt: true, def: false);
  static String? _$errorMessage(PropertyApprovalState v) => v.errorMessage;
  static const Field<PropertyApprovalState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static String? _$successMessage(PropertyApprovalState v) => v.successMessage;
  static const Field<PropertyApprovalState, String> _f$successMessage =
      Field('successMessage', _$successMessage, opt: true);
  static List<Property> _$pendingProperties(PropertyApprovalState v) =>
      v.pendingProperties;
  static const Field<PropertyApprovalState, List<Property>>
      _f$pendingProperties =
      Field('pendingProperties', _$pendingProperties, opt: true, def: const []);
  static ApprovalAction? _$lastApprovalAction(PropertyApprovalState v) =>
      v.lastApprovalAction;
  static const Field<PropertyApprovalState, ApprovalAction>
      _f$lastApprovalAction =
      Field('lastApprovalAction', _$lastApprovalAction, opt: true);
  static String? _$processedPropertyGuid(PropertyApprovalState v) =>
      v.processedPropertyGuid;
  static const Field<PropertyApprovalState, String> _f$processedPropertyGuid =
      Field('processedPropertyGuid', _$processedPropertyGuid, opt: true);
  static List<String> _$approvalQueue(PropertyApprovalState v) =>
      v.approvalQueue;
  static const Field<PropertyApprovalState, List<String>> _f$approvalQueue =
      Field('approvalQueue', _$approvalQueue, opt: true, def: const []);
  static List<String> _$rejectionQueue(PropertyApprovalState v) =>
      v.rejectionQueue;
  static const Field<PropertyApprovalState, List<String>> _f$rejectionQueue =
      Field('rejectionQueue', _$rejectionQueue, opt: true, def: const []);

  @override
  final MappableFields<PropertyApprovalState> fields = const {
    #loading: _f$loading,
    #errorMessage: _f$errorMessage,
    #successMessage: _f$successMessage,
    #pendingProperties: _f$pendingProperties,
    #lastApprovalAction: _f$lastApprovalAction,
    #processedPropertyGuid: _f$processedPropertyGuid,
    #approvalQueue: _f$approvalQueue,
    #rejectionQueue: _f$rejectionQueue,
  };

  static PropertyApprovalState _instantiate(DecodingData data) {
    return PropertyApprovalState(
        loading: data.dec(_f$loading),
        errorMessage: data.dec(_f$errorMessage),
        successMessage: data.dec(_f$successMessage),
        pendingProperties: data.dec(_f$pendingProperties),
        lastApprovalAction: data.dec(_f$lastApprovalAction),
        processedPropertyGuid: data.dec(_f$processedPropertyGuid),
        approvalQueue: data.dec(_f$approvalQueue),
        rejectionQueue: data.dec(_f$rejectionQueue));
  }

  @override
  final Function instantiate = _instantiate;

  static PropertyApprovalState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PropertyApprovalState>(map);
  }

  static PropertyApprovalState fromJson(String json) {
    return ensureInitialized().decodeJson<PropertyApprovalState>(json);
  }
}

mixin PropertyApprovalStateMappable {
  String toJson() {
    return PropertyApprovalStateMapper.ensureInitialized()
        .encodeJson<PropertyApprovalState>(this as PropertyApprovalState);
  }

  Map<String, dynamic> toMap() {
    return PropertyApprovalStateMapper.ensureInitialized()
        .encodeMap<PropertyApprovalState>(this as PropertyApprovalState);
  }

  PropertyApprovalStateCopyWith<PropertyApprovalState, PropertyApprovalState,
          PropertyApprovalState>
      get copyWith => _PropertyApprovalStateCopyWithImpl(
          this as PropertyApprovalState, $identity, $identity);
  @override
  String toString() {
    return PropertyApprovalStateMapper.ensureInitialized()
        .stringifyValue(this as PropertyApprovalState);
  }

  @override
  bool operator ==(Object other) {
    return PropertyApprovalStateMapper.ensureInitialized()
        .equalsValue(this as PropertyApprovalState, other);
  }

  @override
  int get hashCode {
    return PropertyApprovalStateMapper.ensureInitialized()
        .hashValue(this as PropertyApprovalState);
  }
}

extension PropertyApprovalStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PropertyApprovalState, $Out> {
  PropertyApprovalStateCopyWith<$R, PropertyApprovalState, $Out>
      get $asPropertyApprovalState =>
          $base.as((v, t, t2) => _PropertyApprovalStateCopyWithImpl(v, t, t2));
}

abstract class PropertyApprovalStateCopyWith<
    $R,
    $In extends PropertyApprovalState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get pendingProperties;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get approvalQueue;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get rejectionQueue;
  $R call(
      {bool? loading,
      String? errorMessage,
      String? successMessage,
      List<Property>? pendingProperties,
      ApprovalAction? lastApprovalAction,
      String? processedPropertyGuid,
      List<String>? approvalQueue,
      List<String>? rejectionQueue});
  PropertyApprovalStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PropertyApprovalStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PropertyApprovalState, $Out>
    implements PropertyApprovalStateCopyWith<$R, PropertyApprovalState, $Out> {
  _PropertyApprovalStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PropertyApprovalState> $mapper =
      PropertyApprovalStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get pendingProperties => ListCopyWith(
          $value.pendingProperties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(pendingProperties: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get approvalQueue => ListCopyWith(
          $value.approvalQueue,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(approvalQueue: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get rejectionQueue => ListCopyWith(
          $value.rejectionQueue,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(rejectionQueue: v));
  @override
  $R call(
          {bool? loading,
          Object? errorMessage = $none,
          Object? successMessage = $none,
          List<Property>? pendingProperties,
          Object? lastApprovalAction = $none,
          Object? processedPropertyGuid = $none,
          List<String>? approvalQueue,
          List<String>? rejectionQueue}) =>
      $apply(FieldCopyWithData({
        if (loading != null) #loading: loading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (successMessage != $none) #successMessage: successMessage,
        if (pendingProperties != null) #pendingProperties: pendingProperties,
        if (lastApprovalAction != $none)
          #lastApprovalAction: lastApprovalAction,
        if (processedPropertyGuid != $none)
          #processedPropertyGuid: processedPropertyGuid,
        if (approvalQueue != null) #approvalQueue: approvalQueue,
        if (rejectionQueue != null) #rejectionQueue: rejectionQueue
      }));
  @override
  PropertyApprovalState $make(CopyWithData data) => PropertyApprovalState(
      loading: data.get(#loading, or: $value.loading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      successMessage: data.get(#successMessage, or: $value.successMessage),
      pendingProperties:
          data.get(#pendingProperties, or: $value.pendingProperties),
      lastApprovalAction:
          data.get(#lastApprovalAction, or: $value.lastApprovalAction),
      processedPropertyGuid:
          data.get(#processedPropertyGuid, or: $value.processedPropertyGuid),
      approvalQueue: data.get(#approvalQueue, or: $value.approvalQueue),
      rejectionQueue: data.get(#rejectionQueue, or: $value.rejectionQueue));

  @override
  PropertyApprovalStateCopyWith<$R2, PropertyApprovalState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PropertyApprovalStateCopyWithImpl($value, $cast, t);
}
