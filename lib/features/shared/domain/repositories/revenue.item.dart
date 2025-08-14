import 'package:dartz/dartz.dart';
import 'package:mobile/core/exceptions/failure.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

abstract class RevenueItemRepository {
  const RevenueItemRepository();

  Future<Either<Failure, List<RevenueItem>>> getRevenueItems();
}
