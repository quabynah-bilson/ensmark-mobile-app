import 'package:flutter/material.dart';
import 'package:mobile/core/app.dart';
import 'package:mobile/core/di/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerDependencies();
  runApp(const EnsmarkApp());
}
