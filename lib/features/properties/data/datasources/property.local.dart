import 'package:faker/faker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/core/storage.keys.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';

@lazySingleton
final class PropertyLocalDataSource {
  final Isar _db;
  final FlutterSecureStorage _storage;

  const PropertyLocalDataSource(this._db, this._storage);

  Future<void> init() async {
    _seedDatabase();
  }

  Future<void> createProperty(Property property) async {
    _db.write((db) => db.propertys.put(property));
  }

  Future<void> _seedDatabase() async {
    final userGuid = await _storage.read(key: StorageKeys.kUserId);
    if (userGuid == null) return;
    final faker = Faker();
    final List<Property> pendingProperties = [
      // seed with 20 pending properties
      for (var i = 0; i < 20; i++)
        Property()
          ..ownerGuid = userGuid
          ..title = faker.address.city()
          ..owner = faker.person.name()
          ..location = faker.address.city()
          ..type = PropertyType.residential
          ..status = PropertyStatus.pending
          ..submittedDate = DateTime.now().subtract(Duration(days: faker.randomGenerator.integer(30)))
          ..value = faker.randomGenerator.integer(1000000).toDouble(),
    ];

    // Mock data for approved properties
    final List<Property> approvedProperties = [
      // seed with 10 approved properties
      for (var i = 0; i < 10; i++)
        Property()
          ..ownerGuid = userGuid
          ..title = faker.address.city()
          ..owner = faker.person.name()
          ..location = faker.address.city()
          ..type = PropertyType.residential
          ..status = PropertyStatus.approved
          ..submittedDate = DateTime.now().subtract(Duration(days: faker.randomGenerator.integer(30)))
          ..approvedDate = DateTime.now().subtract(Duration(days: faker.randomGenerator.integer(30)))
          ..value = faker.randomGenerator.integer(1000000).toDouble(),
    ];

    _db.write((db) => db.propertys.putAll(pendingProperties));
    _db.write((db) => db.propertys.putAll(approvedProperties));
  }
}
