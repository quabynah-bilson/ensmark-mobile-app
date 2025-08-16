import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

part 'revenue.items.mapper.dart';

@MappableClass()
class RevenueItemsState with RevenueItemsStateMappable {
  const RevenueItemsState({this.revenueItems = const []});

  final List<RevenueItem> revenueItems;
}
