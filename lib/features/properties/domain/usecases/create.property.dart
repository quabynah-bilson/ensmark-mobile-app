import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'create.property.mapper.dart';

@MappableClass()
class CreatePropertyParams with CreatePropertyParamsMappable {
  final String title;
  final String owner;
  final PropertyLocation location;
  final PropertyType type;
  final double value;
  final String ownerGuid;
  final String officerGuid;
  final PropertyStatus status;

  const CreatePropertyParams({
    required this.title,
    required this.owner,
    required this.location,
    required this.type,
    required this.value,
    required this.ownerGuid,
    required this.officerGuid,
    this.status = PropertyStatus.pending,
  });
}

@lazySingleton
class CreateProperty implements UseCase<Property, CreatePropertyParams> {
  final PropertyRepository _repo;

  const CreateProperty(this._repo);

  @override
  FutureOr<UseCaseResult<Property>> call(CreatePropertyParams params) async {
    final result = await _repo.createProperty(
      title: params.title,
      owner: params.owner,
      location: params.location,
      type: params.type,
      value: params.value,
      ownerGuid: params.ownerGuid,
      officerGuid: params.officerGuid,
      status: params.status,
    );
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
