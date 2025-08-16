import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'property.g.dart';

enum PropertyType { residential, commercial, industrial, agricultural }

enum PropertyStatus { pending, approved, rejected }

@Collection(accessor: 'properties')
class Property {
  @id
  String guid = Uuid().v7();
  late String title;
  late String owner;
  late String location;
  late PropertyType type;
  late PropertyStatus status;
  late DateTime submittedDate;
  late DateTime? approvedDate;
  late double value;
  late String ownerGuid;
}
