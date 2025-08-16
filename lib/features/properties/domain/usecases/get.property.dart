import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'get.property.mapper.dart';

@MappableClass()
class GetPropertyParams with GetPropertyParamsMappable {
  final String guid;

  const GetPropertyParams({required this.guid});
}

@lazySingleton
class GetProperty implements UseCase<Property, GetPropertyParams> {
  final PropertyRepository _repo;

  const GetProperty(this._repo);

  @override
  FutureOr<UseCaseResult<Property>> call(GetPropertyParams params) async {
    final result = await _repo.getProperty(params.guid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
