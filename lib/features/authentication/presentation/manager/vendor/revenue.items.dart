import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

part 'revenue.items.freezed.dart';

@freezed
abstract class RevenueItemsState with _$RevenueItemsState {
  const factory RevenueItemsState({@Default([]) List<RevenueItem> revenueItems}) = _RevenueItemsState;
}
