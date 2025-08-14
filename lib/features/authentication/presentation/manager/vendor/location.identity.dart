import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.identity.freezed.dart';

@freezed
abstract class LocationIdentityState with _$LocationIdentityState {
  const factory LocationIdentityState({
    @Default('') String taxIdentificationNumber,
    @Default('') String houseNumber,
    @Default('') String street,
    @Default('') String digitalCode,
    @Default('') String landmark,
    @Default('') String town,
    @Default('') String region,
    @Default('') String addressLine1,
    @Default('') String addressLine2,
    @Default('') String addressLine3,
    @Default('') String addressLine4,
    @Default('GH') String country,
  }) = _LocationIdentityState;
}