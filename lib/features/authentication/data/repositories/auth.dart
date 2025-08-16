import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/exceptions/auth.dart';
import 'package:mobile/core/exceptions/base.dart' show BaseException;
import 'package:mobile/core/storage.keys.dart';
import 'package:mobile/features/authentication/data/datasources/user.local.dart';
import 'package:mobile/features/authentication/domain/entities/register.vendor.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';

@Singleton(as: AuthRepository)
final class AuthRepositoryImpl extends AuthRepository {
  final FlutterSecureStorage _storage;
  final AuthUserLocalDataSource _ds;

  AuthRepositoryImpl(this._storage, this._ds) {
    _ds.init();
  }

  @override
  Future<bool> get authenticated async {
    final (guid, role) = await (
      _storage.read(key: StorageKeys.kUserId),
      _storage.read(key: StorageKeys.kUserRole),
    ).wait;
    return guid != null && role != null;
  }

  @override
  Future<Either<BaseException<void>, AppUser>> login({
    required UserRole role,
    required String username,
    required String password,
  }) async {
    var user = await _ds.getUserByUsernameAndRole(role: role, username: username);
    if (user == null) return left(UserNotFoundException());
    await [
      _storage.write(key: StorageKeys.kUserId, value: user.guid),
      _storage.write(key: StorageKeys.kUserRole, value: role.label),
    ].wait;
    return right(user);
  }

  @override
  Future<void> logout() async => _storage.deleteAll();

  @override
  Future<Either<BaseException<void>, String>> requestPasswordReset({
    required UserRole role,
    required String username,
  }) async {
    // TODO: implement requestPasswordReset
    await Future.delayed(AppConstants.simulatedDuration);
    return right('Check your email for a password reset link to get started');
  }

  @override
  Future<Either<BaseException<void>, String>> resetPassword({
    required UserRole role,
    required String username,
    required String password,
  }) async {
    // TODO: implement resetPassword
    await Future.delayed(AppConstants.simulatedDuration);
    return right('Password updated successfully');
  }

  @override
  Future<Either<BaseException<void>, AppUser>> createPassword({
    required String password,
    required String confirmPassword,
    required String guid,
  }) async {
    //!todo - implement create password
    await Future.delayed(AppConstants.simulatedDuration);
    final user = await _ds.getUserByGuid(guid: guid);
    if (user == null) return left(UserNotFoundException());
    return right(user);
  }

  @override
  Future<Either<BaseException<AppUser>, AppUser>> get currentUser async {
    final user = await _ds.currentUser;
    if (user == null) return left(UserNotFoundException());
    return right(user);
  }

  @override
  Future<Either<BaseException<void>, AppUser>> registerVendor(RegisterVendorRequest request) async {
    AppUser? appUser = await _ds.getUserByUsernameAndRole(role: UserRole.owner, username: request.username);
    if (appUser != null) return left(UserAlreadyExistsException());
    appUser = await _ds.createUser(
      role: UserRole.owner,
      username: request.username,
      firstName: request.firstName,
      lastName: request.lastName,
      phoneNumber: request.phoneNumber,
      dateOfBirth: request.dateOfBirth,
    );
    if (appUser == null) return left(RegistrationFailedException());
    return right(appUser);
  }
}
