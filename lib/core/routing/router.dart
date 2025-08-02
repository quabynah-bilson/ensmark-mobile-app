import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/features/pages.dart';

part 'args.dart';
part 'codec.dart';
part 'router.freezed.dart';
part 'router.g.dart';
part 'routes.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.initial,
  // extraCodec: _AppExtraCodec(),
  redirect: (_, state) async {
    //!todo - handle redirects here
    return null;
  },
  routes: [
    GoRoute(path: AppRoutes.initial, builder: (_, _) => const WelcomePage()),
    GoRoute(path: AppRoutes.registerVendor, builder: (_, _) => const RegisterVendorPage()),
    GoRoute(
      path: AppRoutes.verifyVendor,
      builder: (_, state) {
        final args = VendorVerificationPageArgs(params: state.uri.queryParameters);
        return VendorVerificationPage(args: args);
      },
    ),
  ],
);
