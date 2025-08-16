import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'delete.property.mapper.dart';

@MappableClass()
class DeletePropertyParams with DeletePropertyParamsMappable {
  final String guid;

  const DeletePropertyParams({required this.guid});
}

@lazySingleton
class DeleteProperty implements CompletableUseCase<DeletePropertyParams> {
  final PropertyRepository _repo;

  const DeleteProperty(this._repo);

  @override
  FutureOr<UseCaseResult<void>> call(DeletePropertyParams params) async {
    final result = await _repo.deleteProperty(params.guid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
