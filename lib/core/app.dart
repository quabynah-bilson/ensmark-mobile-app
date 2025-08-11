import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:shared_utils/shared_utils.dart' show DismissKeyboard;

import 'di/injector.dart';
import 'theme.dart';

class EnsmarkApp extends StatefulWidget {
  const EnsmarkApp({super.key});

  @override
  State<EnsmarkApp> createState() => _EnsmarkAppState();
}

class _EnsmarkAppState extends State<EnsmarkApp> {
  late final _authManager = UserAuthManager(sl());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => _authManager, lazy: false)],
      child: DismissKeyboard(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,
          scrollBehavior: CupertinoScrollBehavior(),
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: ThemeMode.system,
        ),
      ),
    );
  }
}
