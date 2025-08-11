import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.vendor.freezed.dart';

@freezed
abstract class RegisterVendorRequest with _$RegisterVendorRequest {
  const factory RegisterVendorRequest({
    required String username,
    required String password,
    required String firstName,
    required String lastName,
  }) = _RegisterVendorRequest;
}
