import 'package:isar/isar.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';

part 'user.g.dart';

@collection
class AppUser {
  @id
  late String guid;
  @Index(unique: true)
  late String username;
  late String firstName;
  late String lastName;
  @ignore
  late String password;
  @enumValue
  late UserRole role;
  late bool verified;
}
