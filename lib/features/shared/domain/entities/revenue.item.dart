import 'package:isar/isar.dart';

part 'revenue.item.g.dart';

@collection
class RevenueItem {
  @Id()
  late String guid;
  @Index()
  late String code;
  late String description;
}
