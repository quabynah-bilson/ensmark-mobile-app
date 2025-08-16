import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/usecases/approve.property.dart';
import 'package:mobile/features/properties/domain/usecases/pending.properties.dart';
import 'package:mobile/features/properties/domain/usecases/reject.property.dart';

part 'property.approval.mapper.dart';

@MappableClass()
class PropertyApprovalState with PropertyApprovalStateMappable {
  const PropertyApprovalState({
    this.loading = false,
    this.errorMessage,
    this.successMessage,
    this.pendingProperties = const [],
    this.lastApprovalAction,
    this.processedPropertyGuid,
    this.approvalQueue = const [],
    this.rejectionQueue = const [],
  });

  final bool loading;
  final String? errorMessage;
  final String? successMessage;
  final List<Property> pendingProperties;
  final ApprovalAction? lastApprovalAction;
  final String? processedPropertyGuid;
  final List<String> approvalQueue;
  final List<String> rejectionQueue;

  // Computed properties
  int get pendingCount => pendingProperties.length;
  int get approvalQueueCount => approvalQueue.length;
  int get rejectionQueueCount => rejectionQueue.length;
  bool get hasQueuedActions => approvalQueue.isNotEmpty || rejectionQueue.isNotEmpty;

  List<Property> get highValueProperties => pendingProperties.where((property) => property.value > 500000).toList();

  List<Property> get recentSubmissions =>
      pendingProperties.where((property) => DateTime.now().difference(property.submittedDate).inDays <= 7).toList();
}

enum ApprovalAction { approve, reject, bulkApprove, bulkReject }

final class PropertyApprovalManager extends Cubit<PropertyApprovalState> {
  PropertyApprovalManager(this._approvePropertyUseCase, this._rejectPropertyUseCase, this._getPendingPropertiesUseCase)
    : super(const PropertyApprovalState());

  final ApproveProperty _approvePropertyUseCase;
  final RejectProperty _rejectPropertyUseCase;
  final GetPendingProperties _getPendingPropertiesUseCase;

  /// Load pending properties for approval
  Future<void> loadPendingProperties({String? ownerGuid, String? officerGuid}) async {
    emit(state.copyWith(loading: true, errorMessage: null));

    final params = GetPendingPropertiesParams(ownerGuid: ownerGuid, officerGuid: officerGuid);
    final result = await _getPendingPropertiesUseCase(params);

    result.fold(
      (error) => emit(state.copyWith(loading: false, errorMessage: error)),
      (properties) => emit(state.copyWith(loading: false, pendingProperties: properties, errorMessage: null)),
    );
  }

  /// Approve a single property
  Future<void> approveProperty(String guid) async {
    emit(
      state.copyWith(
        loading: true,
        errorMessage: null,
        successMessage: null,
        lastApprovalAction: ApprovalAction.approve,
        processedPropertyGuid: guid,
      ),
    );

    final params = ApprovePropertyParams(guid: guid);
    final result = await _approvePropertyUseCase(params);

    result.fold((error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)), (_) {
      // Remove from pending list
      final updatedPending = state.pendingProperties.where((property) => property.guid != guid).toList();

      emit(
        state.copyWith(
          loading: false,
          pendingProperties: updatedPending,
          successMessage: 'Property approved successfully',
          errorMessage: null,
        ),
      );
    });
  }

  /// Reject a single property
  Future<void> rejectProperty(String guid) async {
    emit(
      state.copyWith(
        loading: true,
        errorMessage: null,
        successMessage: null,
        lastApprovalAction: ApprovalAction.reject,
        processedPropertyGuid: guid,
      ),
    );

    final params = RejectPropertyParams(guid: guid);
    final result = await _rejectPropertyUseCase(params);

    result.fold((error) => emit(state.copyWith(loading: false, errorMessage: error, successMessage: null)), (_) {
      // Remove from pending list
      final updatedPending = state.pendingProperties.where((property) => property.guid != guid).toList();

      emit(
        state.copyWith(
          loading: false,
          pendingProperties: updatedPending,
          successMessage: 'Property rejected successfully',
          errorMessage: null,
        ),
      );
    });
  }

  /// Add property to approval queue
  void addToApprovalQueue(String guid) {
    if (!state.approvalQueue.contains(guid)) {
      final updatedQueue = [...state.approvalQueue, guid];
      // Remove from rejection queue if it exists there
      final updatedRejectionQueue = state.rejectionQueue.where((id) => id != guid).toList();

      emit(state.copyWith(approvalQueue: updatedQueue, rejectionQueue: updatedRejectionQueue));
    }
  }

  /// Add property to rejection queue
  void addToRejectionQueue(String guid) {
    if (!state.rejectionQueue.contains(guid)) {
      final updatedQueue = [...state.rejectionQueue, guid];
      // Remove from approval queue if it exists there
      final updatedApprovalQueue = state.approvalQueue.where((id) => id != guid).toList();

      emit(state.copyWith(rejectionQueue: updatedQueue, approvalQueue: updatedApprovalQueue));
    }
  }

  /// Remove from queues
  void removeFromQueues(String guid) {
    final updatedApprovalQueue = state.approvalQueue.where((id) => id != guid).toList();
    final updatedRejectionQueue = state.rejectionQueue.where((id) => id != guid).toList();

    emit(state.copyWith(approvalQueue: updatedApprovalQueue, rejectionQueue: updatedRejectionQueue));
  }

  /// Process approval queue
  Future<void> processApprovalQueue() async {
    if (state.approvalQueue.isEmpty) return;

    emit(
      state.copyWith(
        loading: true,
        lastApprovalAction: ApprovalAction.bulkApprove,
        errorMessage: null,
        successMessage: null,
      ),
    );

    int successCount = 0;
    int errorCount = 0;

    for (final guid in state.approvalQueue) {
      final params = ApprovePropertyParams(guid: guid);
      final result = await _approvePropertyUseCase(params);

      result.fold((_) => errorCount++, (_) => successCount++);
    }

    // Remove approved properties from pending list
    final updatedPending = state.pendingProperties
        .where((property) => !state.approvalQueue.contains(property.guid))
        .toList();

    emit(
      state.copyWith(
        loading: false,
        pendingProperties: updatedPending,
        approvalQueue: const [],
        successMessage: errorCount == 0
            ? 'All $successCount properties approved successfully'
            : '$successCount properties approved, $errorCount failed',
        errorMessage: errorCount > 0 ? 'Some properties failed to approve' : null,
      ),
    );
  }

  /// Process rejection queue
  Future<void> processRejectionQueue() async {
    if (state.rejectionQueue.isEmpty) return;

    emit(
      state.copyWith(
        loading: true,
        lastApprovalAction: ApprovalAction.bulkReject,
        errorMessage: null,
        successMessage: null,
      ),
    );

    int successCount = 0;
    int errorCount = 0;

    for (final guid in state.rejectionQueue) {
      final params = RejectPropertyParams(guid: guid);
      final result = await _rejectPropertyUseCase(params);

      result.fold((_) => errorCount++, (_) => successCount++);
    }

    // Remove rejected properties from pending list
    final updatedPending = state.pendingProperties
        .where((property) => !state.rejectionQueue.contains(property.guid))
        .toList();

    emit(
      state.copyWith(
        loading: false,
        pendingProperties: updatedPending,
        rejectionQueue: const [],
        successMessage: errorCount == 0
            ? 'All $successCount properties rejected successfully'
            : '$successCount properties rejected, $errorCount failed',
        errorMessage: errorCount > 0 ? 'Some properties failed to reject' : null,
      ),
    );
  }

  /// Clear all queues
  void clearQueues() {
    emit(state.copyWith(approvalQueue: const [], rejectionQueue: const []));
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

  /// Refresh pending properties
  Future<void> refresh({String? ownerGuid, String? officerGuid}) async {
    await loadPendingProperties(ownerGuid: ownerGuid, officerGuid: officerGuid);
  }
}
