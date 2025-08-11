import 'package:mobile/features/sync/domain/entities/sync.dart';
import 'package:mobile/features/sync/domain/entities/sync.entity.dart';

abstract class SyncRepository {
  Future<SyncQueue> enqueue(SyncEntityType entity, String payload, {String? idempotencyKey});

  Future<List<SyncQueue>> getPending({int limit = 50});

  Future<void> markProcessing(SyncQueue item);

  Future<void> markSuccess(SyncQueue item, {String? remoteId});

  Future<void> markFailed(SyncQueue item);

  Future<void> incrementAttempt(SyncQueue item);
}
