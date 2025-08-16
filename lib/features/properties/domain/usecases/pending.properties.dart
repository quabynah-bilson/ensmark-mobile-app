import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'pending.properties.mapper.dart';

@MappableClass()
class GetPendingPropertiesParams with GetPendingPropertiesParamsMappable {
  final String? ownerGuid;
  final String? officerGuid;

  const GetPendingPropertiesParams({this.ownerGuid, this.officerGuid});
}

@lazySingleton
class GetPendingProperties implements UseCase<List<Property>, GetPendingPropertiesParams> {
  final PropertyRepository _repo;

  const GetPendingProperties(this._repo);

  @override
  FutureOr<UseCaseResult<List<Property>>> call(GetPendingPropertiesParams params) async {
    final result = await _repo.getPendingProperties(ownerGuid: params.ownerGuid, officerGuid: params.officerGuid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
