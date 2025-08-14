import 'package:isar/isar.dart';
import 'package:mobile/features/sync/domain/entities/status.dart';
import 'package:mobile/features/sync/domain/entities/sync.type.dart';
part 'sync.g.dart';

@collection
class SyncQueue {
  @id
  late String guid;

  /// entity: property/payment/user/etc
  late SyncEntityType entity;

  /// JSON payload as string
  late String payload;

  /// number of attempts so far
  int attemptCount = 0;

  /// ISO8601 string stored as DateTime
  DateTime? lastAttemptAt;

  /// client-generated idempotency key (UUID)
  late String idempotencyKey;

  /// pending|processing|synced|failed
  @enumValue
  late SyncStatus status;

  late DateTime createdAt;
  DateTime? updatedAt;
}
