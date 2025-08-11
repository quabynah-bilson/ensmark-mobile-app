import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:path_provider/path_provider.dart';

class AppDatabaseService {
  const AppDatabaseService._();

  static Future<Isar> get db async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([AppUserSchema], directory: dir.path, inspector: kDebugMode);
    }

    return Future.value(Isar.getInstance());
  }
}
