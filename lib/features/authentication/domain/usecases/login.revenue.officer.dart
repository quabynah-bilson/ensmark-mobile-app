import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart' show AppUser;
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';

import 'login.params.dart';

@singleton
final class LoginRevenueOfficerUseCase implements UseCase<AppUser, LoginParams> {
  const LoginRevenueOfficerUseCase(this._repo);

  final AuthRepository _repo;

  @override
  FutureOr<UseCaseResult<AppUser>> call(LoginParams params) async {
    final either = await _repo.login(role: UserRole.officer, username: params.username, password: params.password);
    return either.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
