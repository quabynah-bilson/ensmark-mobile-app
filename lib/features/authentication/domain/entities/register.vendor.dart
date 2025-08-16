import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

part 'register.vendor.mapper.dart';

@MappableClass()
class RegisterVendorRequest with RegisterVendorRequestMappable {
  const RegisterVendorRequest({
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
