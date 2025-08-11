import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart' show UserRole;

part 'login.params.freezed.dart';

@freezed
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({required UserRole role, required String username, required String password}) =
      _LoginParams;
}
