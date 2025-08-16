import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'assign.property.mapper.dart';

@MappableClass()
class AssignPropertyParams with AssignPropertyParamsMappable {
  final String guid;
  final String officerGuid;

  const AssignPropertyParams({required this.guid, required this.officerGuid});
}

@lazySingleton
class AssignProperty implements CompletableUseCase<AssignPropertyParams> {
  final PropertyRepository _repo;

  const AssignProperty(this._repo);

  @override
  FutureOr<UseCaseResult<void>> call(AssignPropertyParams params) async {
    final result = await _repo.assignProperty(params.guid, params.officerGuid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
