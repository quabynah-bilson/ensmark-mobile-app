import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/domain/usecases/auth.status.dart';
import 'package:mobile/features/authentication/domain/usecases/current.user.dart';
import 'package:mobile/features/authentication/domain/usecases/login.params.dart';
import 'package:mobile/features/authentication/domain/usecases/login.property.owner.dart';
import 'package:mobile/features/authentication/domain/usecases/login.revenue.officer.dart';
import 'package:mobile/features/authentication/domain/usecases/logout.dart';
import 'package:mobile/features/authentication/domain/usecases/request.account.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

part 'auth.mapper.dart';

@MappableClass()
class UserAuthState with UserAuthStateMappable {
  const UserAuthState({this.authenticating = false, this.errorMessage, this.user});

  final bool authenticating;
  final String? errorMessage;
  final AppUser? user;
}

final class UserAuthManager extends Cubit<UserAuthState> {
  UserAuthManager(
    this._loginPropertyOwnerUseCase,
    this._loginRevenueOfficerUseCase,
    this._logoutUseCase,
    this._checkAuthStatusUseCase,
    this._currentUserUseCase,
    this._requestAccountUseCase,
  ) : super(UserAuthState());

  final LoginPropertyOwnerUseCase _loginPropertyOwnerUseCase;
  final LoginRevenueOfficerUseCase _loginRevenueOfficerUseCase;
  final LogoutUseCase _logoutUseCase;
  final CheckAuthStatusUseCase _checkAuthStatusUseCase;
  final CurrentUserUseCase _currentUserUseCase;
  final RequestAccountUseCase _requestAccountUseCase;

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

  Future<void> checkAuthStatus({bool passwordReset = false}) async {
    final authed = await authenticated;
    if (!authed) return;

    if (passwordReset) {
      final result = await _currentUserUseCase(null);
      result.fold((l) => emit(state.copyWith(errorMessage: l)), (user) {
        //!todo - check if user has a password
        user = user..verified = true;
        emit(state.copyWith(errorMessage: null, user: user));
      });
      return;
    }
    final result = await _currentUserUseCase(null);
    result.fold(
      (l) => emit(state.copyWith(errorMessage: l)),
      (user) => emit(state.copyWith(errorMessage: null, user: user)),
    );
  }

  Future<void> submitRequest({
    required String firstName,
    required String lastName,
    required String username,
    required String phoneNumber,
    required OwnerType ownerType,
    required List<RevenueItem> revenueItems,
    required String registrationNumber,
    DateTime? registrationDate,
    required String taxIdentificationNumber,
    required String houseNumber,
    required String street,
    required String digitalCode,
    required String landmark,
    required String town,
    required String region,
    required String country,
    required String idType,
    required String idNumber,
    required String addressLine1,
    required String addressLine2,
    required String addressLine3,
    required String addressLine4,
    DateTime? dateOfBirth,
  }) async {
    emit(state.copyWith(authenticating: true));
    final params = RequestAccountUseCaseParams(
      firstName: firstName,
      lastName: lastName,
      username: username,
      phoneNumber: phoneNumber,
      ownerType: ownerType,
      revenueItems: revenueItems,
      registrationNumber: registrationNumber,
      registrationDate: registrationDate,
      taxIdentificationNumber: taxIdentificationNumber,
      houseNumber: houseNumber,
      street: street,
      digitalCode: digitalCode,
      landmark: landmark,
      town: town,
      region: region,
      countryCode: country,
      idType: idType,
      idNumber: idNumber,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      addressLine3: addressLine3,
      addressLine4: addressLine4,
      dateOfBirth: dateOfBirth,
    );
    final result = await _requestAccountUseCase(params);
    result.fold(
      (l) => emit(state.copyWith(authenticating: false, errorMessage: l)),
      (user) => emit(state.copyWith(user: user, authenticating: false, errorMessage: null)),
    );
  }

  //!todo - add password reset
  //!todo - request for password reset
}
