import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';
import 'package:mobile/features/authentication/domain/usecases/login.params.dart';
import 'package:mobile/features/authentication/domain/usecases/login.property.owner.dart';
import 'package:mobile/features/authentication/domain/usecases/login.revenue.officer.dart';
import 'package:mobile/features/authentication/domain/usecases/logout.dart';

part 'auth.freezed.dart';

@freezed
abstract class UserAuthState with _$UserAuthState {
  const factory UserAuthState({
    @Default(false) bool authenticating,
    @Default(null) String? errorMessage,
    @Default(null) AppUser? user,
  }) = _UserAuthState;
}

final class UserAuthManager extends Cubit<UserAuthState> {
  UserAuthManager(this._repo) : super(UserAuthState()) {
    _checkAuthStatus();
  }
  final AuthRepository _repo;

  Future<bool> get authenticated async => _repo.authenticated;

  Future<void> login({required UserRole role, required String username, required String password}) async {
    emit(state.copyWith(authenticating: true, errorMessage: null));
    final params = LoginParams(role: role, username: username, password: password);
    switch (role) {
      case UserRole.owner:
        final uc = LoginPropertyOwnerUseCase(_repo);
        final result = await uc(params);
        result.fold(
          (l) => emit(state.copyWith(errorMessage: l)),
          (user) => emit(state.copyWith(errorMessage: null, user: user)),
        );
        break;
      case UserRole.officer:
        final uc = LoginRevenueOfficerUseCase(_repo);
        final result = await uc(params);
        result.fold(
          (l) => emit(state.copyWith(errorMessage: l)),
          (user) => emit(state.copyWith(errorMessage: null, user: user)),
        );
        break;
    }
    emit(state.copyWith(authenticating: false));
  }

  Future<void> logout() async {
    emit(state.copyWith(authenticating: true));
    final uc = LogoutUseCase(_repo);
    await uc(null);
    emit(state.copyWith(authenticating: false));
  }

  void _checkAuthStatus() async {
    final authed = await authenticated;
    if (!authed) return;

    final either = await _repo.currentUser;
    either.fold(
      (l) => emit(state.copyWith(errorMessage: l.reason)),
      (user) => emit(state.copyWith(errorMessage: null, user: user)),
    );
  }

  //!todo - add password reset
  //!todo - request for password reset
}
