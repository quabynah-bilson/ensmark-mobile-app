import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/exceptions/failure.dart';
import 'package:mobile/features/shared/data/datasources/local/revenue.item.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';
import 'package:mobile/features/shared/domain/repositories/revenue.item.dart';

@Singleton(as: RevenueItemRepository)
class RevenueItemRepositoryImpl extends RevenueItemRepository {
  final RevenueItemLocalDataSource _local;

  const RevenueItemRepositoryImpl(this._local);

  @override
  Future<Either<Failure, List<RevenueItem>>> getRevenueItems() async {
    try {
      final items = await _local.getRevenueItems();
      return right(items);
    } on CacheFailure catch (e) {
      return left(e);
    } on NetworkFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
