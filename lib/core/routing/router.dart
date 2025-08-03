import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/features/pages.dart';
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
  redirect: (_, state) async {
    // https://ensmark-applications.web.app/download
    if (state.matchedLocation == '/download') return AppRoutes.initial;
    //!todo - handle redirects here
    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.initial,
      pageBuilder: (_, _) => const ModalBottomSheetPage(child: WelcomePage()),
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
