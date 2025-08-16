import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:mobile/features/authentication/domain/entities/register.vendor.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/repositories/auth.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

part 'request.account.mapper.dart';

@MappableClass()
class RequestAccountUseCaseParams with RequestAccountUseCaseParamsMappable {
  const RequestAccountUseCaseParams({
    this.username = '',
    this.firstName = '',
    this.lastName = '',
    this.phoneNumber = '',
    this.ownerType = OwnerType.individual,
    this.revenueItems = const [],
    this.registrationNumber,
    this.registrationDate,
    this.taxIdentificationNumber,
    this.houseNumber,
    this.street,
    this.digitalCode,
    this.landmark,
    this.town,
    this.region,
    this.countryCode,
    this.idType,
    this.idNumber,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.addressLine4,
    this.dateOfBirth,
  });

  final String username;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final OwnerType ownerType;
  final List<RevenueItem> revenueItems;
  final String? registrationNumber;
  final DateTime? registrationDate;
  final String? taxIdentificationNumber;
  final String? houseNumber;
  final String? street;
  final String? digitalCode;
  final String? landmark;
  final String? town;
  final String? region;
  final String? countryCode;
  final String? idType;
  final String? idNumber;
  final String? addressLine1;
  final String? addressLine2;
  final String? addressLine3;
  final String? addressLine4;
  final DateTime? dateOfBirth;
}

@lazySingleton
class RequestAccountUseCase implements UseCase<AppUser, RequestAccountUseCaseParams> {
  final AuthRepository _repo;

  const RequestAccountUseCase(this._repo);

  @override
  FutureOr<UseCaseResult<AppUser>> call(RequestAccountUseCaseParams params) async {
    // validate params
    if (params.firstName.isEmpty) {
      return UseCaseResult.error('First name is required');
    }
    if (params.lastName.isEmpty) {
      return UseCaseResult.error('Last name is required');
    }
    if (params.phoneNumber.isEmpty) {
      return UseCaseResult.error('Phone number is required');
    }
    if (params.username.isEmpty) {
      return UseCaseResult.error('Username is required');
    }
    if (params.ownerType == OwnerType.business && params.registrationNumber == null) {
      return UseCaseResult.error('Registration number is required');
    }
    if (params.ownerType == OwnerType.business && params.registrationDate == null) {
      return UseCaseResult.error('Registration date is required');
    }
    if (params.taxIdentificationNumber == null) {
      return UseCaseResult.error('Tax identification number is required');
    }
    if (params.houseNumber == null) {
      return UseCaseResult.error('House number is required');
    }
    if (params.street == null) {
      return UseCaseResult.error('Street is required');
    }
    if (params.digitalCode == null) {
      return UseCaseResult.error('Digital code is required');
    }
    if (params.town == null) {
      return UseCaseResult.error('Town is required');
    }
    if (params.region == null) {
      return UseCaseResult.error('Region is required');
    }
    if (params.countryCode == null) {
      return UseCaseResult.error('Country code is required');
    }
    if (params.idType == null) {
      return UseCaseResult.error('ID type is required');
    }
    if (params.idNumber == null) {
      return UseCaseResult.error('ID number is required');
    }
    if (params.addressLine1 == null) {
      return UseCaseResult.error('Address line 1 is required');
    }
    if (params.addressLine2 == null) {
      return UseCaseResult.error('Address line 2 is required');
    }
    if (params.addressLine3 == null) {
      return UseCaseResult.error('Address line 3 is required');
    }
    if (params.addressLine4 == null) {
      return UseCaseResult.error('Address line 4 is required');
    }
    if (params.revenueItems.isEmpty) {
      return UseCaseResult.error('Revenue items are required');
    }

    final request = RegisterVendorRequest(
      firstName: params.firstName,
      lastName: params.lastName,
      username: params.username,
      phoneNumber: params.phoneNumber,
      ownerType: params.ownerType,
      dateOfBirth: params.dateOfBirth,
      registrationNumber: params.registrationNumber,
      registrationDate: params.registrationDate,
      taxIdentificationNumber: params.taxIdentificationNumber,
      houseNumber: params.houseNumber,
      street: params.street,
      digitalCode: params.digitalCode,
      landmark: params.landmark,
      town: params.town,
      region: params.region,
      countryCode: params.countryCode,
      idType: params.idType,
      idNumber: params.idNumber,
      addressLine1: params.addressLine1,
      addressLine2: params.addressLine2,
      addressLine3: params.addressLine3,
      addressLine4: params.addressLine4,
      revenueItems: params.revenueItems,
    );
    final result = await _repo.registerVendor(request);
    return result.fold((l) => UseCaseResult.error(l.reason), (user) => UseCaseResult.success(user));
  }
}
