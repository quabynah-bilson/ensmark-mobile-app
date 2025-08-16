import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/usecases/create.password.dart';

part 'password.mapper.dart';

@MappableClass()
class CreatePasswordState with CreatePasswordStateMappable {
  const CreatePasswordState({
    this.password = '',
    this.confirmPassword = '',
    this.loading = false,
    this.errorMessage,
    this.user,
  });

  final String password;
  final String confirmPassword;
  final bool loading;
  final String? errorMessage;
  final AppUser? user;
}

class CreatePasswordManager extends Cubit<CreatePasswordState> {
  CreatePasswordManager(this._createPasswordUseCase) : super(const CreatePasswordState());

  final CreatePasswordUseCase _createPasswordUseCase;

  Future<void> createPassword(String password, String confirmPassword, String guid) async {
    emit(state.copyWith(loading: true));
    final result = await _createPasswordUseCase(
      CreatePasswordParams(password: password, confirmPassword: confirmPassword, guid: guid),
    );
    result.fold(
      (l) => emit(state.copyWith(errorMessage: l, loading: false)),
      (r) => emit(state.copyWith(user: r, errorMessage: null, loading: false)),
    );
  }
}
