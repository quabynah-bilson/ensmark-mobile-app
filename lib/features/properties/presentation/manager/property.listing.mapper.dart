// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'property.listing.dart';

class PropertyListingStateMapper extends ClassMapperBase<PropertyListingState> {
  PropertyListingStateMapper._();

  static PropertyListingStateMapper? _instance;
  static PropertyListingStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PropertyListingStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PropertyListingState';

  static bool _$loading(PropertyListingState v) => v.loading;
  static const Field<PropertyListingState, bool> _f$loading =
      Field('loading', _$loading, opt: true, def: false);
  static String? _$errorMessage(PropertyListingState v) => v.errorMessage;
  static const Field<PropertyListingState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);
  static List<Property> _$properties(PropertyListingState v) => v.properties;
  static const Field<PropertyListingState, List<Property>> _f$properties =
      Field('properties', _$properties, opt: true, def: const []);
  static List<Property> _$pendingProperties(PropertyListingState v) =>
      v.pendingProperties;
  static const Field<PropertyListingState, List<Property>>
      _f$pendingProperties =
      Field('pendingProperties', _$pendingProperties, opt: true, def: const []);
  static List<Property> _$approvedProperties(PropertyListingState v) =>
      v.approvedProperties;
  static const Field<PropertyListingState, List<Property>>
      _f$approvedProperties = Field('approvedProperties', _$approvedProperties,
          opt: true, def: const []);
  static Property? _$selectedProperty(PropertyListingState v) =>
      v.selectedProperty;
  static const Field<PropertyListingState, Property> _f$selectedProperty =
      Field('selectedProperty', _$selectedProperty, opt: true);
  static String _$searchQuery(PropertyListingState v) => v.searchQuery;
  static const Field<PropertyListingState, String> _f$searchQuery =
      Field('searchQuery', _$searchQuery, opt: true, def: '');
  static PropertyType? _$filterType(PropertyListingState v) => v.filterType;
  static const Field<PropertyListingState, PropertyType> _f$filterType =
      Field('filterType', _$filterType, opt: true);
  static PropertyStatus? _$filterStatus(PropertyListingState v) =>
      v.filterStatus;
  static const Field<PropertyListingState, PropertyStatus> _f$filterStatus =
      Field('filterStatus', _$filterStatus, opt: true);
  static String? _$filterLocation(PropertyListingState v) => v.filterLocation;
  static const Field<PropertyListingState, String> _f$filterLocation =
      Field('filterLocation', _$filterLocation, opt: true);

  @override
  final MappableFields<PropertyListingState> fields = const {
    #loading: _f$loading,
    #errorMessage: _f$errorMessage,
    #properties: _f$properties,
    #pendingProperties: _f$pendingProperties,
    #approvedProperties: _f$approvedProperties,
    #selectedProperty: _f$selectedProperty,
    #searchQuery: _f$searchQuery,
    #filterType: _f$filterType,
    #filterStatus: _f$filterStatus,
    #filterLocation: _f$filterLocation,
  };

  static PropertyListingState _instantiate(DecodingData data) {
    return PropertyListingState(
        loading: data.dec(_f$loading),
        errorMessage: data.dec(_f$errorMessage),
        properties: data.dec(_f$properties),
        pendingProperties: data.dec(_f$pendingProperties),
        approvedProperties: data.dec(_f$approvedProperties),
        selectedProperty: data.dec(_f$selectedProperty),
        searchQuery: data.dec(_f$searchQuery),
        filterType: data.dec(_f$filterType),
        filterStatus: data.dec(_f$filterStatus),
        filterLocation: data.dec(_f$filterLocation));
  }

  @override
  final Function instantiate = _instantiate;

  static PropertyListingState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PropertyListingState>(map);
  }

  static PropertyListingState fromJson(String json) {
    return ensureInitialized().decodeJson<PropertyListingState>(json);
  }
}

mixin PropertyListingStateMappable {
  String toJson() {
    return PropertyListingStateMapper.ensureInitialized()
        .encodeJson<PropertyListingState>(this as PropertyListingState);
  }

  Map<String, dynamic> toMap() {
    return PropertyListingStateMapper.ensureInitialized()
        .encodeMap<PropertyListingState>(this as PropertyListingState);
  }

  PropertyListingStateCopyWith<PropertyListingState, PropertyListingState,
          PropertyListingState>
      get copyWith => _PropertyListingStateCopyWithImpl(
          this as PropertyListingState, $identity, $identity);
  @override
  String toString() {
    return PropertyListingStateMapper.ensureInitialized()
        .stringifyValue(this as PropertyListingState);
  }

  @override
  bool operator ==(Object other) {
    return PropertyListingStateMapper.ensureInitialized()
        .equalsValue(this as PropertyListingState, other);
  }

  @override
  int get hashCode {
    return PropertyListingStateMapper.ensureInitialized()
        .hashValue(this as PropertyListingState);
  }
}

extension PropertyListingStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PropertyListingState, $Out> {
  PropertyListingStateCopyWith<$R, PropertyListingState, $Out>
      get $asPropertyListingState =>
          $base.as((v, t, t2) => _PropertyListingStateCopyWithImpl(v, t, t2));
}

abstract class PropertyListingStateCopyWith<
    $R,
    $In extends PropertyListingState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get properties;
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get pendingProperties;
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get approvedProperties;
  $R call(
      {bool? loading,
      String? errorMessage,
      List<Property>? properties,
      List<Property>? pendingProperties,
      List<Property>? approvedProperties,
      Property? selectedProperty,
      String? searchQuery,
      PropertyType? filterType,
      PropertyStatus? filterStatus,
      String? filterLocation});
  PropertyListingStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PropertyListingStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PropertyListingState, $Out>
    implements PropertyListingStateCopyWith<$R, PropertyListingState, $Out> {
  _PropertyListingStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PropertyListingState> $mapper =
      PropertyListingStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get properties => ListCopyWith(
          $value.properties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(properties: v));
  @override
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get pendingProperties => ListCopyWith(
          $value.pendingProperties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(pendingProperties: v));
  @override
  ListCopyWith<$R, Property, ObjectCopyWith<$R, Property, Property>>
      get approvedProperties => ListCopyWith(
          $value.approvedProperties,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(approvedProperties: v));
  @override
  $R call(
          {bool? loading,
          Object? errorMessage = $none,
          List<Property>? properties,
          List<Property>? pendingProperties,
          List<Property>? approvedProperties,
          Object? selectedProperty = $none,
          String? searchQuery,
          Object? filterType = $none,
          Object? filterStatus = $none,
          Object? filterLocation = $none}) =>
      $apply(FieldCopyWithData({
        if (loading != null) #loading: loading,
        if (errorMessage != $none) #errorMessage: errorMessage,
        if (properties != null) #properties: properties,
        if (pendingProperties != null) #pendingProperties: pendingProperties,
        if (approvedProperties != null) #approvedProperties: approvedProperties,
        if (selectedProperty != $none) #selectedProperty: selectedProperty,
        if (searchQuery != null) #searchQuery: searchQuery,
        if (filterType != $none) #filterType: filterType,
        if (filterStatus != $none) #filterStatus: filterStatus,
        if (filterLocation != $none) #filterLocation: filterLocation
      }));
  @override
  PropertyListingState $make(CopyWithData data) => PropertyListingState(
      loading: data.get(#loading, or: $value.loading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage),
      properties: data.get(#properties, or: $value.properties),
      pendingProperties:
          data.get(#pendingProperties, or: $value.pendingProperties),
      approvedProperties:
          data.get(#approvedProperties, or: $value.approvedProperties),
      selectedProperty:
          data.get(#selectedProperty, or: $value.selectedProperty),
      searchQuery: data.get(#searchQuery, or: $value.searchQuery),
      filterType: data.get(#filterType, or: $value.filterType),
      filterStatus: data.get(#filterStatus, or: $value.filterStatus),
      filterLocation: data.get(#filterLocation, or: $value.filterLocation));

  @override
  PropertyListingStateCopyWith<$R2, PropertyListingState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PropertyListingStateCopyWithImpl($value, $cast, t);
}
