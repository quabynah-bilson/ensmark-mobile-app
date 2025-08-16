part of 'router.dart';

class AppRoutes {
  const AppRoutes._();

  // shared
  static const String initial = '/';
  static const String dashboard = '/dashboard';
  static const String payments = '/payments';
  static const String notifications = '/notifications';
  static const String profile = '/profile';

  // authentication
  static const String userTypePicker = '/picker/user-type';
  static const String registerVendor = '/vendor/auth/register';
  static const String verifyVendor = '/vendor/auth/verify/:token';
  static const String createPassword = '/vendor/auth/create-password/:token';
  static const String loginRevenueOfficer = '/revenue-officer/auth/login';
}

class AppLinksPatterns {
  const AppLinksPatterns._();

  static const String download = '/download';
  static final RegExp resetPassword = RegExp(r'/vendor/auth/reset-password/[^/]+$');
}
