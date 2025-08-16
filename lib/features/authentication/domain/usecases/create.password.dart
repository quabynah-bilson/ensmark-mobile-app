import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/exceptions/auth.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';

part 'create.password.mapper.dart';

@MappableClass()
class CreatePasswordParams with CreatePasswordParamsMappable {
  const CreatePasswordParams({required this.password, required this.confirmPassword, required this.guid});

  final String password;
  final String confirmPassword;
  final String guid;
}

@lazySingleton
class CreatePasswordUseCase implements UseCase<AppUser, CreatePasswordParams> {
  CreatePasswordUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<UseCaseResult<AppUser>> call(CreatePasswordParams params) async {
    if (params.password != params.confirmPassword || params.password.length < 8) {
      return UseCaseResult.error(InvalidPasswordException().reason);
    }

    final result = await _authRepository.createPassword(
      confirmPassword: params.confirmPassword,
      password: params.password,
      guid: params.guid,
    );
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
