part of 'router.dart';

@MappableClass()
class VendorVerificationPageArgs with VendorVerificationPageArgsMappable {
  const VendorVerificationPageArgs({required this.token});

  final String token;
}

@MappableClass()
class CreatePasswordPageArgs with CreatePasswordPageArgsMappable {
  const CreatePasswordPageArgs({required this.token});

  final String token;
}
