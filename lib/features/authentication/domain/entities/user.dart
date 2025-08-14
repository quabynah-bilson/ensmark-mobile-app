import 'package:isar/isar.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:uuid/uuid.dart';

part 'user.g.dart';

@collection
class AppUser {
  @id
  String guid = Uuid().v7();
  @Index(unique: true)
  late String username;
  late String firstName;
  late String lastName;
  @ignore
  late String password;
  @enumValue
  late UserRole role;
  late bool verified;
  late DateTime? dateOfBirth;
  late String? phoneNumber;
}
