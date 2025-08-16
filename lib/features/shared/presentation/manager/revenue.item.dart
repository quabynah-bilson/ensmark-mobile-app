import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';
import 'package:mobile/features/shared/domain/usecases/get.revenue.items.dart';

part 'revenue.item.mapper.dart';

@MappableClass()
class RevenueItemState with RevenueItemStateMappable {
  const RevenueItemState({this.revenueItems = const []});

  final List<RevenueItem> revenueItems;
}

class RevenueItemManager extends Cubit<RevenueItemState> {
  RevenueItemManager(this._getRevenueItemsUseCase) : super(RevenueItemState());
  final GetRevenueItemsUseCase _getRevenueItemsUseCase;

  Future<void> getRevenueItems() async {
    final result = await _getRevenueItemsUseCase(null);
    result.fold(
      (failure) => emit(state.copyWith(revenueItems: [])),
      (items) => emit(state.copyWith(revenueItems: items)),
    );
  }

  void update(RevenueItemState newState) => emit(newState);
}
