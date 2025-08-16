import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/usecases/all.properties.dart';
import 'package:mobile/features/properties/domain/usecases/approved.properties.dart';
import 'package:mobile/features/properties/domain/usecases/get.property.dart';
import 'package:mobile/features/properties/domain/usecases/pending.properties.dart';

part 'property.listing.mapper.dart';

@MappableClass()
class PropertyListingState with PropertyListingStateMappable {
  const PropertyListingState({
    this.loading = false,
    this.errorMessage,
    this.properties = const [],
    this.pendingProperties = const [],
    this.approvedProperties = const [],
    this.selectedProperty,
    this.searchQuery = '',
    this.filterType,
    this.filterStatus,
    this.filterLocation,
  });

  final bool loading;
  final String? errorMessage;
  final List<Property> properties;
  final List<Property> pendingProperties;
  final List<Property> approvedProperties;
  final Property? selectedProperty;
  final String searchQuery;
  final PropertyType? filterType;
  final PropertyStatus? filterStatus;
  final String? filterLocation;

  // Computed properties
  List<Property> get filteredProperties {
    var result = properties;

    // Apply search filter
    if (searchQuery.isNotEmpty) {
      result = result.where((property) {
        return property.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
            property.owner.toLowerCase().contains(searchQuery.toLowerCase()) ||
            property.location.address.toLowerCase().contains(searchQuery.toLowerCase());
      }).toList();
    }

    // Apply type filter
    if (filterType != null) {
      result = result.where((property) => property.type == filterType).toList();
    }

    // Apply status filter
    if (filterStatus != null) {
      result = result.where((property) => property.status == filterStatus).toList();
    }

    // Apply location filter
    if (filterLocation != null && filterLocation!.isNotEmpty) {
      result = result.where((property) {
        return property.location.address.toLowerCase().contains(filterLocation!.toLowerCase());
      }).toList();
    }

    return result;
  }

  int get totalProperties => properties.length;
  int get totalPendingProperties => pendingProperties.length;
  int get totalApprovedProperties => approvedProperties.length;

  double get totalPropertyValue => properties.fold(0.0, (sum, property) => sum + property.value);
  double get averagePropertyValue => totalProperties > 0 ? totalPropertyValue / totalProperties : 0.0;
}

final class PropertyListingManager extends Cubit<PropertyListingState> {
  PropertyListingManager(
    this._getAllPropertiesUseCase,
    this._getPendingPropertiesUseCase,
    this._getApprovedPropertiesUseCase,
    this._getPropertyUseCase,
  ) : super(const PropertyListingState());

  final GetAllProperties _getAllPropertiesUseCase;
  final GetPendingProperties _getPendingPropertiesUseCase;
  final GetApprovedProperties _getApprovedPropertiesUseCase;
  final GetProperty _getPropertyUseCase;

  /// Load all properties with optional filters
  Future<void> loadProperties({
    String? ownerGuid,
    String? officerGuid,
    String? location,
    PropertyType? type,
    PropertyStatus? status,
  }) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetAllPropertiesParams(
      ownerGuid: ownerGuid,
      officerGuid: officerGuid,
      location: location,
      type: type,
      status: status,
    );

    final result = await _getAllPropertiesUseCase(params);
    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error)),
      (properties) => emit(state.copyWith(loading: false, properties: properties, errorMessage: null)),
    );
  }

  /// Load pending properties
  Future<void> loadPendingProperties({String? ownerGuid, String? officerGuid}) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetPendingPropertiesParams(ownerGuid: ownerGuid, officerGuid: officerGuid);
    final result = await _getPendingPropertiesUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error)),
      (properties) => emit(state.copyWith(loading: false, pendingProperties: properties, errorMessage: null)),
    );
  }

  /// Load approved properties
  Future<void> loadApprovedProperties({String? ownerGuid, String? officerGuid}) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetApprovedPropertiesParams(ownerGuid: ownerGuid, officerGuid: officerGuid);
    final result = await _getApprovedPropertiesUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error)),
      (properties) => emit(state.copyWith(loading: false, approvedProperties: properties, errorMessage: null)),
    );
  }

  /// Load a specific property by GUID
  Future<void> loadProperty(String guid) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetPropertyParams(guid: guid);
    final result = await _getPropertyUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error)),
      (property) => emit(state.copyWith(loading: false, selectedProperty: property, errorMessage: null)),
    );
  }

  /// Search properties by query
  void searchProperties(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  /// Apply filters
  void applyFilters({PropertyType? type, PropertyStatus? status, String? location}) {
    emit(state.copyWith(filterType: type, filterStatus: status, filterLocation: location));
  }

  /// Clear all filters
  void clearFilters() {
    emit(state.copyWith(searchQuery: '', filterType: null, filterStatus: null, filterLocation: null));
  }

  /// Clear error message
  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }

  /// Refresh all data
  Future<void> refresh({String? ownerGuid, String? officerGuid}) async {
    await Future.wait([
      loadProperties(ownerGuid: ownerGuid, officerGuid: officerGuid),
      loadPendingProperties(ownerGuid: ownerGuid, officerGuid: officerGuid),
      loadApprovedProperties(ownerGuid: ownerGuid, officerGuid: officerGuid),
    ]);
  }

  /// Select a property
  void selectProperty(Property property) {
    emit(state.copyWith(selectedProperty: property));
  }

  /// Clear selected property
  void clearSelection() {
    emit(state.copyWith(selectedProperty: null));
  }
}
