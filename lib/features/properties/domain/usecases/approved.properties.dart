import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'approved.properties.mapper.dart';

@MappableClass()
class GetApprovedPropertiesParams with GetApprovedPropertiesParamsMappable {
  final String? ownerGuid;
  final String? officerGuid;

  const GetApprovedPropertiesParams({this.ownerGuid, this.officerGuid});
}

@lazySingleton
class GetApprovedProperties implements UseCase<List<Property>, GetApprovedPropertiesParams> {
  final PropertyRepository _repo;

  const GetApprovedProperties(this._repo);

  @override
  FutureOr<UseCaseResult<List<Property>>> call(GetApprovedPropertiesParams params) async {
    final result = await _repo.getApprovedProperties(ownerGuid: params.ownerGuid, officerGuid: params.officerGuid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
