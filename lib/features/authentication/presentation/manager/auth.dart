import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/domain/usecases/auth.status.dart';
import 'package:mobile/features/authentication/domain/usecases/current.user.dart';
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
  UserAuthManager(
    this._loginPropertyOwnerUseCase,
    this._loginRevenueOfficerUseCase,
    this._logoutUseCase,
    this._checkAuthStatusUseCase,
    this._currentUserUseCase,
  ) : super(UserAuthState()) {
    _checkAuthStatus();
  }
  final LoginPropertyOwnerUseCase _loginPropertyOwnerUseCase;
  final LoginRevenueOfficerUseCase _loginRevenueOfficerUseCase;
  final LogoutUseCase _logoutUseCase;
  final CheckAuthStatusUseCase _checkAuthStatusUseCase;
  final CurrentUserUseCase _currentUserUseCase;

  AppUser? get currentUser => state.user;

  Future<bool> get authenticated async {
    final result = await _checkAuthStatusUseCase(null);
    return result.fold((l) => false, (r) => r);
  }

  Future<void> login({required UserRole role, required String username, required String password}) async {
    emit(state.copyWith(authenticating: true, errorMessage: null));
    final params = LoginParams(role: role, username: username, password: password);
    switch (role) {
      case UserRole.owner:
        final result = await _loginPropertyOwnerUseCase(params);
        result.fold(
          (l) => emit(state.copyWith(errorMessage: l)),
          (user) => emit(state.copyWith(errorMessage: null, user: user)),
        );
        break;
      case UserRole.officer:
        final result = await _loginRevenueOfficerUseCase(params);
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
    final result = await _logoutUseCase(null);
    result.fold(
      (l) => emit(state.copyWith(errorMessage: l)),
      (r) => emit(state.copyWith(errorMessage: null, user: null)),
    );
    emit(state.copyWith(authenticating: false));
  }

  void _checkAuthStatus() async {
    final authed = await authenticated;
    if (!authed) return;

    final result = await _currentUserUseCase(null);
    result.fold(
      (l) => emit(state.copyWith(errorMessage: l)),
      (user) => emit(state.copyWith(errorMessage: null, user: user)),
    );
  }

  //!todo - add password reset
  //!todo - request for password reset
}
