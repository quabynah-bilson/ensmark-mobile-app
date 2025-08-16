import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/authentication/presentation/manager/password.dart';
import 'package:mobile/features/authentication/presentation/manager/vendor.onboarding.dart';
import 'package:mobile/features/pages.dart';
import 'package:mobile/features/shared/presentation/manager/revenue.item.dart';
import 'package:mobile/features/shared/presentation/pages/dashboard.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'args.dart';
part 'custom.routes.dart';
part 'router.mapper.dart';
part 'routes.dart';

final appRouterNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'app-router');

final appRouter = GoRouter(
  initialLocation: AppRoutes.initial,
  navigatorKey: appRouterNavigatorKey,
  redirect: (context, state) {
    debugPrint('redirect: ${state.matchedLocation}');
    if (state.matchedLocation == AppLinksPatterns.download) return AppRoutes.initial;
    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.initial,
      pageBuilder: (_, _) => ModalBottomSheetPage(
        child: BlocProvider(
          create: (_) => UserAuthManager(sl(), sl(), sl(), sl(), sl(), sl()),
          lazy: false,
          child: WelcomePage(),
        ),
      ),
    ),
    GoRoute(
      path: AppRoutes.registerVendor,
      pageBuilder: (_, _) => ModalBottomSheetPage(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => RevenueItemManager(sl()), lazy: false),
            BlocProvider(create: (_) => UserAuthManager(sl(), sl(), sl(), sl(), sl(), sl())),
            BlocProvider(create: (context) => VendorOnboardingManager()),
          ],
          child: RegisterVendorPage(),
        ),
      ),
    ),
    GoRoute(
      path: AppRoutes.verifyVendor,
      pageBuilder: (_, state) {
        final args = VendorVerificationPageArgs(token: state.pathParameters['token']!);
        return MaterialPage(
          child: BlocProvider(
            create: (_) => UserAuthManager(sl(), sl(), sl(), sl(), sl(), sl()),
            child: VendorVerificationPage(args: args),
          ),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.createPassword,
      pageBuilder: (_, state) {
        final args = CreatePasswordPageArgs(token: state.pathParameters['token']!);
        return MaterialPage(
          child: BlocProvider(
            create: (_) => CreatePasswordManager(sl()),
            child: CreatePasswordPage(args: args),
          ),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.loginRevenueOfficer,
      pageBuilder: (_, _) => MaterialPage(
        child: BlocProvider(
          create: (_) => UserAuthManager(sl(), sl(), sl(), sl(), sl(), sl()),
          child: LoginRevenueOfficerPage(),
        ),
      ),
    ),
    StatefulShellRoute.indexedStack(
      pageBuilder: (_, _, shell) => MaterialPage(
        child: BlocProvider(
          create: (_) => UserAuthManager(sl(), sl(), sl(), sl(), sl(), sl()),
          child: DashboardScreen(shell: shell),
        ),
      ),
      branches: [
        StatefulShellBranch(
          initialLocation: AppRoutes.dashboard,
          routes: [
            GoRoute(
              path: AppRoutes.dashboard,
              pageBuilder: (_, _) => ModalBottomSheetPage(child: PropertiesListingScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: AppRoutes.payments,
          routes: [
            GoRoute(
              path: AppRoutes.payments,
              pageBuilder: (_, _) => ModalBottomSheetPage(child: PaymentsListingScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: AppRoutes.notifications,
          routes: [
            GoRoute(
              path: AppRoutes.notifications,
              pageBuilder: (_, _) => ModalBottomSheetPage(child: NotificationsScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: AppRoutes.profile,
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              pageBuilder: (_, _) => ModalBottomSheetPage(child: UserProfileScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
);
