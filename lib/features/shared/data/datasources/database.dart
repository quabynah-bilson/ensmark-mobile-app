import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';
import 'package:mobile/features/sync/domain/entities/sync.dart';
import 'package:path_provider/path_provider.dart';

class AppDatabaseService {
  const AppDatabaseService._();

  static Future<Isar> get db async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.openAsync(
      schemas: [AppUserSchema, SyncQueueSchema, RevenueItemSchema],
      directory: dir.path,
      inspector: kDebugMode,
    );
  }
}
