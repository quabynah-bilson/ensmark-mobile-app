// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'property.action.dart';

class PropertyActionStateMapper extends ClassMapperBase<PropertyActionState> {
  PropertyActionStateMapper._();

  static PropertyActionStateMapper? _instance;
  static PropertyActionStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PropertyActionStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PropertyActionState';

  static bool _$loading(PropertyActionState v) => v.loading;
  static const Field<PropertyActionState, bool> _f$loading =
      Field('loading', _$loading, opt: true, def: false);
  static String? _$errorMessage(PropertyActionState v) => v.errorMessage;
  static const Field<PropertyActionState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static String? _$successMessage(PropertyActionState v) => v.successMessage;
  static const Field<PropertyActionState, String> _f$successMessage =
      Field('successMessage', _$successMessage, opt: true);
  static Property? _$createdProperty(PropertyActionState v) =>
      v.createdProperty;
  static const Field<PropertyActionState, Property> _f$createdProperty =
      Field('createdProperty', _$createdProperty, opt: true);
  static PropertyAction? _$lastAction(PropertyActionState v) => v.lastAction;
  static const Field<PropertyActionState, PropertyAction> _f$lastAction =
      Field('lastAction', _$lastAction, opt: true);

  @override
  final MappableFields<PropertyActionState> fields = const {
    #loading: _f$loading,
    #errorMessage: _f$errorMessage,
    #successMessage: _f$successMessage,
    #createdProperty: _f$createdProperty,
    #lastAction: _f$lastAction,
  };

  static PropertyActionState _instantiate(DecodingData data) {
    return PropertyActionState(
        loading: data.dec(_f$loading),
        errorMessage: data.dec(_f$errorMessage),
        successMessage: data.dec(_f$successMessage),
        createdProperty: data.dec(_f$createdProperty),
        lastAction: data.dec(_f$lastAction));
  }

  @override
  final Function instantiate = _instantiate;

  static PropertyActionState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PropertyActionState>(map);
  }

  static PropertyActionState fromJson(String json) {
    return ensureInitialized().decodeJson<PropertyActionState>(json);
  }
}

mixin PropertyActionStateMappable {
  String toJson() {
    return PropertyActionStateMapper.ensureInitialized()
        .encodeJson<PropertyActionState>(this as PropertyActionState);
  }

  Map<String, dynamic> toMap() {
    return PropertyActionStateMapper.ensureInitialized()
        .encodeMap<PropertyActionState>(this as PropertyActionState);
  }

  PropertyActionStateCopyWith<PropertyActionState, PropertyActionState,
          PropertyActionState>
      get copyWith => _PropertyActionStateCopyWithImpl(
          this as PropertyActionState, $identity, $identity);
  @override
  String toString() {
    return PropertyActionStateMapper.ensureInitialized()
        .stringifyValue(this as PropertyActionState);
  }

  @override
  bool operator ==(Object other) {
    return PropertyActionStateMapper.ensureInitialized()
        .equalsValue(this as PropertyActionState, other);
  }

  @override
  int get hashCode {
    return PropertyActionStateMapper.ensureInitialized()
        .hashValue(this as PropertyActionState);
  }
}

extension PropertyActionStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PropertyActionState, $Out> {
  PropertyActionStateCopyWith<$R, PropertyActionState, $Out>
      get $asPropertyActionState =>
          $base.as((v, t, t2) => _PropertyActionStateCopyWithImpl(v, t, t2));
}

abstract class PropertyActionStateCopyWith<$R, $In extends PropertyActionState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? loading,
      String? errorMessage,
      String? successMessage,
      Property? createdProperty,
      PropertyAction? lastAction});
  PropertyActionStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PropertyActionStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PropertyActionState, $Out>
    implements PropertyActionStateCopyWith<$R, PropertyActionState, $Out> {
  _PropertyActionStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PropertyActionState> $mapper =
      PropertyActionStateMapper.ensureInitialized();
  @override
  $R call(
          {bool? loading,
          Object? errorMessage = $none,
          Object? successMessage = $none,
          Object? createdProperty = $none,
          Object? lastAction = $none}) =>
      $apply(FieldCopyWithData({
        if (loading != null) #loading: loading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (successMessage != $none) #successMessage: successMessage,
        if (createdProperty != $none) #createdProperty: createdProperty,
        if (lastAction != $none) #lastAction: lastAction
      }));
  @override
  PropertyActionState $make(CopyWithData data) => PropertyActionState(
      loading: data.get(#loading, or: $value.loading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      successMessage: data.get(#successMessage, or: $value.successMessage),
      createdProperty: data.get(#createdProperty, or: $value.createdProperty),
      lastAction: data.get(#lastAction, or: $value.lastAction));

  @override
  PropertyActionStateCopyWith<$R2, PropertyActionState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PropertyActionStateCopyWithImpl($value, $cast, t);
}
