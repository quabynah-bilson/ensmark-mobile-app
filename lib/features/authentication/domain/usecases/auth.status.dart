import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';

@singleton
final class CheckAuthStatusUseCase implements NoParamsUseCase<bool> {
  const CheckAuthStatusUseCase(this._repo);

  final AuthRepository _repo;

  @override
  FutureOr<UseCaseResult<bool>> call(_) async {
    final authenticated = await _repo.authenticated;
    return UseCaseResult.success(authenticated);
  }
}
