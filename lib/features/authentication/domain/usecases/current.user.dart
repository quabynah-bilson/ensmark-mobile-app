import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';

@singleton
class CurrentUserUseCase implements NoParamsUseCase<AppUser> {
  const CurrentUserUseCase(this._repo);

  final AuthRepository _repo;

  @override
  FutureOr<UseCaseResult<AppUser>> call(void params) async {
    final either = await _repo.currentUser;
    return either.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
