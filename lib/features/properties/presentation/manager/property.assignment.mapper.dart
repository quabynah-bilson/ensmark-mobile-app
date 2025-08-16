// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'property.assignment.dart';

class PropertyAssignmentStateMapper
    extends ClassMapperBase<PropertyAssignmentState> {
  PropertyAssignmentStateMapper._();

  static PropertyAssignmentStateMapper? _instance;
  static PropertyAssignmentStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PropertyAssignmentStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PropertyAssignmentState';

  static bool _$loading(PropertyAssignmentState v) => v.loading;
  static const Field<PropertyAssignmentState, bool> _f$loading =
      Field('loading', _$loading, opt: true, def: false);
  static String? _$errorMessage(PropertyAssignmentState v) => v.errorMessage;
  static const Field<PropertyAssignmentState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static String? _$successMessage(PropertyAssignmentState v) =>
      v.successMessage;
  static const Field<PropertyAssignmentState, String> _f$successMessage =
      Field('successMessage', _$successMessage, opt: true);
  static List<Property> _$assignedProperties(PropertyAssignmentState v) =>
      v.assignedProperties;
  static const Field<PropertyAssignmentState, List<Property>>
      _f$assignedProperties = Field('assignedProperties', _$assignedProperties,
          opt: true, def: const []);
  static List<Property> _$unassignedProperties(PropertyAssignmentState v) =>
      v.unassignedProperties;
  static const Field<PropertyAssignmentState, List<Property>>
      _f$unassignedProperties = Field(
          'unassignedProperties', _$unassignedProperties,
          opt: true, def: const []);
  static AssignmentAction? _$lastAssignmentAction(PropertyAssignmentState v) =>
      v.lastAssignmentAction;
  static const Field<PropertyAssignmentState, AssignmentAction>
      _f$lastAssignmentAction =
      Field('lastAssignmentAction', _$lastAssignmentAction, opt: true);
  static String? _$processedPropertyGuid(PropertyAssignmentState v) =>
      v.processedPropertyGuid;
  static const Field<PropertyAssignmentState, String> _f$processedPropertyGuid =
      Field('processedPropertyGuid', _$processedPropertyGuid, opt: true);
  static Map<String, String> _$assignmentQueue(PropertyAssignmentState v) =>
      v.assignmentQueue;
  static const Field<PropertyAssignmentState, Map<String, String>>
      _f$assignmentQueue =
      Field('assignmentQueue', _$assignmentQueue, opt: true, def: const {});
  static List<String> _$unassignmentQueue(PropertyAssignmentState v) =>
      v.unassignmentQueue;
  static const Field<PropertyAssignmentState, List<String>>
      _f$unassignmentQueue =
      Field('unassignmentQueue', _$unassignmentQueue, opt: true, def: const []);

  @override
  final MappableFields<PropertyAssignmentState> fields = const {
    #loading: _f$loading,
    #errorMessage: _f$errorMessage,
    #successMessage: _f$successMessage,
    #assignedProperties: _f$assignedProperties,
    #unassignedProperties: _f$unassignedProperties,
    #lastAssignmentAction: _f$lastAssignmentAction,
    #processedPropertyGuid: _f$processedPropertyGuid,
    #assignmentQueue: _f$assignmentQueue,
    #unassignmentQueue: _f$unassignmentQueue,
  };

  static PropertyAssignmentState _instantiate(DecodingData data) {
    return PropertyAssignmentState(
        loading: data.dec(_f$loading),
        errorMessage: data.dec(_f$errorMessage),
        successMessage: data.dec(_f$successMessage),
        assignedProperties: data.dec(_f$assignedProperties),
        unassignedProperties: data.dec(_f$unassignedProperties),
        lastAssignmentAction: data.dec(_f$lastAssignmentAction),
        processedPropertyGuid: data.dec(_f$processedPropertyGuid),
        assignmentQueue: data.dec(_f$assignmentQueue),
        unassignmentQueue: data.dec(_f$unassignmentQueue));
  }

  @override
  final Function instantiate = _instantiate;

  static PropertyAssignmentState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PropertyAssignmentState>(map);
  }

  static PropertyAssignmentState fromJson(String json) {
    return ensureInitialized().decodeJson<PropertyAssignmentState>(json);
  }
}

mixin PropertyAssignmentStateMappable {
  String toJson() {
    return PropertyAssignmentStateMapper.ensureInitialized()
        .encodeJson<PropertyAssignmentState>(this as PropertyAssignmentState);
  }

  Map<String, dynamic> toMap() {
    return PropertyAssignmentStateMapper.ensureInitialized()
        .encodeMap<PropertyAssignmentState>(this as PropertyAssignmentState);
  }

  PropertyAssignmentStateCopyWith<PropertyAssignmentState,
          PropertyAssignmentState, PropertyAssignmentState>
      get copyWith => _PropertyAssignmentStateCopyWithImpl(
          this as PropertyAssignmentState, $identity, $identity);
  @override
  String toString() {
    return PropertyAssignmentStateMapper.ensureInitialized()
        .stringifyValue(this as PropertyAssignmentState);
  }

  @override
  bool operator ==(Object other) {
    return PropertyAssignmentStateMapper.ensureInitialized()
        .equalsValue(this as PropertyAssignmentState, other);
  }

  @override
  int get hashCode {
    return PropertyAssignmentStateMapper.ensureInitialized()
        .hashValue(this as PropertyAssignmentState);
  }
}

extension PropertyAssignmentStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PropertyAssignmentState, $Out> {
  PropertyAssignmentStateCopyWith<$R, PropertyAssignmentState, $Out>
      get $asPropertyAssignmentState => $base
          .as((v, t, t2) => _PropertyAssignmentStateCopyWithImpl(v, t, t2));
}

abstract class PropertyAssignmentStateCopyWith<
    $R,
    $In extends PropertyAssignmentState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get assignedProperties;
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get unassignedProperties;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get assignmentQueue;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get unassignmentQueue;
  $R call(
      {bool? loading,
      String? errorMessage,
      String? successMessage,
      List<Property>? assignedProperties,
      List<Property>? unassignedProperties,
      AssignmentAction? lastAssignmentAction,
      String? processedPropertyGuid,
      Map<String, String>? assignmentQueue,
      List<String>? unassignmentQueue});
  PropertyAssignmentStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PropertyAssignmentStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PropertyAssignmentState, $Out>
    implements
        PropertyAssignmentStateCopyWith<$R, PropertyAssignmentState, $Out> {
  _PropertyAssignmentStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PropertyAssignmentState> $mapper =
      PropertyAssignmentStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get assignedProperties => ListCopyWith(
          $value.assignedProperties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(assignedProperties: v));
  @override
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get unassignedProperties => ListCopyWith(
          $value.unassignedProperties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(unassignedProperties: v));
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get assignmentQueue => MapCopyWith(
          $value.assignmentQueue,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(assignmentQueue: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get unassignmentQueue => ListCopyWith(
          $value.unassignmentQueue,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(unassignmentQueue: v));
  @override
  $R call(
          {bool? loading,
          Object? errorMessage = $none,
          Object? successMessage = $none,
          List<Property>? assignedProperties,
          List<Property>? unassignedProperties,
          Object? lastAssignmentAction = $none,
          Object? processedPropertyGuid = $none,
          Map<String, String>? assignmentQueue,
          List<String>? unassignmentQueue}) =>
      $apply(FieldCopyWithData({
        if (loading != null) #loading: loading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (successMessage != $none) #successMessage: successMessage,
        if (assignedProperties != null) #assignedProperties: assignedProperties,
        if (unassignedProperties != null)
          #unassignedProperties: unassignedProperties,
        if (lastAssignmentAction != $none)
          #lastAssignmentAction: lastAssignmentAction,
        if (processedPropertyGuid != $none)
          #processedPropertyGuid: processedPropertyGuid,
        if (assignmentQueue != null) #assignmentQueue: assignmentQueue,
        if (unassignmentQueue != null) #unassignmentQueue: unassignmentQueue
      }));
  @override
  PropertyAssignmentState $make(CopyWithData data) => PropertyAssignmentState(
      loading: data.get(#loading, or: $value.loading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      successMessage: data.get(#successMessage, or: $value.successMessage),
      assignedProperties:
          data.get(#assignedProperties, or: $value.assignedProperties),
      unassignedProperties:
          data.get(#unassignedProperties, or: $value.unassignedProperties),
      lastAssignmentAction:
          data.get(#lastAssignmentAction, or: $value.lastAssignmentAction),
      processedPropertyGuid:
          data.get(#processedPropertyGuid, or: $value.processedPropertyGuid),
      assignmentQueue: data.get(#assignmentQueue, or: $value.assignmentQueue),
      unassignmentQueue:
          data.get(#unassignmentQueue, or: $value.unassignmentQueue));

  @override
  PropertyAssignmentStateCopyWith<$R2, PropertyAssignmentState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PropertyAssignmentStateCopyWithImpl($value, $cast, t);
}
