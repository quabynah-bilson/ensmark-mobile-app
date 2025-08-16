import 'package:faker/faker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/core/storage.keys.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';

@singleton
final class AuthUserLocalDataSource {
  final Isar _db;
  final FlutterSecureStorage _storage;

  const AuthUserLocalDataSource(this._storage, this._db);

  Future<void> init() async {
    _seedDatabase();
  }

  Future<AppUser?> createUser({
    required UserRole role,
    required String username,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    DateTime? dateOfBirth,
    String? password,
  }) async {
    AppUser user = AppUser();
    user.username = username;
    user.password = password ?? '';
    user.role = role;
    user.firstName = firstName;
    user.lastName = lastName;
    user.phoneNumber = phoneNumber;
    user.dateOfBirth = dateOfBirth;
    user.verified = false;
    _db.write((db) => db.appUsers.put(user));
    return _db.appUsers.where().usernameEqualTo(user.username).build().findFirstAsync();
  }

  Future<AppUser?> get currentUser async {
    final guid = await _storage.read(key: StorageKeys.kUserId);
    if (guid == null) return null;
    var appUser = await _db.appUsers.where().guidEqualTo(guid).build().findFirstAsync();
    return appUser;
  }

  Stream<AppUser?> get currentUserStream async* {
    final guid = await _storage.read(key: StorageKeys.kUserId);
    if (guid == null) {
      yield null;
      return;
    }
    yield await currentUser;
    //!todo - add live data streaming here
  }

  Future<AppUser?> getUserByUsernameAndRole({required UserRole role, required String username}) async {
    var appUser = await _db.appUsers.where().usernameEqualTo(username).and().roleEqualTo(role).build().findFirstAsync();
    return appUser;
  }

  Future<AppUser?> getUserByGuid({required String guid}) async {
    var appUser = await _db.appUsers.where().guidEqualTo(guid).build().findFirstAsync();
    return appUser;
  }

  void _seedDatabase() {
    if (_db.appUsers.count() > 1) return;
    final faker = Faker();
    final List<AppUser> users = [
      for (var i = 0; i < 10; i++)
        AppUser()
          ..username = faker.internet.email()
          ..password = faker.internet.password()
          ..role = UserRole.owner
          ..firstName = faker.person.firstName()
          ..lastName = faker.person.lastName()
          ..phoneNumber = faker.phoneNumber.us()
          ..dateOfBirth = DateTime.now()
          ..verified = true,
    ];

    final List<AppUser> officers = [
      for (var i = 0; i < 10; i++)
        AppUser()
          ..username = faker.internet.email()
          ..password = faker.internet.password()
          ..role = UserRole.officer
          ..firstName = faker.person.firstName()
          ..lastName = faker.person.lastName()
          ..phoneNumber = faker.phoneNumber.us()
          ..dateOfBirth = DateTime.now()
          ..verified = true,
    ];
    _db.write((db) => db.appUsers.putAll(users));
    _db.write((db) => db.appUsers.putAll(officers));
  }
}
