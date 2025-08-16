import 'package:dartz/dartz.dart';
import 'package:mobile/core/exceptions/failure.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';

abstract class PropertyRepository {
  Future<Either<Failure, List<Property>>> getProperties({
    String? ownerGuid,
    String? officerGuid,
    String? location,
    PropertyType? type,
    PropertyStatus? status,
  });

  Future<Either<Failure, Property>> createProperty({
    required String title,
    required String owner,
    required PropertyLocation location,
    required PropertyType type,
    required double value,
    required String ownerGuid,
    required String officerGuid,
    PropertyStatus status = PropertyStatus.pending,
  });

  Future<Either<Failure, List<Property>>> getPendingProperties({String? ownerGuid, String? officerGuid});

  Future<Either<Failure, List<Property>>> getApprovedProperties({String? ownerGuid, String? officerGuid});

  Future<Either<Failure, Property>> getProperty(String guid);

  Future<Either<Failure, void>> assignProperty(String guid, String officerGuid);

  Future<Either<Failure, void>> unassignProperty(String guid);

  Future<Either<Failure, void>> approveProperty(String guid);

  Future<Either<Failure, void>> rejectProperty(String guid);

  Future<Either<Failure, void>> updateProperty(Property property);

  Future<Either<Failure, void>> deleteProperty(String guid);
}
