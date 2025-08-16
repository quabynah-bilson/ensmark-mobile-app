import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'all.properties.mapper.dart';

@MappableClass()
class GetAllPropertiesParams with GetAllPropertiesParamsMappable {
  final String? ownerGuid;
  final String? officerGuid;
  final String? location;
  final PropertyType? type;
  final PropertyStatus? status;

  const GetAllPropertiesParams({this.ownerGuid, this.officerGuid, this.location, this.type, this.status});
}

@lazySingleton
class GetAllProperties implements UseCase<List<Property>, GetAllPropertiesParams> {
  final PropertyRepository _repo;

  const GetAllProperties(this._repo);

  @override
  FutureOr<UseCaseResult<List<Property>>> call(GetAllPropertiesParams params) async {
    final result = await _repo.getProperties(
      ownerGuid: params.ownerGuid,
      officerGuid: params.officerGuid,
      location: params.location,
      type: params.type,
      status: params.status,
    );
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
