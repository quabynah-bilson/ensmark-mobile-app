import 'package:dartz/dartz.dart';
import 'package:mobile/core/exceptions/base.dart';
import 'package:mobile/features/authentication/domain/entities/register.vendor.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<bool> get authenticated;

  Future<Either<BaseException<void>, AppUser>> login({
    required UserRole role,
    required String username,
    required String password,
  });

  Future<Either<BaseException<void>, AppUser>> registerVendor(RegisterVendorRequest request);

  Future<void> logout();

  Future<Either<BaseException<void>, String>> requestPasswordReset({required UserRole role, required String username});

  Future<Either<BaseException<void>, String>> resetPassword({
    required UserRole role,
    required String username,
    required String password,
  });

  Future<Either<BaseException<AppUser>, AppUser>> get currentUser;
}
