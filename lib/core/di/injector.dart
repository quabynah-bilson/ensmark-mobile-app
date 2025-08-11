import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile/firebase_options.dart';

import 'injector.config.dart';

final sl = GetIt.I;

@InjectableInit()
Future<void> registerDependencies() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dotenv.load();
  await sl.init();
}
