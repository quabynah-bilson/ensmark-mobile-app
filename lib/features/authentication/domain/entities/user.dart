import 'package:isar/isar.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';

part 'user.g.dart';

@collection
class AppUser {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  late String guid;
  @Index(unique: true)
  late String username;
  late String firstName;
  late String lastName;
  @ignore
  late String password;
  @enumerated
  late UserRole role;
  late bool verified;
}
