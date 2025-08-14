import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';

@singleton
final class LogoutUseCase implements VoidableUseCase {
  const LogoutUseCase(this._repo);

  final AuthRepository _repo;

  @override
  FutureOr<UseCaseResult<void>> call(_) async {
    await _repo.logout();
    return UseCaseResult.success(null);
  }
}
