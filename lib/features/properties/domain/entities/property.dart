import 'package:dart_mappable/dart_mappable.dart';
import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'property.g.dart';
part 'property.mapper.dart';

enum PropertyType { residential, commercial, industrial, agricultural }

enum PropertyStatus { pending, approved, rejected }

@MappableClass()
@embedded
class PropertyLocation with PropertyLocationMappable {
  final String name;
  final String address;
  final String city;
  final String state;
  final String zip;
  final String country;
  final double latitude;
  final double longitude;

  const PropertyLocation({
    required this.name,
    required this.address,
    required this.city,
    required this.state,
    required this.latitude,
    required this.longitude,
    this.zip = '00233',
    this.country = 'Ghana',
  });
}

@Collection(accessor: 'properties')
class Property {
  @id
  String guid = Uuid().v7();
  late String title;
  late String owner;
  late PropertyType type;
  late PropertyStatus status;
  late DateTime submittedDate;
  late DateTime? approvedDate;
  late double value;
  late String ownerGuid;
  late String officerGuid;
  late PropertyLocation location;
}
