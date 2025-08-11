import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:injectable/injectable.dart';
import 'package:mobile/features/sync/domain/entities/status.dart';
import 'package:mobile/features/sync/domain/repositories/sync.dart';
import 'package:mobile/generated/sync.pbgrpc.dart';

@lazySingleton
final class SyncService {
  SyncService(this._repo, this._client);

  final SyncRepository _repo;
  final SyncServiceClient _client;

  bool _isProcessing = false;

  bool get isProcessing => _isProcessing;

  /// Process pending queue entries (simple sequential processor)
  Future<void> processQueue({int maxItems = 20}) async {
    if (_isProcessing) return;
    _isProcessing = true;
    try {
      final items = await _repo.getPending(limit: maxItems);
      if (items.isEmpty) return;

      final controller = StreamController<AppSyncQueue>.broadcast();

      for (final item in items) {
        final queue = AppSyncQueue(
          guid: item.guid,
          idempotencyKey: item.idempotencyKey,
          payload: item.payload,
          attemptCount: item.attemptCount,
          createdAt: item.createdAt.toIso8601String(),
          updatedAt: item.updatedAt?.toIso8601String(),
          status: _getStatus(item.status),
          entity: item.entity.name,
        );
        controller.add(queue);
        await _repo.markProcessing(item);
      }

      var either = await runWithGrpcUnaryZonedGuarded(_client.syncToServer(controller.stream));
      either.fold(
        (l) async {
          debugPrint('sync was unsuccessful: $l');
          //!fixme: handle unsuccessful syncs
          // await _repo.incrementAttempt(item);
          // await _repo.markFailed(item);
        },
        (r) async {
          debugPrint('sync completed successfully');
          //!fixme - handle successful syncs
          // await _repo.markSuccess(item);
        },
      );
    } finally {
      _isProcessing = false;
    }
  }

  AppSyncStatus _getStatus(SyncStatus status) {
    switch (status) {
      case SyncStatus.pending:
        return AppSyncStatus.APP_SYNC_STATUS_PENDING;
      case SyncStatus.processing:
        return AppSyncStatus.APP_SYNC_STATUS_PROCESSING;
      case SyncStatus.synced:
        return AppSyncStatus.APP_SYNC_STATUS_SYNCED;
      case SyncStatus.failed:
        return AppSyncStatus.APP_SYNC_STATUS_FAILED;
    }
  }
}
