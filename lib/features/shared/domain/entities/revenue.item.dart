import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'revenue.item.g.dart';

@collection
class RevenueItem {
  @id
  final String guid = Uuid().v4();
  @Index()
  late String code;
  late String description;
}
