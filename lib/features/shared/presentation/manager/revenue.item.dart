import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';
import 'package:mobile/features/shared/domain/usecases/get.revenue.items.dart';

part 'revenue.item.freezed.dart';

@freezed
abstract class RevenueItemState with _$RevenueItemState {
  const factory RevenueItemState({@Default([]) List<RevenueItem> revenueItems}) = _RevenueItemState;
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
