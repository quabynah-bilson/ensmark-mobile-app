import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:shared_utils/shared_utils.dart' show DismissKeyboard;

import 'theme.dart';

class EnsmarkApp extends StatefulWidget {
  const EnsmarkApp({super.key});

  @override
  State<EnsmarkApp> createState() => _EnsmarkAppState();
}

class _EnsmarkAppState extends State<EnsmarkApp> {
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
        scrollBehavior: CupertinoScrollBehavior(),
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
