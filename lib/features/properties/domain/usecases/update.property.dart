import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'update.property.mapper.dart';

@MappableClass()
class UpdatePropertyParams with UpdatePropertyParamsMappable {
  final Property property;

  const UpdatePropertyParams({required this.property});
}

@lazySingleton
class UpdateProperty implements CompletableUseCase<UpdatePropertyParams> {
  final PropertyRepository _repo;

  const UpdateProperty(this._repo);

  @override
  FutureOr<UseCaseResult<void>> call(UpdatePropertyParams params) async {
    final result = await _repo.updateProperty(params.property);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
