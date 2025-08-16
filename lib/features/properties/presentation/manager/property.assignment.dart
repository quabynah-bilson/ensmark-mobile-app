import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/usecases/all.properties.dart';
import 'package:mobile/features/properties/domain/usecases/assign.property.dart';
import 'package:mobile/features/properties/domain/usecases/unassign.property.dart';

part 'property.assignment.mapper.dart';

@MappableClass()
class PropertyAssignmentState with PropertyAssignmentStateMappable {
  const PropertyAssignmentState({
    this.loading = false,
    this.errorMessage,
    this.successMessage,
    this.assignedProperties = const [],
    this.unassignedProperties = const [],
    this.lastAssignmentAction,
    this.processedPropertyGuid,
    this.assignmentQueue = const {},
    this.unassignmentQueue = const [],
  });

  final bool loading;
  final String? errorMessage;
  final String? successMessage;
  final List<Property> assignedProperties;
  final List<Property> unassignedProperties;
  final AssignmentAction? lastAssignmentAction;
  final String? processedPropertyGuid;
  final Map<String, String> assignmentQueue; // propertyGuid -> officerGuid
  final List<String> unassignmentQueue;

  // Computed properties
  int get assignedCount => assignedProperties.length;
  int get unassignedCount => unassignedProperties.length;
  int get assignmentQueueCount => assignmentQueue.length;
  int get unassignmentQueueCount => unassignmentQueue.length;
  bool get hasQueuedActions => assignmentQueue.isNotEmpty || unassignmentQueue.isNotEmpty;

  List<Property> get highPriorityProperties =>
      unassignedProperties.where((property) => property.value > 1000000).toList();

  Map<String, List<Property>> get propertiesByOfficer {
    final Map<String, List<Property>> grouped = {};
    for (final property in assignedProperties) {
      final officerGuid = property.officerGuid;
      if (officerGuid.isNotEmpty) {
        grouped.putIfAbsent(officerGuid, () => []).add(property);
      }
    }
    return grouped;
  }
}

enum AssignmentAction { assign, unassign, bulkAssign, bulkUnassign, reassign }

final class PropertyAssignmentManager extends Cubit<PropertyAssignmentState> {
  PropertyAssignmentManager(this._assignPropertyUseCase, this._unassignPropertyUseCase, this._getAllPropertiesUseCase)
    : super(const PropertyAssignmentState());

  final AssignProperty _assignPropertyUseCase;
  final UnassignProperty _unassignPropertyUseCase;
  final GetAllProperties _getAllPropertiesUseCase;

  /// Load all properties and separate by assignment status
  Future<void> loadProperties({String? ownerGuid, String? officerGuid}) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetAllPropertiesParams(ownerGuid: ownerGuid, officerGuid: officerGuid);
    final result = await _getAllPropertiesUseCase(params);

    result.fold((error) => emit(state.copyWith(loading: false, errorMessage: error)), (properties) {
      final assigned = properties.where((p) => p.officerGuid.isNotEmpty).toList();
      final unassigned = properties.where((p) => p.officerGuid.isEmpty).toList();

      emit(
        state.copyWith(
          loading: false,
          assignedProperties: assigned,
          unassignedProperties: unassigned,
          errorMessage: null,
        ),
      );
    });
  }

  /// Load properties assigned to a specific officer
  Future<void> loadOfficerProperties(String officerGuid) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetAllPropertiesParams(officerGuid: officerGuid);
    final result = await _getAllPropertiesUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error)),
      (properties) => emit(state.copyWith(loading: false, assignedProperties: properties, errorMessage: null)),
    );
  }

  /// Assign a property to an officer
  Future<void> assignProperty(String propertyGuid, String officerGuid) async {
    emit(
      state.copyWith(
        loading: true,
        errorMessage: null,
        successMessage: null,
        lastAssignmentAction: AssignmentAction.assign,
        processedPropertyGuid: propertyGuid,
      ),
    );

    final params = AssignPropertyParams(guid: propertyGuid, officerGuid: officerGuid);
    final result = await _assignPropertyUseCase(params);

    result.fold((error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)), (_) {
      // Move property from unassigned to assigned
      final propertyToMove = state.unassignedProperties.firstWhere((p) => p.guid == propertyGuid);

      // Update the property's officer assignment
      propertyToMove.officerGuid = officerGuid;

      final updatedUnassigned = state.unassignedProperties.where((p) => p.guid != propertyGuid).toList();
      final updatedAssigned = [...state.assignedProperties, propertyToMove];

      emit(
        state.copyWith(
          loading: false,
          unassignedProperties: updatedUnassigned,
          assignedProperties: updatedAssigned,
          successMessage: 'Property assigned successfully',
          errorMessage: null,
        ),
      );
    });
  }

  /// Unassign a property from an officer
  Future<void> unassignProperty(String propertyGuid) async {
    emit(
      state.copyWith(
        loading: true,
        errorMessage: null,
        successMessage: null,
        lastAssignmentAction: AssignmentAction.unassign,
        processedPropertyGuid: propertyGuid,
      ),
    );

    final params = UnassignPropertyParams(guid: propertyGuid);
    final result = await _unassignPropertyUseCase(params);

    result.fold((error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)), (_) {
      // Move property from assigned to unassigned
      final propertyToMove = state.assignedProperties.firstWhere((p) => p.guid == propertyGuid);

      // Clear the property's officer assignment
      propertyToMove.officerGuid = '';

      final updatedAssigned = state.assignedProperties.where((p) => p.guid != propertyGuid).toList();
      final updatedUnassigned = [...state.unassignedProperties, propertyToMove];

      emit(
        state.copyWith(
          loading: false,
          assignedProperties: updatedAssigned,
          unassignedProperties: updatedUnassigned,
          successMessage: 'Property unassigned successfully',
          errorMessage: null,
        ),
      );
    });
  }

  /// Reassign property to a different officer
  Future<void> reassignProperty(String propertyGuid, String newOfficerGuid) async {
    emit(
      state.copyWith(
        loading: true,
        errorMessage: null,
        successMessage: null,
        lastAssignmentAction: AssignmentAction.reassign,
        processedPropertyGuid: propertyGuid,
      ),
    );

    final params = AssignPropertyParams(guid: propertyGuid, officerGuid: newOfficerGuid);
    final result = await _assignPropertyUseCase(params);

    result.fold((error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)), (_) {
      // Update officer assignment in assigned properties list
      final propertyToUpdate = state.assignedProperties.firstWhere((p) => p.guid == propertyGuid);
      propertyToUpdate.officerGuid = newOfficerGuid;

      emit(
        state.copyWith(
          loading: false,
          assignedProperties: [...state.assignedProperties],
          successMessage: 'Property reassigned successfully',
          errorMessage: null,
        ),
      );
    });
  }

  /// Add to assignment queue
  void addToAssignmentQueue(String propertyGuid, String officerGuid) {
    final updatedQueue = Map<String, String>.from(state.assignmentQueue);
    updatedQueue[propertyGuid] = officerGuid;

    // Remove from unassignment queue if exists
    final updatedUnassignmentQueue = state.unassignmentQueue.where((guid) => guid != propertyGuid).toList();

    emit(state.copyWith(assignmentQueue: updatedQueue, unassignmentQueue: updatedUnassignmentQueue));
  }

  /// Add to unassignment queue
  void addToUnassignmentQueue(String propertyGuid) {
    if (!state.unassignmentQueue.contains(propertyGuid)) {
      final updatedQueue = [...state.unassignmentQueue, propertyGuid];

      // Remove from assignment queue if exists
      final updatedAssignmentQueue = Map<String, String>.from(state.assignmentQueue);
      updatedAssignmentQueue.remove(propertyGuid);

      emit(state.copyWith(unassignmentQueue: updatedQueue, assignmentQueue: updatedAssignmentQueue));
    }
  }

  /// Remove from queues
  void removeFromQueues(String propertyGuid) {
    final updatedAssignmentQueue = Map<String, String>.from(state.assignmentQueue);
    updatedAssignmentQueue.remove(propertyGuid);

    final updatedUnassignmentQueue = state.unassignmentQueue.where((guid) => guid != propertyGuid).toList();

    emit(state.copyWith(assignmentQueue: updatedAssignmentQueue, unassignmentQueue: updatedUnassignmentQueue));
  }

  /// Process assignment queue
  Future<void> processAssignmentQueue() async {
    if (state.assignmentQueue.isEmpty) return;

    emit(
      state.copyWith(
        loading: true,
        lastAssignmentAction: AssignmentAction.bulkAssign,
        errorMessage: null,
        successMessage: null,
      ),
    );

    int successCount = 0;
    int errorCount = 0;

    for (final entry in state.assignmentQueue.entries) {
      final params = AssignPropertyParams(guid: entry.key, officerGuid: entry.value);
      final result = await _assignPropertyUseCase(params);

      result.fold((_) => errorCount++, (_) => successCount++);
    }

    // Refresh data after bulk operation
    await loadProperties();

    emit(
      state.copyWith(
        loading: false,
        assignmentQueue: const {},
        successMessage: errorCount == 0
            ? 'All $successCount properties assigned successfully'
            : '$successCount properties assigned, $errorCount failed',
        errorMessage: errorCount > 0 ? 'Some properties failed to assign' : null,
      ),
    );
  }

  /// Process unassignment queue
  Future<void> processUnassignmentQueue() async {
    if (state.unassignmentQueue.isEmpty) return;

    emit(
      state.copyWith(
        loading: true,
        lastAssignmentAction: AssignmentAction.bulkUnassign,
        errorMessage: null,
        successMessage: null,
      ),
    );

    int successCount = 0;
    int errorCount = 0;

    for (final guid in state.unassignmentQueue) {
      final params = UnassignPropertyParams(guid: guid);
      final result = await _unassignPropertyUseCase(params);

      result.fold((_) => errorCount++, (_) => successCount++);
    }

    // Refresh data after bulk operation
    await loadProperties();

    emit(
      state.copyWith(
        loading: false,
        unassignmentQueue: const [],
        successMessage: errorCount == 0
            ? 'All $successCount properties unassigned successfully'
            : '$successCount properties unassigned, $errorCount failed',
        errorMessage: errorCount > 0 ? 'Some properties failed to unassign' : null,
      ),
    );
  }

  /// Clear all queues
  void clearQueues() {
    emit(state.copyWith(assignmentQueue: const {}, unassignmentQueue: const []));
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

  /// Refresh data
  Future<void> refresh({String? ownerGuid, String? officerGuid}) async {
    await loadProperties(ownerGuid: ownerGuid, officerGuid: officerGuid);
  }

  /// Get officer workload (count of assigned properties)
  int getOfficerWorkload(String officerGuid) {
    return state.assignedProperties.where((p) => p.officerGuid == officerGuid).length;
  }

  /// Get properties for specific officer
  List<Property> getOfficerProperties(String officerGuid) {
    return state.assignedProperties.where((p) => p.officerGuid == officerGuid).toList();
  }
}
