import 'package:faker/faker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mobile/core/exceptions/failure.dart';
import 'package:mobile/core/storage.keys.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';

@lazySingleton
final class PropertyLocalDataSource {
  final Isar _db;
  final FlutterSecureStorage _storage;

  const PropertyLocalDataSource(this._db, this._storage);

  Future<void> init() async {
    _seedDatabase();
  }

  Future<void> _seedDatabase() async {
    if (_db.properties.count() > 0) return;
    final userGuid = await _storage.read(key: StorageKeys.kUserId);
    if (userGuid == null) return;

    // get all property owners and revenue officers
    final propertyOwners = _db.appUsers.where().roleEqualTo(UserRole.owner).findAll();
    final revenueOfficers = _db.appUsers.where().roleEqualTo(UserRole.officer).findAll();

    if (propertyOwners.isEmpty || revenueOfficers.isEmpty) return;

    final faker = Faker();
    final List<Property> pendingProperties = [
      // seed with 20 pending properties
      for (var i = 0; i < 20; i++)
        Property()
          ..ownerGuid = propertyOwners[faker.randomGenerator.integer(propertyOwners.length - 1)].guid
          ..officerGuid = revenueOfficers[faker.randomGenerator.integer(revenueOfficers.length - 1)].guid
          ..title = faker.address.city()
          ..owner = faker.person.name()
          ..location = PropertyLocation(
            name: faker.address.city(),
            address: faker.address.streetAddress(),
            city: faker.address.city(),
            state: faker.address.state(),
            latitude: faker.randomGenerator.decimal(),
            longitude: faker.randomGenerator.decimal(),
          )
          ..type = PropertyType.residential
          ..status = PropertyStatus.pending
          ..submittedDate = DateTime.now().subtract(Duration(days: faker.randomGenerator.integer(30)))
          ..value = faker.randomGenerator.integer(1000000).toDouble(),
    ];

    // Mock data for approved properties
    final List<Property> approvedProperties = [
      // seed with 10 approved properties
      for (var i = 0; i < 10; i++) ...[
        Property()
          ..ownerGuid = propertyOwners[faker.randomGenerator.integer(propertyOwners.length - 1)].guid
          ..officerGuid = revenueOfficers[faker.randomGenerator.integer(revenueOfficers.length - 1)].guid
          ..title = faker.address.city()
          ..owner = faker.person.name()
          ..location = PropertyLocation(
            name: faker.address.city(),
            address: faker.address.streetAddress(),
            city: faker.address.city(),
            state: faker.address.state(),
            latitude: faker.randomGenerator.decimal(),
            longitude: faker.randomGenerator.decimal(),
          )
          ..type = PropertyType.residential
          ..status = PropertyStatus.approved
          ..submittedDate = DateTime.now().subtract(Duration(days: faker.randomGenerator.integer(30)))
          ..approvedDate = DateTime.now().subtract(Duration(days: faker.randomGenerator.integer(30)))
          ..value = faker.randomGenerator.integer(1000000).toDouble(),
      ],
    ];

    _db.write((db) => db.properties.putAll(pendingProperties));
    _db.write((db) => db.properties.putAll(approvedProperties));
  }

  Future<List<Property>> getProperties({
    String? ownerGuid,
    String? officerGuid,
    String? location,
    PropertyType? type,
    PropertyStatus? status,
  }) async {
    final query = _db.properties.where();
    if (ownerGuid != null) query.ownerGuidEqualTo(ownerGuid);
    if (officerGuid != null) query.officerGuidEqualTo(officerGuid);
    if (location != null) {
      query.location(
        (q) => q
            .addressContains(location, caseSensitive: false)
            .or()
            .cityContains(location, caseSensitive: false)
            .or()
            .stateContains(location, caseSensitive: false)
            .or()
            .zipContains(location, caseSensitive: false),
      );
    }
    if (type != null) query.typeEqualTo(type);
    if (status != null) query.statusEqualTo(status);
    return query.build().findAll();
  }

  Future<Property> getProperty(String guid) async {
    final property = _db.properties.where().guidEqualTo(guid).build().findFirst();
    if (property == null) throw Failure('Property not found');
    return property;
  }

  Future<void> assignProperty(String guid, String officerGuid) async {
    final property = await getProperty(guid);
    property.officerGuid = officerGuid;
    _db.write((db) => db.properties.put(property));
  }

  Future<void> unassignProperty(String guid) async {
    final property = await getProperty(guid);
    property.officerGuid = '';
    _db.write((db) => db.properties.put(property));
  }

  Future<void> approveProperty(String guid) async {
    final property = await getProperty(guid);
    property.status = PropertyStatus.approved;
    _db.write((db) => db.properties.put(property));
  }

  Future<void> rejectProperty(String guid) async {
    final property = await getProperty(guid);
    property.status = PropertyStatus.rejected;
    _db.write((db) => db.properties.put(property));
  }

  Future<void> updateProperty(Property property) async {
    _db.write((db) => db.properties.put(property));
  }

  Future<void> deleteProperty(String guid) async {
    _db.write((db) => db.properties.delete(guid));
  }

  Future<List<Property>> getPendingProperties({String? ownerGuid, String? officerGuid}) async {
    final query = _db.properties.where().statusEqualTo(PropertyStatus.pending);
    if (ownerGuid != null) query.ownerGuidEqualTo(ownerGuid);
    if (officerGuid != null) query.officerGuidEqualTo(officerGuid);
    return query.build().findAll();
  }

  Future<List<Property>> getApprovedProperties({String? ownerGuid, String? officerGuid}) async {
    final query = _db.properties.where().statusEqualTo(PropertyStatus.approved);
    if (ownerGuid != null) query.ownerGuidEqualTo(ownerGuid);
    if (officerGuid != null) query.officerGuidEqualTo(officerGuid);
    return query.build().findAll();
  }

  Future<Property> createProperty({
    required String title,
    required String owner,
    required PropertyLocation location,
    required PropertyType type,
    required double value,
    required String ownerGuid,
    required String officerGuid,
    PropertyStatus status = PropertyStatus.pending,
  }) async {
    final property = Property()
      ..title = title
      ..owner = owner
      ..location = location
      ..type = type
      ..value = value
      ..ownerGuid = ownerGuid
      ..officerGuid = officerGuid
      ..status = status;
    _db.write((db) => db.properties.put(property));
    final createdProperty = _db.properties.where().guidEqualTo(property.guid).build().findFirst();
    if (createdProperty == null) throw Failure('Failed to create property');
    return createdProperty;
  }
}
