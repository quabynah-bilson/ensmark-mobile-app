import 'package:dart_mappable/dart_mappable.dart';

part 'location.identity.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed)
enum IdentityType {
  nationalId('National ID'),
  passport('Passport'),
  driverLicense('Driver License'),
  businessLicense('Business License'),
  other('Other');

  final String label;
  const IdentityType(this.label);
}

@MappableClass()
class LocationIdentityState with LocationIdentityStateMappable {
  const LocationIdentityState({
    this.idType = IdentityType.nationalId,
    this.idNumber = '',
    this.addressLine1 = '',
    this.addressLine2 = '',
    this.addressLine3 = '',
    this.addressLine4 = '',
    this.country = 'GH',
    this.taxIdentificationNumber = '',
    this.houseNumber = '',
    this.street = '',
    this.digitalCode = '',
    this.landmark = '',
    this.town = '',
    this.region = '',
  });

  final IdentityType idType;
  final String idNumber;
  final String addressLine1;
  final String addressLine2;
  final String addressLine3;
  final String addressLine4;
  final String country;
  final String taxIdentificationNumber;
  final String houseNumber;
  final String street;
  final String digitalCode;
  final String landmark;
  final String town;
  final String region;
}
