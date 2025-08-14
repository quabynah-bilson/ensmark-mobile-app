import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/shared/domain/repositories/revenue.item.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

@lazySingleton
class GetRevenueItemsUseCase implements NoParamsUseCase<List<RevenueItem>> {
  final RevenueItemRepository _repository;

  const GetRevenueItemsUseCase(this._repository);

  @override
  FutureOr<UseCaseResult<List<RevenueItem>>> call(void params) async {
    final either = await _repository.getRevenueItems();
    return either.fold((failure) => UseCaseResult.error(failure.reason), (items) => UseCaseResult.success(items));
  }
}
