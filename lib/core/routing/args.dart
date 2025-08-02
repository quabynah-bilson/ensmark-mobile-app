part of 'router.dart';

@freezed
abstract class VendorVerificationPageArgs with _$VendorVerificationPageArgs {
  const factory VendorVerificationPageArgs({required Map<String, String> params}) = _VendorVerificationPageArgs;

  factory VendorVerificationPageArgs.fromJson(Map<String, dynamic> json) => _$VendorVerificationPageArgsFromJson(json);
}
