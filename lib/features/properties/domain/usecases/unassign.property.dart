import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'unassign.property.mapper.dart';

@MappableClass()
class UnassignPropertyParams with UnassignPropertyParamsMappable {
  final String guid;

  const UnassignPropertyParams({required this.guid});
}

@lazySingleton
class UnassignProperty implements CompletableUseCase<UnassignPropertyParams> {
  final PropertyRepository _repo;

  const UnassignProperty(this._repo);

  @override
  FutureOr<UseCaseResult<void>> call(UnassignPropertyParams params) async {
    final result = await _repo.unassignProperty(params.guid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
