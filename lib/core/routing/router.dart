import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/pages.dart';
import 'package:mobile/features/shared/presentation/pages/dashboard.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

part 'args.dart';
part 'custom.routes.dart';
part 'router.freezed.dart';
part 'router.g.dart';
part 'routes.dart';

final appRouterNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'app-router');

final appRouter = GoRouter(
  initialLocation: AppRoutes.initial,
  navigatorKey: appRouterNavigatorKey,
  redirect: (context, state) async {
    // https://ensmark-applications.web.app/vendor/auth/verify/qioeuqoidhajhsdajhsdjasd
    if (state.matchedLocation == AppLinksPatterns.download) return AppRoutes.initial;

    // check auth status
    final authController = context.read<UserAuthManager>();
    final authenticated = await authController.authenticated;
    if (authenticated) return AppRoutes.dashboard;
    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.initial,
      pageBuilder: (_, _) => const ModalBottomSheetPage(child: WelcomePage()),
    ),
    StatefulShellRoute.indexedStack(
      pageBuilder: (_, _, shell) => ModalBottomSheetPage(child: DashboardScreen(shell: shell)),
      branches: [
        StatefulShellBranch(
          initialLocation: AppRoutes.dashboard,
          routes: [GoRoute(path: AppRoutes.dashboard, builder: (_, _) => PropertiesListingScreen())],
        ),
      ],
      redirect: (_, _) {
        return null;
      },
    ),
    GoRoute(
      path: AppRoutes.registerVendor,
      pageBuilder: (_, _) => const ModalBottomSheetPage(child: RegisterVendorPage()),
    ),
    GoRoute(
      path: AppRoutes.verifyVendor,
      pageBuilder: (_, state) {
        final args = VendorVerificationPageArgs(params: state.pathParameters);
        return ModalBottomSheetPage(child: VendorVerificationPage(args: args));
      },
    ),
    GoRoute(
      path: AppRoutes.loginRevenueOfficer,
      pageBuilder: (_, _) => const ModalBottomSheetPage(child: LoginRevenueOfficerPage()),
    ),
  ],
);
