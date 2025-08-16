import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/exceptions/failure.dart';
import 'package:mobile/features/properties/data/datasources/property.local.dart';
import 'package:mobile/features/properties/domain/entities/property.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

@LazySingleton(as: PropertyRepository)
class PropertyRepositoryImpl implements PropertyRepository {
  final PropertyLocalDataSource _ds;

  PropertyRepositoryImpl(this._ds) {
    _ds.init();
  }

  @override
  Future<Either<Failure, void>> approveProperty(String guid) async {
    try {
      await _ds.approveProperty(guid);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> assignProperty(String guid, String officerGuid) async {
    try {
      await _ds.assignProperty(guid, officerGuid);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Property>> createProperty({
    required String title,
    required String owner,
    required PropertyLocation location,
    required PropertyType type,
    required double value,
    required String ownerGuid,
    required String officerGuid,
    PropertyStatus status = PropertyStatus.pending,
  }) async {
    try {
      final property = await _ds.createProperty(
        title: title,
        owner: owner,
        location: location,
        type: type,
        value: value,
        ownerGuid: ownerGuid,
        officerGuid: officerGuid,
        status: status,
      );
      return right(property);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteProperty(String guid) async {
    try {
      await _ds.deleteProperty(guid);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Property>>> getApprovedProperties({String? ownerGuid, String? officerGuid}) async {
    try {
      final properties = await _ds.getApprovedProperties(ownerGuid: ownerGuid, officerGuid: officerGuid);
      return right(properties);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Property>>> getPendingProperties({String? ownerGuid, String? officerGuid}) async {
    try {
      final properties = await _ds.getPendingProperties(ownerGuid: ownerGuid, officerGuid: officerGuid);
      return right(properties);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Property>>> getProperties({
    String? ownerGuid,
    String? officerGuid,
    String? location,
    PropertyType? type,
    PropertyStatus? status,
  }) async {
    try {
      final properties = await _ds.getProperties(
        ownerGuid: ownerGuid,
        officerGuid: officerGuid,
        location: location,
        type: type,
        status: status,
      );
      return right(properties);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Property>> getProperty(String guid) async {
    try {
      final property = await _ds.getProperty(guid);
      return right(property);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> rejectProperty(String guid) async {
    try {
      await _ds.rejectProperty(guid);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> unassignProperty(String guid) async {
    try {
      await _ds.unassignProperty(guid);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateProperty(Property property) async {
    try {
      await _ds.updateProperty(property);
      return right(null);
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
