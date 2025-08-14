import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/features/sync/domain/entities/status.dart';
import 'package:mobile/features/sync/domain/entities/sync.dart';
import 'package:mobile/features/sync/domain/entities/sync.type.dart';
import 'package:mobile/features/sync/domain/repositories/sync.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: SyncRepository)
class SyncRepositoryImpl implements SyncRepository {
  const SyncRepositoryImpl(this._db);
  final Isar _db;

  @override
  Future<SyncQueue> enqueue(SyncEntityType entity, String payload, {String? idempotencyKey}) async {
    final item = SyncQueue()
      ..entity = entity
      ..payload = payload
      ..idempotencyKey = idempotencyKey ?? Uuid().v7()
      ..status = SyncStatus.pending
      ..createdAt = DateTime.now();
    _db.syncQueues.put(item);
    return item;
  }

  @override
  Future<List<SyncQueue>> getPending({int limit = 50}) async {
    return await _db.syncQueues.where().statusEqualTo(SyncStatus.pending).findAllAsync(limit: limit);
  }

  @override
  Future<void> markProcessing(SyncQueue item) async {
    item.status = SyncStatus.processing;
    item.updatedAt = DateTime.now();
    _db.syncQueues.put(item);
  }

  @override
  Future<void> markSuccess(SyncQueue item, {String? remoteId}) async {
    item.status = SyncStatus.synced;
    item.updatedAt = DateTime.now();
    _db.syncQueues.put(item);
  }

  @override
  Future<void> markFailed(SyncQueue item) async {
    item.status = SyncStatus.failed;
    item.updatedAt = DateTime.now();
    _db.syncQueues.put(item);
  }

  @override
  Future<void> incrementAttempt(SyncQueue item) async {
    item.attemptCount += 1;
    item.lastAttemptAt = DateTime.now();
    _db.syncQueues.put(item);
  }
}
