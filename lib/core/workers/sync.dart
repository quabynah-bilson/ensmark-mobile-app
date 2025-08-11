import 'package:flutter/foundation.dart' show debugPrint;
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/sync/data/services/sync.dart';
import 'package:workmanager/workmanager.dart';

const String syncTask = 'syncBackgroundTask';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case syncTask:
        try {
          final svc = sl<SyncService>();
          await svc.processQueue();
        } catch (e) {
          debugPrint('sync work service exception: $e');
          //!fixme: ignore for now
        }
        break;
      default:
        break;
    }
    return Future.value(true);
  });
}
