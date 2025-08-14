import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';

part 'register.vendor.freezed.dart';

@freezed
abstract class RegisterVendorRequest with _$RegisterVendorRequest {
  const factory RegisterVendorRequest({
    required String username,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required OwnerType ownerType,
    required List<RevenueItem> revenueItems,
    String? registrationNumber,
    DateTime? registrationDate,
    String? taxIdentificationNumber,
    String? houseNumber,
    String? street,
    String? digitalCode,
    String? landmark,
    String? town,
    String? region,
    String? countryCode,
    String? idType,
    String? idNumber,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    DateTime? dateOfBirth,
  }) = _RegisterVendorRequest;
}
