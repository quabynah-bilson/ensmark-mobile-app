import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'reject.property.mapper.dart';

@MappableClass()
class RejectPropertyParams with RejectPropertyParamsMappable {
  final String guid;

  const RejectPropertyParams({required this.guid});
}

@lazySingleton
class RejectProperty implements CompletableUseCase<RejectPropertyParams> {
  final PropertyRepository _repo;

  const RejectProperty(this._repo);

  @override
  FutureOr<UseCaseResult<void>> call(RejectPropertyParams params) async {
    final result = await _repo.rejectProperty(params.guid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
