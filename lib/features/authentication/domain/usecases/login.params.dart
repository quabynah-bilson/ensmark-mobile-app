import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';

part 'login.params.mapper.dart';

@MappableClass()
class LoginParams with LoginParamsMappable {
  LoginParams({required this.role, required this.username, required this.password});

  final UserRole role;
  final String username;
  final String password;
}
