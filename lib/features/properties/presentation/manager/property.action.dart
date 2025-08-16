import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/usecases/create.property.dart';
import 'package:mobile/features/properties/domain/usecases/delete.property.dart';
import 'package:mobile/features/properties/domain/usecases/update.property.dart';

part 'property.action.mapper.dart';

@MappableClass()
class PropertyActionState with PropertyActionStateMappable {
  const PropertyActionState({
    this.loading = false,
    this.errorMessage,
    this.successMessage,
    this.createdProperty,
    this.lastAction,
  });

  final bool loading;
  final String? errorMessage;
  final String? successMessage;
  final Property? createdProperty;
  final PropertyAction? lastAction;
}

enum PropertyAction { create, update, delete }

final class PropertyActionManager extends Cubit<PropertyActionState> {
  PropertyActionManager(this._createPropertyUseCase, this._updatePropertyUseCase, this._deletePropertyUseCase)
    : super(const PropertyActionState());

  final CreateProperty _createPropertyUseCase;
  final UpdateProperty _updatePropertyUseCase;
  final DeleteProperty _deletePropertyUseCase;

  /// Create a new property
  Future<void> createProperty({
    required String title,
    required String owner,
    required PropertyLocation location,
    required PropertyType type,
    required double value,
    required String ownerGuid,
    required String officerGuid,
    PropertyStatus status = PropertyStatus.pending,
  }) async {
    emit(state.copyWith(loading: true, errorMessage: null, successMessage: null, lastAction: PropertyAction.create));

    final params = CreatePropertyParams(
      title: title,
      owner: owner,
      location: location,
      type: type,
      value: value,
      ownerGuid: ownerGuid,
      officerGuid: officerGuid,
      status: status,
    );

    final result = await _createPropertyUseCase(params);
    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)),
      (property) => emit(
        state.copyWith(
          loading: false,
          createdProperty: property,
          successMessage: 'Property created successfully',
          errorMessage: null,
        ),
      ),
    );
  }

  /// Update an existing property
  Future<void> updateProperty(Property property) async {
    emit(state.copyWith(loading: true, errorMessage: null, successMessage: null, lastAction: PropertyAction.update));

    final params = UpdatePropertyParams(property: property);
    final result = await _updatePropertyUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)),
      (_) => emit(state.copyWith(loading: false, successMessage: 'Property updated successfully', errorMessage: null)),
    );
  }

  /// Delete a property
  Future<void> deleteProperty(String guid) async {
    emit(state.copyWith(loading: true, errorMessage: null, successMessage: null, lastAction: PropertyAction.delete));

    final params = DeletePropertyParams(guid: guid);
    final result = await _deletePropertyUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)),
      (_) => emit(state.copyWith(loading: false, successMessage: 'Property deleted successfully', errorMessage: null)),
    );
  }

  /// Clear messages
  void clearMessages() {
    emit(state.copyWith(errorMessage: null, successMessage: null));
  }

  /// Clear error message
  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }

  /// Clear success message
  void clearSuccess() {
    emit(state.copyWith(successMessage: null));
  }

  /// Reset state
  void reset() {
    emit(const PropertyActionState());
  }
}
