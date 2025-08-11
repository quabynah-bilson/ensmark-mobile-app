import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/core/storage.keys.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:uuid/uuid.dart';

@singleton
final class AuthUserLocalDataSource {
  final Isar _db;
  final FlutterSecureStorage _storage;

  const AuthUserLocalDataSource(this._storage, this._db);

  Future<AppUser?> createUser({
    required UserRole role,
    required String username,
    required String firstName,
    required String lastName,
    required String password,
  }) async {
    AppUser user = AppUser();
    user.guid = Uuid().v7();
    user.username = username;
    user.password = password;
    user.role = role;
    user.firstName = firstName;
    user.lastName = lastName;
    var id = await _db.appUsers.put(user);
    return await _db.appUsers.get(id);
  }

  Future<AppUser?> get currentUser async {
    final guid = await _storage.read(key: StorageKeys.kUserId);
    if (guid == null) return null;
    var appUser = await _db.appUsers.filter().guidEqualTo(guid).build().findFirst();
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
    var appUser = await _db.appUsers.filter().usernameEqualTo(username).and().roleEqualTo(role).build().findFirst();
    return appUser;
  }
}
